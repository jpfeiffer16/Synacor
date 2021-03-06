namespace syncomp
{
    public class IntegerLiteral : AstNode
    {
        public override int Length => this.Value.Length;
        public string Value { get; }
        public IntegerLiteral(string value, string file, int line, int column)
            : base("INTEGER_LITERAL", file, line, column)
        {
            this.Value = value;
            this.NodeType = ParserContext.NativeTypes.LangInt;
        }
    }
}
