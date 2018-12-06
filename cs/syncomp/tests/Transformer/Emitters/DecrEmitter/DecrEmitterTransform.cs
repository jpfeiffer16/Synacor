using System;
using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using syncomp;

namespace syncomp.Tests
{
  [TestClass]
  public class DecrEmitterTransform : Behavior
  {
    private List<string> result;

    protected override void Given()
    {
      var ctx = new Context();
      ctx.Variables.Add(new Variable
      {
        MemoryAddress = "123",
        Name = "a"
      });
      this.result = new DecrEmitter().Transform(
        new Decr(new Identifier("a")),
        ctx
      );
    }

    [TestMethod]
    public void OneSetOnReg1()
    {
      Assert.AreEqual(
        1,
        this.result.Where(line => line.Contains("set reg1 1")).Count()
      );
    }
    
    [TestMethod]
    public void OneCall()
    {
      Assert.AreEqual(
        1,
        this.result.Where(line => line.Contains("call")).Count()
      );
    }

    [TestMethod]
    public void OneWmem()
    {
      Assert.AreEqual(
        1,
        this.result.Where(line => line.Contains("wmem")).Count()
      );
    }
  }
}
