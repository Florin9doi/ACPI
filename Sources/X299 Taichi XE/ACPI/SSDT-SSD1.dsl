DefinitionBlock ("", "SSDT", 1, "HACK", "NVME_1", 0x00000000)
{
    External (_SB_.PC03.BR3D.SL0C, DeviceObj)
    Scope (\_SB.PC03.BR3D.SL0C)
    {
        Method (_DSM, 4)
        {
            If (!Arg2) { Return (Buffer () { 0x03 } ) }
            Return (Package ()
            {
                "AAPL,slot-name", "M.2 Slot-1",
                "name", "Samsung 970 EVO Plus 500GB",
            })
        }
    }
}
