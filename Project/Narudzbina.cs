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
    
    public partial class Narudzbina
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Narudzbina()
        {
            this.NarudzbinaProizvod = new HashSet<NarudzbinaProizvod>();
        }
    
        public int NarudzbinaID { get; set; }
        public Nullable<int> KupacID { get; set; }
        public Nullable<int> ProdavacID { get; set; }
        public Nullable<System.DateTime> DatumNarudzbine { get; set; }
        public string Status { get; set; }
        public string KupacIme { get; set; }
    
        public virtual Kupac Kupac { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NarudzbinaProizvod> NarudzbinaProizvod { get; set; }
        public virtual Prodavac Prodavac { get; set; }
    }
}
