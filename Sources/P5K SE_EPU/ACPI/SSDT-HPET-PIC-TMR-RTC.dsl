DefinitionBlock ("", "SSDT", 1, "HACK", "FIX_IRQs", 0x00000000)
{
    // Patch HPET
    External (_SB_.PCI0.SBRG.HPET._STA)
    Scope (\_SB)
    {
        Method (_INI, 0, NotSerialized)
        {
            Store (Zero, \_SB.PCI0.SBRG.HPET._STA)
        }
    }
    Device (\_SB.PCI0.LPC0)
    {
        Name (_ADR, 1)
        Device (HPET)
        {
            Name (_HID, EisaId ("PNP0103"))
            Name (CRS, ResourceTemplate ()
            {
                IRQNoFlags() {0, 8, 11, 12}
                Memory32Fixed (ReadWrite,
                    0xFED00000,         // Address Base
                    0x00000400,         // Address Length
                    _Y00)
            })
            External(\_SB.PCI0.SBRG.HPET.HPTS, FieldUnitObj)
            Method (_STA, 0, NotSerialized)
            {
                Return (0x0F)
            }
            Method (_CRS, 0, NotSerialized)
            {
                CreateDWordField (CRS, \_SB.PCI0.LPC0.HPET._Y00._BAS, HPT)
                Local0 = (\_SB.PCI0.SBRG.HPET.HPTS * 0x1000)
                HPT = (Local0 + 0xFED00000)
                Return (CRS)
            }
        }
    }

    // Patch PIC (IRQ)
    External (_SB.PCI0.SBRG.PIC, DeviceObj)
    Scope (\_SB.PCI0.SBRG.PIC)
    {
        Name (_STA, 0)
    }
    Device (\_SB.PCI0.LPC0.IPIC)
    {
        Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            IO (Decode16,
                0x0020,             // Range Minimum
                0x0020,             // Range Maximum
                0x00,               // Alignment
                0x02,               // Length
                )
            IO (Decode16,
                0x00A0,             // Range Minimum
                0x00A0,             // Range Maximum
                0x00,               // Alignment
                0x02,               // Length
                )
        })
    }

    // Patch TMR (IRQ)
    External (_SB.PCI0.SBRG.TMR, DeviceObj)
    Scope (\_SB.PCI0.SBRG.TMR)
    {
        Name (_STA, 0)
    }
    Device (\_SB.PCI0.LPC0.TIMR)
    {
        Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            IO (Decode16,
                0x0040,             // Range Minimum
                0x0040,             // Range Maximum
                0x00,               // Alignment
                0x04,               // Length
                )
        })
    }

    // Patch RTC (IRQ)
    External (_SB.PCI0.SBRG.RTC0, DeviceObj)
    Scope (\_SB.PCI0.SBRG.RTC0)
    {
        Name (_STA, 0)
    }
    Device (\_SB.PCI0.LPC0.RTC)
    {
        Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            IO (Decode16,
                0x0070,             // Range Minimum
                0x0070,             // Range Maximum
                0x00,               // Alignment
                0x02,               // Length
                )
        })
    }

    // Add SMBus
    Device(\_SB.PCI0.LPC0.BUS0)
    {
        Name(_CID, "smbus")
        Name(_ADR, Zero)
        Device(DVL0)
        {
            Name(_ADR, 0x57)
            Name(_CID, "diagsvault")
            Method(_DSM, 4)
            {
                If (!Arg2) { Return (Buffer() { 0x03 } ) }
                Return (Package() { "address", 0x57 })
            }
        }
    }
}
