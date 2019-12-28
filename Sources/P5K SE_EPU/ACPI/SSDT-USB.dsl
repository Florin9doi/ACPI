DefinitionBlock ("", "SSDT", 1, "HACK", "USB_EHCI", 0x00000000)
{
    // Patch USB
    External (_SB_.PCI0, DeviceObj)
    Scope (\_SB.PCI0)
    {
        Method (EUSB._DSM, 4)
        {
            If (!Arg2) { Return (Buffer () { 0x03 } ) }
            Return (Package ()
            {
                "device-id", Buffer () { 0x3A, 0x3A, 0x00, 0x00 },
                "AAPL,clock-id", Buffer () { 0x01 },
                "AAPL,current-available", 0x04B0,
                "AAPL,current-extra", 0x02BC,
                "AAPL,current-in-sleep", 0x03E8
            })
        }
        Method (USBE._DSM, 4)
        {
            If (!Arg2) { Return (Buffer () { 0x03 } ) }
            Return (Package ()
            {
                "device-id", Buffer () { 0x3C, 0x3A, 0x00, 0x00 },
                "AAPL,clock-id", Buffer () { 0x00 },
                "AAPL,current-available", 0x04B0,
                "AAPL,current-extra", 0x02BC,
                "AAPL,current-in-sleep", 0x03E8
            })
        }
        Method (USB0._DSM, 4)
        {
            If (!Arg2) { Return (Buffer () { 0x03 } ) }
            Return (Package ()
            {
                "device-id", Buffer () { 0x34, 0x3A, 0x00, 0x00 }
            })
        }
        Method (USB1._DSM, 4)
        {
            If (!Arg2) { Return (Buffer () { 0x03 } ) }
            Return (Package ()
            {
                "device-id", Buffer () { 0x35, 0x3A, 0x00, 0x00 }
            })
        }
        Method (USB2._DSM, 4)
        {
            If (!Arg2) { Return (Buffer () { 0x03 } ) }
            Return (Package ()
            {
                "device-id", Buffer () { 0x36, 0x3A, 0x00, 0x00 }
            })
        }
        Method (USB4._DSM, 4)
        {
            If (!Arg2) { Return (Buffer () { 0x03 } ) }
            Return (Package ()
            {
                "device-id", Buffer () { 0x37, 0x3A, 0x00, 0x00 }
            })
        }
        Method (USB5._DSM, 4)
        {
            If (!Arg2) { Return (Buffer () { 0x03 } ) }
            Return (Package ()
            {
                "device-id", Buffer () { 0x38, 0x3A, 0x00, 0x00 }
            })
        }
        Method (USB6._DSM, 4)
        {
            If (!Arg2) { Return (Buffer () { 0x03 } ) }
            Return (Package ()
            {
                "device-id", Buffer () { 0x39, 0x3A, 0x00, 0x00 }
            })
        }
    }
}
