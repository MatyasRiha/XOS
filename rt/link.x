/* Memory layout of RP2040 depends on a CHIP! */
/* 1K = 1 KiBi = 1024 bytes */
MEMORY 
{
  /* NOTE K = KiBi = 1024 bytes */
  FLASH : ORIGIN =  0x10000000, LENGTH = 2000K 
  RAM : ORIGIN = 0x20000000, LENGTH = 264K  
}


ENTRY(Reset);

EXTERN(RESET_VECTOR);


SECTIONS
{
  
}
