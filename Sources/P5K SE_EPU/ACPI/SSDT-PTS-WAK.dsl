DefinitionBlock ("", "SSDT", 1, "HACK", "PTS_____", 0x00000000)
{
    // Patch _PTS
    External (XPTS, MethodObj)
    Method (\_PTS, 1)
    {
        If (5 != Arg0)
        {
            XPTS(Arg0)
        }
    }
}
