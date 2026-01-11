CLASS zarithmetic_ops DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zarithmetic_ops IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

* Legacy Method
    DATA : LV_NUM1 TYPE i VALUE 20,
           LV_NUM2 TYPE i VALUE 20,
           LV_SUM TYPE i,
           LV_DIF TYPE i,
           LV_PROD TYPE i,
           LV_DIV TYPE f.

    LV_SUM = LV_NUM1 + LV_NUM2.
    LV_DIF = LV_NUM1 - LV_NUM2.
    LV_PROD = LV_NUM1 * LV_NUM2.
    IF LV_NUM2 <> 0.
        LV_DIV = LV_NUM1 / LV_NUM2.
    ENDIF.

    out->write( |SUM is:{ LV_SUM }| )->write( |DIFFERENCE is:{ LV_DIF }| )->write( |PRODUCT is:{ LV_PROD }| )->write( |QUOTIENT is:{ LV_DIV }| ).
    out->write( | | ).

* Modern Method

    DATA(LV_NUMBER1) = 30.
    DATA(LV_NUMBER2) = 40.
    DATA(LV_ADDITION) = LV_NUMBER1 + LV_NUMBER2.
    DATA(LV_SUBTRACTION) = LV_NUMBER1 - LV_NUMBER2.
    DATA(LV_PRODUCT) = LV_NUMBER1 * LV_NUMBER2.
    DATA(LV_DIVISION) = COND f( WHEN LV_NUMBER2 <> 0 THEN LV_NUMBER1 / LV_NUMBER2 ELSE 0 ).

    out->write( |MODERN SUM is:{ LV_ADDITION }| )->write( |MODERN DIFFERENCE is:{ LV_SUBTRACTION }| )->write( |MODERN PRODUCT is:{ LV_PRODUCT }| )->write( |MODERN QUOTIENT is:{ LV_DIVISION }| ).

  ENDMETHOD.
ENDCLASS.
