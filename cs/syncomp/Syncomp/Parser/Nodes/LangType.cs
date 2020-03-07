using System;
using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
    public class LangType : AstNode, IEquatable<LangType>
    {
        public override int Length => this.Name.Length;
        //TODO: Fix!
        public LangType(string name, List<VariableDeclaration> body, string file, int line, int column)
            : base("LANGTYPE", file, line, column)
        {
            this.Name = name;
            this.Body = body;
        }

        public string GetName()
        {
            if (!(this.SubTypes is null) && this.SubTypes.Count > 0)
            {
                return $"{this.Name}<{string.Join(", ", this.SubTypes.Select(t => t.Name))}>";
            }
            else
            {
                return this.Name;
            }
        }

        public bool Equals(LangType other)
        {
            if (other is null) return false;
            if (this.Name != other.Name) return false;
            if (this.SubTypes == null && other.SubTypes == null) return true;
            if (this.SubTypes == null ^ other.SubTypes == null) return false;
            if (this.SubTypes.Count != other.SubTypes.Count) return false;
            for (var i = 0; i < this.SubTypes.Count; i++)
            {
                if (!this.SubTypes[i].Equals(other.SubTypes[i])) return false;
            }
            return true;
        }

        public string Name { get; }
        public List<VariableDeclaration> Body { get; }
        public List<LangType> SubTypes { get; set; } = new List<LangType>();
    }
}
