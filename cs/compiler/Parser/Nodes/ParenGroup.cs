using System.Collections.Generic;

namespace compiler
{
    public class ParenGroup : AstNode
    {
        public ParenGroup(List<AstNode> nodes) : base("PAREN_GROUP")
        {
            this.Nodes = nodes;
        }

        public List<AstNode> Nodes { get; }
    }
}