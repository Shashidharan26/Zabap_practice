CLASS zprime_number DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zprime_number IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*Legacy Method

      DATA : LV_NUM1 TYPE i VALUE 13,
         LV_DIV TYPE i,
         LV_ISPRIME TYPE abap_bool VALUE abap_true.

      IF LV_NUM1 <= 1.
        LV_ISPRIME = abap_true.
      ENDIF.

      DO LV_NUM1 - 2 TIMES.
        LV_DIV = SY-index + 1.

        IF LV_NUM1 MOD LV_DIV = 0.
            LV_ISPRIME = abap_false.
            EXIT.
        ENDIF.

      ENDDO.

      IF LV_ISPRIME = abap_true.
        out->write( |THE NUMBER { LV_NUM1 } IS A PRIME NUMBER| ).
      ELSE.
        out->write( |THE NUMBER { LV_NUM1 } IS NOT A PRIME NUMBER| ).
      ENDIF.

*Modern Method.


      DATA(LV_NUMBER) = 20.
      DATA(LV_PRIME) = xsdbool( LV_NUMBER > 1 ).

      IF LV_PRIME = abap_false.
        RETURN.
      ENDIF.

      DO floor( sqrt( LV_NUMBER ) ) TIMES.
        DATA(LV_DIVISOR) = SY-index + 1.

      IF LV_NUMBER MOD LV_DIVISOR = 0.
        LV_PRIME = abap_false.
        EXIT.
      ENDIF.
      ENDDO.

      IF LV_PRIME = abap_true.
        out->write( | { LV_NUMBER } is a prime number | ).
      ELSE.
        out->write( | { LV_NUMBER } is not a prime number | ).
      ENDIF.


  ENDMETHOD.
ENDCLASS.
