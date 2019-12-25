DefinitionBlock ("", "SSDT", 2, "HACK", "PCIE_3", 0x00000000)
{
    External (_SB_.PC01.BR1A, DeviceObj)
    Scope (\_SB.PC01.BR1A)
    {
        Method (SL01._DSM, 4)
        {
            If (!Arg2) { Return (Buffer () { 0x03 } ) }
            Return (Package ()
            {
                "AAPL,slot-name", "PCIE Slot-3@0",
                "name", "NVIDIA GeForce RTX 2060 SUPER",
                "device_type", "Display Controller",
                "IOName", "#display",
                "class-code", Buffer () { 0xFF, 0xFF, 0xFF, 0xFF }
            })
        }
        Device (DEV1)
        {
            Name (_ADR, 1)
            Method (_DSM, 4)
            {
                If (!Arg2) { Return (Buffer () { 0x03 } ) }
                Return (Package ()
                {
                    "AAPL,slot-name", "PCIE Slot-3@1",
                    "name", "NVIDIA GeForce RTX 2060 SUPER - HD Audio Controller",
                })
            }
        }
        Device (DEV2)
        {
            Name (_ADR, 2)
            Method (_DSM, 4)
            {
                If (!Arg2) { Return (Buffer () { 0x03 } ) }
                Return (Package ()
                {
                    "AAPL,slot-name", "PCIE Slot-3@2",
                    "name", "NVIDIA GeForce RTX 2060 SUPER - USB 3.1 Host Controller",
                })
            }
        }
        Device (DEV3)
        {
            Name (_ADR, 3)
            Method (_DSM, 4)
            {
                If (!Arg2) { Return (Buffer () { 0x03 } ) }
                Return (Package ()
                {
                    "AAPL,slot-name", "PCIE Slot-3@3",
                    "name", "NVIDIA GeForce RTX 2060 SUPER - USB Type-C UCSI Controller",
                })
            }
        }
    }
}
