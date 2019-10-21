using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class LessThanEval : Behavior
    {
        private (int, AstNode) result;

        protected override void Given()
        {
            var tokens = new List<SyntaxToken>
            {
                new SyntaxToken
                {
                    Type = SyntaxTokenType.LessThan,
                    Token = "<"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "a"
                }
            };
            var nodes = new List<AstNode>
            {
                new IntegerLiteral("10", null, 0, 0)
            };
            var index = 0;

            this.result = new LessThanPath().Eval(index, tokens, nodes, new ParserContext());
        }

        [TestMethod]
        public void IndexIsCorrect()
        {
            Assert.AreEqual(1, this.result.Item1);
        }

        [TestMethod]
        public void AstNodeIscorrect()
        {
            Assert.IsInstanceOfType(this.result.Item2, typeof(LessThan));
        }

        [TestMethod]
        public void AstNodeLeftIsCorrect()
        {
            Assert.IsInstanceOfType(
              ((LessThan)this.result.Item2).Left,
              typeof(IntegerLiteral)
            );
        }

        [TestMethod]
        public void AstNodeRightIsCorrect()
        {
            Assert.IsInstanceOfType(
              ((LessThan)this.result.Item2).Right,
              typeof(Identifier)
            );
        }
    }
}
