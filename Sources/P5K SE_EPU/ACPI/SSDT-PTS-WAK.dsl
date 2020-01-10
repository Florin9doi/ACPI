DefinitionBlock ("", "SSDT", 1, "HACK", "PTS_____", 0x00000000)
{
    // LPC Patch
    External (_SB.PCI0.SBRG, DeviceObj)
    Method (\_SB.PCI0.SBRG._DSM, 4)
    {
        If (!Arg2) { Return (Buffer () { 0x03 } ) }
        Return (Package ()
        {
            "device-id", Buffer () { 0x16, 0x29, 0x00, 0x00 }
        })
    }

    // Power button
    // External (_SB.PWRB, DeviceObj)
    // Device (_SB.PWRB)
    // {
    //     Name (_CID, EisaId ("PNP0C0C"))
    // }
}
