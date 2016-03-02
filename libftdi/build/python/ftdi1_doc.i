
// File: ftdi_8c.xml
%feature("docstring")  ftdi_usb_close_internal "

Internal function to close usb device pointer. Sets ftdi->usb_dev to
NULL. ";

%feature("docstring")  ftdi_init "

Initializes a ftdi_context.

Parameters:
-----------

ftdi:  pointer to ftdi_context

Returns:
--------

0:  all fine

-1:  couldn't allocate read buffer

-2:  couldn't allocate struct buffer

-3:  libusb_init() failed

This should be called before all functions ";

%feature("docstring")  ftdi_new "

Allocate and initialize a new ftdi_context

a pointer to a new ftdi_context, or NULL on failure ";

%feature("docstring")  ftdi_set_interface "

Open selected channels on a chip, otherwise use first channel.

Parameters:
-----------

ftdi:  pointer to ftdi_context

interface:  Interface to use for FT2232C/2232H/4232H chips.

Returns:
--------

0:  all fine

-1:  unknown interface

-2:  USB device unavailable

-3:  Device already open, interface can't be set in that state ";

%feature("docstring")  ftdi_deinit "

Deinitializes a ftdi_context.

Parameters:
-----------

ftdi:  pointer to ftdi_context ";

%feature("docstring")  ftdi_free "

Deinitialize and free an ftdi_context.

Parameters:
-----------

ftdi:  pointer to ftdi_context ";

%feature("docstring")  ftdi_set_usbdev "

Use an already open libusb device.

Parameters:
-----------

ftdi:  pointer to ftdi_context

usb:  libusb libusb_device_handle to use ";

%feature("docstring")  ftdi_get_library_version "

Get libftdi library version.

ftdi_version_info Library version information ";

%feature("docstring")  ftdi_usb_find_all "

Finds all ftdi devices with given VID:PID on the usb bus. Creates a
new ftdi_device_list which needs to be deallocated by ftdi_list_free()
after use. With VID:PID 0:0, search for the default devices
(0x403:0x6001, 0x403:0x6010, 0x403:0x6011, 0x403:0x6014, 0x403:0x6015)

Parameters:
-----------

ftdi:  pointer to ftdi_context

devlist:  Pointer where to store list of found devices

vendor:  Vendor ID to search for

product:  Product ID to search for

Returns:
--------

>0:  number of devices found

-3:  out of memory

-5:  libusb_get_device_list() failed

-6:  libusb_get_device_descriptor() failed ";

%feature("docstring")  ftdi_list_free "

Frees a usb device list.

Parameters:
-----------

devlist:  USB device list created by ftdi_usb_find_all() ";

%feature("docstring")  ftdi_list_free2 "

Frees a usb device list.

Parameters:
-----------

devlist:  USB device list created by ftdi_usb_find_all() ";

%feature("docstring")  ftdi_usb_get_strings "

Return device ID strings from the usb device.

The parameters manufacturer, description and serial may be NULL or
pointer to buffers to store the fetched strings.

Use this function only in combination with ftdi_usb_find_all() as it
closes the internal \"usb_dev\" after use.

Parameters:
-----------

ftdi:  pointer to ftdi_context

dev:  libusb usb_dev to use

manufacturer:  Store manufacturer string here if not NULL

mnf_len:  Buffer size of manufacturer string

description:  Store product description string here if not NULL

desc_len:  Buffer size of product description string

serial:  Store serial string here if not NULL

serial_len:  Buffer size of serial string

Returns:
--------

0:  all fine

-1:  wrong arguments

-4:  unable to open device

-7:  get product manufacturer failed

-8:  get product description failed

-9:  get serial number failed

-11:  libusb_get_device_descriptor() failed ";

%feature("docstring")  _ftdi_determine_max_packet_size "

Internal function to determine the maximum packet size.

Parameters:
-----------

ftdi:  pointer to ftdi_context

dev:  libusb usb_dev to use

Returns:
--------

Maximum:  packet size for this device ";

%feature("docstring")  ftdi_usb_open_dev "

Opens a ftdi device given by an usb_device.

