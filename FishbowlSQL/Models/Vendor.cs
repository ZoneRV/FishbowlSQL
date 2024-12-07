using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

// Generated from Fishbowl SQL Schema
    public class Vendor
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        
        public int AccountId { get; set; }

        [StringLength(30)]
        public string? AccountNum { get; set; }

        [StringLength(30)]
        public string? AccountingHash { get; set; }

        [StringLength(36)]
        public string? AccountingId { get; set; }

        public bool ActiveFlag { get; set; }

        public decimal? CreditLimit { get; set; }

        public int? CurrencyId { get; set; }
        
        public double? CurrencyRate { get; set; }

        public DateTimeOffset? DateEntered { get; set; }

        public DateTimeOffset? DateLastModified { get; set; }

        [Required]
        public int DefaultCarrierId { get; set; }

        public int? DefaultCarrierServiceId { get; set; }
        
        [Required]
        public int DefaultPaymentTermsId { get; set; }

        [Required]
        public int DefaultShipTermsId { get; set; }

        [StringLength(100)]
        public string? LastChangedUser { get; set; }
        
        public int? LeadTime { get; set; }

        public decimal? MinOrderAmount { get; set; } 

        [StringLength(41), Required]
        public string Name { get; set; }

        [StringLength(256)]
        public string? Note { get; set; }
        
        [Required]
        public int StatusId { get; set; }

        public int? SysUserId { get; set; }

        public int? TaxRateId { get; set; }

        [StringLength(256)]
        public string? Url { get; set; }
        
        public string? CustomFields { get; set; } // TODO: You might want to parse this JSON in your application

        [ForeignKey("accountId"), Required]
        public Account Account { get; set; }
        
        [ForeignKey("defaultCarrierId"), Required]
        public Carrier Carrier { get; set; }
        
        [ForeignKey("currencyId")]
        public Currency? Currency { get; set; }
        
        [ForeignKey("defaultPaymentTermsId"), Required]
        public PaymentTerms PaymentTerms { get; set; }
        
        [ForeignKey("defaultShipTermsId"), Required]
        public ShipTerms ShipTerms { get; set; }
        
        [ForeignKey("statusId"), Required]
        public VendorStatus VendorStatus { get; set; }
        
        [ForeignKey("taxRateId")]
        public TaxRate? TaxRate { get; set; }
        
        [ForeignKey("defaultCarrierServiceId")]
        public CarrierService? CarrierService { get; set; }
    }