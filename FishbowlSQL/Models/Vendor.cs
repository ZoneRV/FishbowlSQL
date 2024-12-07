﻿using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

// Generated from Fishbowl SQL Schema
    public class Vendor
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; init; }
        
        public int AccountId { get; init; }

        [StringLength(30)]
        public string? AccountNum { get; init; }

        [StringLength(30)]
        public string? AccountingHash { get; init; }

        [StringLength(36)]
        public string? AccountingId { get; init; }

        public bool ActiveFlag { get; init; }

        public decimal? CreditLimit { get; init; }

        public int? CurrencyId { get; init; }
        
        public double? CurrencyRate { get; init; }

        public DateTimeOffset? DateEntered { get; init; }

        public DateTimeOffset? DateLastModified { get; init; }

        [Required]
        public int DefaultCarrierId { get; init; }

        public int? DefaultCarrierServiceId { get; init; }
        
        [Required]
        public int DefaultPaymentTermsId { get; init; }

        [Required]
        public int DefaultShipTermsId { get; init; }

        [StringLength(100)]
        public string? LastChangedUser { get; init; }
        
        public int? LeadTime { get; init; }

        public decimal? MinOrderAmount { get; init; } 

        [StringLength(41), Required]
        public string Name { get; init; }

        [StringLength(256)]
        public string? Note { get; init; }
        
        [Required]
        public int StatusId { get; init; }

        public int? SysUserId { get; init; }

        public int? TaxRateId { get; init; }

        [StringLength(256)]
        public string? Url { get; init; }
        
        public string? CustomFields { get; init; } // TODO: You might want to parse this JSON in your application

        [ForeignKey("accountId"), Required]
        public Account Account { get; init; }
        
        [ForeignKey("defaultCarrierId"), Required]
        public Carrier Carrier { get; init; }
        
        [ForeignKey("currencyId")]
        public Currency? Currency { get; init; }
        
        [ForeignKey("defaultPaymentTermsId"), Required]
        public PaymentTerms PaymentTerms { get; init; }
        
        [ForeignKey("defaultShipTermsId"), Required]
        public ShipTerms ShipTerms { get; init; }
        
        [ForeignKey("statusId"), Required]
        public VendorStatus VendorStatus { get; init; }
        
        [ForeignKey("taxRateId")]
        public TaxRate? TaxRate { get; init; }
        
        [ForeignKey("defaultCarrierServiceId")]
        public CarrierService? CarrierService { get; init; }
    }