Parameters:
-----------

ftdi:  pointer to ftdi_context

dev:  libusb usb_dev to use

Returns:
--------

0:  all fine

-3:  unable to config device

-4:  unable to open device

-5:  unable to claim device

-6:  reset failed

-7:  set baudrate failed

-8:  ftdi context invalid

-9:  libusb_get_device_descriptor() failed

-10:  libusb_get_config_descriptor() failed

-11:  libusb_detach_kernel_driver() failed

-12:  libusb_get_configuration() failed ";

%feature("docstring")  ftdi_usb_open "

Opens the first device with a given vendor and product ids.

Parameters:
-----------

ftdi:  pointer to ftdi_context

vendor:  Vendor ID

product:  Product ID

Returns:
--------

same:  as ftdi_usb_open_desc() ";

%feature("docstring")  ftdi_usb_open_desc "

Opens the first device with a given, vendor id, product id,
description and serial.

Parameters:
-----------

ftdi:  pointer to ftdi_context

vendor:  Vendor ID

product:  Product ID

description:  Description to search for. Use NULL if not needed.

serial:  Serial to search for. Use NULL if not needed.

Returns:
--------

0:  all fine

-3:  usb device not found

-4:  unable to open device

-5:  unable to claim device

-6:  reset failed

-7:  set baudrate failed

-8:  get product description failed

-9:  get serial number failed

-12:  libusb_get_device_list() failed

-13:  libusb_get_device_descriptor() failed ";

%feature("docstring")  ftdi_usb_open_desc_index "

Opens the index-th device with a given, vendor id, product id,
description and serial.

Parameters:
-----------

ftdi:  pointer to ftdi_context

vendor:  Vendor ID

product:  Product ID

description:  Description to search for. Use NULL if not needed.

serial:  Serial to search for. Use NULL if not needed.

index:  Number of matching device to open if there are more than one,
starts with 0.

Returns:
--------

0:  all fine

-1:  usb_find_busses() failed

-2:  usb_find_devices() failed

-3:  usb device not found

-4:  unable to open device

-5:  unable to claim device

-6:  reset failed

-7:  set baudrate failed

-8:  get product description failed

-9:  get serial number failed

-10:  unable to close device

-11:  ftdi context invalid ";

%feature("docstring")  ftdi_usb_open_string "

Opens the ftdi-device described by a description-string. Intended to
be used for parsing a device-description given as commandline
argument.

Parameters:
-----------

ftdi:  pointer to ftdi_context

