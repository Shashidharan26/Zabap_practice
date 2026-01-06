CLASS zhello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zhello_world IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*        Hello World Program

*Legacy Method(not supported Write in eclipse
    out->write( 'Hello, Shashi!' ).
*Modern Method
    out->Write( |Hello, World!| ).
  ENDMETHOD.
ENDCLASS.
