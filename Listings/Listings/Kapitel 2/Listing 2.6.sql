SELECT 
       "PURCHASEORDERID",
       "PURCHASEORDERITEM",
       "PRODUCT.PRODUCTID",
       "CURRENCY",
       case 
           when netamount <> 0 
--- Mit Klammerung:
---            then ((grossamount / netamount) * 100) - 100 
--- Ohne Klammerung: 
               then grossamount / netamount * 100 - 100 
           else 0 
           end     as tax,
       "GROSSAMOUNT",
       "NETAMOUNT",
       "TAXAMOUNT",
       "QUANTITY",
       "QUANTITYUNIT",
       "DELIVERYDATE"
FROM "SAP_HANA_DEMO"."sap.hana.democontent.epm.data::PO.Item";