description:  NULL-terminated description-string, using this format:
d:<devicenode> path of bus and device-node (e.g. \"003/001\") within
usb device tree (usually at /proc/bus/usb/)

i:<vendor>:<product> first device with given vendor and product id,
ids can be decimal, octal (preceded by \"0\") or hex (preceded by
\"0x\")

i:<vendor>:<product>:<index> as above with index being the number of
the device (starting with 0) if there are more than one

s:<vendor>:<product>:<serial> first device with given vendor id,
product id and serial string

The description format may be extended in later versions.

Returns:
--------

0:  all fine

-2:  libusb_get_device_list() failed

-3:  usb device not found

-4:  unable to open device

-5:  unable to claim device

-6:  reset failed

-7:  set baudrate failed

-8:  get product description failed

-9:  get serial number failed

-10:  unable to close device

-11:  illegal description format

-12:  ftdi context invalid ";

%feature("docstring")  ftdi_usb_reset "

Resets the ftdi device.

Parameters:
-----------

ftdi:  pointer to ftdi_context

Returns:
--------

0:  all fine

-1:  FTDI reset failed

-2:  USB device unavailable ";

%feature("docstring")  ftdi_usb_purge_rx_buffer "

Clears the read buffer on the chip and the internal read buffer.

Parameters:
-----------

ftdi:  pointer to ftdi_context

Returns:
--------

0:  all fine

-1:  read buffer purge failed

-2:  USB device unavailable ";

%feature("docstring")  ftdi_usb_purge_tx_buffer "

Clears the write buffer on the chip.

Parameters:
-----------

ftdi:  pointer to ftdi_context

Returns:
--------

0:  all fine

-1:  write buffer purge failed

-2:  USB device unavailable ";

%feature("docstring")  ftdi_usb_purge_buffers "

Clears the buffers on the chip and the internal read buffer.

Parameters:
-----------

ftdi:  pointer to ftdi_context

Returns:
--------

0:  all fine

-1:  read buffer purge failed

-2:  write buffer purge failed

-3:  USB device unavailable ";

%feature("docstring")  ftdi_usb_close "

Closes the ftdi device. Call ftdi_deinit() if you're cleaning up.

Parameters:
-----------

ftdi:  pointer to ftdi_context

Returns:
--------

0:  all fine

-1:  usb_release failed

-3:  ftdi context invalid ";

%feature("docstring")  ftdi_to_clkbits_AM "";

%feature("docstring")  ftdi_to_clkbits "";

%feature("docstring")  ftdi_convert_baudrate "

ftdi_convert_baudrate returns nearest supported baud rate to that
requested. Function is only used internally ";

%feature("docstring")  convert_baudrate_UT_export "

Wrapper function to export ftdi_convert_baudrate() to the unit test Do
not use, it's only for the unit test framework. ";

%feature("docstring")  ftdi_set_baudrate "

Sets the chip baud rate

Parameters:
-----------

ftdi:  pointer to ftdi_context

baudrate:  baud rate to set

Returns:
--------

0:  all fine

-1:  invalid baudrate

-2:  setting baudrate failed

-3:  USB device unavailable ";

%feature("docstring")  ftdi_set_line_property "

Set (RS232) line characteristics. The break type can only be set via
ftdi_set_line_property2() and defaults to \"off\".

Parameters:
-----------

ftdi:  pointer to ftdi_context

bits:  Number of bits

sbit:  Number of stop bits

parity:  Parity mode

Returns:
--------

0:  all fine

-1:  Setting line property failed ";

%feature("docstring")  ftdi_set_line_property2 "

Set (RS232) line characteristics

Parameters:
-----------

ftdi:  pointer to ftdi_context

bits:  Number of bits

sbit:  Number of stop bits

parity:  Parity mode

break_type:  Break type

Returns:
--------

0:  all fine

-1:  Setting line property failed

-2:  USB device unavailable ";

%feature("docstring")  ftdi_write_data "

Writes data in chunks (see ftdi_write_data_set_chunksize()) to the
chip

Parameters:
-----------

ftdi:  pointer to ftdi_context

buf:  Buffer with the data

size:  Size of the buffer

Returns:
--------

-666:  USB device unavailable

<0:  error code from usb_bulk_write()

>0:  number of bytes written ";

%feature("docstring")  ftdi_read_data_cb "";

%feature("docstring")  ftdi_write_data_cb "";

%feature("docstring")  ftdi_write_data_submit "

Writes data to the chip. Does not wait for completion of the transfer
nor does it make sure that the transfer was successful.

Use libusb 1.0 asynchronous API.

Parameters:
-----------

ftdi:  pointer to ftdi_context

buf:  Buffer with the data

size:  Size of the buffer

Returns:
--------

NULL:  Some error happens when submit transfer

!NULL:  Pointer to a ftdi_transfer_control ";

%feature("docstring")  ftdi_read_data_submit "

Reads data from the chip. Does not wait for completion of the transfer
nor does it make sure that the transfer was successful.

Use libusb 1.0 asynchronous API.

Parameters:
-----------

ftdi:  pointer to ftdi_context

buf:  Buffer with the data

size:  Size of the buffer

Returns:
--------

NULL:  Some error happens when submit transfer

!NULL:  Pointer to a ftdi_transfer_control ";

%feature("docstring")  ftdi_transfer_data_done "

Wait for completion of the transfer.

Use libusb 1.0 asynchronous API.

Parameters:
-----------

tc:  pointer to ftdi_transfer_control

Returns:
--------

<:  0: Some error happens

>=:  0: Data size transferred

tc->transfer could be NULL if \"(size <= ftdi->readbuffer_remaining)\"
at ftdi_read_data_submit(). Therefore, we need to check it here. ";

%feature("docstring")  ftdi_write_data_set_chunksize "

Configure write buffer chunk size. Default is 4096.

Parameters:
-----------

ftdi:  pointer to ftdi_context

chunksize:  Chunk size

Returns:
--------

0:  all fine

-1:  ftdi context invalid ";

%feature("docstring")  ftdi_write_data_get_chunksize "

Get write buffer chunk size.

Parameters:
-----------

ftdi:  pointer to ftdi_context

chunksize:  Pointer to store chunk size in

Returns:
--------

0:  all fine

-1:  ftdi context invalid ";

%feature("docstring")  ftdi_read_data "

Reads data in chunks (see ftdi_read_data_set_chunksize()) from the
chip.

Automatically strips the two modem status bytes transfered during
every read.

Parameters:
-----------

ftdi:  pointer to ftdi_context

buf:  Buffer to store data in

size:  Size of the buffer

Returns:
--------

-666:  USB device unavailable

<0:  error code from libusb_bulk_transfer()

0:  no data was available

>0:  number of bytes read ";

%feature("docstring")  ftdi_read_data_set_chunksize "

Configure read buffer chunk size. Default is 4096.

Automatically reallocates the buffer.

Parameters:
-----------

ftdi:  pointer to ftdi_context

chunksize:  Chunk size

Returns:
--------

0:  all fine

-1:  ftdi context invalid ";

%feature("docstring")  ftdi_read_data_get_chunksize "

Get read buffer chunk size.

Parameters:
-----------

ftdi:  pointer to ftdi_context

chunksize:  Pointer to store chunk size in

Returns:
--------

0:  all fine

-1:  FTDI context invalid ";

%feature("docstring")  ftdi_set_bitmode "

Enable/disable bitbang modes.

Parameters:
-----------

ftdi:  pointer to ftdi_context

bitmask:  Bitmask to configure lines. HIGH/ON value configures a line
as output.

mode:  Bitbang mode: use the values defined in ftdi_mpsse_mode

Returns:
--------

0:  all fine

-1:  can't enable bitbang mode

-2:  USB device unavailable ";

%feature("docstring")  ftdi_disable_bitbang "

Disable bitbang mode.

Parameters:
-----------

ftdi:  pointer to ftdi_context

Returns:
--------

0:  all fine

-1:  can't disable bitbang mode

-2:  USB device unavailable ";

%feature("docstring")  ftdi_read_pins "

Directly read pin state, circumventing the read buffer. Useful for
bitbang mode.

Parameters:
-----------

ftdi:  pointer to ftdi_context

pins:  Pointer to store pins into

Returns:
--------

0:  all fine

-1:  read pins failed

-2:  USB device unavailable ";

%feature("docstring")  ftdi_set_latency_timer "

Set latency timer

The FTDI chip keeps data in the internal buffer for a specific amount
of time if the buffer is not full yet to decrease load on the usb bus.

Parameters:
-----------

ftdi:  pointer to ftdi_context

latency:  Value between 1 and 255

Returns:
--------

0:  all fine

-1:  latency out of range

-2:  unable to set latency timer

-3:  USB device unavailable ";

%feature("docstring")  ftdi_get_latency_timer "

Get latency timer

Parameters:
-----------

ftdi:  pointer to ftdi_context

latency:  Pointer to store latency value in

Returns:
--------

0:  all fine

-1:  unable to get latency timer

-2:  USB device unavailable ";

%feature("docstring")  ftdi_poll_modem_status "

Poll modem status information

This function allows the retrieve the two status bytes of the device.
The device sends these bytes also as a header for each read access
where they are discarded by ftdi_read_data(). The chip generates the
two stripped status bytes in the absence of data every 40 ms.

Layout of the first byte: B0..B3 - must be 0

B4 Clear to send (CTS) 0 = inactive 1 = active

B5 Data set ready (DTS) 0 = inactive 1 = active

B6 Ring indicator (RI) 0 = inactive 1 = active

B7 Receive line signal detect (RLSD) 0 = inactive 1 = active

Layout of the second byte: B0 Data ready (DR)

B1 Overrun error (OE)

B2 Parity error (PE)

B3 Framing error (FE)

B4 Break interrupt (BI)

B5 Transmitter holding register (THRE)

B6 Transmitter empty (TEMT)

B7 Error in RCVR FIFO

Parameters:
-----------

ftdi:  pointer to ftdi_context

status:  Pointer to store status information in. Must be two bytes.

Returns:
--------

0:  all fine

-1:  unable to retrieve status information

-2:  USB device unavailable ";

%feature("docstring")  ftdi_setflowctrl "

Set flowcontrol for ftdi chip

Parameters:
-----------

ftdi:  pointer to ftdi_context

flowctrl:  flow control to use. should be SIO_DISABLE_FLOW_CTRL,
SIO_RTS_CTS_HS, SIO_DTR_DSR_HS or SIO_XON_XOFF_HS

Returns:
--------

0:  all fine

-1:  set flow control failed

-2:  USB device unavailable ";

%feature("docstring")  ftdi_setdtr "

Set dtr line

Parameters:
-----------

ftdi:  pointer to ftdi_context

state:  state to set line to (1 or 0)

Returns:
--------

0:  all fine

-1:  set dtr failed

-2:  USB device unavailable ";

%feature("docstring")  ftdi_setrts "

Set rts line

Parameters:
-----------

ftdi:  pointer to ftdi_context

state:  state to set line to (1 or 0)

Returns:
--------

0:  all fine

-1:  set rts failed

-2:  USB device unavailable ";

%feature("docstring")  ftdi_setdtr_rts "

Set dtr and rts line in one pass

Parameters:
-----------

ftdi:  pointer to ftdi_context

dtr:  DTR state to set line to (1 or 0)

rts:  RTS state to set line to (1 or 0)

Returns:
--------

0:  all fine

-1:  set dtr/rts failed

-2:  USB device unavailable ";

%feature("docstring")  ftdi_set_event_char "

Set the special event character

Parameters:
-----------

ftdi:  pointer to ftdi_context

eventch:  Event character

enable:  0 to disable the event character, non-zero otherwise

Returns:
--------

0:  all fine

-1:  unable to set event character

-2:  USB device unavailable ";

%feature("docstring")  ftdi_set_error_char "

Set error character

Parameters:
-----------

ftdi:  pointer to ftdi_context

errorch:  Error character

enable:  0 to disable the error character, non-zero otherwise

Returns:
--------

0:  all fine

-1:  unable to set error character

-2:  USB device unavailable ";

%feature("docstring")  ftdi_eeprom_initdefaults "

Init eeprom with default values for the connected device

Parameters:
-----------

ftdi:  pointer to ftdi_context

manufacturer:  String to use as Manufacturer

product:  String to use as Product description

serial:  String to use as Serial number description

Returns:
--------

0:  all fine

-1:  No struct ftdi_context

-2:  No struct ftdi_eeprom

-3:  No connected device or device not yet opened ";

%feature("docstring")  ftdi_eeprom_set_strings "";

%feature("docstring")  set_ft232h_cbus "";

%feature("docstring")  type2bit "";

%feature("docstring")  ftdi_eeprom_build "

Build binary buffer from ftdi_eeprom structure. Output is suitable for
ftdi_write_eeprom().

Parameters:
-----------

ftdi:  pointer to ftdi_context

Returns:
--------

>=0:  size of eeprom user area in bytes

-1:  eeprom size (128 bytes) exceeded by custom strings

-2:  Invalid eeprom or ftdi pointer

-3:  Invalid cbus function setting (FIXME: Not in the code?)

-4:  Chip doesn't support invert (FIXME: Not in the code?)

-5:  Chip doesn't support high current drive (FIXME: Not in the code?)

-6:  No connected EEPROM or EEPROM Type unknown ";

%feature("docstring")  bit2type "";

%feature("docstring")  print_inverted_bits "";

%feature("docstring")  ftdi_eeprom_decode "

Decode binary EEPROM image into an ftdi_eeprom structure.

For FT-X devices use AN_201 FT-X MTP memory Configuration to decode.

Parameters:
-----------

ftdi:  pointer to ftdi_context

verbose:  Decode EEPROM on stdout

Returns:
--------

0:  all fine

-1:  something went wrong

FIXME: How to pass size? How to handle size field in ftdi_eeprom?
FIXME: Strings are malloc'ed here and should be freed somewhere ";

%feature("docstring")  ftdi_get_eeprom_value "

Get a value from the decoded EEPROM structure

Parameters:
-----------

ftdi:  pointer to ftdi_context

value_name:  Enum of the value to query

value:  Pointer to store read value

Returns:
--------

0:  all fine

-1:  Value doesn't exist ";

%feature("docstring")  ftdi_set_eeprom_value "

Set a value in the decoded EEPROM Structure No parameter checking is
performed

Parameters:
-----------

ftdi:  pointer to ftdi_context

value_name:  Enum of the value to set

value:  to set

Returns:
--------

0:  all fine

-1:  Value doesn't exist

-2:  Value not user settable ";

%feature("docstring")  ftdi_get_eeprom_buf "

Get the read-only buffer to the binary EEPROM content

Parameters:
-----------

ftdi:  pointer to ftdi_context

buf:  buffer to receive EEPROM content

size:  Size of receiving buffer

Returns:
--------

0:  All fine

-1:  struct ftdi_contxt or ftdi_eeprom missing

-2:  Not enough room to store eeprom ";

%feature("docstring")  ftdi_set_eeprom_buf "

Set the EEPROM content from the user-supplied prefilled buffer

Parameters:
-----------

ftdi:  pointer to ftdi_context

buf:  buffer to read EEPROM content

size:  Size of buffer

Returns:
--------

0:  All fine

-1:  struct ftdi_context or ftdi_eeprom or buf missing ";

%feature("docstring")  ftdi_set_eeprom_user_data "

Set the EEPROM user data content from the user-supplied prefilled
buffer

Parameters:
-----------

ftdi:  pointer to ftdi_context

buf:  buffer to read EEPROM user data content

size:  Size of buffer

Returns:
--------

0:  All fine

-1:  struct ftdi_context or ftdi_eeprom or buf missing ";

%feature("docstring")  ftdi_read_eeprom_location "

Read eeprom location

Parameters:
-----------

ftdi:  pointer to ftdi_context

eeprom_addr:  Address of eeprom location to be read

eeprom_val:  Pointer to store read eeprom location

Returns:
--------

0:  all fine

-1:  read failed

-2:  USB device unavailable ";

%feature("docstring")  ftdi_read_eeprom "

Read eeprom

Parameters:
-----------

ftdi:  pointer to ftdi_context

Returns:
--------

0:  all fine

-1:  read failed

-2:  USB device unavailable ";

%feature("docstring")  ftdi_read_chipid_shift "";

%feature("docstring")  ftdi_read_chipid "

Read the FTDIChip-ID from R-type devices

Parameters:
-----------

ftdi:  pointer to ftdi_context

chipid:  Pointer to store FTDIChip-ID

Returns:
--------

0:  all fine

-1:  read failed

-2:  USB device unavailable ";

%feature("docstring")  ftdi_write_eeprom_location "

Write eeprom location

Parameters:
-----------

ftdi:  pointer to ftdi_context

eeprom_addr:  Address of eeprom location to be written

eeprom_val:  Value to be written

Returns:
--------

0:  all fine

-1:  write failed

-2:  USB device unavailable

-3:  Invalid access to checksum protected area below 0x80

-4:  Device can't access unprotected area

-5:  Reading chip type failed ";

%feature("docstring")  ftdi_write_eeprom "

Write eeprom

Parameters:
-----------

ftdi:  pointer to ftdi_context

Returns:
--------

0:  all fine

-1:  read failed

-2:  USB device unavailable

-3:  EEPROM not initialized for the connected device; ";

%feature("docstring")  ftdi_erase_eeprom "";

%feature("docstring")  ftdi_get_error_string "

Get string representation for last error code

Parameters:
-----------

ftdi:  pointer to ftdi_context

Returns:
--------

Pointer:  to error string ";

