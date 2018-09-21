-- Listing 3.13.sql
-- Aufruf einer skalaren UDF in der Feldliste



SELECT get_parcel_price(width, height, depth, weight ) 
   FROM parcels;
