
void isp_setup();
void isp_loop();
int avrisp();
void write_flash(int length);
uint8_t write_flash_pages(int length);
uint8_t write_eeprom(int length);
uint8_t write_eeprom_chunk(int start, int length);

