/* Memory layout of RP2040 depends on a CHIP */
/* Entry is reset handler */
ENTRY(Reset);

EXTERN(RESET_VECTOR);


SECTIONS
{
  .vector_table ORIGIN(FLASH) :
  {
    /* First entry, initial stack pointer value */
    LONG(ORIGIN(RAM) + LENGTH(RAM));
    
    /* Second entry: reset vector */
    KEEP(*(.vector_table.reset_vector));
  } > FLASH

  .text :
  {
    *(.text .text.*);
  } > FLASH

  /DISCARD/ :
  {
    *(.ARM.exidx .ARM.exidx.*);
  }
}
