using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
  [TestClass]
  public class GreaterThanOrEqualPathEval : Behavior
  {
    private (int, AstNode) result;

    protected override void Given()
    {
      var tokens = new List<SyntaxToken>
      {
        new SyntaxToken
        {
          Type = SyntaxTokenType.GreaterThanOrEqual,
          Token = ">="
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.Identifier,
          Token = "10"
        }
      };
      var nodes = new List<AstNode>
      {
        new Identifier("a")
      };
      var index = 0;

      this.result = new GreaterThanOrEqualPath().Eval(index, tokens, nodes);
    }

    [TestMethod]
    public void IndexIsCorrect()
    {
      Assert.AreEqual(1, this.result.Item1);
    }

    [TestMethod]
    public void AstNodeIsCorrect()
    {
      Assert.IsInstanceOfType(this.result.Item2, typeof(GreaterThanOrEqual));
    }

    [TestMethod]
    public void AstNodeLeftIsCorrect()
    {
      Assert.IsInstanceOfType(
        ((GreaterThanOrEqual)this.result.Item2).Left,
        typeof(Identifier)
      );
    }

    [TestMethod]
    public void AstNodRightIsCorrect()
    {
      Assert.IsInstanceOfType(
        ((GreaterThanOrEqual)this.result.Item2).Right,
        typeof(IntegerLiteral)
      );
    }
  }
}