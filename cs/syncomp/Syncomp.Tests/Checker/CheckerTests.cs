using System.Collections.Generic;
using System.IO;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class CheckerTests : Behavior
    {
        private const string TestCodeFilename = "./test_patterns.bc";
        private List<Diagnostic> diagnostics;

        private int GetDiagLength(Diagnostic diag)
        {
            return diag.EndColumn - diag.Column;
        }

        protected override void Given()
        {
            var code = File.ReadAllText("./test_patterns.bc");

            var tokens = new List<SyntaxToken>();

            var lexer = new Lexer(code, TestCodeFilename);
            tokens.AddRange(lexer.Lex());

            tokens = tokens.Where(tkn => tkn.Type != SyntaxTokenType.Space).ToList();
            var parser = new Parser(tokens);
            (_, var ast) = parser.Parse();
            var checker = new Checker(ast);
            this.diagnostics = checker.Check();
        }

        [TestMethod]
        public void VariableAssignmentInvalidTypes()
        {
            var diag = this.diagnostics.Where(dg => dg.Line == 2).FirstOrDefault();
            Assert.IsNotNull(diag);
            Assert.AreEqual(DiagnosticCode.InvalidTypes, diag.Code);
            Assert.AreEqual(1, GetDiagLength(diag));
            Assert.IsTrue(diag.Message.Contains("int"));
            Assert.IsTrue(diag.Message.Contains("string"));
        }

        [TestMethod]
        public void FunctionCallInvalidFunction()
        {
            var diag = this.diagnostics.Where(dg => dg.Line == 5).FirstOrDefault();
            Assert.IsNotNull(diag);
            Assert.AreEqual(DiagnosticCode.UnknownFunction, diag.Code);
            Assert.AreEqual(5, GetDiagLength(diag));
        }

        [TestMethod]
        public void FunctionCallInvalidParameters()
        {
            var diag = this.diagnostics.Where(dg => dg.Line == 9).FirstOrDefault();
            Assert.IsNotNull(diag);
            Assert.AreEqual(DiagnosticCode.InvalidParameters, diag.Code);
            Assert.IsTrue(diag.Message.Contains("test"));
            Assert.AreEqual(4, GetDiagLength(diag));
        }

        [TestMethod]
        public void FunctionCallInvalidTypes()
        {
            var stringLiteralDiag = this.diagnostics.Where(dg => dg.Line == 12).FirstOrDefault();
            Assert.IsNotNull(stringLiteralDiag);
            Assert.AreEqual(DiagnosticCode.InvalidTypes, stringLiteralDiag.Code);
            Assert.IsTrue(stringLiteralDiag.Message.Contains("string"));
            Assert.IsTrue(stringLiteralDiag.Message.Contains("int"));
            Assert.AreEqual(6, GetDiagLength(stringLiteralDiag));

            var asDiag = this.diagnostics.Where(dg => dg.Line == 13).FirstOrDefault();
            Assert.IsNotNull(asDiag);
            Assert.AreEqual(DiagnosticCode.InvalidTypes, asDiag.Code);
            Assert.IsTrue(asDiag.Message.Contains("string"));
            Assert.IsTrue(asDiag.Message.Contains("int"));
            Assert.AreEqual(1, GetDiagLength(asDiag));

            var varDiag = this.diagnostics.Where(dg => dg.Line == 15).FirstOrDefault();
            Assert.IsNotNull(varDiag);
            Assert.AreEqual(DiagnosticCode.InvalidTypes, varDiag.Code);
            Assert.IsTrue(varDiag.Message.Contains("string"));
            Assert.IsTrue(varDiag.Message.Contains("int"));
            Assert.AreEqual(11, GetDiagLength(varDiag));
        }

        [TestMethod]
        public void FunctionDeclarationControlFlowError()
        {
            var defDiag = this.diagnostics.Where(dg => dg.Line == 18).FirstOrDefault();
            Assert.IsNotNull(defDiag);
            Assert.AreEqual(DiagnosticCode.ControlFlowError, defDiag.Code);
            Assert.IsTrue(defDiag.Message.Contains("int"));
            Assert.AreEqual(8, GetDiagLength(defDiag));

            var assignDiag = this.diagnostics.Where(dg => dg.Line == 19).FirstOrDefault();
            Assert.IsNotNull(assignDiag);
            Assert.AreEqual(DiagnosticCode.ControlFlowError, assignDiag.Code);
            Assert.IsTrue(assignDiag.Message.Contains("int"));
            Assert.AreEqual(8, GetDiagLength(assignDiag));
        }
    }
}
