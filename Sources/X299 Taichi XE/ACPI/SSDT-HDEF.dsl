DefinitionBlock ("", "SSDT", 1, "HACK", "HDA_CTRL", 0x00000000)
{
    External (_SB_.PC00.CAVS, DeviceObj)
    Scope (\_SB.PC00.CAVS)
    {
        Method (_DSM, 4)
        {
            If (!Arg2) { Return (Buffer () { 0x03 } ) }
            Return (Package ()
            {
                "AAPL,slot-name", "Built In",
                "name", "Intel X299 HD Audio Controller",
                "device-id", Buffer () { 0xF0, 0xA2, 0x00, 0x00 },
                "layout-id", Buffer () { 0x07, 0x00, 0x00, 0x00 },
                "compatible", "pci8086,0C0C",
                "hda-gfx", "onboard-1",
                "MaximumBootBeepVolume", Buffer () { 0xEE },
                "MaximumBootBeepVolumeAlt", Buffer () { 0xEE },
                "PinConfigurations", Buffer () {}
            })
        }
    }
}
