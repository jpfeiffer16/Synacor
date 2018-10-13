using System;
using System.Collections.Generic;

namespace syncomp
{
  public class VariableAssignmentPath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.VariableAssignment;
    }

    public override (int, AstNode) Eval(
      int i, List<SyntaxToken> tokens, List<AstNode> nodes)
    {
      var previousAstNode = nodes.Pop();
      var nextTerminator = GetNextTerminator(i, tokens);
      var tokensToParse = tokens.GetRange(i + 1, nextTerminator - i);
      i = nextTerminator;
      var parsedParameter = ParseTokens(tokensToParse)[0];
      return (i, new VariableAssignment(previousAstNode, parsedParameter));
    }
  }
}