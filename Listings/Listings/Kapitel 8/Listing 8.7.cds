-- Listing 8.7.sql
-- Grundgerüst der Definition einer CDS-Tabellenfunktion
 
@EndUserText.label: 'Example for a table function'
define table function Z_CDS_TF
with parameters parameter_name : parameter_type
returns {
  client_element_name : abap.clnt;
  element_name : element_type;
}
implemented by method class_name=>method_name;;
