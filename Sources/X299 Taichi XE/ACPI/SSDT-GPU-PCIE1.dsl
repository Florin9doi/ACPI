DefinitionBlock ("", "SSDT", 2, "HACK", "PCIE_1", 0x00000000)
{
    External (_SB_.PC02.BR2A, DeviceObj)
    Scope (\_SB.PC02.BR2A)
    {
        Method (SL05._DSM, 4)
        {
            If (!Arg2) { Return (Buffer () { 0x03 } ) }
            Return (Package ()
            {
                "AAPL,slot-name", "PCIE Slot-1@0",
                "name", "NVIDIA GeForce GT 730",
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
                    "AAPL,slot-name", "PCIE Slot-1@1",
                    "name", "NVIDIA GeForce GT 730 - HD Audio Controller",
                })
            }
        }
    }
}
