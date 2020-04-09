using System.Collections.Generic;

namespace syncomp
{
    public class MultiplicationPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Multiplication;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var tkn = tokens[i];
            var left = nodes.Pop();
            var nextTerm = GetNextTerminator(i, tokens);
            var right = ParseTokens(tokens.GetRange(++i, nextTerm - i), ctx);
            return (i, new Multiplication(left, right[0], tkn.File, tkn.Line, tkn.Column) { NodeType= ParserContext.NativeTypes.LangInt });
        }
    }
}
