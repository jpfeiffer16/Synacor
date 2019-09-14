using System;
using System.Linq;
using System.Collections.Generic;
using System.Reflection;

namespace syncomp
{
  public class ParserPath
  {
    //Load all ParserPaths
    // private static List<ParserPath> Paths = AppDomain
    //     .CurrentDomain.GetAssemblies()
    //     .Where(asm => asm.FullName.Contains("syncomp"))
    //     .SelectMany(asm => asm.GetTypes())
    //     .Where(tp => tp != typeof(ParserPath))
    //     .Where(tp => typeof(ParserPath).IsAssignableFrom(tp))
    //     .Select(tp => (ParserPath)Activator.CreateInstance(tp))
    //     .ToList();

    public virtual SyntaxTokenType Match { get; }

    public virtual (int, AstNode) Eval(
      int index, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
    {
      throw new NotImplementedException("Must implement the Eval() method");
    }

    public List<AstNode> ParseTokens(List<SyntaxToken> tokens, ParserContext ctx)
    { 
      var nodes = new List<AstNode>();

      for (var i = 0; i < tokens.Count(); i++)
      {
        var thisToken = tokens[i];
        var staticMatches = Paths.ParserPaths.Where(path => path.Match == tokens[i].Type).ToList();
        foreach (var match in staticMatches)
        {
          try
          {
            var (index, node) = match.Eval(i, tokens, nodes, ctx);
            i = index;
            nodes.Add(node);
          }
          catch (Exception e)
          {
            if (e.GetType() == typeof(ParseException))
            {
              throw;
            }
            else
            {
              throw new ParseException(i, tokens, nodes);
            }
          }
        }
      }

      return nodes;
    }

    protected int GetExpression(
      SyntaxTokenType openerType,
      SyntaxTokenType closerType,
      int index,
      List<SyntaxToken> tokens)
    {
      var nestingLevel = 0;

      do
      {
        var token = tokens[index];
        if (token.Type == openerType) nestingLevel++;
        if (token.Type == closerType) nestingLevel--;
        index++;
      }
      while ((nestingLevel > 0));

      //Return one less as we will over-step by one
      return index - 1;
    }

    protected int GetNextTerminator(int index, List<SyntaxToken> tokens)
    {
      var openers = new List<SyntaxTokenType>
      {
        SyntaxTokenType.LeftCurly,
        SyntaxTokenType.LeftParen
      };
      var closers = new List<SyntaxTokenType>
      {
        SyntaxTokenType.RightCurly,
        SyntaxTokenType.RightParen
      };
      var nestingLevel = 0;
      while (
        index < tokens.Count
      ) {
        if (openers.Contains(tokens[index].Type)) nestingLevel++;
        if (closers.Contains(tokens[index].Type)) nestingLevel--;
        if (
          tokens[index].Type == SyntaxTokenType.SemiColon &&
          nestingLevel == 0
        ) break;
        index++;
      }

      return index;
    }
  }
}
