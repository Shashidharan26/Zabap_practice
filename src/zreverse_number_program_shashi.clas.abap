CLASS zreverse_number_program_shashi DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zreverse_number_program_shashi IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*    Legacy Method(only positive numbers)
    DATA : LV_INPUT TYPE i VALUE 98701,
           LV_LASTNUMBER TYPE i VALUE 0,
           LV_RESULT TYPE i VALUE 0.

    out->write( |ORIGINAL NUMBER(Legacy):{ LV_INPUT }| ).
    CLEAR LV_RESULT.
    CLEAR LV_LASTNUMBER.
    WHILE LV_INPUT > 0.
        LV_LASTNUMBER = LV_INPUT MOD 10.
        LV_RESULT = ( LV_RESULT * 10 ) + LV_LASTNUMBER.
        LV_INPUT = LV_INPUT DIV 10.
    ENDWHILE.

    out->Write( |REVERSED NUMBER(Legacy):{ LV_RESULT }| ).

* Legacy Method for both signs(both positive and negative numbers)
    DATA : LV_INPUT_GG TYPE i VALUE -98701,
           LV_LASTNUMBER_GG TYPE i VALUE 0,
           LV_RESULT_GG TYPE i VALUE 0,
           LV_SIGN_GG TYPE i.

    out->write( |Original number:{ LV_INPUT_GG }| ).

    IF LV_INPUT_GG < 0.
        LV_SIGN_GG = -1.
        LV_INPUT_GG = LV_SIGN_GG * LV_INPUT_GG.
    ELSE.
        LV_SIGN_GG = 1.
    ENDIF.



    WHILE LV_INPUT_GG > 0.
        LV_LASTNUMBER_GG = LV_INPUT_GG MOD 10.
        LV_RESULT_GG = ( LV_RESULT_GG * 10 ) + LV_LASTNUMBER_GG.
        LV_INPUT_GG = LV_INPUT_GG DIV 10.
    ENDWHILE.

    LV_RESULT_GG = LV_RESULT_GG * LV_SIGN_GG.

    out->write( |Reversed Number:{ LV_RESULT_GG }| ).



* MODERN METHOD(regardless of sign it will work the same)

  DATA(LV_INPUTNUMBER) = -4321.DATA(LV_STRING) = ``.DATA(LV_OUTPUT) = 0.
  LV_STRING = reverse( |{ LV_INPUTNUMBER }| ).
  LV_OUTPUT = CONV i( LV_STRING ).
  out->write( |ORIGINAL NUMBER(Modern):{ LV_INPUTNUMBER }| )->write( |REVERSED NUMBER(Modern):{ LV_OUTPUT }| ).
  ENDMETHOD.
ENDCLASS.
