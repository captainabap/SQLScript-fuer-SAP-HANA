-- Listing 8.6.sql
-- Aufruf einer AMDP-Prozedur aus einer anderen AMDP-Methode
CLASS zcl_amdp_call DEFINITION PUBLIC.

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_s_price,
             item   TYPE numc4,
             netto  TYPE wertv9,
             brutto TYPE wertv9,
             mwst   TYPE wertv9,
             waehrs TYPE waers,
           END OF ty_s_price.

    TYPES ty_t_price TYPE STANDARD TABLE OF ty_s_price.

    INTERFACES if_amdp_marker_hdb.

    METHODS calculate_mwst
      IMPORTING
        VALUE(iv_mwst)  TYPE int1
      CHANGING
        VALUE(ct_price) TYPE ty_t_price.

    METHODS calculate_brutto
      IMPORTING
        VALUE(iv_mwst)  TYPE int1
      CHANGING
        VALUE(ct_price) TYPE ty_t_price.

ENDCLASS.

CLASS zcl_amdp_call IMPLEMENTATION.
  METHOD calculate_brutto BY DATABASE PROCEDURE
                        FOR HDB LANGUAGE SQLSCRIPT
                        USING zcl_amdp_call=>calculate_mwst.
    CALL "ZCL_AMDP_CALL=>CALCULATE_MWST"(
                              iv_mwst => :iv_mwst,
                              ct_price => :ct_price,
                              ct_price__in__ => :ct_price );

    ct_price = SELECT item,
                      netto,
                      netto + mwst as brutto,
                      mwst,
                      waehrs
                      FROM :ct_price;
  ENDMETHOD.

  METHOD calculate_mwst BY DATABASE PROCEDURE
                        FOR HDB LANGUAGE SQLSCRIPT.
    ct_price = SELECT item,
                      netto,
                      brutto,
                      netto * :iv_mwst / 100 as mwst,
                      waehrs
                      FROM :ct_price;

  ENDMETHOD.

ENDCLASS.
