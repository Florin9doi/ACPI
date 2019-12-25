DefinitionBlock ("", "SSDT", 1, "HACK", "NVME_3", 0x00000000)
{
    External (_SB_.PC00.RP21.SLTL, DeviceObj)
    Scope (\_SB.PC00.RP21.SLTL)
    {
        Method (_DSM, 4)
        {
            If (!Arg2) { Return (Buffer () { 0x03 } ) }
            Return (Package ()
            {
                "AAPL,slot-name", "M.2 Slot-3",
                "name", "Samsung 970 EVO Plus 500GB",
            })
        }
    }
}
