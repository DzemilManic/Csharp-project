//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Project
{
    using System;
    using System.Collections.Generic;
    
    public partial class Proizvod
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Proizvod()
        {
            this.NarudzbinaProizvod = new HashSet<NarudzbinaProizvod>();
        }
    
        public int ProizvodID { get; set; }
        public string Naziv { get; set; }
        public decimal Cena { get; set; }
        public int Kolicina { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NarudzbinaProizvod> NarudzbinaProizvod { get; set; }
        public string ProductName { get; internal set; }
        public string ProductPrice { get; internal set; }
        public string ProductQuantity { get; internal set; }
    }
}