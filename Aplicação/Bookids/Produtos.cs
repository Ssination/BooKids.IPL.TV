//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Bookids
{
    using System;
    using System.Collections.Generic;
    
    public partial class Produtos
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Produtos()
        {
            this.DetalhesCompra = new HashSet<DetalhesCompra>();
        }
    
        public int CodProduto { get; set; }
        public string Designacao { get; set; }
        public int Preco { get; set; }
        public bool StockExistente { get; set; }
        public int CodTipoProduto { get; set; }
    
        public virtual TipoProduto TipoProduto { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DetalhesCompra> DetalhesCompra { get; set; }
    }
}
