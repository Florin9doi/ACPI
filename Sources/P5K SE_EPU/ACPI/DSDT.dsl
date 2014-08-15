/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20140724-32 [Jul 24 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000893E (35134)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0x96
 *     OEM ID           "A0994"
 *     OEM Table ID     "A0994000"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20060113 (537264403)
 */
DefinitionBlock ("acpi.aml", "DSDT", 1, "A0994", "A0994000", 0x00000000)
{
    Scope (_PR)
    {
        Processor (CPU1, 0x01, 0x00000810, 0x06)
        {
            OperationRegion (STBL, SystemMemory, 0xCFF8E0D0, 0x0190)
            Name (NCPU, 0x04)
            Name (TYPE, 0x80000000)
            Name (HNDL, 0x80000000)
            Name (CFGD, 0x01000007)
            Name (TBLD, 0x80)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, Zero, REVS)
                CreateDWordField (Arg0, 0x04, SIZE)
                Store (SizeOf (Arg0), Local0)
                Store (Subtract (Local0, 0x08), Local1)
                CreateField (Arg0, 0x40, Multiply (Local1, 0x08), TEMP)
                Name (STS0, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                Concatenate (STS0, TEMP, Local2)
                _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953"), REVS, SIZE, Local2)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                CreateDWordField (Arg3, Zero, STS0)
                CreateDWordField (Arg3, 0x04, CAP0)
                CreateDWordField (Arg0, Zero, IID0)
                CreateDWordField (Arg0, 0x04, IID1)
                CreateDWordField (Arg0, 0x08, IID2)
                CreateDWordField (Arg0, 0x0C, IID3)
                Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953"))
                CreateDWordField (UID0, Zero, EID0)
                CreateDWordField (UID0, 0x04, EID1)
                CreateDWordField (UID0, 0x08, EID2)
                CreateDWordField (UID0, 0x0C, EID3)
                If (LNot (LAnd (LAnd (LEqual (IID0, EID0), LEqual (IID1, EID1)), 
                    LAnd (LEqual (IID2, EID2), LEqual (IID3, EID3)))))
                {
                    Store (0x06, STS0) /* \_PR_.CPU1._OSC.STS0 */
                    Return (Arg3)
                }

                If (LNotEqual (Arg1, One))
                {
                    Store (0x0A, STS0) /* \_PR_.CPU1._OSC.STS0 */
                    Return (Arg3)
                }

                Or (And (TYPE, 0x7FFFFFFF), CAP0, TYPE) /* \_PR_.CPU1.TYPE */
                If (And (CFGD, One))
                {
                    If (LAnd (LAnd (And (CFGD, 0x01000000), LEqual (And (TYPE, 
                        0x09), 0x09)), LNot (And (TBLD, One))))
                    {
                        Or (TBLD, One, TBLD) /* \_PR_.CPU1.TBLD */
                        Load (STBL, HNDL) /* \_PR_.CPU1.HNDL */
                    }
                }

                If (And (CFGD, 0xF0))
                {
                    If (LAnd (LAnd (And (CFGD, 0x01000000), And (TYPE, 0x18
                        )), LNot (And (TBLD, 0x02))))
                    {
                        Or (TBLD, 0x02, TBLD) /* \_PR_.CPU1.TBLD */
                    }
                }

                Return (Arg3)
            }
        }
    }

    Scope (_PR)
    {
        Processor (CPU2, 0x02, 0x00000810, 0x06)
        {
            OperationRegion (STBL, SystemMemory, 0xCFF8E260, 0x0143)
            Name (NCPU, 0x04)
            Name (TYPE, 0x80000000)
            Name (HNDL, 0x80000000)
            Name (CFGD, 0x01000007)
            Name (TBLD, 0x80)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, Zero, REVS)
                CreateDWordField (Arg0, 0x04, SIZE)
                Store (SizeOf (Arg0), Local0)
                Store (Subtract (Local0, 0x08), Local1)
                CreateField (Arg0, 0x40, Multiply (Local1, 0x08), TEMP)
                Name (STS1, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                Concatenate (STS1, TEMP, Local2)
                _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953"), REVS, SIZE, Local2)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                CreateDWordField (Arg3, Zero, STS1)
                CreateDWordField (Arg3, 0x04, CAP1)
                CreateDWordField (Arg0, Zero, IID0)
                CreateDWordField (Arg0, 0x04, IID1)
                CreateDWordField (Arg0, 0x08, IID2)
                CreateDWordField (Arg0, 0x0C, IID3)
                Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953"))
                CreateDWordField (UID0, Zero, EID0)
                CreateDWordField (UID0, 0x04, EID1)
                CreateDWordField (UID0, 0x08, EID2)
                CreateDWordField (UID0, 0x0C, EID3)
                If (LNot (LAnd (LAnd (LEqual (IID0, EID0), LEqual (IID1, EID1)), 
                    LAnd (LEqual (IID2, EID2), LEqual (IID3, EID3)))))
                {
                    Store (0x06, STS1) /* \_PR_.CPU2._OSC.STS1 */
                    Return (Arg3)
                }

                If (LNotEqual (Arg1, One))
                {
                    Store (0x0A, STS1) /* \_PR_.CPU2._OSC.STS1 */
                    Return (Arg3)
                }

                Or (And (TYPE, 0x7FFFFFFF), CAP1, TYPE) /* \_PR_.CPU2.TYPE */
                If (And (CFGD, One))
                {
                    If (LAnd (LAnd (And (CFGD, 0x01000000), LEqual (And (TYPE, 
                        0x09), 0x09)), LNot (And (TBLD, One))))
                    {
                        Or (TBLD, One, TBLD) /* \_PR_.CPU2.TBLD */
                        Load (STBL, HNDL) /* \_PR_.CPU2.HNDL */
                    }
                }

                If (And (CFGD, 0xF0))
                {
                    If (LAnd (LAnd (And (CFGD, 0x01000000), And (TYPE, 0x18
                        )), LNot (And (TBLD, 0x02))))
                    {
                        Or (TBLD, 0x02, TBLD) /* \_PR_.CPU2.TBLD */
                    }
                }

                Return (Arg3)
            }
        }
    }

    Scope (_PR)
    {
        Processor (CPU3, 0x03, 0x00000810, 0x06)
        {
            OperationRegion (STBL, SystemMemory, 0xCFF8E3B0, 0x0143)
            Name (NCPU, 0x04)
            Name (TYPE, 0x80000000)
            Name (HNDL, 0x80000000)
            Name (CFGD, 0x01000007)
            Name (TBLD, 0x80)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, Zero, REVS)
                CreateDWordField (Arg0, 0x04, SIZE)
                Store (SizeOf (Arg0), Local0)
                Store (Subtract (Local0, 0x08), Local1)
                CreateField (Arg0, 0x40, Multiply (Local1, 0x08), TEMP)
                Name (STS2, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                Concatenate (STS2, TEMP, Local2)
                _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953"), REVS, SIZE, Local2)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                CreateDWordField (Arg3, Zero, STS2)
                CreateDWordField (Arg3, 0x04, CAP2)
                CreateDWordField (Arg0, Zero, IID0)
                CreateDWordField (Arg0, 0x04, IID1)
                CreateDWordField (Arg0, 0x08, IID2)
                CreateDWordField (Arg0, 0x0C, IID3)
                Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953"))
                CreateDWordField (UID0, Zero, EID0)
                CreateDWordField (UID0, 0x04, EID1)
                CreateDWordField (UID0, 0x08, EID2)
                CreateDWordField (UID0, 0x0C, EID3)
                If (LNot (LAnd (LAnd (LEqual (IID0, EID0), LEqual (IID1, EID1)), 
                    LAnd (LEqual (IID2, EID2), LEqual (IID3, EID3)))))
                {
                    Store (0x06, STS2) /* \_PR_.CPU3._OSC.STS2 */
                    Return (Arg3)
                }

                If (LNotEqual (Arg1, One))
                {
                    Store (0x0A, STS2) /* \_PR_.CPU3._OSC.STS2 */
                    Return (Arg3)
                }

                Or (And (TYPE, 0x7FFFFFFF), CAP2, TYPE) /* \_PR_.CPU3.TYPE */
                If (And (CFGD, One))
                {
                    If (LAnd (LAnd (And (CFGD, 0x01000000), LEqual (And (TYPE, 
                        0x09), 0x09)), LNot (And (TBLD, One))))
                    {
                        Or (TBLD, One, TBLD) /* \_PR_.CPU3.TBLD */
                        Load (STBL, HNDL) /* \_PR_.CPU3.HNDL */
                    }
                }

                If (And (CFGD, 0xF0))
                {
                    If (LAnd (LAnd (And (CFGD, 0x01000000), And (TYPE, 0x18
                        )), LNot (And (TBLD, 0x02))))
                    {
                        Or (TBLD, 0x02, TBLD) /* \_PR_.CPU3.TBLD */
                    }
                }

                Return (Arg3)
            }
        }
    }

    Scope (_PR)
    {
        Processor (CPU4, 0x04, 0x00000810, 0x06)
        {
            OperationRegion (STBL, SystemMemory, 0xCFF8E500, 0x0143)
            Name (NCPU, 0x04)
            Name (TYPE, 0x80000000)
            Name (HNDL, 0x80000000)
            Name (CFGD, 0x01000007)
            Name (TBLD, 0x80)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, Zero, REVS)
                CreateDWordField (Arg0, 0x04, SIZE)
                Store (SizeOf (Arg0), Local0)
                Store (Subtract (Local0, 0x08), Local1)
                CreateField (Arg0, 0x40, Multiply (Local1, 0x08), TEMP)
                Name (STS3, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                Concatenate (STS3, TEMP, Local2)
                _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953"), REVS, SIZE, Local2)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                CreateDWordField (Arg3, Zero, STS3)
                CreateDWordField (Arg3, 0x04, CAP3)
                CreateDWordField (Arg0, Zero, IID0)
                CreateDWordField (Arg0, 0x04, IID1)
                CreateDWordField (Arg0, 0x08, IID2)
                CreateDWordField (Arg0, 0x0C, IID3)
                Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953"))
                CreateDWordField (UID0, Zero, EID0)
                CreateDWordField (UID0, 0x04, EID1)
                CreateDWordField (UID0, 0x08, EID2)
                CreateDWordField (UID0, 0x0C, EID3)
                If (LNot (LAnd (LAnd (LEqual (IID0, EID0), LEqual (IID1, EID1)), 
                    LAnd (LEqual (IID2, EID2), LEqual (IID3, EID3)))))
                {
                    Store (0x06, STS3) /* \_PR_.CPU4._OSC.STS3 */
                    Return (Arg3)
                }

                If (LNotEqual (Arg1, One))
                {
                    Store (0x0A, STS3) /* \_PR_.CPU4._OSC.STS3 */
                    Return (Arg3)
                }

                Or (And (TYPE, 0x7FFFFFFF), CAP3, TYPE) /* \_PR_.CPU4.TYPE */
                If (And (CFGD, One))
                {
                    If (LAnd (LAnd (And (CFGD, 0x01000000), LEqual (And (TYPE, 
                        0x09), 0x09)), LNot (And (TBLD, One))))
                    {
                        Or (TBLD, One, TBLD) /* \_PR_.CPU4.TBLD */
                        Load (STBL, HNDL) /* \_PR_.CPU4.HNDL */
                    }
                }

                If (And (CFGD, 0xF0))
                {
                    If (LAnd (LAnd (And (CFGD, 0x01000000), And (TYPE, 0x18
                        )), LNot (And (TBLD, 0x02))))
                    {
                        Or (TBLD, 0x02, TBLD) /* \_PR_.CPU4.TBLD */
                    }
                }

                Return (Arg3)
            }
        }
    }

    Name (DP80, 0x80)
    Name (DP90, 0x90)
    Name (SPIO, 0x2E)
    Name (IOHW, 0x0290)
    Name (APIC, One)
    Name (SMIP, 0xB2)
    Name (PMBS, 0x0800)
    Name (PMLN, 0x80)
    Name (GPBS, 0x0480)
    Name (GPLN, 0x40)
    Name (SMBL, Zero)
    Name (PM30, 0x0830)
    Name (SUSW, 0xFF)
    Name (EAQF, One)
    Name (CFTE, One)
    Name (PCIB, 0xE0000000)
    Name (PCIL, 0x10000000)
    Name (SMBS, 0x0400)
    Name (CPUC, 0x04)
    OperationRegion (BIOS, SystemMemory, 0xCFF8E064, 0xFF)
    Field (BIOS, ByteAcc, NoLock, Preserve)
    {
        SS1,    1, 
        SS2,    1, 
        SS3,    1, 
        SS4,    1, 
        Offset (0x01), 
        IOST,   16, 
        TOPM,   32, 
        ROMS,   32, 
        MG1B,   32, 
        MG1L,   32, 
        MG2B,   32, 
        MG2L,   32, 
        Offset (0x1C), 
        CPB0,   32, 
        CPB1,   32, 
        CPB2,   32, 
        CPB3,   32, 
        ASSB,   8, 
        AOTB,   8, 
        AAXB,   32, 
        SMIF,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        MPEN,   8, 
        TPMF,   8, 
        MSC1,   32, 
        MSC2,   32, 
        MSC3,   32, 
        MSC4,   32, 
        MSC5,   32, 
        MSC6,   32, 
        MSC7,   32, 
        MSC8,   32, 
        DMAX,   8, 
        HPTA,   32
    }

    Method (RRIO, 4, NotSerialized)
    {
        Store ("RRIO", Debug)
    }

    Method (RDMA, 3, NotSerialized)
    {
        Store ("rDMA", Debug)
    }

    Name (PICM, Zero)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        If (Arg0)
        {
            Store (0xAA, DBG8) /* \DBG8 */
        }
        Else
        {
            Store (0xAC, DBG8) /* \DBG8 */
        }

        Store (Arg0, PICM) /* \PICM */
    }

    Name (OSVR, Ones)
    Method (OSFL, 0, NotSerialized)
    {
        If (LNotEqual (OSVR, Ones))
        {
            Return (OSVR) /* \OSVR */
        }

        If (LEqual (PICM, Zero))
        {
            Store (0xAC, DBG8) /* \DBG8 */
        }

        Store (One, OSVR) /* \OSVR */
        If (CondRefOf (_OSI, Local1))
        {
            If (_OSI ("Windows 2000"))
            {
                Store (0x04, OSVR) /* \OSVR */
            }

            If (_OSI ("Windows 2001"))
            {
                Store (Zero, OSVR) /* \OSVR */
            }

            If (_OSI ("Windows 2001 SP1"))
            {
                Store (Zero, OSVR) /* \OSVR */
            }

            If (_OSI ("Windows 2001 SP2"))
            {
                Store (Zero, OSVR) /* \OSVR */
            }

            If (_OSI ("Windows 2001.1"))
            {
                Store (Zero, OSVR) /* \OSVR */
            }

            If (_OSI ("Windows 2001.1 SP1"))
            {
                Store (Zero, OSVR) /* \OSVR */
            }

            If (_OSI ("Windows 2006"))
            {
                Store (Zero, OSVR) /* \OSVR */
            }
        }
        Else
        {
            If (MCTH (_OS, "Microsoft Windows NT"))
            {
                Store (0x04, OSVR) /* \OSVR */
            }
            Else
            {
                If (MCTH (_OS, "Microsoft WindowsME: Millennium Edition"))
                {
                    Store (0x02, OSVR) /* \OSVR */
                }

                If (MCTH (_OS, "Linux"))
                {
                    Store (0x03, OSVR) /* \OSVR */
                }
            }
        }

        Return (OSVR) /* \OSVR */
    }

    Method (MCTH, 2, NotSerialized)
    {
        If (LLess (SizeOf (Arg0), SizeOf (Arg1)))
        {
            Return (Zero)
        }

        Add (SizeOf (Arg0), One, Local0)
        Name (BUF0, Buffer (Local0) {})
        Name (BUF1, Buffer (Local0) {})
        Store (Arg0, BUF0) /* \MCTH.BUF0 */
        Store (Arg1, BUF1) /* \MCTH.BUF1 */
        While (Local0)
        {
            Decrement (Local0)
            If (LNotEqual (DerefOf (Index (BUF0, Local0)), DerefOf (Index (
                BUF1, Local0))))
            {
                Return (Zero)
            }
        }

        Return (One)
    }

    Name (PRWP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (GPRW, 2, NotSerialized)
    {
        Store (Arg0, Index (PRWP, Zero))
        Store (ShiftLeft (SS1, One), Local0)
        Or (Local0, ShiftLeft (SS2, 0x02), Local0)
        Or (Local0, ShiftLeft (SS3, 0x03), Local0)
        Or (Local0, ShiftLeft (SS4, 0x04), Local0)
        If (And (ShiftLeft (One, Arg1), Local0))
        {
            Store (Arg1, Index (PRWP, One))
        }
        Else
        {
            ShiftRight (Local0, One, Local0)
            If (LOr (LEqual (OSFL (), One), LEqual (OSFL (), 0x02)))
            {
                FindSetLeftBit (Local0, Index (PRWP, One))
            }
            Else
            {
                FindSetRightBit (Local0, Index (PRWP, One))
            }
        }

        Return (PRWP) /* \PRWP */
    }

    Name (WAKP, Package (0x02)
    {
        Zero, 
        Zero
    })
    OperationRegion (DEB0, SystemIO, DP80, 0x02)
    Field (DEB0, WordAcc, NoLock, Preserve)
    {
        DBG8,   16
    }

    OperationRegion (DEB4, SystemIO, 0x84, One)
    Field (DEB4, ByteAcc, NoLock, Preserve)
    {
        DBG4,   8
    }

    OperationRegion (DEB1, SystemIO, DP90, 0x02)
    Field (DEB1, WordAcc, NoLock, Preserve)
    {
        DBG9,   16
    }

    Scope (_SB)
    {
        Name (PR00, Package (0x17)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR00, Package (0x17)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR01, Package (0x08)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR01, Package (0x08)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,7,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00) /* \_SB_.AR00 */
                }

                Return (PR00) /* \_SB_.PR00 */
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                If (LOr (LEqual (OSFL (), One), LEqual (OSFL (), 0x02)))
                {
                    Return (0x02)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Device (MCH)
            {
                Name (_HID, EisaId ("PNP0C01") /* System Board */)  // _HID: Hardware ID
                Name (_UID, 0x0A)  // _UID: Unique ID
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Memory32Fixed (ReadWrite,
                        0xFED14000,         // Address Base
                        0x00006000,         // Address Length
                        )
                })
            }

            Method (NPTS, 1, NotSerialized)
            {
            }

            Method (NWAK, 1, NotSerialized)
            {
            }

            Device (P0P2)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR02) /* \_SB_.AR02 */
                    }

                    Return (PR02) /* \_SB_.PR02 */
                }
            }

            Device (P0P1)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0B, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR01) /* \_SB_.AR01 */
                    }

                    Return (PR01) /* \_SB_.PR01 */
                }
            }

            Device (SBRG)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Device (IELK)
                {
                    Name (_HID, "AWY0001")  // _HID: Hardware ID
                    OperationRegion (RXA0, PCI_Config, 0xA0, 0x20)
                    Field (RXA0, ByteAcc, NoLock, Preserve)
                    {
                            ,   9, 
                        PBLV,   1, 
                        Offset (0x10), 
                            ,   1, 
                        PBMS,   1, 
                            ,   1, 
                        PMCS,   1, 
                        ECNS,   1, 
                        Offset (0x11), 
                        ECT1,   16, 
                        ELEN,   1, 
                        Offset (0x14)
                    }

                    Method (\_GPE._L0A, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
                    {
                        Notify (\_SB.PCI0.SBRG.IELK, 0x81) // Information Change
                        Store (One, \_SB.PCI0.SBRG.IELK.PMCS)
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (ELEN)
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (SMOD, 1, NotSerialized)
                    {
                    }

                    Method (GPBS, 0, NotSerialized)
                    {
                        Return (XOr (PBLV, One))
                    }
                }

                Method (SPTS, 1, NotSerialized)
                {
                    Store (One, PS1S) /* \_SB_.PCI0.SBRG.PS1S */
                    Store (One, PS1E) /* \_SB_.PCI0.SBRG.PS1E */
                    Store (One, SLPS) /* \_SB_.SLPS */
                }

                Method (SWAK, 1, NotSerialized)
                {
                    Store (Zero, SLPS) /* \_SB_.SLPS */
                    Store (Zero, PS1E) /* \_SB_.PCI0.SBRG.PS1E */
                    If (LAnd (LEqual (Arg0, One), RTCS)) {}
                    Else
                    {
                        If (LAnd (LEqual (Arg0, 0x03), BRTC)) {}
                        Else
                        {
                            Notify (PWRB, 0x02) // Device Wake
                        }
                    }
                }

                OperationRegion (APMP, SystemIO, SMIP, 0x02)
                Field (APMP, ByteAcc, NoLock, Preserve)
                {
                    APMC,   8, 
                    APMS,   8
                }

                Field (APMP, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                        ,   1, 
                    BRTC,   1
                }

                OperationRegion (PMS0, SystemIO, PMBS, 0x04)
                Field (PMS0, ByteAcc, NoLock, Preserve)
                {
                        ,   10, 
                    RTCS,   1, 
                        ,   4, 
                    WAKS,   1, 
                    Offset (0x03), 
                    PWBT,   1, 
                    Offset (0x04)
                }

                OperationRegion (SMIE, SystemIO, PM30, 0x08)
                Field (SMIE, ByteAcc, NoLock, Preserve)
                {
                        ,   4, 
                    PS1E,   1, 
                        ,   31, 
                    PS1S,   1, 
                    Offset (0x08)
                }

                Scope (\_SB)
                {
                    Name (SLPS, Zero)
                }

                Device (PIC)
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
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (DMAD)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        DMA (Compatibility, BusMaster, Transfer8, )
                            {4}
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0087,             // Range Minimum
                            0x0087,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0089,             // Range Minimum
                            0x0089,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x008F,             // Range Minimum
                            0x008F,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x00,               // Alignment
                            0x20,               // Length
                            )
                    })
                }

                Device (TMR)
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
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (RTC0)
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
                        IRQNoFlags ()
                            {8}
                    })
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800") /* Microsoft Sound System Compatible Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (COPR)
                {
                    Name (_HID, EisaId ("PNP0C04") /* x87-compatible Floating Point Processing Unit */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (FDC)
                {
                    Name (_HID, EisaId ("PNP0700"))  // _HID: Hardware ID
                    Method (_FDE, 0, NotSerialized)  // _FDE: Floppy Disk Enumerate
                    {
                        Name (FDEP, Package (0x05)
                        {
                            Zero, 
                            Zero, 
                            0x02, 
                            0x02, 
                            0x02
                        })
                        If (_STA ())
                        {
                            Store (One, Index (FDEP, Zero))
                        }

                        Return (FDEP) /* \_SB_.PCI0.SBRG.FDC_._FDE.FDEP */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (DSTA (0x03))
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        DCNT (0x03, Zero)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        DCRS (0x03, One)
                        Store (IRQM, IRQE) /* \_SB_.PCI0.SBRG.IRQE */
                        Store (DMAM, DMAE) /* \_SB_.PCI0.SBRG.DMAE */
                        Store (IO11, IO21) /* \_SB_.PCI0.SBRG.IO21 */
                        Store (IO12, IO22) /* \_SB_.PCI0.SBRG.IO22 */
                        Store (0x06, LEN2) /* \_SB_.PCI0.SBRG.LEN2 */
                        Add (IO21, 0x07, IO31) /* \_SB_.PCI0.SBRG.IO31 */
                        Store (IO31, IO32) /* \_SB_.PCI0.SBRG.IO32 */
                        Store (One, LEN3) /* \_SB_.PCI0.SBRG.LEN3 */
                        Return (CRS2) /* \_SB_.PCI0.SBRG.CRS2 */
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        DSRS (Arg0, 0x03)
                        CreateWordField (Arg0, One, IRQE)
                        CreateByteField (Arg0, 0x04, DMAE)
                        ENFG (CGLD (0x03))
                        If (IRQE)
                        {
                            FindSetRightBit (IRQE, Local0)
                            Subtract (Local0, One, INTR) /* \_SB_.PCI0.SBRG.INTR */
                        }
                        Else
                        {
                            Store (Zero, INTR) /* \_SB_.PCI0.SBRG.INTR */
                        }

                        If (DMAE)
                        {
                            FindSetRightBit (DMAE, Local0)
                            Subtract (Local0, One, DMCH) /* \_SB_.PCI0.SBRG.DMCH */
                        }
                        Else
                        {
                            Store (0x04, DMCH) /* \_SB_.PCI0.SBRG.DMCH */
                        }

                        EXFG ()
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x03F0,             // Range Minimum
                                0x03F0,             // Range Maximum
                                0x01,               // Alignment
                                0x06,               // Length
                                )
                            IO (Decode16,
                                0x03F7,             // Range Minimum
                                0x03F7,             // Range Maximum
                                0x01,               // Alignment
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {6}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {2}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F0,             // Range Minimum
                                0x03F0,             // Range Maximum
                                0x01,               // Alignment
                                0x06,               // Length
                                )
                            IO (Decode16,
                                0x03F7,             // Range Minimum
                                0x03F7,             // Range Maximum
                                0x01,               // Alignment
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,2,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0370,             // Range Minimum
                                0x0370,             // Range Maximum
                                0x01,               // Alignment
                                0x06,               // Length
                                )
                            IO (Decode16,
                                0x0377,             // Range Minimum
                                0x0377,             // Range Maximum
                                0x01,               // Alignment
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,2,3}
                        }
                        EndDependentFn ()
                    })
                }

                Device (SIOR)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Method (_UID, 0, NotSerialized)  // _UID: Unique ID
                    {
                        Return (SPIO) /* \SPIO */
                    }

                    Name (CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y00)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            )
                        IO (Decode16,
                            0x0290,             // Range Minimum
                            0x0290,             // Range Maximum
                            0x00,               // Alignment
                            0x08,               // Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (LAnd (LNotEqual (SPIO, 0x03F0), LGreater (SPIO, 0xF0)))
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y00._MIN, GP10)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y00._MAX, GP11)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIOR._Y00._LEN, GPL1)  // _LEN: Length
                            Store (SPIO, GP10) /* \_SB_.PCI0.SBRG.SIOR._CRS.GP10 */
                            Store (SPIO, GP11) /* \_SB_.PCI0.SBRG.SIOR._CRS.GP11 */
                            Store (0x02, GPL1) /* \_SB_.PCI0.SBRG.SIOR._CRS.GPL1 */
                        }

                        Return (CRS) /* \_SB_.PCI0.SBRG.SIOR.CRS_ */
                    }
                }

                Name (DCAT, Package (0x15)
                {
                    0x02, 
                    0x03, 
                    One, 
                    Zero, 
                    0xFF, 
                    0x07, 
                    0xFF, 
                    0xFF, 
                    0x07, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0xFF, 
                    0xFF
                })
                Mutex (IOCF, 0x00)
                Method (ENFG, 1, NotSerialized)
                {
                    Acquire (IOCF, 0xFFFF)
                    Store (0x87, INDX) /* \_SB_.PCI0.SBRG.INDX */
                    Store (0x87, INDX) /* \_SB_.PCI0.SBRG.INDX */
                    Store (Arg0, LDN) /* \_SB_.PCI0.SBRG.LDN_ */
                }

                Method (EXFG, 0, NotSerialized)
                {
                    Store (0xAA, INDX) /* \_SB_.PCI0.SBRG.INDX */
                    Release (IOCF)
                }

                Method (LPTM, 1, NotSerialized)
                {
                    ENFG (CGLD (Arg0))
                    And (OPT0, 0x02, Local0)
                    EXFG ()
                    Return (Local0)
                }

                Method (UHID, 1, NotSerialized)
                {
                    If (LEqual (Arg0, One))
                    {
                        ENFG (CGLD (Arg0))
                        And (OPT1, 0x38, Local0)
                        EXFG ()
                        If (Local0)
                        {
                            Return (0x1005D041)
                        }
                    }

                    Return (0x0105D041)
                }

                Method (SIOK, 1, NotSerialized)
                {
                    ENFG (0x0A)
                    If (LGreater (Arg0, One))
                    {
                        Or (CRE4, 0x10, CRE4) /* \_SB_.PCI0.SBRG.CRE4 */
                    }

                    Store (CRE3, Local0)
                    EXFG ()
                }

                Method (SIOS, 1, NotSerialized)
                {
                    Store ("SIOS", Debug)
                    SIOK (Arg0)
                }

                Method (SIOW, 1, NotSerialized)
                {
                    Store ("SIOW", Debug)
                    SIOK (Zero)
                }

                Method (SIOH, 0, NotSerialized)
                {
                    Store ("SIOH", Debug)
                    ENFG (0x0A)
                    If (And (OPT3, 0x10))
                    {
                        Notify (PS2K, 0x02) // Device Wake
                    }

                    EXFG ()
                    SIOK (Zero)
                }

                OperationRegion (IOID, SystemIO, SPIO, 0x02)
                Field (IOID, ByteAcc, NoLock, Preserve)
                {
                    INDX,   8, 
                    DATA,   8
                }

                IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x07), 
                    LDN,    8, 
                    Offset (0x22), 
                    FDCP,   1, 
                        ,   2, 
                    LPTP,   1, 
                    URAP,   1, 
                    URBP,   1, 
                    Offset (0x30), 
                    ACTR,   8, 
                    Offset (0x60), 
                    IOAH,   8, 
                    IOAL,   8, 
                    IOH2,   8, 
                    IOL2,   8, 
                    Offset (0x70), 
                    INTR,   4, 
                    Offset (0x74), 
                    DMCH,   3, 
                    Offset (0xE0), 
                    CRE0,   8, 
                    CRE1,   8, 
                    CRE2,   8, 
                    CRE3,   8, 
                    CRE4,   8, 
                    CRE5,   8, 
                    CRE6,   8, 
                    Offset (0xF0), 
                    OPT0,   8, 
                    OPT1,   8, 
                    OPT2,   8, 
                    OPT3,   8, 
                    Offset (0xF5), 
                    OPT5,   8, 
                    OPT6,   8, 
                    Offset (0xF9), 
                    OPT9,   8
                }

                Method (CGLD, 1, NotSerialized)
                {
                    Return (DerefOf (Index (DCAT, Arg0)))
                }

                Method (DSTA, 1, NotSerialized)
                {
                    ENFG (CGLD (Arg0))
                    Store (ACTR, Local0)
                    EXFG ()
                    If (LEqual (Local0, 0xFF))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, 0x05))
                    {
                        ShiftRight (Local0, 0x02, Local0)
                    }

                    If (LEqual (Arg0, 0x08))
                    {
                        ShiftRight (Local0, One, Local0)
                    }

                    And (Local0, One, Local0)
                    Or (IOST, ShiftLeft (Local0, Arg0), IOST) /* \IOST */
                    If (Local0)
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        If (And (ShiftLeft (One, Arg0), IOST))
                        {
                            Return (0x0D)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Method (DCNT, 2, NotSerialized)
                {
                    ENFG (CGLD (Arg0))
                    If (LEqual (Arg0, 0x05))
                    {
                        ShiftLeft (IOH2, 0x08, Local1)
                        Or (IOL2, Local1, Local1)
                    }
                    Else
                    {
                        ShiftLeft (IOAH, 0x08, Local1)
                        Or (IOAL, Local1, Local1)
                    }

                    RRIO (Arg0, Arg1, Local1, 0x08)
                    If (LAnd (LLess (DMCH, 0x04), LNotEqual (And (DMCH, 0x03, 
                        Local1), Zero)))
                    {
                        RDMA (Arg0, Arg1, Increment (Local1))
                    }

                    Store (Arg1, Local1)
                    Store (One, Local2)
                    If (LEqual (Arg0, 0x05))
                    {
                        ShiftLeft (Arg1, 0x02, Local1)
                        ShiftLeft (Local2, 0x02, Local2)
                    }

                    If (LEqual (Arg0, 0x08))
                    {
                        ShiftLeft (Arg1, One, Local1)
                        ShiftLeft (Local2, One, Local2)
                    }

                    Store (ACTR, Local0)
                    Not (Local2, Local3)
                    And (Local0, Local3, Local0)
                    Or (Local0, Local1, Local0)
                    Store (Local0, ACTR) /* \_SB_.PCI0.SBRG.ACTR */
                    EXFG ()
                }

                Name (CRS1, ResourceTemplate ()
                {
                    IRQNoFlags ()
                        {}
                    DMA (Compatibility, NotBusMaster, Transfer8, _Y01)
                        {}
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0x00,               // Length
                        _Y02)
                })
                CreateWordField (CRS1, One, IRQM)
                CreateByteField (CRS1, \_SB.PCI0.SBRG._Y01._DMA, DMAM)  // _DMA: Direct Memory Access
                CreateWordField (CRS1, \_SB.PCI0.SBRG._Y02._MIN, IO11)  // _MIN: Minimum Base Address
                CreateWordField (CRS1, \_SB.PCI0.SBRG._Y02._MAX, IO12)  // _MAX: Maximum Base Address
                CreateByteField (CRS1, \_SB.PCI0.SBRG._Y02._LEN, LEN1)  // _LEN: Length
                Name (CRS2, ResourceTemplate ()
                {
                    IRQNoFlags ()
                        {6}
                    DMA (Compatibility, NotBusMaster, Transfer8, _Y03)
                        {2}
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0x00,               // Length
                        _Y04)
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0x00,               // Length
                        _Y05)
                })
                CreateWordField (CRS2, One, IRQE)
                CreateByteField (CRS2, \_SB.PCI0.SBRG._Y03._DMA, DMAE)  // _DMA: Direct Memory Access
                CreateWordField (CRS2, \_SB.PCI0.SBRG._Y04._MIN, IO21)  // _MIN: Minimum Base Address
                CreateWordField (CRS2, \_SB.PCI0.SBRG._Y04._MAX, IO22)  // _MAX: Maximum Base Address
                CreateByteField (CRS2, \_SB.PCI0.SBRG._Y04._LEN, LEN2)  // _LEN: Length
                CreateWordField (CRS2, \_SB.PCI0.SBRG._Y05._MIN, IO31)  // _MIN: Minimum Base Address
                CreateWordField (CRS2, \_SB.PCI0.SBRG._Y05._MAX, IO32)  // _MAX: Maximum Base Address
                CreateByteField (CRS2, \_SB.PCI0.SBRG._Y05._LEN, LEN3)  // _LEN: Length
                Method (DCRS, 2, NotSerialized)
                {
                    ENFG (CGLD (Arg0))
                    ShiftLeft (IOAH, 0x08, IO11) /* \_SB_.PCI0.SBRG.IO11 */
                    Or (IOAL, IO11, IO11) /* \_SB_.PCI0.SBRG.IO11 */
                    Store (IO11, IO12) /* \_SB_.PCI0.SBRG.IO12 */
                    Subtract (FindSetRightBit (IO11), One, Local0)
                    ShiftLeft (One, Local0, LEN1) /* \_SB_.PCI0.SBRG.LEN1 */
                    If (INTR)
                    {
                        ShiftLeft (One, INTR, IRQM) /* \_SB_.PCI0.SBRG.IRQM */
                    }
                    Else
                    {
                        Store (Zero, IRQM) /* \_SB_.PCI0.SBRG.IRQM */
                    }

                    If (LOr (LGreater (DMCH, 0x03), LEqual (Arg1, Zero)))
                    {
                        Store (Zero, DMAM) /* \_SB_.PCI0.SBRG.DMAM */
                    }
                    Else
                    {
                        And (DMCH, 0x03, Local1)
                        ShiftLeft (One, Local1, DMAM) /* \_SB_.PCI0.SBRG.DMAM */
                    }

                    EXFG ()
                    Return (CRS1) /* \_SB_.PCI0.SBRG.CRS1 */
                }

                Method (DSRS, 2, NotSerialized)
                {
                    CreateWordField (Arg0, One, IRQM)
                    CreateByteField (Arg0, 0x04, DMAM)
                    CreateWordField (Arg0, 0x08, IO11)
                    ENFG (CGLD (Arg1))
                    And (IO11, 0xFF, IOAL) /* \_SB_.PCI0.SBRG.IOAL */
                    ShiftRight (IO11, 0x08, IOAH) /* \_SB_.PCI0.SBRG.IOAH */
                    If (IRQM)
                    {
                        FindSetRightBit (IRQM, Local0)
                        Subtract (Local0, One, INTR) /* \_SB_.PCI0.SBRG.INTR */
                    }
                    Else
                    {
                        Store (Zero, INTR) /* \_SB_.PCI0.SBRG.INTR */
                    }

                    If (DMAM)
                    {
                        FindSetRightBit (DMAM, Local0)
                        Subtract (Local0, One, DMCH) /* \_SB_.PCI0.SBRG.DMCH */
                    }
                    Else
                    {
                        Store (0x07, DMCH) /* \_SB_.PCI0.SBRG.DMCH */
                    }

                    EXFG ()
                    DCNT (Arg1, One)
                }

                Device (RMSC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x10)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0044,             // Range Minimum
                            0x0044,             // Range Maximum
                            0x00,               // Alignment
                            0x0A,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x00,               // Alignment
                            0x0B,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x00,               // Alignment
                            0x0E,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0084,             // Range Minimum
                            0x0084,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0088,             // Range Minimum
                            0x0088,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x008C,             // Range Minimum
                            0x008C,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y06)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y07)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y08)
                        Memory32Fixed (ReadWrite,
                            0xFED1C000,         // Address Base
                            0x00004000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED20000,         // Address Base
                            0x00020000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED50000,         // Address Base
                            0x00040000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFFA00000,         // Address Base
                            0x00100000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFFB00000,         // Address Base
                            0x00100000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFFE00000,         // Address Base
                            0x00100000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFFF00000,         // Address Base
                            0x000FFFFF,         // Address Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y06._MIN, GP00)  // _MIN: Minimum Base Address
                        CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y06._MAX, GP01)  // _MAX: Maximum Base Address
                        CreateByteField (CRS, \_SB.PCI0.SBRG.RMSC._Y06._LEN, GP0L)  // _LEN: Length
                        Store (PMBS, GP00) /* \_SB_.PCI0.SBRG.RMSC._CRS.GP00 */
                        Store (PMBS, GP01) /* \_SB_.PCI0.SBRG.RMSC._CRS.GP01 */
                        Store (PMLN, GP0L) /* \_SB_.PCI0.SBRG.RMSC._CRS.GP0L */
                        If (SMBS)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y07._MIN, GP10)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y07._MAX, GP11)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.RMSC._Y07._LEN, GP1L)  // _LEN: Length
                            Store (SMBS, GP10) /* \_SB_.PCI0.SBRG.RMSC._CRS.GP10 */
                            Store (SMBS, GP11) /* \_SB_.PCI0.SBRG.RMSC._CRS.GP11 */
                            Store (SMBL, GP1L) /* \_SB_.PCI0.SBRG.RMSC._CRS.GP1L */
                        }

                        If (GPBS)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y08._MIN, GP20)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y08._MAX, GP21)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.RMSC._Y08._LEN, GP2L)  // _LEN: Length
                            Store (GPBS, GP20) /* \_SB_.PCI0.SBRG.RMSC._CRS.GP20 */
                            Store (GPBS, GP21) /* \_SB_.PCI0.SBRG.RMSC._CRS.GP21 */
                            Store (GPLN, GP2L) /* \_SB_.PCI0.SBRG.RMSC._CRS.GP2L */
                        }

                        Return (CRS) /* \_SB_.PCI0.SBRG.RMSC.CRS_ */
                    }
                }

                Scope (\)
                {
                    OperationRegion (RAMW, SystemMemory, 0xCFFF0000, 0x00010000)
                    Field (RAMW, ByteAcc, NoLock, Preserve)
                    {
                        PAR0,   32, 
                        PAR1,   32, 
                        PAR2,   32
                    }

                    OperationRegion (IOB2, SystemIO, 0xB2, 0x02)
                    Field (IOB2, ByteAcc, NoLock, Preserve)
                    {
                        SMIC,   8, 
                        SMIS,   8
                    }

                    Method (ISMI, 1, Serialized)
                    {
                        Store (Arg0, SMIC) /* \SMIC */
                    }

                    Method (GNVS, 1, Serialized)
                    {
                        Store (Arg0, PAR0) /* \PAR0 */
                        ISMI (0x70)
                        Return (PAR1) /* \PAR1 */
                    }

                    Method (SNVS, 2, Serialized)
                    {
                        Store (Arg0, PAR0) /* \PAR0 */
                        Store (Arg1, PAR1) /* \PAR1 */
                        ISMI (0x71)
                    }

                    Method (GMAX, 1, Serialized)
                    {
                        Store (Arg0, PAR0) /* \PAR0 */
                        ISMI (0x74)
                        Return (PAR1) /* \PAR1 */
                    }

                    Method (GMDX, 1, Serialized)
                    {
                        Store (Arg0, PAR0) /* \PAR0 */
                        ISMI (0x75)
                        Return (PAR1) /* \PAR1 */
                    }

                    Method (GCAX, 1, Serialized)
                    {
                        Store (Arg0, PAR0) /* \PAR0 */
                        ISMI (0x76)
                        Return (PAR1) /* \PAR1 */
                    }

                    Method (GCDX, 1, Serialized)
                    {
                        Store (Arg0, PAR0) /* \PAR0 */
                        ISMI (0x77)
                        Return (PAR1) /* \PAR1 */
                    }
                }

                Scope (\_SB.PCI0.SBRG)
                {
                    Device (ASOC)
                    {
                        Name (_HID, "ATK0110")  // _HID: Hardware ID
                        Name (_UID, 0x01010110)  // _UID: Unique ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_INI, 0, NotSerialized)  // _INI: Initialize
                        {
                            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
                            Store (GNVS (0x36E8), T_0) /* \_SB_.PCI0.SBRG.ASOC._INI.T_0 */
                            If (LEqual (T_0, Zero))
                            {
                                Store (0x42, Index (G3T0, 0x03))
                            }
                            Else
                            {
                                If (LEqual (T_0, 0x02))
                                {
                                    Store (Zero, Index (G3T0, 0x03))
                                }
                                Else
                                {
                                    If (LEqual (T_0, 0x04))
                                    {
                                        Store (0x85, Index (G3T0, 0x03))
                                    }
                                    Else
                                    {
                                        If (LEqual (T_0, 0x06))
                                        {
                                            Store (0xC8, Index (G3T0, 0x03))
                                        }
                                    }
                                }
                            }

                            If (LGreater (And (GCAX (One), 0x0FF0, Local0), 0x06F0))
                            {
                                Store (GMAX (0x2C), Local0)
                                And (ShiftRight (Local0, 0x08), 0xFF, Local2)
                                And (Local0, 0xFF, Local1)
                                Subtract (Local1, Local2, Local0)
                                Store (GMDX (0x0198), Local7)
                                And (ShiftRight (Local7, 0x08), 0xFF, Local7)
                                If (LLess (Local7, Local0))
                                {
                                    Store (Local1, Local7)
                                }
                            }
                            Else
                            {
                                Store (GMAX (0x17), Local0)
                                And (ShiftRight (Local0, 0x08), 0x1F, Local1)
                                Store (Local1, Local7)
                                Store (GMAX (0x0198), Local0)
                                And (ShiftRight (Local0, 0x18), 0x1F, Local0)
                            }

                            Multiply (Local0, 0x0A, Local2)
                            Or (Local2, 0xFF000000, Index (G3T2, 0x04))
                            If (And (GMAX (0x0198), 0x80000000))
                            {
                                Store (0x1F, Local1)
                            }

                            If (And (GMAX (0x17), 0x00800000))
                            {
                                And (GMAX (0x17), 0x4000, Local2)
                                Store (0x05, Index (G3T2, 0x05))
                                Store (ShiftRight (And (GMAX (0x17), 0x4000), 0x0E), Local5)
                                Store (Subtract (Local7, Local0), Local4)
                                Multiply (Local4, 0x02, Local6)
                                Add (Local6, Local5, Index (G3T2, 0x03))
                                Multiply (Subtract (Local1, Local0, Local3), 0x02, Local3)
                                Add (Local3, One, Local3)
                                If (Local2)
                                {
                                    Add (Local3, One, Local3)
                                }

                                Store (Local3, Index (G3T2, 0x06))
                            }
                            Else
                            {
                                Store (0x0A, Index (G3T2, 0x05))
                                Store (Subtract (Local7, Local0), Index (G3T2, 0x03))
                                Add (Subtract (Local1, Local0, Local3), One, Index (G3T2, 0x06))
                            }

                            Name (T_1, Zero)  // T_x: Emitted by ASL Compiler
                            Store (GNVS (0x151F), T_1) /* \_SB_.PCI0.SBRG.ASOC._INI.T_1 */
                            If (LEqual (T_1, Zero))
                            {
                                Store (0x0708, Index (G321, 0x04))
                            }
                            Else
                            {
                                If (LEqual (T_1, One))
                                {
                                    Store (0x05DC, Index (G321, 0x04))
                                }
                            }
                        }

                        Name (MBIF, Package (0x08)
                        {
                            0x03, 
                            "P5K-SE", 
                            0x01010101, 
                            0x01000100, 
                            0xE0000000, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Name (ASBF, Buffer (0x08)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                        })
                        CreateDWordField (ASBF, Zero, ASB0)
                        CreateDWordField (ASBF, 0x04, ASB1)
                        Method (GGRP, 1, Serialized)
                        {
                            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
                            Store (Arg0, T_0) /* \_SB_.PCI0.SBRG.ASOC.GGRP.T_0 */
                            If (LEqual (T_0, Zero))
                            {
                                Return (GRP0) /* \_SB_.PCI0.SBRG.ASOC.GRP0 */
                            }
                            Else
                            {
                                If (LEqual (T_0, 0x03))
                                {
                                    Return (GRP3) /* \_SB_.PCI0.SBRG.ASOC.GRP3 */
                                }
                                Else
                                {
                                    If (LEqual (T_0, 0x04))
                                    {
                                        Return (GRP4) /* \_SB_.PCI0.SBRG.ASOC.GRP4 */
                                    }
                                    Else
                                    {
                                        If (LEqual (T_0, 0x05))
                                        {
                                            Return (GRP5) /* \_SB_.PCI0.SBRG.ASOC.GRP5 */
                                        }
                                        Else
                                        {
                                            If (LEqual (T_0, 0x06))
                                            {
                                                Return (GRP6) /* \_SB_.PCI0.SBRG.ASOC.GRP6 */
                                            }
                                            Else
                                            {
                                                If (LEqual (T_0, 0x09))
                                                {
                                                    Return (GRP9) /* \_SB_.PCI0.SBRG.ASOC.GRP9 */
                                                }
                                                Else
                                                {
                                                    If (LEqual (T_0, 0x0B))
                                                    {
                                                        Return (GRPB) /* \_SB_.PCI0.SBRG.ASOC.GRPB */
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (T_0, 0x0D))
                                                        {
                                                            Return (GRPD) /* \_SB_.PCI0.SBRG.ASOC.GRPD */
                                                        }
                                                        Else
                                                        {
                                                            If (LEqual (T_0, 0x0E))
                                                            {
                                                                Return (GRPE) /* \_SB_.PCI0.SBRG.ASOC.GRPE */
                                                            }
                                                            Else
                                                            {
                                                                Return (Zero)
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Method (GITM, 1, Serialized)
                        {
                            CreateDWordField (Arg0, Zero, PRM0)
                            CreateByteField (Arg0, 0x03, GPID)
                            Store (One, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
                            Store (GPID, T_0) /* \_SB_.PCI0.SBRG.ASOC.GITM.T_0 */
                            If (LEqual (T_0, Zero))
                            {
                                GIT0 (PRM0)
                            }
                            Else
                            {
                                If (LEqual (T_0, 0x03))
                                {
                                    GIT3 (PRM0)
                                }
                                Else
                                {
                                    If (LEqual (T_0, 0x04))
                                    {
                                        GIT4 (PRM0)
                                    }
                                    Else
                                    {
                                        If (LEqual (T_0, 0x05))
                                        {
                                            GIT5 (PRM0)
                                        }
                                        Else
                                        {
                                            If (LEqual (T_0, 0x06))
                                            {
                                                GIT6 (PRM0)
                                            }
                                            Else
                                            {
                                                If (LEqual (T_0, 0x09))
                                                {
                                                    GIT9 (PRM0)
                                                }
                                                Else
                                                {
                                                    If (LEqual (T_0, 0x0B))
                                                    {
                                                        GITB (PRM0)
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (T_0, 0x0D))
                                                        {
                                                            GITD (PRM0)
                                                        }
                                                        Else
                                                        {
                                                            If (LEqual (T_0, 0x0E))
                                                            {
                                                                GITE (PRM0)
                                                            }
                                                            Else
                                                            {
                                                                Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            Return (ASBF) /* \_SB_.PCI0.SBRG.ASOC.ASBF */
                        }

                        Method (SITM, 1, Serialized)
                        {
                            CreateDWordField (Arg0, Zero, PRM0)
                            CreateDWordField (Arg0, 0x04, PRM1)
                            CreateDWordField (Arg0, 0x08, PRM2)
                            CreateByteField (Arg0, 0x03, GPID)
                            Store (One, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
                            Store (GPID, T_0) /* \_SB_.PCI0.SBRG.ASOC.SITM.T_0 */
                            If (LEqual (T_0, Zero))
                            {
                                SIT0 (PRM0, PRM1, PRM2)
                            }
                            Else
                            {
                                If (LEqual (T_0, 0x03))
                                {
                                    SIT3 (PRM0, PRM1, PRM2)
                                }
                                Else
                                {
                                    If (LEqual (T_0, 0x04))
                                    {
                                        SIT4 (PRM0, PRM1, PRM2)
                                    }
                                    Else
                                    {
                                        If (LEqual (T_0, 0x05))
                                        {
                                            SIT5 (PRM0, PRM1, PRM2)
                                        }
                                        Else
                                        {
                                            If (LEqual (T_0, 0x06))
                                            {
                                                SIT6 (PRM0, PRM1, PRM2)
                                            }
                                            Else
                                            {
                                                If (LEqual (T_0, 0x09))
                                                {
                                                    SIT9 (PRM0, PRM1, PRM2)
                                                }
                                                Else
                                                {
                                                    If (LEqual (T_0, 0x0B))
                                                    {
                                                        SITB (PRM0, PRM1, PRM2)
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (T_0, 0x0D))
                                                        {
                                                            SITD (PRM0, PRM1, PRM2)
                                                        }
                                                        Else
                                                        {
                                                            If (LEqual (T_0, 0x0E))
                                                            {
                                                                SITE (PRM0, PRM1, PRM2)
                                                            }
                                                            Else
                                                            {
                                                                Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            Return (ASBF) /* \_SB_.PCI0.SBRG.ASOC.ASBF */
                        }

                        Method (OP2V, 2, NotSerialized)
                        {
                            Store (DerefOf (Index (Arg1, 0x04)), Local0)
                            Store (DerefOf (Index (Arg1, 0x05)), Local1)
                            Multiply (Arg0, Local1, Local1)
                            Add (Local0, Local1, Local0)
                            Return (Local0)
                        }

                        Method (V2OP, 2, NotSerialized)
                        {
                            Store (DerefOf (Index (Arg1, 0x04)), Local0)
                            Store (DerefOf (Index (Arg1, 0x05)), Local1)
                            Subtract (Arg0, Local0, Local0)
                            Divide (Local0, Local1, Local1, Local0)
                            Return (Local0)
                        }
                    }
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y09)
                    })
                    OperationRegion (^LPCR, SystemMemory, 0xFED1F404, 0x04)
                    Field (LPCR, AnyAcc, NoLock, Preserve)
                    {
                        HPTS,   2, 
                            ,   5, 
                        HPTE,   1, 
                        Offset (0x04)
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LEqual (OSFL (), Zero))
                        {
                            If (HPTE)
                            {
                                Return (0x0F)
                            }
                        }
                        Else
                        {
                            If (HPTE)
                            {
                                Return (0x0B)
                            }
                        }

                        Return (Zero)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.PCI0.SBRG.HPET._Y09._BAS, HPT)  // _BAS: Base Address
                        Multiply (HPTS, 0x1000, Local0)
                        Add (Local0, 0xFED00000, HPT) /* \_SB_.PCI0.SBRG.HPET._CRS.HPT_ */
                        Return (CRS) /* \_SB_.PCI0.SBRG.HPET.CRS_ */
                    }
                }

                OperationRegion (RX80, PCI_Config, Zero, 0xFF)
                Field (RX80, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x80), 
                    LPCD,   16, 
                    LPCE,   16
                }

                Name (DBPT, Package (0x04)
                {
                    Package (0x08)
                    {
                        0x03F8, 
                        0x02F8, 
                        0x0220, 
                        0x0228, 
                        0x0238, 
                        0x02E8, 
                        0x0338, 
                        0x03E8
                    }, 

                    Package (0x08)
                    {
                        0x03F8, 
                        0x02F8, 
                        0x0220, 
                        0x0228, 
                        0x0238, 
                        0x02E8, 
                        0x0338, 
                        0x03E8
                    }, 

                    Package (0x03)
                    {
                        0x0378, 
                        0x0278, 
                        0x03BC
                    }, 

                    Package (0x02)
                    {
                        0x03F0, 
                        0x0370
                    }
                })
                Name (DDLT, Package (0x04)
                {
                    Package (0x02)
                    {
                        Zero, 
                        0xFFF8
                    }, 

                    Package (0x02)
                    {
                        0x04, 
                        0xFF8F
                    }, 

                    Package (0x02)
                    {
                        0x08, 
                        0xFCFF
                    }, 

                    Package (0x02)
                    {
                        0x0C, 
                        0xEFFF
                    }
                })
                Method (RRIO, 4, NotSerialized)
                {
                    If (LAnd (LLessEqual (Arg0, 0x03), LGreaterEqual (Arg0, Zero)))
                    {
                        Store (Match (DerefOf (Index (DBPT, Arg0)), MEQ, Arg2, MTR, 
                            Zero, Zero), Local0)
                        If (LNotEqual (Local0, Ones))
                        {
                            Store (DerefOf (Index (DerefOf (Index (DDLT, Arg0)), Zero)), 
                                Local1)
                            Store (DerefOf (Index (DerefOf (Index (DDLT, Arg0)), One)), 
                                Local2)
                            ShiftLeft (Local0, Local1, Local0)
                            And (LPCD, Local2, LPCD) /* \_SB_.PCI0.SBRG.LPCD */
                            Or (LPCD, Local0, LPCD) /* \_SB_.PCI0.SBRG.LPCD */
                            WX82 (Arg0, Arg1)
                        }
                    }

                    If (LEqual (Arg0, 0x08))
                    {
                        If (LEqual (Arg2, 0x0200))
                        {
                            WX82 (0x08, Arg0)
                        }
                        Else
                        {
                            If (LEqual (Arg2, 0x0208))
                            {
                                WX82 (0x09, Arg0)
                            }
                        }
                    }

                    If (LAnd (LLessEqual (Arg0, 0x0D), LGreaterEqual (Arg0, 0x0A)))
                    {
                        WX82 (Arg0, Arg1)
                    }
                }

                Method (WX82, 2, NotSerialized)
                {
                    ShiftLeft (One, Arg0, Local0)
                    If (Arg1)
                    {
                        Or (LPCE, Local0, LPCE) /* \_SB_.PCI0.SBRG.LPCE */
                    }
                    Else
                    {
                        Not (Local0, Local0)
                        And (LPCE, Local0, LPCE) /* \_SB_.PCI0.SBRG.LPCE */
                    }
                }

                Method (RDMA, 3, NotSerialized)
                {
                }

                Device (^PCIE)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x11)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xE0000000,         // Address Base
                            0x10000000,         // Address Length
                            _Y0A)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.PCI0.PCIE._Y0A._BAS, BAS1)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.PCI0.PCIE._Y0A._LEN, LEN1)  // _LEN: Length
                        Store (PCIB, BAS1) /* \_SB_.PCI0.PCIE._CRS.BAS1 */
                        Store (PCIL, LEN1) /* \_SB_.PCI0.PCIE._CRS.LEN1 */
                        Return (CRS) /* \_SB_.PCI0.PCIE.CRS_ */
                    }
                }

                Scope (\_GPE)
                {
                    Method (_L1E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
                    {
                        Notify (\_SB.PCI0.SBRG.ASOC, One) // Device Check
                        Sleep (0x03E8)
                    }
                }

                Scope (ASOC)
                {
                    Name (VESL, Zero)
                    Method (SPLV, 1, Serialized)
                    {
                        And (Arg0, 0xFFFF, VESL) /* \_SB_.PCI0.SBRG.ASOC.VESL */
                        Store (VESL, PAR0) /* \PAR0 */
                        ISMI (0x88)
                        Store (And (PAR0, 0xFFFF), Local0)
                        Return (Local0)
                    }

                    Method (GPLV, 0, Serialized)
                    {
                        Return (VESL) /* \_SB_.PCI0.SBRG.ASOC.VESL */
                    }
                }

                Device (UAR1)
                {
                    Name (_UID, One)  // _UID: Unique ID
                    Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (DSTA (Zero))
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        DCNT (Zero, Zero)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Return (DCRS (Zero, Zero))
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        DSRS (Arg0, Zero)
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (CMPR) /* \_SB_.PCI0.SBRG.UAR1.CMPR */
                    }

                    Name (CMPR, ResourceTemplate ()
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        EndDependentFn ()
                    })
                }

                Method (UAR1._PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Device (OMSC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y0B)
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y0C)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (APIC)
                        {
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.OMSC._Y0B._LEN, ML01)  // _LEN: Length
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.OMSC._Y0B._BAS, MB01)  // _BAS: Base Address
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.OMSC._Y0C._LEN, ML02)  // _LEN: Length
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.OMSC._Y0C._BAS, MB02)  // _BAS: Base Address
                            Store (0xFEC00000, MB01) /* \_SB_.PCI0.SBRG.OMSC._CRS.MB01 */
                            Store (0x1000, ML01) /* \_SB_.PCI0.SBRG.OMSC._CRS.ML01 */
                            Store (0xFEE00000, MB02) /* \_SB_.PCI0.SBRG.OMSC._CRS.MB02 */
                            Store (0x1000, ML02) /* \_SB_.PCI0.SBRG.OMSC._CRS.ML02 */
                        }

                        Return (CRS) /* \_SB_.PCI0.SBRG.OMSC.CRS_ */
                    }
                }

                Device (^^RMEM)
                {
                    Name (_HID, EisaId ("PNP0C01") /* System Board */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x000A0000,         // Address Length
                            )
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y0D)
                        Memory32Fixed (ReadOnly,
                            0x000E0000,         // Address Base
                            0x00020000,         // Address Length
                            _Y0E)
                        Memory32Fixed (ReadWrite,
                            0x00100000,         // Address Base
                            0x00000000,         // Address Length
                            _Y0F)
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y10)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.RMEM._Y0D._BAS, BAS1)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.RMEM._Y0D._LEN, LEN1)  // _LEN: Length
                        CreateDWordField (CRS, \_SB.RMEM._Y0E._BAS, BAS2)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.RMEM._Y0E._LEN, LEN2)  // _LEN: Length
                        CreateDWordField (CRS, \_SB.RMEM._Y0F._LEN, LEN3)  // _LEN: Length
                        CreateDWordField (CRS, \_SB.RMEM._Y10._BAS, BAS4)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.RMEM._Y10._LEN, LEN4)  // _LEN: Length
                        If (OSFL ()) {}
                        Else
                        {
                            If (MG1B)
                            {
                                If (LGreater (MG1B, 0x000C0000))
                                {
                                    Store (0x000C0000, BAS1) /* \_SB_.RMEM._CRS.BAS1 */
                                    Subtract (MG1B, BAS1, LEN1) /* \_SB_.RMEM._CRS.LEN1 */
                                }
                            }
                            Else
                            {
                                Store (0x000C0000, BAS1) /* \_SB_.RMEM._CRS.BAS1 */
                                Store (0x00020000, LEN1) /* \_SB_.RMEM._CRS.LEN1 */
                            }

                            If (Add (MG1B, MG1L, Local0))
                            {
                                Store (Local0, BAS2) /* \_SB_.RMEM._CRS.BAS2 */
                                Subtract (0x00100000, BAS2, LEN2) /* \_SB_.RMEM._CRS.LEN2 */
                            }
                        }

                        Subtract (MG2B, 0x00100000, LEN3) /* \_SB_.RMEM._CRS.LEN3 */
                        Add (MG2B, MG2L, BAS4) /* \_SB_.RMEM._CRS.BAS4 */
                        Subtract (Zero, BAS4, LEN4) /* \_SB_.RMEM._CRS.LEN4 */
                        Return (CRS) /* \_SB_.RMEM.CRS_ */
                    }
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP030B"))  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        ShiftLeft (One, 0x0A, Local0)
                        If (And (IOST, Local0))
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                }

                Method (PS2K._PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x1D, 0x04))
                }
            }

            Device (SATA)
            {
                Name (_ADR, 0x001F0002)  // _ADR: Address
                Name (^NATA, Package (0x01)
                {
                    0x001F0002
                })
                Name (\FZTF, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF5         /* ....... */
                })
                Name (REGF, One)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (LEqual (Arg0, 0x02))
                    {
                        Store (Arg1, REGF) /* \_SB_.PCI0.SATA.REGF */
                    }
                }

                Name (TIM0, Package (0x08)
                {
                    Package (0x04)
                    {
                        0x78, 
                        0xB4, 
                        0xF0, 
                        0x0384
                    }, 

                    Package (0x04)
                    {
                        0x23, 
                        0x21, 
                        0x10, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0B, 
                        0x09, 
                        0x04, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        0x78, 
                        0x5A, 
                        0x3C, 
                        0x28, 
                        0x1E, 
                        0x14
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        One, 
                        0x02, 
                        One, 
                        0x02, 
                        One
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        One
                    }, 

                    Package (0x04)
                    {
                        0x04, 
                        0x03, 
                        0x02, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x02, 
                        One, 
                        Zero, 
                        Zero
                    }
                })
                Name (TMD0, Buffer (0x14) {})
                CreateDWordField (TMD0, Zero, PIO0)
                CreateDWordField (TMD0, 0x04, DMA0)
                CreateDWordField (TMD0, 0x08, PIO1)
                CreateDWordField (TMD0, 0x0C, DMA1)
                CreateDWordField (TMD0, 0x10, CHNF)
                OperationRegion (CFG2, PCI_Config, 0x40, 0x20)
                Field (CFG2, DWordAcc, NoLock, Preserve)
                {
                    PMPT,   4, 
                    PSPT,   4, 
                    PMRI,   6, 
                    Offset (0x02), 
                    SMPT,   4, 
                    SSPT,   4, 
                    SMRI,   6, 
                    Offset (0x04), 
                    PSRI,   4, 
                    SSRI,   4, 
                    Offset (0x08), 
                    PM3E,   1, 
                    PS3E,   1, 
                    SM3E,   1, 
                    SS3E,   1, 
                    Offset (0x0A), 
                    PMUT,   2, 
                        ,   2, 
                    PSUT,   2, 
                    Offset (0x0B), 
                    SMUT,   2, 
                        ,   2, 
                    SSUT,   2, 
                    Offset (0x0C), 
                    Offset (0x14), 
                    PM6E,   1, 
                    PS6E,   1, 
                    SM6E,   1, 
                    SS6E,   1, 
                    PMCR,   1, 
                    PSCR,   1, 
                    SMCR,   1, 
                    SSCR,   1, 
                        ,   4, 
                    PMAE,   1, 
                    PSAE,   1, 
                    SMAE,   1, 
                    SSAE,   1
                }

                Name (GMPT, Zero)
                Name (GMUE, Zero)
                Name (GMUT, Zero)
                Name (GMCR, Zero)
                Name (GSPT, Zero)
                Name (GSUE, Zero)
                Name (GSUT, Zero)
                Name (GSCR, Zero)
                Device (CHN0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        ShiftLeft (PSCR, One, Local1)
                        Or (PMCR, Local1, Local0)
                        ShiftLeft (PMAE, 0x02, Local3)
                        ShiftLeft (PM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PM3E, Local3, Local1)
                        ShiftLeft (PMPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        ShiftLeft (PSAE, 0x02, Local3)
                        ShiftLeft (PS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PS3E, Local3, Local2)
                        ShiftLeft (PSPT, 0x04, Local3)
                        Or (Local2, Local3, Local2)
                        Return (GTM (PMRI, Local1, PMUT, PSRI, Local2, PSUT, Local0))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Store (Arg0, Debug)
                        Store (Arg0, TMD0) /* \_SB_.PCI0.SATA.TMD0 */
                        ShiftLeft (PMAE, 0x02, Local3)
                        ShiftLeft (PM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PM3E, Local3, Local0)
                        ShiftLeft (PMPT, 0x04, Local3)
                        Or (Local0, Local3, Local0)
                        ShiftLeft (PSAE, 0x02, Local3)
                        ShiftLeft (PS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PS3E, Local3, Local1)
                        ShiftLeft (PSPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        Store (PMRI, GMPT) /* \_SB_.PCI0.SATA.GMPT */
                        Store (Local0, GMUE) /* \_SB_.PCI0.SATA.GMUE */
                        Store (PMUT, GMUT) /* \_SB_.PCI0.SATA.GMUT */
                        Store (PMCR, GMCR) /* \_SB_.PCI0.SATA.GMCR */
                        Store (PSRI, GSPT) /* \_SB_.PCI0.SATA.GSPT */
                        Store (Local1, GSUE) /* \_SB_.PCI0.SATA.GSUE */
                        Store (PSUT, GSUT) /* \_SB_.PCI0.SATA.GSUT */
                        Store (PSCR, GSCR) /* \_SB_.PCI0.SATA.GSCR */
                        STM ()
                        Store (GMPT, PMRI) /* \_SB_.PCI0.SATA.PMRI */
                        Store (GMUE, Local0)
                        Store (GMUT, PMUT) /* \_SB_.PCI0.SATA.PMUT */
                        Store (GMCR, PMCR) /* \_SB_.PCI0.SATA.PMCR */
                        Store (GSUE, Local1)
                        Store (GSUT, PSUT) /* \_SB_.PCI0.SATA.PSUT */
                        Store (GSCR, PSCR) /* \_SB_.PCI0.SATA.PSCR */
                        If (And (Local0, One))
                        {
                            Store (One, PM3E) /* \_SB_.PCI0.SATA.PM3E */
                        }
                        Else
                        {
                            Store (Zero, PM3E) /* \_SB_.PCI0.SATA.PM3E */
                        }

                        If (And (Local0, 0x02))
                        {
                            Store (One, PM6E) /* \_SB_.PCI0.SATA.PM6E */
                        }
                        Else
                        {
                            Store (Zero, PM6E) /* \_SB_.PCI0.SATA.PM6E */
                        }

                        If (And (Local0, 0x04))
                        {
                            Store (One, PMAE) /* \_SB_.PCI0.SATA.PMAE */
                        }
                        Else
                        {
                            Store (Zero, PMAE) /* \_SB_.PCI0.SATA.PMAE */
                        }

                        If (And (Local1, One))
                        {
                            Store (One, PS3E) /* \_SB_.PCI0.SATA.PS3E */
                        }
                        Else
                        {
                            Store (Zero, PS3E) /* \_SB_.PCI0.SATA.PS3E */
                        }

                        If (And (Local1, 0x02))
                        {
                            Store (One, PS6E) /* \_SB_.PCI0.SATA.PS6E */
                        }
                        Else
                        {
                            Store (Zero, PS6E) /* \_SB_.PCI0.SATA.PS6E */
                        }

                        If (And (Local1, 0x04))
                        {
                            Store (One, PSAE) /* \_SB_.PCI0.SATA.PSAE */
                        }
                        Else
                        {
                            Store (Zero, PSAE) /* \_SB_.PCI0.SATA.PSAE */
                        }

                        Store (GTF (Zero, Arg1), ATA0) /* \_SB_.PCI0.SATA.ATA0 */
                        Store (GTF (One, Arg2), ATA1) /* \_SB_.PCI0.SATA.ATA1 */
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA0))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA1))
                        }
                    }
                }

                Device (CHN1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        ShiftLeft (SSCR, One, Local1)
                        Or (SMCR, Local1, Local0)
                        ShiftLeft (SMAE, 0x02, Local3)
                        ShiftLeft (SM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SM3E, Local3, Local1)
                        ShiftLeft (SMPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        ShiftLeft (SSAE, 0x02, Local3)
                        ShiftLeft (SS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SS3E, Local3, Local2)
                        ShiftLeft (SSPT, 0x04, Local3)
                        Or (Local2, Local3, Local2)
                        Return (GTM (SMRI, Local1, SMUT, SSRI, Local2, SSUT, Local0))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Store (Arg0, Debug)
                        Store (Arg0, TMD0) /* \_SB_.PCI0.SATA.TMD0 */
                        ShiftLeft (SMAE, 0x02, Local3)
                        ShiftLeft (SM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SM3E, Local3, Local0)
                        ShiftLeft (SMPT, 0x04, Local3)
                        Or (Local0, Local3, Local0)
                        ShiftLeft (SSAE, 0x02, Local3)
                        ShiftLeft (SS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SS3E, Local3, Local1)
                        ShiftLeft (SSPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        Store (SMRI, GMPT) /* \_SB_.PCI0.SATA.GMPT */
                        Store (Local0, GMUE) /* \_SB_.PCI0.SATA.GMUE */
                        Store (SMUT, GMUT) /* \_SB_.PCI0.SATA.GMUT */
                        Store (SMCR, GMCR) /* \_SB_.PCI0.SATA.GMCR */
                        Store (SSRI, GSPT) /* \_SB_.PCI0.SATA.GSPT */
                        Store (Local1, GSUE) /* \_SB_.PCI0.SATA.GSUE */
                        Store (SSUT, GSUT) /* \_SB_.PCI0.SATA.GSUT */
                        Store (SSCR, GSCR) /* \_SB_.PCI0.SATA.GSCR */
                        STM ()
                        Store (GMPT, SMRI) /* \_SB_.PCI0.SATA.SMRI */
                        Store (GMUE, Local0)
                        Store (GMUT, SMUT) /* \_SB_.PCI0.SATA.SMUT */
                        Store (GMCR, SMCR) /* \_SB_.PCI0.SATA.SMCR */
                        Store (GSUE, Local1)
                        Store (GSUT, SSUT) /* \_SB_.PCI0.SATA.SSUT */
                        Store (GSCR, SSCR) /* \_SB_.PCI0.SATA.SSCR */
                        If (And (Local0, One))
                        {
                            Store (One, SM3E) /* \_SB_.PCI0.SATA.SM3E */
                        }
                        Else
                        {
                            Store (Zero, SM3E) /* \_SB_.PCI0.SATA.SM3E */
                        }

                        If (And (Local0, 0x02))
                        {
                            Store (One, SM6E) /* \_SB_.PCI0.SATA.SM6E */
                        }
                        Else
                        {
                            Store (Zero, SM6E) /* \_SB_.PCI0.SATA.SM6E */
                        }

                        If (And (Local0, 0x04))
                        {
                            Store (One, SMAE) /* \_SB_.PCI0.SATA.SMAE */
                        }
                        Else
                        {
                            Store (Zero, SMAE) /* \_SB_.PCI0.SATA.SMAE */
                        }

                        If (And (Local1, One))
                        {
                            Store (One, SS3E) /* \_SB_.PCI0.SATA.SS3E */
                        }
                        Else
                        {
                            Store (Zero, SS3E) /* \_SB_.PCI0.SATA.SS3E */
                        }

                        If (And (Local1, 0x02))
                        {
                            Store (One, SS6E) /* \_SB_.PCI0.SATA.SS6E */
                        }
                        Else
                        {
                            Store (Zero, SS6E) /* \_SB_.PCI0.SATA.SS6E */
                        }

                        If (And (Local1, 0x04))
                        {
                            Store (One, SSAE) /* \_SB_.PCI0.SATA.SSAE */
                        }
                        Else
                        {
                            Store (Zero, SSAE) /* \_SB_.PCI0.SATA.SSAE */
                        }

                        Store (GTF (Zero, Arg1), ATA2) /* \_SB_.PCI0.SATA.ATA2 */
                        Store (GTF (One, Arg2), ATA3) /* \_SB_.PCI0.SATA.ATA3 */
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA2))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA3))
                        }
                    }
                }

                Method (GTM, 7, Serialized)
                {
                    Store (Ones, PIO0) /* \_SB_.PCI0.SATA.PIO0 */
                    Store (Ones, PIO1) /* \_SB_.PCI0.SATA.PIO1 */
                    Store (Ones, DMA0) /* \_SB_.PCI0.SATA.DMA0 */
                    Store (Ones, DMA1) /* \_SB_.PCI0.SATA.DMA1 */
                    Store (0x10, CHNF) /* \_SB_.PCI0.SATA.CHNF */
                    If (REGF) {}
                    Else
                    {
                        Return (TMD0) /* \_SB_.PCI0.SATA.TMD0 */
                    }

                    If (And (Arg1, 0x20))
                    {
                        Or (CHNF, 0x02, CHNF) /* \_SB_.PCI0.SATA.CHNF */
                    }

                    Store (Match (DerefOf (Index (TIM0, One)), MEQ, Arg0, MTR, 
                        Zero, Zero), Local6)
                    Store (DerefOf (Index (DerefOf (Index (TIM0, Zero)), Local6)), 
                        Local7)
                    Store (Local7, DMA0) /* \_SB_.PCI0.SATA.DMA0 */
                    Store (Local7, PIO0) /* \_SB_.PCI0.SATA.PIO0 */
                    If (And (Arg4, 0x20))
                    {
                        Or (CHNF, 0x08, CHNF) /* \_SB_.PCI0.SATA.CHNF */
                    }

                    Store (Match (DerefOf (Index (TIM0, 0x02)), MEQ, Arg3, MTR, 
                        Zero, Zero), Local6)
                    Store (DerefOf (Index (DerefOf (Index (TIM0, Zero)), Local6)), 
                        Local7)
                    Store (Local7, DMA1) /* \_SB_.PCI0.SATA.DMA1 */
                    Store (Local7, PIO1) /* \_SB_.PCI0.SATA.PIO1 */
                    If (And (Arg1, 0x07))
                    {
                        Store (Arg2, Local5)
                        If (And (Arg1, 0x02))
                        {
                            Add (Local5, 0x02, Local5)
                        }

                        If (And (Arg1, 0x04))
                        {
                            Add (Local5, 0x04, Local5)
                        }

                        Store (DerefOf (Index (DerefOf (Index (TIM0, 0x03)), Local5)), 
                            DMA0) /* \_SB_.PCI0.SATA.DMA0 */
                        Or (CHNF, One, CHNF) /* \_SB_.PCI0.SATA.CHNF */
                    }

                    If (And (Arg4, 0x07))
                    {
                        Store (Arg5, Local5)
                        If (And (Arg4, 0x02))
                        {
                            Add (Local5, 0x02, Local5)
                        }

                        If (And (Arg4, 0x04))
                        {
                            Add (Local5, 0x04, Local5)
                        }

                        Store (DerefOf (Index (DerefOf (Index (TIM0, 0x03)), Local5)), 
                            DMA1) /* \_SB_.PCI0.SATA.DMA1 */
                        Or (CHNF, 0x04, CHNF) /* \_SB_.PCI0.SATA.CHNF */
                    }

                    Store (TMD0, Debug)
                    Return (TMD0) /* \_SB_.PCI0.SATA.TMD0 */
                }

                Method (STM, 0, Serialized)
                {
                    If (REGF)
                    {
                        Store (Zero, GMUE) /* \_SB_.PCI0.SATA.GMUE */
                        Store (Zero, GMUT) /* \_SB_.PCI0.SATA.GMUT */
                        Store (Zero, GSUE) /* \_SB_.PCI0.SATA.GSUE */
                        Store (Zero, GSUT) /* \_SB_.PCI0.SATA.GSUT */
                        If (And (CHNF, One))
                        {
                            Store (Match (DerefOf (Index (TIM0, 0x03)), MLE, DMA0, MTR, 
                                Zero, Zero), Local0)
                            If (LGreater (Local0, 0x05))
                            {
                                Store (0x05, Local0)
                            }

                            Store (DerefOf (Index (DerefOf (Index (TIM0, 0x04)), Local0)), 
                                GMUT) /* \_SB_.PCI0.SATA.GMUT */
                            Or (GMUE, One, GMUE) /* \_SB_.PCI0.SATA.GMUE */
                            If (LGreater (Local0, 0x02))
                            {
                                Or (GMUE, 0x02, GMUE) /* \_SB_.PCI0.SATA.GMUE */
                            }

                            If (LGreater (Local0, 0x04))
                            {
                                And (GMUE, 0xFD, GMUE) /* \_SB_.PCI0.SATA.GMUE */
                                Or (GMUE, 0x04, GMUE) /* \_SB_.PCI0.SATA.GMUE */
                            }
                        }
                        Else
                        {
                            If (Or (LEqual (PIO0, Ones), LEqual (PIO0, Zero)))
                            {
                                If (And (LLess (DMA0, Ones), LGreater (DMA0, Zero)))
                                {
                                    Store (DMA0, PIO0) /* \_SB_.PCI0.SATA.PIO0 */
                                    Or (GMUE, 0x80, GMUE) /* \_SB_.PCI0.SATA.GMUE */
                                }
                            }
                        }

                        If (And (CHNF, 0x04))
                        {
                            Store (Match (DerefOf (Index (TIM0, 0x03)), MLE, DMA1, MTR, 
                                Zero, Zero), Local0)
                            If (LGreater (Local0, 0x05))
                            {
                                Store (0x05, Local0)
                            }

                            Store (DerefOf (Index (DerefOf (Index (TIM0, 0x04)), Local0)), 
                                GSUT) /* \_SB_.PCI0.SATA.GSUT */
                            Or (GSUE, One, GSUE) /* \_SB_.PCI0.SATA.GSUE */
                            If (LGreater (Local0, 0x02))
                            {
                                Or (GSUE, 0x02, GSUE) /* \_SB_.PCI0.SATA.GSUE */
                            }

                            If (LGreater (Local0, 0x04))
                            {
                                And (GSUE, 0xFD, GSUE) /* \_SB_.PCI0.SATA.GSUE */
                                Or (GSUE, 0x04, GSUE) /* \_SB_.PCI0.SATA.GSUE */
                            }
                        }
                        Else
                        {
                            If (Or (LEqual (PIO1, Ones), LEqual (PIO1, Zero)))
                            {
                                If (And (LLess (DMA1, Ones), LGreater (DMA1, Zero)))
                                {
                                    Store (DMA1, PIO1) /* \_SB_.PCI0.SATA.PIO1 */
                                    Or (GSUE, 0x80, GSUE) /* \_SB_.PCI0.SATA.GSUE */
                                }
                            }
                        }

                        If (And (CHNF, 0x02))
                        {
                            Or (GMUE, 0x20, GMUE) /* \_SB_.PCI0.SATA.GMUE */
                        }

                        If (And (CHNF, 0x08))
                        {
                            Or (GSUE, 0x20, GSUE) /* \_SB_.PCI0.SATA.GSUE */
                        }

                        And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIO0, MTR, 
                            Zero, Zero), 0x07, Local0)
                        Store (DerefOf (Index (DerefOf (Index (TIM0, One)), Local0)), 
                            Local1)
                        Store (Local1, GMPT) /* \_SB_.PCI0.SATA.GMPT */
                        If (LLess (Local0, 0x03))
                        {
                            Or (GMUE, 0x50, GMUE) /* \_SB_.PCI0.SATA.GMUE */
                        }

                        And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIO1, MTR, 
                            Zero, Zero), 0x07, Local0)
                        Store (DerefOf (Index (DerefOf (Index (TIM0, 0x02)), Local0)), 
                            Local1)
                        Store (Local1, GSPT) /* \_SB_.PCI0.SATA.GSPT */
                        If (LLess (Local0, 0x03))
                        {
                            Or (GSUE, 0x50, GSUE) /* \_SB_.PCI0.SATA.GSUE */
                        }
                    }
                }

                Name (AT01, Buffer (0x07)
                {
                     0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEF         /* ....... */
                })
                Name (AT02, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90         /* ....... */
                })
                Name (AT03, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC6         /* ....... */
                })
                Name (AT04, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x91         /* ....... */
                })
                Name (ATA0, Buffer (0x1D) {})
                Name (ATA1, Buffer (0x1D) {})
                Name (ATA2, Buffer (0x1D) {})
                Name (ATA3, Buffer (0x1D) {})
                Name (ATAB, Buffer (0x1D) {})
                CreateByteField (ATAB, Zero, CMDC)
                Method (GTFB, 3, Serialized)
                {
                    Multiply (CMDC, 0x38, Local0)
                    Add (Local0, 0x08, Local1)
                    CreateField (ATAB, Local1, 0x38, CMDX)
                    Multiply (CMDC, 0x07, Local0)
                    CreateByteField (ATAB, Add (Local0, 0x02), A001)
                    CreateByteField (ATAB, Add (Local0, 0x06), A005)
                    Store (Arg0, CMDX) /* \_SB_.PCI0.SATA.GTFB.CMDX */
                    Store (Arg1, A001) /* \_SB_.PCI0.SATA.GTFB.A001 */
                    Store (Arg2, A005) /* \_SB_.PCI0.SATA.GTFB.A005 */
                    Increment (CMDC)
                }

                Method (GTF, 2, Serialized)
                {
                    Store (Arg1, Debug)
                    Store (Zero, CMDC) /* \_SB_.PCI0.SATA.CMDC */
                    Name (ID49, 0x0C00)
                    Name (ID59, Zero)
                    Name (ID53, 0x04)
                    Name (ID63, 0x0F00)
                    Name (ID88, 0x0F00)
                    Name (IRDY, One)
                    Name (PIOT, Zero)
                    Name (DMAT, Zero)
                    If (LEqual (SizeOf (Arg1), 0x0200))
                    {
                        CreateWordField (Arg1, 0x62, IW49)
                        Store (IW49, ID49) /* \_SB_.PCI0.SATA.GTF_.ID49 */
                        CreateWordField (Arg1, 0x6A, IW53)
                        Store (IW53, ID53) /* \_SB_.PCI0.SATA.GTF_.ID53 */
                        CreateWordField (Arg1, 0x7E, IW63)
                        Store (IW63, ID63) /* \_SB_.PCI0.SATA.GTF_.ID63 */
                        CreateWordField (Arg1, 0x76, IW59)
                        Store (IW59, ID59) /* \_SB_.PCI0.SATA.GTF_.ID59 */
                        CreateWordField (Arg1, 0xB0, IW88)
                        Store (IW88, ID88) /* \_SB_.PCI0.SATA.GTF_.ID88 */
                    }

                    Store (0xA0, Local7)
                    If (Arg0)
                    {
                        Store (0xB0, Local7)
                        And (CHNF, 0x08, IRDY) /* \_SB_.PCI0.SATA.GTF_.IRDY */
                        If (And (CHNF, 0x10))
                        {
                            Store (PIO1, PIOT) /* \_SB_.PCI0.SATA.GTF_.PIOT */
                        }
                        Else
                        {
                            Store (PIO0, PIOT) /* \_SB_.PCI0.SATA.GTF_.PIOT */
                        }

                        If (And (CHNF, 0x04))
                        {
                            If (And (CHNF, 0x10))
                            {
                                Store (DMA1, DMAT) /* \_SB_.PCI0.SATA.GTF_.DMAT */
                            }
                            Else
                            {
                                Store (DMA0, DMAT) /* \_SB_.PCI0.SATA.GTF_.DMAT */
                            }
                        }
                    }
                    Else
                    {
                        And (CHNF, 0x02, IRDY) /* \_SB_.PCI0.SATA.GTF_.IRDY */
                        Store (PIO0, PIOT) /* \_SB_.PCI0.SATA.GTF_.PIOT */
                        If (And (CHNF, One))
                        {
                            Store (DMA0, DMAT) /* \_SB_.PCI0.SATA.GTF_.DMAT */
                        }
                    }

                    If (LAnd (LAnd (And (ID53, 0x04), And (ID88, 0xFF00
                        )), DMAT))
                    {
                        Store (Match (DerefOf (Index (TIM0, 0x03)), MLE, DMAT, MTR, 
                            Zero, Zero), Local1)
                        If (LGreater (Local1, 0x05))
                        {
                            Store (0x05, Local1)
                        }

                        GTFB (AT01, Or (0x40, Local1), Local7)
                    }
                    Else
                    {
                        If (LAnd (And (ID63, 0xFF00), PIOT))
                        {
                            And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIOT, MTR, 
                                Zero, Zero), 0x03, Local0)
                            Or (0x20, DerefOf (Index (DerefOf (Index (TIM0, 0x07)), Local0
                                )), Local1)
                            GTFB (AT01, Local1, Local7)
                        }
                    }

                    If (IRDY)
                    {
                        And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIOT, MTR, 
                            Zero, Zero), 0x07, Local0)
                        Or (0x08, DerefOf (Index (DerefOf (Index (TIM0, 0x06)), Local0
                            )), Local1)
                        GTFB (AT01, Local1, Local7)
                    }
                    Else
                    {
                        If (And (ID49, 0x0400))
                        {
                            GTFB (AT01, One, Local7)
                        }
                    }

                    If (LAnd (And (ID59, 0x0100), And (ID59, 0xFF)))
                    {
                        GTFB (AT03, And (ID59, 0xFF), Local7)
                    }

                    Store (ATAB, Debug)
                    Return (ATAB) /* \_SB_.PCI0.SATA.ATAB */
                }

                Method (RATA, 1, NotSerialized)
                {
                    CreateByteField (Arg0, Zero, CMDN)
                    Multiply (CMDN, 0x38, Local0)
                    CreateField (Arg0, 0x08, Local0, RETB)
                    Store (RETB, Debug)
                    Return (Concatenate (RETB, FZTF))
                }
            }

            Device (SAT1)
            {
                Name (_ADR, 0x001F0005)  // _ADR: Address
                Name (REGF, One)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (LEqual (Arg0, 0x02))
                    {
                        Store (Arg1, REGF) /* \_SB_.PCI0.SAT1.REGF */
                    }
                }

                Name (TIM0, Package (0x08)
                {
                    Package (0x04)
                    {
                        0x78, 
                        0xB4, 
                        0xF0, 
                        0x0384
                    }, 

                    Package (0x04)
                    {
                        0x23, 
                        0x21, 
                        0x10, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0B, 
                        0x09, 
                        0x04, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        0x78, 
                        0x5A, 
                        0x3C, 
                        0x28, 
                        0x1E, 
                        0x14
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        One, 
                        0x02, 
                        One, 
                        0x02, 
                        One
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        One
                    }, 

                    Package (0x04)
                    {
                        0x04, 
                        0x03, 
                        0x02, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x02, 
                        One, 
                        Zero, 
                        Zero
                    }
                })
                Name (TMD0, Buffer (0x14) {})
                CreateDWordField (TMD0, Zero, PIO0)
                CreateDWordField (TMD0, 0x04, DMA0)
                CreateDWordField (TMD0, 0x08, PIO1)
                CreateDWordField (TMD0, 0x0C, DMA1)
                CreateDWordField (TMD0, 0x10, CHNF)
                OperationRegion (CFG2, PCI_Config, 0x40, 0x20)
                Field (CFG2, DWordAcc, NoLock, Preserve)
                {
                    PMPT,   4, 
                    PSPT,   4, 
                    PMRI,   6, 
                    Offset (0x02), 
                    SMPT,   4, 
                    SSPT,   4, 
                    SMRI,   6, 
                    Offset (0x04), 
                    PSRI,   4, 
                    SSRI,   4, 
                    Offset (0x08), 
                    PM3E,   1, 
                    PS3E,   1, 
                    SM3E,   1, 
                    SS3E,   1, 
                    Offset (0x0A), 
                    PMUT,   2, 
                        ,   2, 
                    PSUT,   2, 
                    Offset (0x0B), 
                    SMUT,   2, 
                        ,   2, 
                    SSUT,   2, 
                    Offset (0x0C), 
                    Offset (0x14), 
                    PM6E,   1, 
                    PS6E,   1, 
                    SM6E,   1, 
                    SS6E,   1, 
                    PMCR,   1, 
                    PSCR,   1, 
                    SMCR,   1, 
                    SSCR,   1, 
                        ,   4, 
                    PMAE,   1, 
                    PSAE,   1, 
                    SMAE,   1, 
                    SSAE,   1
                }

                Name (GMPT, Zero)
                Name (GMUE, Zero)
                Name (GMUT, Zero)
                Name (GMCR, Zero)
                Name (GSPT, Zero)
                Name (GSUE, Zero)
                Name (GSUT, Zero)
                Name (GSCR, Zero)
                Device (CHN0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        ShiftLeft (PSCR, One, Local1)
                        Or (PMCR, Local1, Local0)
                        ShiftLeft (PMAE, 0x02, Local3)
                        ShiftLeft (PM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PM3E, Local3, Local1)
                        ShiftLeft (PMPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        ShiftLeft (PSAE, 0x02, Local3)
                        ShiftLeft (PS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PS3E, Local3, Local2)
                        ShiftLeft (PSPT, 0x04, Local3)
                        Or (Local2, Local3, Local2)
                        Return (GTM (PMRI, Local1, PMUT, PSRI, Local2, PSUT, Local0))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Store (Arg0, Debug)
                        Store (Arg0, TMD0) /* \_SB_.PCI0.SAT1.TMD0 */
                        ShiftLeft (PMAE, 0x02, Local3)
                        ShiftLeft (PM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PM3E, Local3, Local0)
                        ShiftLeft (PMPT, 0x04, Local3)
                        Or (Local0, Local3, Local0)
                        ShiftLeft (PSAE, 0x02, Local3)
                        ShiftLeft (PS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PS3E, Local3, Local1)
                        ShiftLeft (PSPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        Store (PMRI, GMPT) /* \_SB_.PCI0.SAT1.GMPT */
                        Store (Local0, GMUE) /* \_SB_.PCI0.SAT1.GMUE */
                        Store (PMUT, GMUT) /* \_SB_.PCI0.SAT1.GMUT */
                        Store (PMCR, GMCR) /* \_SB_.PCI0.SAT1.GMCR */
                        Store (PSRI, GSPT) /* \_SB_.PCI0.SAT1.GSPT */
                        Store (Local1, GSUE) /* \_SB_.PCI0.SAT1.GSUE */
                        Store (PSUT, GSUT) /* \_SB_.PCI0.SAT1.GSUT */
                        Store (PSCR, GSCR) /* \_SB_.PCI0.SAT1.GSCR */
                        STM ()
                        Store (GMPT, PMRI) /* \_SB_.PCI0.SAT1.PMRI */
                        Store (GMUE, Local0)
                        Store (GMUT, PMUT) /* \_SB_.PCI0.SAT1.PMUT */
                        Store (GMCR, PMCR) /* \_SB_.PCI0.SAT1.PMCR */
                        Store (GSUE, Local1)
                        Store (GSUT, PSUT) /* \_SB_.PCI0.SAT1.PSUT */
                        Store (GSCR, PSCR) /* \_SB_.PCI0.SAT1.PSCR */
                        If (And (Local0, One))
                        {
                            Store (One, PM3E) /* \_SB_.PCI0.SAT1.PM3E */
                        }
                        Else
                        {
                            Store (Zero, PM3E) /* \_SB_.PCI0.SAT1.PM3E */
                        }

                        If (And (Local0, 0x02))
                        {
                            Store (One, PM6E) /* \_SB_.PCI0.SAT1.PM6E */
                        }
                        Else
                        {
                            Store (Zero, PM6E) /* \_SB_.PCI0.SAT1.PM6E */
                        }

                        If (And (Local0, 0x04))
                        {
                            Store (One, PMAE) /* \_SB_.PCI0.SAT1.PMAE */
                        }
                        Else
                        {
                            Store (Zero, PMAE) /* \_SB_.PCI0.SAT1.PMAE */
                        }

                        If (And (Local1, One))
                        {
                            Store (One, PS3E) /* \_SB_.PCI0.SAT1.PS3E */
                        }
                        Else
                        {
                            Store (Zero, PS3E) /* \_SB_.PCI0.SAT1.PS3E */
                        }

                        If (And (Local1, 0x02))
                        {
                            Store (One, PS6E) /* \_SB_.PCI0.SAT1.PS6E */
                        }
                        Else
                        {
                            Store (Zero, PS6E) /* \_SB_.PCI0.SAT1.PS6E */
                        }

                        If (And (Local1, 0x04))
                        {
                            Store (One, PSAE) /* \_SB_.PCI0.SAT1.PSAE */
                        }
                        Else
                        {
                            Store (Zero, PSAE) /* \_SB_.PCI0.SAT1.PSAE */
                        }

                        Store (GTF (Zero, Arg1), ATA0) /* \_SB_.PCI0.SAT1.ATA0 */
                        Store (GTF (One, Arg2), ATA1) /* \_SB_.PCI0.SAT1.ATA1 */
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA0))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA1))
                        }
                    }
                }

                Device (CHN1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        ShiftLeft (SSCR, One, Local1)
                        Or (SMCR, Local1, Local0)
                        ShiftLeft (SMAE, 0x02, Local3)
                        ShiftLeft (SM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SM3E, Local3, Local1)
                        ShiftLeft (SMPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        ShiftLeft (SSAE, 0x02, Local3)
                        ShiftLeft (SS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SS3E, Local3, Local2)
                        ShiftLeft (SSPT, 0x04, Local3)
                        Or (Local2, Local3, Local2)
                        Return (GTM (SMRI, Local1, SMUT, SSRI, Local2, SSUT, Local0))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Store (Arg0, Debug)
                        Store (Arg0, TMD0) /* \_SB_.PCI0.SAT1.TMD0 */
                        ShiftLeft (SMAE, 0x02, Local3)
                        ShiftLeft (SM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SM3E, Local3, Local0)
                        ShiftLeft (SMPT, 0x04, Local3)
                        Or (Local0, Local3, Local0)
                        ShiftLeft (SSAE, 0x02, Local3)
                        ShiftLeft (SS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SS3E, Local3, Local1)
                        ShiftLeft (SSPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        Store (SMRI, GMPT) /* \_SB_.PCI0.SAT1.GMPT */
                        Store (Local0, GMUE) /* \_SB_.PCI0.SAT1.GMUE */
                        Store (SMUT, GMUT) /* \_SB_.PCI0.SAT1.GMUT */
                        Store (SMCR, GMCR) /* \_SB_.PCI0.SAT1.GMCR */
                        Store (SSRI, GSPT) /* \_SB_.PCI0.SAT1.GSPT */
                        Store (Local1, GSUE) /* \_SB_.PCI0.SAT1.GSUE */
                        Store (SSUT, GSUT) /* \_SB_.PCI0.SAT1.GSUT */
                        Store (SSCR, GSCR) /* \_SB_.PCI0.SAT1.GSCR */
                        STM ()
                        Store (GMPT, SMRI) /* \_SB_.PCI0.SAT1.SMRI */
                        Store (GMUE, Local0)
                        Store (GMUT, SMUT) /* \_SB_.PCI0.SAT1.SMUT */
                        Store (GMCR, SMCR) /* \_SB_.PCI0.SAT1.SMCR */
                        Store (GSUE, Local1)
                        Store (GSUT, SSUT) /* \_SB_.PCI0.SAT1.SSUT */
                        Store (GSCR, SSCR) /* \_SB_.PCI0.SAT1.SSCR */
                        If (And (Local0, One))
                        {
                            Store (One, SM3E) /* \_SB_.PCI0.SAT1.SM3E */
                        }
                        Else
                        {
                            Store (Zero, SM3E) /* \_SB_.PCI0.SAT1.SM3E */
                        }

                        If (And (Local0, 0x02))
                        {
                            Store (One, SM6E) /* \_SB_.PCI0.SAT1.SM6E */
                        }
                        Else
                        {
                            Store (Zero, SM6E) /* \_SB_.PCI0.SAT1.SM6E */
                        }

                        If (And (Local0, 0x04))
                        {
                            Store (One, SMAE) /* \_SB_.PCI0.SAT1.SMAE */
                        }
                        Else
                        {
                            Store (Zero, SMAE) /* \_SB_.PCI0.SAT1.SMAE */
                        }

                        If (And (Local1, One))
                        {
                            Store (One, SS3E) /* \_SB_.PCI0.SAT1.SS3E */
                        }
                        Else
                        {
                            Store (Zero, SS3E) /* \_SB_.PCI0.SAT1.SS3E */
                        }

                        If (And (Local1, 0x02))
                        {
                            Store (One, SS6E) /* \_SB_.PCI0.SAT1.SS6E */
                        }
                        Else
                        {
                            Store (Zero, SS6E) /* \_SB_.PCI0.SAT1.SS6E */
                        }

                        If (And (Local1, 0x04))
                        {
                            Store (One, SSAE) /* \_SB_.PCI0.SAT1.SSAE */
                        }
                        Else
                        {
                            Store (Zero, SSAE) /* \_SB_.PCI0.SAT1.SSAE */
                        }

                        Store (GTF (Zero, Arg1), ATA2) /* \_SB_.PCI0.SAT1.ATA2 */
                        Store (GTF (One, Arg2), ATA3) /* \_SB_.PCI0.SAT1.ATA3 */
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA2))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA3))
                        }
                    }
                }

                Method (GTM, 7, Serialized)
                {
                    Store (Ones, PIO0) /* \_SB_.PCI0.SAT1.PIO0 */
                    Store (Ones, PIO1) /* \_SB_.PCI0.SAT1.PIO1 */
                    Store (Ones, DMA0) /* \_SB_.PCI0.SAT1.DMA0 */
                    Store (Ones, DMA1) /* \_SB_.PCI0.SAT1.DMA1 */
                    Store (0x10, CHNF) /* \_SB_.PCI0.SAT1.CHNF */
                    If (REGF) {}
                    Else
                    {
                        Return (TMD0) /* \_SB_.PCI0.SAT1.TMD0 */
                    }

                    If (And (Arg1, 0x20))
                    {
                        Or (CHNF, 0x02, CHNF) /* \_SB_.PCI0.SAT1.CHNF */
                    }

                    Store (Match (DerefOf (Index (TIM0, One)), MEQ, Arg0, MTR, 
                        Zero, Zero), Local6)
                    Store (DerefOf (Index (DerefOf (Index (TIM0, Zero)), Local6)), 
                        Local7)
                    Store (Local7, DMA0) /* \_SB_.PCI0.SAT1.DMA0 */
                    Store (Local7, PIO0) /* \_SB_.PCI0.SAT1.PIO0 */
                    If (And (Arg4, 0x20))
                    {
                        Or (CHNF, 0x08, CHNF) /* \_SB_.PCI0.SAT1.CHNF */
                    }

                    Store (Match (DerefOf (Index (TIM0, 0x02)), MEQ, Arg3, MTR, 
                        Zero, Zero), Local6)
                    Store (DerefOf (Index (DerefOf (Index (TIM0, Zero)), Local6)), 
                        Local7)
                    Store (Local7, DMA1) /* \_SB_.PCI0.SAT1.DMA1 */
                    Store (Local7, PIO1) /* \_SB_.PCI0.SAT1.PIO1 */
                    If (And (Arg1, 0x07))
                    {
                        Store (Arg2, Local5)
                        If (And (Arg1, 0x02))
                        {
                            Add (Local5, 0x02, Local5)
                        }

                        If (And (Arg1, 0x04))
                        {
                            Add (Local5, 0x04, Local5)
                        }

                        Store (DerefOf (Index (DerefOf (Index (TIM0, 0x03)), Local5)), 
                            DMA0) /* \_SB_.PCI0.SAT1.DMA0 */
                        Or (CHNF, One, CHNF) /* \_SB_.PCI0.SAT1.CHNF */
                    }

                    If (And (Arg4, 0x07))
                    {
                        Store (Arg5, Local5)
                        If (And (Arg4, 0x02))
                        {
                            Add (Local5, 0x02, Local5)
                        }

                        If (And (Arg4, 0x04))
                        {
                            Add (Local5, 0x04, Local5)
                        }

                        Store (DerefOf (Index (DerefOf (Index (TIM0, 0x03)), Local5)), 
                            DMA1) /* \_SB_.PCI0.SAT1.DMA1 */
                        Or (CHNF, 0x04, CHNF) /* \_SB_.PCI0.SAT1.CHNF */
                    }

                    Store (TMD0, Debug)
                    Return (TMD0) /* \_SB_.PCI0.SAT1.TMD0 */
                }

                Method (STM, 0, Serialized)
                {
                    If (REGF)
                    {
                        Store (Zero, GMUE) /* \_SB_.PCI0.SAT1.GMUE */
                        Store (Zero, GMUT) /* \_SB_.PCI0.SAT1.GMUT */
                        Store (Zero, GSUE) /* \_SB_.PCI0.SAT1.GSUE */
                        Store (Zero, GSUT) /* \_SB_.PCI0.SAT1.GSUT */
                        If (And (CHNF, One))
                        {
                            Store (Match (DerefOf (Index (TIM0, 0x03)), MLE, DMA0, MTR, 
                                Zero, Zero), Local0)
                            If (LGreater (Local0, 0x05))
                            {
                                Store (0x05, Local0)
                            }

                            Store (DerefOf (Index (DerefOf (Index (TIM0, 0x04)), Local0)), 
                                GMUT) /* \_SB_.PCI0.SAT1.GMUT */
                            Or (GMUE, One, GMUE) /* \_SB_.PCI0.SAT1.GMUE */
                            If (LGreater (Local0, 0x02))
                            {
                                Or (GMUE, 0x02, GMUE) /* \_SB_.PCI0.SAT1.GMUE */
                            }

                            If (LGreater (Local0, 0x04))
                            {
                                And (GMUE, 0xFD, GMUE) /* \_SB_.PCI0.SAT1.GMUE */
                                Or (GMUE, 0x04, GMUE) /* \_SB_.PCI0.SAT1.GMUE */
                            }
                        }
                        Else
                        {
                            If (Or (LEqual (PIO0, Ones), LEqual (PIO0, Zero)))
                            {
                                If (And (LLess (DMA0, Ones), LGreater (DMA0, Zero)))
                                {
                                    Store (DMA0, PIO0) /* \_SB_.PCI0.SAT1.PIO0 */
                                    Or (GMUE, 0x80, GMUE) /* \_SB_.PCI0.SAT1.GMUE */
                                }
                            }
                        }

                        If (And (CHNF, 0x04))
                        {
                            Store (Match (DerefOf (Index (TIM0, 0x03)), MLE, DMA1, MTR, 
                                Zero, Zero), Local0)
                            If (LGreater (Local0, 0x05))
                            {
                                Store (0x05, Local0)
                            }

                            Store (DerefOf (Index (DerefOf (Index (TIM0, 0x04)), Local0)), 
                                GSUT) /* \_SB_.PCI0.SAT1.GSUT */
                            Or (GSUE, One, GSUE) /* \_SB_.PCI0.SAT1.GSUE */
                            If (LGreater (Local0, 0x02))
                            {
                                Or (GSUE, 0x02, GSUE) /* \_SB_.PCI0.SAT1.GSUE */
                            }

                            If (LGreater (Local0, 0x04))
                            {
                                And (GSUE, 0xFD, GSUE) /* \_SB_.PCI0.SAT1.GSUE */
                                Or (GSUE, 0x04, GSUE) /* \_SB_.PCI0.SAT1.GSUE */
                            }
                        }
                        Else
                        {
                            If (Or (LEqual (PIO1, Ones), LEqual (PIO1, Zero)))
                            {
                                If (And (LLess (DMA1, Ones), LGreater (DMA1, Zero)))
                                {
                                    Store (DMA1, PIO1) /* \_SB_.PCI0.SAT1.PIO1 */
                                    Or (GSUE, 0x80, GSUE) /* \_SB_.PCI0.SAT1.GSUE */
                                }
                            }
                        }

                        If (And (CHNF, 0x02))
                        {
                            Or (GMUE, 0x20, GMUE) /* \_SB_.PCI0.SAT1.GMUE */
                        }

                        If (And (CHNF, 0x08))
                        {
                            Or (GSUE, 0x20, GSUE) /* \_SB_.PCI0.SAT1.GSUE */
                        }

                        And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIO0, MTR, 
                            Zero, Zero), 0x07, Local0)
                        Store (DerefOf (Index (DerefOf (Index (TIM0, One)), Local0)), 
                            Local1)
                        Store (Local1, GMPT) /* \_SB_.PCI0.SAT1.GMPT */
                        If (LLess (Local0, 0x03))
                        {
                            Or (GMUE, 0x50, GMUE) /* \_SB_.PCI0.SAT1.GMUE */
                        }

                        And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIO1, MTR, 
                            Zero, Zero), 0x07, Local0)
                        Store (DerefOf (Index (DerefOf (Index (TIM0, 0x02)), Local0)), 
                            Local1)
                        Store (Local1, GSPT) /* \_SB_.PCI0.SAT1.GSPT */
                        If (LLess (Local0, 0x03))
                        {
                            Or (GSUE, 0x50, GSUE) /* \_SB_.PCI0.SAT1.GSUE */
                        }
                    }
                }

                Name (AT01, Buffer (0x07)
                {
                     0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEF         /* ....... */
                })
                Name (AT02, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90         /* ....... */
                })
                Name (AT03, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC6         /* ....... */
                })
                Name (AT04, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x91         /* ....... */
                })
                Name (ATA0, Buffer (0x1D) {})
                Name (ATA1, Buffer (0x1D) {})
                Name (ATA2, Buffer (0x1D) {})
                Name (ATA3, Buffer (0x1D) {})
                Name (ATAB, Buffer (0x1D) {})
                CreateByteField (ATAB, Zero, CMDC)
                Method (GTFB, 3, Serialized)
                {
                    Multiply (CMDC, 0x38, Local0)
                    Add (Local0, 0x08, Local1)
                    CreateField (ATAB, Local1, 0x38, CMDX)
                    Multiply (CMDC, 0x07, Local0)
                    CreateByteField (ATAB, Add (Local0, 0x02), A001)
                    CreateByteField (ATAB, Add (Local0, 0x06), A005)
                    Store (Arg0, CMDX) /* \_SB_.PCI0.SAT1.GTFB.CMDX */
                    Store (Arg1, A001) /* \_SB_.PCI0.SAT1.GTFB.A001 */
                    Store (Arg2, A005) /* \_SB_.PCI0.SAT1.GTFB.A005 */
                    Increment (CMDC)
                }

                Method (GTF, 2, Serialized)
                {
                    Store (Arg1, Debug)
                    Store (Zero, CMDC) /* \_SB_.PCI0.SAT1.CMDC */
                    Name (ID49, 0x0C00)
                    Name (ID59, Zero)
                    Name (ID53, 0x04)
                    Name (ID63, 0x0F00)
                    Name (ID88, 0x0F00)
                    Name (IRDY, One)
                    Name (PIOT, Zero)
                    Name (DMAT, Zero)
                    If (LEqual (SizeOf (Arg1), 0x0200))
                    {
                        CreateWordField (Arg1, 0x62, IW49)
                        Store (IW49, ID49) /* \_SB_.PCI0.SAT1.GTF_.ID49 */
                        CreateWordField (Arg1, 0x6A, IW53)
                        Store (IW53, ID53) /* \_SB_.PCI0.SAT1.GTF_.ID53 */
                        CreateWordField (Arg1, 0x7E, IW63)
                        Store (IW63, ID63) /* \_SB_.PCI0.SAT1.GTF_.ID63 */
                        CreateWordField (Arg1, 0x76, IW59)
                        Store (IW59, ID59) /* \_SB_.PCI0.SAT1.GTF_.ID59 */
                        CreateWordField (Arg1, 0xB0, IW88)
                        Store (IW88, ID88) /* \_SB_.PCI0.SAT1.GTF_.ID88 */
                    }

                    Store (0xA0, Local7)
                    If (Arg0)
                    {
                        Store (0xB0, Local7)
                        And (CHNF, 0x08, IRDY) /* \_SB_.PCI0.SAT1.GTF_.IRDY */
                        If (And (CHNF, 0x10))
                        {
                            Store (PIO1, PIOT) /* \_SB_.PCI0.SAT1.GTF_.PIOT */
                        }
                        Else
                        {
                            Store (PIO0, PIOT) /* \_SB_.PCI0.SAT1.GTF_.PIOT */
                        }

                        If (And (CHNF, 0x04))
                        {
                            If (And (CHNF, 0x10))
                            {
                                Store (DMA1, DMAT) /* \_SB_.PCI0.SAT1.GTF_.DMAT */
                            }
                            Else
                            {
                                Store (DMA0, DMAT) /* \_SB_.PCI0.SAT1.GTF_.DMAT */
                            }
                        }
                    }
                    Else
                    {
                        And (CHNF, 0x02, IRDY) /* \_SB_.PCI0.SAT1.GTF_.IRDY */
                        Store (PIO0, PIOT) /* \_SB_.PCI0.SAT1.GTF_.PIOT */
                        If (And (CHNF, One))
                        {
                            Store (DMA0, DMAT) /* \_SB_.PCI0.SAT1.GTF_.DMAT */
                        }
                    }

                    If (LAnd (LAnd (And (ID53, 0x04), And (ID88, 0xFF00
                        )), DMAT))
                    {
                        Store (Match (DerefOf (Index (TIM0, 0x03)), MLE, DMAT, MTR, 
                            Zero, Zero), Local1)
                        If (LGreater (Local1, 0x05))
                        {
                            Store (0x05, Local1)
                        }

                        GTFB (AT01, Or (0x40, Local1), Local7)
                    }
                    Else
                    {
                        If (LAnd (And (ID63, 0xFF00), PIOT))
                        {
                            And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIOT, MTR, 
                                Zero, Zero), 0x03, Local0)
                            Or (0x20, DerefOf (Index (DerefOf (Index (TIM0, 0x07)), Local0
                                )), Local1)
                            GTFB (AT01, Local1, Local7)
                        }
                    }

                    If (IRDY)
                    {
                        And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIOT, MTR, 
                            Zero, Zero), 0x07, Local0)
                        Or (0x08, DerefOf (Index (DerefOf (Index (TIM0, 0x06)), Local0
                            )), Local1)
                        GTFB (AT01, Local1, Local7)
                    }
                    Else
                    {
                        If (And (ID49, 0x0400))
                        {
                            GTFB (AT01, One, Local7)
                        }
                    }

                    If (LAnd (And (ID59, 0x0100), And (ID59, 0xFF)))
                    {
                        GTFB (AT03, And (ID59, 0xFF), Local7)
                    }

                    Store (ATAB, Debug)
                    Return (ATAB) /* \_SB_.PCI0.SAT1.ATAB */
                }

                Method (RATA, 1, NotSerialized)
                {
                    CreateByteField (Arg0, Zero, CMDN)
                    Multiply (CMDN, 0x38, Local0)
                    CreateField (Arg0, 0x08, Local0, RETB)
                    Store (RETB, Debug)
                    Return (Concatenate (RETB, FZTF))
                }
            }

            Device (EUSB)
            {
                Name (_ADR, 0x001D0007)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0D, 0x04))
                }
            }

            Device (USBE)
            {
                Name (_ADR, 0x001A0007)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0D, 0x04))
                }
            }

            Device (P0P5)
            {
                Name (_ADR, 0x001C0001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR05) /* \_SB_.AR05 */
                    }

                    Return (PR05) /* \_SB_.PR05 */
                }
            }

            Device (P0P6)
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR06) /* \_SB_.AR06 */
                    }

                    Return (PR06) /* \_SB_.PR06 */
                }
            }

            Device (P0P7)
            {
                Name (_ADR, 0x001C0003)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }
            }

            Device (P0P8)
            {
                Name (_ADR, 0x001C0004)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR08) /* \_SB_.AR08 */
                    }

                    Return (PR08) /* \_SB_.PR08 */
                }
            }

            Device (P0P9)
            {
                Name (_ADR, 0x001C0005)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR09) /* \_SB_.AR09 */
                    }

                    Return (PR09) /* \_SB_.PR09 */
                }
            }

            Device (GBEC)
            {
                Name (_ADR, 0x00190000)  // _ADR: Address
            }

            Device (USB0)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    If (LOr (LEqual (OSFL (), One), LEqual (OSFL (), 0x02)))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, USBW) /* \_SB_.PCI0.USB0.USBW */
                    }
                    Else
                    {
                        Store (Zero, USBW) /* \_SB_.PCI0.USB0.USBW */
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x03, 0x04))
                }
            }

            Device (USB1)
            {
                Name (_ADR, 0x001D0001)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    If (LOr (LEqual (OSFL (), One), LEqual (OSFL (), 0x02)))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, USBW) /* \_SB_.PCI0.USB1.USBW */
                    }
                    Else
                    {
                        Store (Zero, USBW) /* \_SB_.PCI0.USB1.USBW */
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x04, 0x04))
                }
            }

            Device (USB2)
            {
                Name (_ADR, 0x001D0002)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    If (LOr (LEqual (OSFL (), One), LEqual (OSFL (), 0x02)))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, USBW) /* \_SB_.PCI0.USB2.USBW */
                    }
                    Else
                    {
                        Store (Zero, USBW) /* \_SB_.PCI0.USB2.USBW */
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0C, 0x04))
                }
            }

            Device (USB3)
            {
                Name (_ADR, 0x001D0003)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    If (LOr (LEqual (OSFL (), One), LEqual (OSFL (), 0x02)))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, USBW) /* \_SB_.PCI0.USB3.USBW */
                    }
                    Else
                    {
                        Store (Zero, USBW) /* \_SB_.PCI0.USB3.USBW */
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0E, 0x04))
                }
            }

            Device (USB4)
            {
                Name (_ADR, 0x001A0000)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    If (LOr (LEqual (OSFL (), One), LEqual (OSFL (), 0x02)))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, USBW) /* \_SB_.PCI0.USB4.USBW */
                    }
                    Else
                    {
                        Store (Zero, USBW) /* \_SB_.PCI0.USB4.USBW */
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0E, 0x04))
                }
            }

            Device (USB5)
            {
                Name (_ADR, 0x001A0001)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    If (LOr (LEqual (OSFL (), One), LEqual (OSFL (), 0x02)))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, USBW) /* \_SB_.PCI0.USB5.USBW */
                    }
                    Else
                    {
                        Store (Zero, USBW) /* \_SB_.PCI0.USB5.USBW */
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x05, 0x04))
                }
            }

            Device (USB6)
            {
                Name (_ADR, 0x001A0002)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    If (LOr (LEqual (OSFL (), One), LEqual (OSFL (), 0x02)))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, USBW) /* \_SB_.PCI0.USB6.USBW */
                    }
                    Else
                    {
                        Store (Zero, USBW) /* \_SB_.PCI0.USB6.USBW */
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x20, 0x04))
                }
            }

            Device (P0P4)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR04) /* \_SB_.AR04 */
                    }

                    Return (PR04) /* \_SB_.PR04 */
                }
            }
        }

        Scope (\_GPE)
        {
            Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.P0P2, 0x02) // Device Wake
                Notify (\_SB.PCI0.P0P5, 0x02) // Device Wake
                Notify (\_SB.PCI0.P0P6, 0x02) // Device Wake
                Notify (\_SB.PCI0.P0P7, 0x02) // Device Wake
                Notify (\_SB.PCI0.P0P8, 0x02) // Device Wake
                Notify (\_SB.PCI0.P0P9, 0x02) // Device Wake
                Notify (\_SB.PCI0.P0P4, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.P0P1, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            Method (_L08, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                \_SB.PCI0.SBRG.SIOH ()
            }

            Method (_L1D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                \_SB.PCI0.SBRG.SIOH ()
            }

            Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.EUSB, 0x02) // Device Wake
                Notify (\_SB.PCI0.USBE, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            Method (_L03, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB0, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            Method (_L04, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB1, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            Method (_L0C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB2, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            Method (_L0E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB3, 0x02) // Device Wake
                Notify (\_SB.PCI0.USB4, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            Method (_L05, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB5, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            Method (_L20, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB6, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }
        }

        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
            Name (_UID, 0xAA)  // _UID: Unique ID
            Name (_STA, 0x0B)  // _STA: Status
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (G0T0, Package (0x07)
        {
            0x00060000, 
            "AP version", 
            0x40000000, 
            Zero, 
            Zero, 
            One, 
            0x02
        })
        Name (G0T1, Package (0x07)
        {
            0x00060001, 
            "Feature flag", 
            0x40000000, 
            Zero, 
            Zero, 
            One, 
            0x08
        })
        Name (G0T2, Package (0x07)
        {
            0x00070002, 
            "ASAP function", 
            0x40000000, 
            Zero, 
            Zero, 
            Zero, 
            0x02
        })
        Name (G0T3, Package (0x07)
        {
            0x00070003, 
            "AMD Cool&Quiet", 
            0x20000000, 
            Zero, 
            Zero, 
            Zero, 
            0x02
        })
        Name (GRP0, Package (0x04)
        {
            G0T0, 
            G0T1, 
            G0T2, 
            G0T3
        })
        Method (GIT0, 1, NotSerialized)
        {
            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), T_0) /* \_SB_.PCI0.SBRG.ASOC.GIT0.T_0 */
            If (LEqual (T_0, Zero))
            {
                Store (Zero, ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
            }
            Else
            {
                If (LEqual (T_0, One))
                {
                    Store (One, ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                }
                Else
                {
                    If (LEqual (T_0, 0x02))
                    {
                        Store (0x02, ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                    }
                    Else
                    {
                        If (LEqual (T_0, 0x03))
                        {
                            Store (0x03, ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                        }
                        Else
                        {
                            Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                        }
                    }
                }
            }
        }

        Method (SIT0, 3, NotSerialized)
        {
            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), T_0) /* \_SB_.PCI0.SBRG.ASOC.SIT0.T_0 */
            If (LEqual (T_0, Zero))
            {
                Store (0x0300, DBG8) /* \DBG8 */
            }
            Else
            {
                If (LEqual (T_0, One))
                {
                    Store (0x0301, DBG8) /* \DBG8 */
                }
                Else
                {
                    If (LEqual (T_0, 0x02))
                    {
                        Store (0x0302, DBG8) /* \DBG8 */
                    }
                    Else
                    {
                        If (LEqual (T_0, 0x03))
                        {
                            Store (0x0303, DBG8) /* \DBG8 */
                        }
                        Else
                        {
                            Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                        }
                    }
                }
            }
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (G3T0, Package (0x07)
        {
            0x03010011, 
            "CPU Frequency", 
            Zero, 
            Zero, 
            0x4E20, 
            0x64, 
            0x0259
        })
        Name (G3T2, Package (0x07)
        {
            0x03060013, 
            "CPU Ratio", 
            Zero, 
            Zero, 
            0x06, 
            One, 
            0x19
        })
        Name (G321, Package (0x09)
        {
            0x03820032, 
            "DRAM Voltage", 
            Zero, 
            Zero, 
            0x0708, 
            0x14, 
            0x41, 
            One, 
            "Auto"
        })
        Name (G322, Package (0x0E)
        {
            0x03080031, 
            "DRAM Frequency", 
            Zero, 
            Zero, 
            0x09, 
            "Auto", 
            "667 MHz", 
            "800 MHz", 
            "833 MHz", 
            "886 MHz", 
            "1000 MHz", 
            "1066 MHz", 
            "1111 MHz", 
            "1333 MHz"
        })
        Name (G340, Package (0x09)
        {
            0x03810051, 
            "PCIE Frequency", 
            Zero, 
            Zero, 
            0x2710, 
            0x64, 
            0x33, 
            One, 
            "Auto"
        })
        Name (GRP3, Package (0x05)
        {
            G3T0, 
            G3T2, 
            G321, 
            G322, 
            G340
        })
        Name (IDEX, Zero)
        Method (GIT3, 1, NotSerialized)
        {
            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), T_0) /* \_SB_.PCI0.SBRG.ASOC.GIT3.T_0 */
            If (LEqual (T_0, 0x11))
            {
                Subtract (GNVS (0xA6C8), 0xC8, ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
            }
            Else
            {
                If (LEqual (T_0, 0x13))
                {
                    If (LGreater (And (GCAX (One), 0x0FF0, Local0), 0x06F0))
                    {
                        Store (GMAX (0x2C), Local0)
                        And (ShiftRight (Local0, 0x08), 0xFF, Local2)
                        And (Local0, 0xFF, Local1)
                        Subtract (Local1, Local2, Local0)
                        Store (GMDX (0x0198), Local7)
                        And (ShiftRight (Local7, 0x08), 0xFF, Local7)
                        If (LLess (Local7, Local0))
                        {
                            Store (Local1, Local7)
                        }
                    }
                    Else
                    {
                        Store (GMDX (0x0198), Local0)
                        And (ShiftRight (Local0, 0x08), 0x1F, Local1)
                        Store (Local1, Local7)
                        Store (GMAX (0x0198), Local0)
                        And (ShiftRight (Local0, 0x18), 0x1F, Local0)
                    }

                    If (LEqual (GNVS (0x1651), Zero))
                    {
                        If (And (GMAX (0x17), 0x00800000))
                        {
                            Store (ShiftRight (And (GMAX (0x17), 0x4000), 0x0E), Local5)
                            Store (Subtract (Local7, Local0), Local4)
                            Multiply (Local4, 0x02, Local6)
                            Add (Local6, Local5, ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                        }
                        Else
                        {
                            Store (Subtract (Local7, Local0), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                        }
                    }
                    Else
                    {
                        If (And (GMAX (0x17), 0x00800000))
                        {
                            Store (ShiftRight (And (GNVS (0x8298), 0x40), 0x06), Local5)
                            Store (Subtract (And (GNVS (0x8298), 0x1F), Local0), Local4)
                            Multiply (Local4, 0x02, Local6)
                            Add (Local6, Local5, ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                        }
                        Else
                        {
                            Store (Subtract (And (GNVS (0x8298), 0x1F), Local0), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                        }
                    }

                    Store (ASB1, IDEX) /* \_SB_.PCI0.SBRG.ASOC.IDEX */
                }
                Else
                {
                    If (LEqual (T_0, 0x32))
                    {
                        Store (GNVS (0x53A0), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                    }
                    Else
                    {
                        If (LEqual (T_0, 0x31))
                        {
                            Store (GNVS (0x4448), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                        }
                        Else
                        {
                            If (LEqual (T_0, 0x51))
                            {
                                Store (GNVS (0x6368), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                            }
                            Else
                            {
                                Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                            }
                        }
                    }
                }
            }
        }

        Method (SIT3, 3, NotSerialized)
        {
            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), T_0) /* \_SB_.PCI0.SBRG.ASOC.SIT3.T_0 */
            If (LEqual (T_0, 0x11))
            {
                Add (Arg1, 0xC8, Local2)
                If (LNotEqual (GNVS (0xA6C8), Local2))
                {
                    Subtract (GNVS (0xA6C8), 0xC8, Local1)
                    Multiply (Local1, 0x03, Local0)
                    CreateByteField (MNBF, Local0, CB04)
                    CreateWordField (CLKR, 0x0B, CBMN)
                    Store (RBLK (0xD2, Zero, 0x13), CLKR) /* \_SB_.PCI0.SBRG.ASOC.CLKR */
                    Multiply (Arg1, 0x03, Local0)
                    CreateByteField (MNBF, Local0, MN04)
                    CreateWordField (MNBF, Increment (Local0), MNVL)
                    If (LEqual (CB04, MN04))
                    {
                        If (And (Arg2, One))
                        {
                            Store (MNVL, CBMN) /* \_SB_.PCI0.SBRG.ASOC.SIT3.CBMN */
                            WBLK (0xD2, Zero, 0x13, CLKR)
                        }
                    }
                    Else
                    {
                        Or (ASB0, 0x02, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                    }

                    If (And (Arg2, One))
                    {
                        SNVS (0xA6C8, Local2)
                    }
                }
            }
            Else
            {
                If (LEqual (T_0, 0x13))
                {
                    If (LNotEqual (IDEX, Arg1))
                    {
                        If (And (Arg2, One))
                        {
                            SNVS (0x3510, 0x04)
                            SNVS (0x1651, One)
                            If (LGreater (And (GCAX (One), 0x0FF0, Local0), 0x06F0))
                            {
                                Store (GMAX (0x2C), Local0)
                                And (ShiftRight (Local0, 0x08), 0xFF, Local2)
                                And (Local0, 0xFF, Local1)
                                Subtract (Local1, Local2, Local3)
                            }
                            Else
                            {
                                Store (GMDX (0x0198), Local0)
                                And (ShiftRight (Local0, 0x08), 0x1F, Local1)
                                Store (GMAX (0x0198), Local0)
                                And (ShiftRight (Local0, 0x18), 0x1F, Local3)
                            }

                            If (And (GMAX (0x17), 0x00800000))
                            {
                                Store (Arg1, Local2)
                                And (Local2, One, Local0)
                                ShiftRight (Local2, One, Arg1)
                                Add (Arg1, Local3, Arg1)
                            }
                            Else
                            {
                                Store (Zero, Local0)
                                Add (Arg1, Local3, Arg1)
                            }

                            Or (Arg1, ShiftLeft (Local0, 0x06), Arg1)
                            SNVS (0x8298, Arg1)
                        }

                        Or (ASB0, 0x02, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                    }
                }
                Else
                {
                    If (LEqual (T_0, 0x32))
                    {
                        If (LNotEqual (GNVS (0x53A0), Arg1))
                        {
                            If (LEqual (Arg1, Zero))
                            {
                                Or (ASB0, 0x02, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                            }
                            Else
                            {
                                If (And (Arg2, One))
                                {
                                    Subtract (Arg1, One, Local1)
                                    WBYT (0x3C, 0x10, Local1)
                                    WBYT (0x3C, 0x11, One)
                                    WBYT (0x3C, 0x12, One)
                                    WBYT (0x3C, 0x40, 0x02)
                                    ENFG (0x09)
                                    And (OPT5, 0x1F, Local1)
                                    Store (0x10, Local3)
                                    ShiftLeft (Subtract (Local3, Arg1), 0x04, Local2)
                                    And (Local2, 0xE0, Local2)
                                    Or (Local1, Local2, OPT5) /* \_SB_.PCI0.SBRG.OPT5 */
                                }
                            }

                            If (And (Arg2, One))
                            {
                                SNVS (0x53A0, Arg1)
                            }
                        }
                    }
                    Else
                    {
                        If (LEqual (T_0, 0x31))
                        {
                            If (LNotEqual (GNVS (0x4448), Arg1))
                            {
                                If (And (Arg2, One))
                                {
                                    SNVS (0x4448, Arg1)
                                }

                                Or (ASB0, 0x02, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                            }
                        }
                        Else
                        {
                            If (LEqual (T_0, 0x51))
                            {
                                If (LNotEqual (GNVS (0x6368), Arg1))
                                {
                                    If (And (Arg2, One))
                                    {
                                        SNVS (0x6368, Arg1)
                                    }

                                    Or (ASB0, 0x02, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                                }
                            }
                            Else
                            {
                                Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                            }
                        }
                    }
                }
            }
        }

        Name (CLKR, Buffer (0x18)
        {
            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
        })
        Name (PCEF, Buffer (0x68)
        {
            /* 0000 */  0x9F, 0xD8, 0x9F, 0xD8, 0x9C, 0xC5, 0x62, 0xF2,  /* ......b. */
            /* 0008 */  0x5B, 0xC2, 0xD2, 0x82, 0x21, 0xF2, 0x9A, 0xC0,  /* [...!... */
            /* 0010 */  0x13, 0x8E, 0xDD, 0xDA, 0x1F, 0xEC, 0xDA, 0xC7,  /* ........ */
            /* 0018 */  0xE1, 0xFF, 0x9F, 0xF2, 0x1C, 0xDD, 0x54, 0x9F,  /* ......T. */
            /* 0020 */  0x1F, 0xF9, 0xDB, 0xDA, 0xD0, 0x82, 0x5E, 0xF7,  /* ......^. */
            /* 0028 */  0x1D, 0xF1, 0x15, 0xB0, 0xDA, 0xDB, 0x98, 0xCC,  /* ........ */
            /* 0030 */  0x16, 0xBD, 0x9C, 0xF2, 0x59, 0xDA, 0x19, 0xDC,  /* ....Y... */
            /* 0038 */  0xD9, 0xDD, 0x99, 0xDF, 0x5A, 0xEA, 0xD6, 0xC7,  /* ....Z... */
            /* 0040 */  0xD9, 0xE4, 0x58, 0xDD, 0x9A, 0xF1, 0x57, 0xD7,  /* ..X...W. */
            /* 0048 */  0x15, 0xC6, 0x1A, 0xF7, 0x96, 0xD2, 0xD4, 0xC0,  /* ........ */
            /* 0050 */  0x18, 0xE9, 0x12, 0xB0, 0x52, 0xB1, 0x18, 0xEE,  /* ....R... */
            /* 0058 */  0xD3, 0xBD, 0x56, 0xDD, 0x18, 0xF3, 0xCE, 0x8E,  /* ..V..... */
            /* 0060 */  0x0F, 0x9A, 0xD7, 0xED, 0xD8, 0xF9, 0x15, 0xDC   /* ........ */
        })
        Name (MNBF, Buffer (0x070B)
        {
            /* 0000 */  0x01, 0x64, 0xFC, 0x01, 0x5F, 0xDA, 0x01, 0xA1,  /* .d.._... */
            /* 0008 */  0xE9, 0x01, 0xE2, 0xF1, 0x01, 0x98, 0xAB, 0x01,  /* ........ */
            /* 0010 */  0x5D, 0xD0, 0x01, 0x5D, 0xD1, 0x01, 0x23, 0xFE,  /* ]..]..#. */
            /* 0018 */  0x01, 0x15, 0x99, 0x01, 0x1C, 0xCD, 0x01, 0x5A,  /* .......Z */
            /* 0020 */  0xBF, 0x01, 0xA0, 0xEC, 0x01, 0xA2, 0xFC, 0x01,  /* ........ */
            /* 0028 */  0xD3, 0x8D, 0x01, 0x22, 0xFF, 0x01, 0xD8, 0xB4,  /* ...".... */
            /* 0030 */  0x01, 0xD3, 0x8F, 0x01, 0x60, 0xF3, 0x01, 0x21,  /* ....`..! */
            /* 0038 */  0xFC, 0x01, 0xA0, 0xF5, 0x01, 0x57, 0xB1, 0x03,  /* .....W.. */
            /* 0040 */  0xA7, 0x96, 0x03, 0x7F, 0xF4, 0x03, 0xA1, 0x80,  /* ........ */
            /* 0048 */  0x03, 0xBE, 0xF2, 0x03, 0xB1, 0xC0, 0x03, 0x73,  /* .......s */
            /* 0050 */  0xC9, 0x03, 0xFE, 0xF5, 0x03, 0x35, 0xD3, 0x03,  /* .....5.. */
            /* 0058 */  0x35, 0xD4, 0x03, 0x3E, 0xF9, 0x03, 0xF4, 0xD1,  /* 5..>.... */
            /* 0060 */  0x03, 0xB1, 0xC6, 0x03, 0x7E, 0xFC, 0x03, 0xE0,  /* ....~... */
            /* 0068 */  0x82, 0x03, 0x3A, 0xEE, 0x03, 0x7C, 0xF7, 0x03,  /* ..:..|.. */
            /* 0070 */  0xAF, 0xC2, 0x03, 0xBD, 0xFD, 0x03, 0x34, 0xD9,  /* ......4. */
            /* 0078 */  0x03, 0x7B, 0xF7, 0x03, 0xEA, 0xB0, 0x03, 0x69,  /* .{.....i */
            /* 0080 */  0xAD, 0x03, 0xE4, 0x98, 0x03, 0x6F, 0xC8, 0x03,  /* .....o.. */
            /* 0088 */  0x36, 0xE7, 0x03, 0x77, 0xEC, 0x03, 0xB8, 0xF1,  /* 6..w.... */
            /* 0090 */  0x03, 0xB8, 0xF2, 0x03, 0x2E, 0xC8, 0x03, 0x34,  /* .......4 */
            /* 0098 */  0xE3, 0x03, 0x60, 0x8C, 0x03, 0x37, 0xF2, 0x03,  /* ..`..7.. */
            /* 00A0 */  0x37, 0xF3, 0x03, 0xB6, 0xEF, 0x03, 0xE5, 0xA4,  /* 7....... */
            /* 00A8 */  0x03, 0xB2, 0xDF, 0x03, 0xA8, 0xB3, 0x03, 0x72,  /* .......r */
            /* 00B0 */  0xE1, 0x03, 0x78, 0xFD, 0x03, 0x32, 0xE3, 0x03,  /* ..x..2.. */
            /* 00B8 */  0xF0, 0xDA, 0x03, 0xF2, 0xE4, 0x03, 0x6E, 0xD3,  /* ......n. */
            /* 00C0 */  0x03, 0x29, 0xBD, 0x03, 0xB7, 0xFE, 0x03, 0x36,  /* .).....6 */
            /* 00C8 */  0xFC, 0x03, 0xEC, 0xCD, 0x03, 0x9F, 0xF1, 0x03,  /* ........ */
            /* 00D0 */  0xE0, 0x96, 0x03, 0xA3, 0xA5, 0x03, 0xB5, 0xFB,  /* ........ */
            /* 00D8 */  0x03, 0x65, 0xB0, 0x03, 0x71, 0xEA, 0x03, 0xDF,  /* .e..q... */
            /* 00E0 */  0x94, 0x03, 0x26, 0xB7, 0x03, 0xB3, 0xF6, 0x03,  /* ..&..... */
            /* 00E8 */  0x74, 0xFC, 0x03, 0x64, 0xAF, 0x03, 0xB0, 0xEA,  /* t..d.... */
            /* 00F0 */  0x03, 0x71, 0xF0, 0x03, 0xB0, 0xEB, 0x03, 0xAE,  /* .q...... */
            /* 00F8 */  0xE2, 0x03, 0x6F, 0xE8, 0x03, 0x31, 0xF3, 0x03,  /* ..o..1.. */
            /* 0100 */  0x2A, 0xD1, 0x03, 0xE8, 0xC7, 0x03, 0xAC, 0xDC,  /* *....... */
            /* 0108 */  0x03, 0x23, 0xB0, 0x03, 0xE6, 0xBF, 0x03, 0x2F,  /* .#...../ */
            /* 0110 */  0xEE, 0x03, 0x25, 0xBC, 0x03, 0x61, 0xA8, 0x03,  /* ..%..a.. */
            /* 0118 */  0x5C, 0x8F, 0x02, 0x2D, 0xE7, 0x02, 0x70, 0xF7,  /* \..-..p. */
            /* 0120 */  0x02, 0x71, 0xFD, 0x02, 0x67, 0xCA, 0x02, 0xA0,  /* .q..g... */
            /* 0128 */  0xA6, 0x02, 0xA2, 0xB1, 0x02, 0x2A, 0xDC, 0x02,  /* .....*.. */
            /* 0130 */  0x6C, 0xE7, 0x02, 0xEB, 0xE2, 0x02, 0xE5, 0xC3,  /* l....... */
            /* 0138 */  0x02, 0x6B, 0xE4, 0x02, 0x2B, 0xE5, 0x02, 0x23,  /* .k..+..# */
            /* 0140 */  0xBB, 0x02, 0x62, 0xB6, 0x02, 0x2D, 0xF2, 0x02,  /* ..b..-.. */
            /* 0148 */  0x2B, 0xE8, 0x02, 0xEB, 0xE8, 0x02, 0xAB, 0xE9,  /* +....... */
            /* 0150 */  0x02, 0x6B, 0xEA, 0x02, 0x2B, 0xEB, 0x02, 0xEB,  /* .k..+... */
            /* 0158 */  0xEB, 0x02, 0x2C, 0xF2, 0x02, 0x6B, 0xED, 0x02,  /* ..,..k.. */
            /* 0160 */  0x2B, 0xEE, 0x02, 0xEB, 0xEE, 0x02, 0xAB, 0xEF,  /* +....... */
            /* 0168 */  0x02, 0x6B, 0xF0, 0x02, 0xDF, 0xAD, 0x02, 0x2D,  /* .k.....- */
            /* 0170 */  0xFD, 0x02, 0xE2, 0xBF, 0x02, 0x23, 0xC6, 0x02,  /* .....#.. */
            /* 0178 */  0x2B, 0xF4, 0x02, 0xEB, 0xF4, 0x02, 0x65, 0xD3,  /* +.....e. */
            /* 0180 */  0x02, 0x6B, 0xF6, 0x02, 0xEC, 0xFC, 0x02, 0x2A,  /* .k.....* */
            /* 0188 */  0xF2, 0x02, 0xA2, 0xC4, 0x02, 0xA0, 0xB9, 0x02,  /* ........ */
            /* 0190 */  0x62, 0xC6, 0x02, 0xDC, 0xA3, 0x02, 0xA9, 0xF0,  /* b....... */
            /* 0198 */  0x02, 0x9E, 0xB0, 0x02, 0xEB, 0xFD, 0x02, 0xAB,  /* ........ */
            /* 01A0 */  0xFE, 0x02, 0x1F, 0xB8, 0x02, 0xA0, 0xBE, 0x02,  /* ........ */
            /* 01A8 */  0x22, 0xCB, 0x02, 0xA9, 0xF5, 0x02, 0x6A, 0xFC,  /* ".....j. */
            /* 01B0 */  0x02, 0xE1, 0xC6, 0x02, 0x5F, 0xBB, 0x02, 0x67,  /* ...._..g */
            /* 01B8 */  0xEC, 0x02, 0x28, 0xF3, 0x02, 0x9B, 0xA4, 0x02,  /* ..(..... */
            /* 01C0 */  0xD9, 0x98, 0x02, 0x69, 0xFB, 0x02, 0xE5, 0xE2,  /* ...i.... */
            /* 01C8 */  0x02, 0x64, 0xDD, 0x02, 0x5A, 0xA0, 0x02, 0x5D,  /* .d..Z..] */
            /* 01D0 */  0xB3, 0x02, 0xDD, 0xB3, 0x02, 0xD6, 0x88, 0x02,  /* ........ */
            /* 01D8 */  0x1E, 0xBB, 0x02, 0x28, 0xFA, 0x02, 0x9C, 0xAF,  /* ...(.... */
            /* 01E0 */  0x02, 0x1C, 0xB0, 0x02, 0x21, 0xD0, 0x02, 0xA7,  /* ....!... */
            /* 01E8 */  0xF6, 0x02, 0xA5, 0xEA, 0x02, 0xA6, 0xF1, 0x02,  /* ........ */
            /* 01F0 */  0xA7, 0xF8, 0x02, 0xD9, 0x9F, 0x02, 0xA6, 0xF3,  /* ........ */
            /* 01F8 */  0x02, 0xDE, 0xC0, 0x02, 0xA3, 0xE1, 0x02, 0x99,  /* ........ */
            /* 0200 */  0xA1, 0x02, 0x96, 0x8E, 0x02, 0x67, 0xFD, 0x02,  /* .....g.. */
            /* 0208 */  0x54, 0x82, 0x02, 0x59, 0xA3, 0x02, 0x65, 0xF2,  /* T..Y..e. */
            /* 0210 */  0x02, 0x5B, 0xB1, 0x02, 0x24, 0xED, 0x02, 0x19,  /* .[..$... */
            /* 0218 */  0xA5, 0x02, 0xE0, 0xD3, 0x02, 0x9A, 0xAC, 0x02,  /* ........ */
            /* 0220 */  0x17, 0x99, 0x02, 0xDC, 0xBA, 0x02, 0x5C, 0xBB,  /* ......\. */
            /* 0228 */  0x02, 0x96, 0x93, 0x02, 0x24, 0xF2, 0x02, 0xD8,  /* ....$... */
            /* 0230 */  0xA1, 0x02, 0x64, 0xF3, 0x02, 0x1F, 0xD2, 0x02,  /* ..d..... */
            /* 0238 */  0xA4, 0xF4, 0x02, 0x15, 0x8F, 0x02, 0x9A, 0xB1,  /* ........ */
            /* 0240 */  0x02, 0x20, 0xDB, 0x02, 0x1D, 0xC7, 0x02, 0x5F,  /* . ....._ */
            /* 0248 */  0xD5, 0x02, 0x1D, 0xC8, 0x02, 0x60, 0xDD, 0x02,  /* .....`.. */
            /* 0250 */  0xE1, 0xE4, 0x02, 0x62, 0xEC, 0x02, 0x1E, 0xD1,  /* ...b.... */
            /* 0258 */  0x02, 0x9F, 0xD8, 0x02, 0x24, 0xFC, 0x02, 0x9B,  /* ....$... */
            /* 0260 */  0xBD, 0x02, 0xD5, 0x93, 0x02, 0x9C, 0xC5, 0x02,  /* ........ */
            /* 0268 */  0xA3, 0xF7, 0x02, 0x9C, 0xC6, 0x02, 0xE3, 0xF8,  /* ........ */
            /* 0270 */  0x02, 0x62, 0xF2, 0x02, 0x5E, 0xD6, 0x02, 0x61,  /* .b..^..a */
            /* 0278 */  0xEC, 0x02, 0x22, 0xF4, 0x02, 0x5B, 0xC2, 0x02,  /* .."..[.. */
            /* 0280 */  0x9A, 0xBB, 0x02, 0x9B, 0xAD, 0x02, 0xA2, 0xF6,  /* ........ */
            /* 0288 */  0x02, 0xD2, 0x82, 0x02, 0x20, 0xE9, 0x02, 0x5F,  /* .... .._ */
            /* 0290 */  0xE2, 0x02, 0xE2, 0xF8, 0x02, 0x21, 0xF2, 0x02,  /* .....!.. */
            /* 0298 */  0x60, 0xEB, 0x02, 0x13, 0x8C, 0x02, 0xE1, 0xF3,  /* `....... */
            /* 02A0 */  0x02, 0x9A, 0xC0, 0x02, 0x13, 0x8D, 0x02, 0xA1,  /* ........ */
            /* 02A8 */  0xF5, 0x02, 0xA2, 0xFD, 0x02, 0x13, 0x8E, 0x02,  /* ........ */
            /* 02B0 */  0xDC, 0xD1, 0x02, 0x5E, 0xE1, 0x02, 0x5D, 0xDA,  /* ...^..]. */
            /* 02B8 */  0x02, 0xDD, 0xDA, 0x02, 0xA1, 0xF9, 0x02, 0xA0,  /* ........ */
            /* 02C0 */  0xF2, 0x02, 0x95, 0x9F, 0x02, 0x1F, 0xEC, 0x02,  /* ........ */
            /* 02C8 */  0x97, 0xAF, 0x02, 0x9B, 0xCE, 0x02, 0x18, 0xB8,  /* ........ */
            /* 02D0 */  0x02, 0xDA, 0xC7, 0x02, 0x88, 0x82, 0x02, 0x5F,  /* ......._ */
            /* 02D8 */  0xEF, 0x02, 0x91, 0x83, 0x02, 0xE1, 0xFF, 0x02,  /* ........ */
            /* 02E0 */  0x59, 0xC2, 0x02, 0xD4, 0x9B, 0x02, 0xE0, 0xF9,  /* Y....... */
            /* 02E8 */  0x02, 0x9F, 0xF2, 0x02, 0x19, 0xC4, 0x02, 0x1C,  /* ........ */
            /* 02F0 */  0xDC, 0x02, 0xDA, 0xCC, 0x02, 0x1C, 0xDB, 0x02,  /* ........ */
            /* 02F8 */  0xD9, 0xC5, 0x02, 0xDF, 0xF5, 0x02, 0x12, 0x8F,  /* ........ */
            /* 0300 */  0x02, 0x54, 0x9F, 0x02, 0x99, 0xC7, 0x02, 0x17,  /* .T...... */
            /* 0308 */  0xB8, 0x02, 0x51, 0x88, 0x02, 0x1F, 0xF9, 0x02,  /* ..Q..... */
            /* 0310 */  0x14, 0xA1, 0x02, 0x1E, 0xF2, 0x02, 0x5B, 0xDA,  /* ......[. */
            /* 0318 */  0x02, 0xDB, 0xDA, 0x02, 0xD7, 0xBA, 0x02, 0x5F,  /* ......._ */
            /* 0320 */  0xFC, 0x02, 0x1A, 0xD4, 0x02, 0xD0, 0x82, 0x02,  /* ........ */
            /* 0328 */  0x9D, 0xED, 0x02, 0xD7, 0xBC, 0x02, 0x9D, 0xEE,  /* ........ */
            /* 0330 */  0x02, 0x5E, 0xF7, 0x02, 0x5C, 0xE7, 0x02, 0x53,  /* .^..\..S */
            /* 0338 */  0x9D, 0x02, 0x11, 0x8D, 0x02, 0x1D, 0xF1, 0x02,  /* ........ */
            /* 0340 */  0x53, 0x9E, 0x02, 0x1A, 0xD9, 0x02, 0x16, 0xB8,  /* S....... */
            /* 0348 */  0x02, 0x15, 0xB0, 0x02, 0xDB, 0xE2, 0x02, 0xD5,  /* ........ */
            /* 0350 */  0xB0, 0x02, 0x1E, 0xFD, 0x02, 0xDA, 0xDB, 0x02,  /* ........ */
            /* 0358 */  0x58, 0xCB, 0x02, 0xD2, 0x98, 0x02, 0x95, 0xB2,  /* X....... */
            /* 0360 */  0x02, 0x98, 0xCC, 0x02, 0x1A, 0xDE, 0x02, 0x1B,  /* ........ */
            /* 0368 */  0xE7, 0x02, 0xD8, 0xCD, 0x02, 0x16, 0xBD, 0x02,  /* ........ */
            /* 0370 */  0x17, 0xC6, 0x02, 0x9C, 0xF1, 0x02, 0x1C, 0xF2,  /* ........ */
            /* 0378 */  0x02, 0x9C, 0xF2, 0x02, 0x1C, 0xF3, 0x02, 0x17,  /* ........ */
            /* 0380 */  0xC8, 0x02, 0x5B, 0xEB, 0x02, 0x59, 0xDA, 0x02,  /* ..[..Y.. */
            /* 0388 */  0x18, 0xD2, 0x02, 0x50, 0x8C, 0x02, 0x17, 0xCA,  /* ...P.... */
            /* 0390 */  0x02, 0x19, 0xDC, 0x02, 0x5A, 0xE5, 0x02, 0xDA,  /* ....Z... */
            /* 0398 */  0xE5, 0x02, 0xD6, 0xC2, 0x02, 0xD9, 0xDD, 0x02,  /* ........ */
            /* 03A0 */  0xD4, 0xB1, 0x02, 0x15, 0xBB, 0x02, 0xD0, 0x8E,  /* ........ */
            /* 03A8 */  0x02, 0x99, 0xDF, 0x02, 0x17, 0xCE, 0x02, 0x94,  /* ........ */
            /* 03B0 */  0xB3, 0x02, 0xDC, 0xFB, 0x02, 0x5A, 0xEA, 0x02,  /* .....Z.. */
            /* 03B8 */  0xDC, 0xFC, 0x02, 0x5C, 0xFD, 0x02, 0x54, 0xB5,  /* ...\..T. */
            /* 03C0 */  0x02, 0xD6, 0xC7, 0x02, 0xD2, 0xA3, 0x02, 0xD8,  /* ........ */
            /* 03C8 */  0xDA, 0x02, 0x93, 0xAD, 0x02, 0xD9, 0xE4, 0x02,  /* ........ */
            /* 03D0 */  0x9B, 0xF7, 0x02, 0x93, 0xAE, 0x02, 0x5A, 0xEF,  /* ......Z. */
            /* 03D8 */  0x02, 0x58, 0xDD, 0x02, 0x93, 0xAF, 0x02, 0x92,  /* .X...... */
            /* 03E0 */  0xA6, 0x02, 0x57, 0xD5, 0x02, 0x9A, 0xF1, 0x02,  /* ..W..... */
            /* 03E8 */  0xD6, 0xCC, 0x02, 0xDB, 0xFB, 0x02, 0x96, 0xCD,  /* ........ */
            /* 03F0 */  0x02, 0x57, 0xD7, 0x02, 0x56, 0xCE, 0x02, 0x5A,  /* .W..V..Z */
            /* 03F8 */  0xF4, 0x02, 0xCE, 0x83, 0x02, 0x15, 0xC6, 0x02,  /* ........ */
            /* 0400 */  0x57, 0xD9, 0x02, 0x9B, 0xFF, 0x02, 0x9A, 0xF6,  /* W....... */
            /* 0408 */  0x02, 0x1A, 0xF7, 0x02, 0x50, 0x98, 0x02, 0x0F,  /* ....P... */
            /* 0410 */  0x8F, 0x02, 0xD9, 0xEE, 0x02, 0x96, 0xD2, 0x02,  /* ........ */
            /* 0418 */  0x5A, 0xF9, 0x02, 0x51, 0xA3, 0x02, 0x99, 0xF0,  /* Z..Q.... */
            /* 0420 */  0x02, 0xD4, 0xC0, 0x02, 0xD5, 0xCA, 0x02, 0x9A,  /* ........ */
            /* 0428 */  0xFB, 0x02, 0x95, 0xCB, 0x02, 0x18, 0xE9, 0x02,  /* ........ */
            /* 0430 */  0x94, 0xC2, 0x02, 0x5A, 0xFD, 0x02, 0x58, 0xEA,  /* ...Z..X. */
            /* 0438 */  0x02, 0x12, 0xB0, 0x02, 0x96, 0xD7, 0x02, 0x98,  /* ........ */
            /* 0440 */  0xEB, 0x02, 0xD9, 0xF5, 0x02, 0x52, 0xB1, 0x02,  /* .....R.. */
            /* 0448 */  0xD8, 0xEC, 0x02, 0x11, 0xA8, 0x02, 0x99, 0xF7,  /* ........ */
            /* 0450 */  0x02, 0x18, 0xEE, 0x02, 0x97, 0xE4, 0x02, 0x15,  /* ........ */
            /* 0458 */  0xD1, 0x02, 0x59, 0xF9, 0x02, 0xD3, 0xBD, 0x02,  /* ..Y..... */
            /* 0460 */  0x19, 0xFA, 0x02, 0x97, 0xE6, 0x02, 0xD3, 0xBE,  /* ........ */
            /* 0468 */  0x02, 0x56, 0xDD, 0x02, 0x94, 0xC9, 0x02, 0xD3,  /* .V...... */
            /* 0470 */  0xBF, 0x02, 0xD0, 0xA1, 0x02, 0x18, 0xF3, 0x02,  /* ........ */
            /* 0478 */  0xD3, 0xC0, 0x02, 0xD1, 0xAC, 0x02, 0x8E, 0x8E,  /* ........ */
            /* 0480 */  0x02, 0xCE, 0x8E, 0x02, 0x95, 0xD6, 0x02, 0x4E,  /* .......N */
            /* 0488 */  0x8F, 0x02, 0x55, 0xD7, 0x02, 0x0F, 0x9A, 0x02,  /* ..U..... */
            /* 0490 */  0x56, 0xE2, 0x02, 0x58, 0xF7, 0x02, 0xD2, 0xB9,  /* V..X.... */
            /* 0498 */  0x02, 0xD7, 0xED, 0x02, 0x98, 0xF8, 0x02, 0x97,  /* ........ */
            /* 04A0 */  0xEE, 0x02, 0x12, 0xBB, 0x02, 0xD8, 0xF9, 0x02,  /* ........ */
            /* 04A8 */  0xD7, 0xEF, 0x02, 0x91, 0xB1, 0x02, 0x18, 0xFB,  /* ........ */
            /* 04B0 */  0x02, 0x15, 0xDC, 0x02, 0xD8, 0xFB, 0x02, 0xD7,  /* ........ */
            /* 04B8 */  0xF1, 0x02, 0x92, 0xBD, 0x02, 0x16, 0xE8, 0x02,  /* ........ */
            /* 04C0 */  0x98, 0xFD, 0x02, 0xD6, 0xE8, 0x02, 0xD7, 0xF3,  /* ........ */
            /* 04C8 */  0x02, 0x0D, 0x8A, 0x02, 0x8F, 0x9F, 0x02, 0x14,  /* ........ */
            /* 04D0 */  0xD5, 0x02, 0xD6, 0xEA, 0x02, 0xD4, 0xD5, 0x02,  /* ........ */
            /* 04D8 */  0x50, 0xAB, 0x02, 0x51, 0xB6, 0x02, 0x56, 0xEC,  /* P..Q..V. */
            /* 04E0 */  0x02, 0x97, 0xF7, 0x02, 0x55, 0xE2, 0x02, 0x52,  /* ....U..R */
            /* 04E8 */  0xC2, 0x02, 0xD1, 0xB7, 0x02, 0x17, 0xF9, 0x02,  /* ........ */
            /* 04F0 */  0x90, 0xAD, 0x02, 0x92, 0xC3, 0x02, 0x57, 0xFA,  /* ......W. */
            /* 04F8 */  0x02, 0xCC, 0x82, 0x02, 0x17, 0xFB, 0x02, 0xD2,  /* ........ */
            /* 0500 */  0xC4, 0x02, 0x13, 0xD0, 0x02, 0x56, 0xF1, 0x02,  /* .....V.. */
            /* 0508 */  0xCF, 0xA4, 0x02, 0x16, 0xF2, 0x02, 0x4E, 0x9A,  /* ......N. */
            /* 0510 */  0x02, 0xD5, 0xE7, 0x02, 0x13, 0xD2, 0x02, 0x52,  /* .......R */
            /* 0518 */  0xC7, 0x02, 0xD4, 0xDD, 0x02, 0x13, 0xD3, 0x02,  /* ........ */
            /* 0520 */  0xD6, 0xF4, 0x02, 0x50, 0xB2, 0x02, 0x13, 0xD4,  /* ...P.... */
            /* 0528 */  0x02, 0x94, 0xDF, 0x02, 0x8D, 0x91, 0x02, 0x13,  /* ........ */
            /* 0530 */  0xD5, 0x02, 0x16, 0xF7, 0x02, 0x96, 0xF7, 0x02,  /* ........ */
            /* 0538 */  0x54, 0xE1, 0x02, 0xD1, 0xBF, 0x02, 0x55, 0xED,  /* T.....U. */
            /* 0540 */  0x02, 0x13, 0xD7, 0x02, 0x15, 0xEE, 0x02, 0x14,  /* ........ */
            /* 0548 */  0xE3, 0x02, 0x8F, 0xAA, 0x02, 0x0D, 0x94, 0x02,  /* ........ */
            /* 0550 */  0x52, 0xCD, 0x02, 0x56, 0xFB, 0x02, 0xD4, 0xE4,  /* R..V.... */
            /* 0558 */  0x02, 0x16, 0xFC, 0x02, 0x92, 0xCE, 0x02, 0xD6,  /* ........ */
            /* 0560 */  0xFC, 0x02, 0x56, 0xFD, 0x02, 0x15, 0xF2, 0x02,  /* ..V..... */
            /* 0568 */  0xD2, 0xCF, 0x02, 0x91, 0xC4, 0x02, 0x8D, 0x96,  /* ........ */
            /* 0570 */  0x02, 0x90, 0xB9, 0x02, 0x12, 0xD1, 0x02, 0x55,  /* .......U */
            /* 0578 */  0xF4, 0x02, 0xCC, 0x8B, 0x02, 0x54, 0xE9, 0x02,  /* .....T.. */
            /* 0580 */  0x8B, 0x80, 0x02, 0x8F, 0xAF, 0x02, 0xCF, 0xAF,  /* ........ */
            /* 0588 */  0x02, 0x0F, 0xB0, 0x02, 0xD5, 0xF6, 0x02, 0x0D,  /* ........ */
            /* 0590 */  0x99, 0x02, 0x95, 0xF7, 0x02, 0x4E, 0xA5, 0x02,  /* .....N.. */
            /* 0598 */  0x55, 0xF8, 0x02, 0x51, 0xC9, 0x02, 0x53, 0xE1,  /* U..Q..S. */
            /* 05A0 */  0x02, 0x4E, 0xA6, 0x02, 0x50, 0xBE, 0x02, 0x53,  /* .N..P..S */
            /* 05A8 */  0xE2, 0x02, 0x94, 0xEE, 0x02, 0x4D, 0x9B, 0x02,  /* .....M.. */
            /* 05B0 */  0x53, 0xE3, 0x02, 0xCB, 0x83, 0x02, 0x14, 0xF0,  /* S....... */
            /* 05B8 */  0x02, 0x53, 0xE4, 0x02, 0x90, 0xC0, 0x02, 0x15,  /* .S...... */
            /* 05C0 */  0xFD, 0x02, 0x53, 0xE5, 0x02, 0xD5, 0xFD, 0x02,  /* ..S..... */
            /* 05C8 */  0x14, 0xF2, 0x02, 0x11, 0xCE, 0x02, 0xCD, 0x9D,  /* ........ */
            /* 05D0 */  0x02, 0xD2, 0xDA, 0x02, 0x53, 0xE7, 0x02, 0x4C,  /* ....S..L */
            /* 05D8 */  0x92, 0x02, 0x4B, 0x86, 0x02, 0x12, 0xDC, 0x02,  /* ..K..... */
            /* 05E0 */  0xD4, 0xF4, 0x02, 0x54, 0xF5, 0x02, 0x94, 0xF5,  /* ...T.... */
            /* 05E8 */  0x02, 0x52, 0xDD, 0x02, 0x51, 0xD1, 0x02, 0x4D,  /* .R..Q..M */
            /* 05F0 */  0xA0, 0x02, 0x90, 0xC5, 0x02, 0x54, 0xF7, 0x02,  /* .....T.. */
            /* 05F8 */  0x53, 0xEB, 0x02, 0xD1, 0xD2, 0x02, 0x54, 0xF8,  /* S.....T. */
            /* 0600 */  0x02, 0xCB, 0x88, 0x02, 0x14, 0xF9, 0x02, 0x0F,  /* ........ */
            /* 0608 */  0xBB, 0x02, 0xD0, 0xC7, 0x02, 0x14, 0xFA, 0x02,  /* ........ */
            /* 0610 */  0xCD, 0xA2, 0x02, 0xD4, 0xFA, 0x02, 0xCE, 0xAF,  /* ........ */
            /* 0618 */  0x02, 0x0E, 0xB0, 0x02, 0x4E, 0xB0, 0x02, 0x8E,  /* ....N... */
            /* 0620 */  0xB0, 0x02, 0x94, 0xFC, 0x02, 0x50, 0xCA, 0x02,  /* .....P.. */
            /* 0628 */  0x4B, 0x8B, 0x02, 0x91, 0xD7, 0x02, 0x92, 0xE4,  /* K....... */
            /* 0630 */  0x02, 0x4D, 0xA5, 0x02, 0xCC, 0x98, 0x02, 0x14,  /* .M...... */
            /* 0638 */  0xFF, 0x02, 0xD2, 0xE5, 0x02, 0x90, 0xCC, 0x02,  /* ........ */
            /* 0640 */  0x0F, 0xC0, 0x02, 0x93, 0xF3, 0x02, 0x12, 0xE7,  /* ........ */
            /* 0648 */  0x02, 0xCF, 0xC0, 0x02, 0x93, 0xF4, 0x02, 0xCB,  /* ........ */
            /* 0650 */  0x8D, 0x02, 0x52, 0xE8, 0x02, 0x93, 0xF5, 0x02,  /* ..R..... */
            /* 0658 */  0x10, 0xCF, 0x02, 0x51, 0xDC, 0x02, 0x93, 0xF6,  /* ...Q.... */
            /* 0660 */  0x02, 0xD3, 0xF6, 0x02, 0x53, 0xF7, 0x02, 0x4A,  /* ....S..J */
            /* 0668 */  0x82, 0x02, 0xD2, 0xEA, 0x02, 0x11, 0xDE, 0x02,  /* ........ */
            /* 0670 */  0x50, 0xD1, 0x02, 0x4D, 0xAA, 0x02, 0x0A, 0x83,  /* P..M.... */
            /* 0678 */  0x02, 0x93, 0xF9, 0x02, 0x8B, 0x90, 0x02, 0x13,  /* ........ */
            /* 0680 */  0xFA, 0x02, 0x4D, 0xAB, 0x02, 0x0F, 0xC6, 0x02,  /* ..M..... */
            /* 0688 */  0x13, 0xFB, 0x02, 0xD0, 0xD3, 0x02, 0xCF, 0xC6,  /* ........ */
            /* 0690 */  0x02, 0x13, 0xFC, 0x02, 0xD1, 0xE1, 0x02, 0xD0,  /* ........ */
            /* 0698 */  0xD4, 0x02, 0x13, 0xFD, 0x02, 0xCE, 0xBA, 0x02,  /* ........ */
            /* 06A0 */  0x0E, 0xBB, 0x02, 0x13, 0xFE, 0x02, 0xCF, 0xC8,  /* ........ */
            /* 06A8 */  0x02, 0x8B, 0x93, 0x02, 0x51, 0xE4, 0x02, 0x12,  /* ....Q... */
            /* 06B0 */  0xF2, 0x02, 0x0D, 0xAF, 0x02, 0x92, 0xF2, 0x02,  /* ........ */
            /* 06B8 */  0x91, 0xE5, 0x02, 0x52, 0xF3, 0x02, 0x90, 0xD8,  /* ...R.... */
            /* 06C0 */  0x02, 0xD2, 0xF3, 0x02, 0x91, 0xE6, 0x02, 0x92,  /* ........ */
            /* 06C8 */  0xF4, 0x02, 0x90, 0xD9, 0x02, 0x12, 0xF5, 0x02,  /* ........ */
            /* 06D0 */  0x0B, 0x96, 0x02, 0x8D, 0xB1, 0x02, 0x4B, 0x96,  /* ......K. */
            /* 06D8 */  0x02, 0x4C, 0xA4, 0x02, 0x11, 0xE9, 0x02, 0x0E,  /* .L...... */
            /* 06E0 */  0xC0, 0x02, 0x4E, 0xC0, 0x02, 0x4F, 0xCE, 0x02,  /* ..N..O.. */
            /* 06E8 */  0xCA, 0x89, 0x02, 0x91, 0xEA, 0x02, 0x92, 0xF8,  /* ........ */
            /* 06F0 */  0x02, 0x50, 0xDD, 0x02, 0x51, 0xEB, 0x02, 0x8B,  /* .P..Q... */
            /* 06F8 */  0x98, 0x02, 0xD2, 0xF9, 0x02, 0xCB, 0x98, 0x02,  /* ........ */
            /* 0700 */  0xCF, 0xD0, 0x02, 0x0D, 0xB5, 0x02, 0x4F, 0xD1,  /* ......O. */
            /* 0708 */  0x02, 0x90, 0xDF                                 /* ... */
        })
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (G4T0, Package (0x04)
        {
            0x04070010, 
            "CPU Q-FAN Control", 
            0x80000000, 
            Zero
        })
        Name (G4T1, Package (0x08)
        {
            0x04080011, 
            "CPU Q-FAN Profile", 
            0x00100001, 
            Zero, 
            0x03, 
            "Optimal", 
            "Silent", 
            "Performance"
        })
        Name (G420, Package (0x04)
        {
            0x04070070, 
            "Chassis Q-FAN Control", 
            0x80000000, 
            Zero
        })
        Name (G421, Package (0x0A)
        {
            0x04080071, 
            "Chassis FAN Ratio", 
            0x00700001, 
            Zero, 
            0x05, 
            "Auto", 
            "90%", 
            "80%", 
            "70%", 
            "60%"
        })
        Name (GRP4, Package (0x04)
        {
            G4T0, 
            G4T1, 
            G420, 
            G421
        })
        Method (GIT4, 1, NotSerialized)
        {
            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), T_0) /* \_SB_.PCI0.SBRG.ASOC.GIT4.T_0 */
            If (LEqual (T_0, 0x10))
            {
                Store (GNVS (0x1697), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
            }
            Else
            {
                If (LEqual (T_0, 0x11))
                {
                    Store (GNVS (0x2568), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                }
                Else
                {
                    If (LEqual (T_0, 0x70))
                    {
                        Store (GNVS (0x169A), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                    }
                    Else
                    {
                        If (LEqual (T_0, 0x71))
                        {
                            Store (GNVS (0x3508), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                        }
                        Else
                        {
                            Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                        }
                    }
                }
            }
        }

        Method (SIT4, 3, NotSerialized)
        {
            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), T_0) /* \_SB_.PCI0.SBRG.ASOC.SIT4.T_0 */
            If (LEqual (T_0, 0x10))
            {
                If (LNotEqual (GNVS (0x1697), Arg1))
                {
                    If (And (Arg2, One))
                    {
                        SNVS (0x1697, Arg1)
                        Store (0x77, PAR0) /* \PAR0 */
                        ISMI (0x88)
                    }
                }
            }
            Else
            {
                If (LEqual (T_0, 0x11))
                {
                    If (LNotEqual (GNVS (0x2568), Arg1))
                    {
                        If (And (Arg2, One))
                        {
                            SNVS (0x2568, Arg1)
                            Store (0x77, PAR0) /* \PAR0 */
                            ISMI (0x88)
                        }
                    }
                }
                Else
                {
                    If (LEqual (T_0, 0x70))
                    {
                        If (LNotEqual (GNVS (0x169A), Arg1))
                        {
                            If (And (Arg2, One))
                            {
                                SNVS (0x169A, Arg1)
                                Store (0x78, PAR0) /* \PAR0 */
                                ISMI (0x88)
                            }
                        }
                    }
                    Else
                    {
                        If (LEqual (T_0, 0x71))
                        {
                            If (LNotEqual (GNVS (0x3508), Arg1))
                            {
                                If (And (Arg2, One))
                                {
                                    Store (Arg1, DBG8) /* \DBG8 */
                                    SNVS (0x3508, Arg1)
                                    Store (0x78, PAR0) /* \PAR0 */
                                    ISMI (0x88)
                                }
                            }
                        }
                        Else
                        {
                            Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                        }
                    }
                }
            }
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (G5T0, Package (0x07)
        {
            0x05080000, 
            "AI Profile", 
            Zero, 
            Zero, 
            0x02, 
            "Auto", 
            Zero
        })
        Name (GRP5, Package (0x01)
        {
            G5T0
        })
        Method (GIT5, 1, NotSerialized)
        {
            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), T_0) /* \_SB_.PCI0.SBRG.ASOC.GIT5.T_0 */
            If (LEqual (T_0, Zero))
            {
                Store (One, ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
            }
            Else
            {
                Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
            }
        }

        Method (SIT5, 3, NotSerialized)
        {
            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), T_0) /* \_SB_.PCI0.SBRG.ASOC.SIT5.T_0 */
            If (LEqual (T_0, Zero))
            {
                Store (0x03, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
            }
            Else
            {
                Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
            }
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (G6T1, Package (0x07)
        {
            0x06020011, 
            "Vcore Voltage", 
            0x20000000, 
            Zero, 
            0x0352, 
            0x02EE, 
            0x02
        })
        Name (G6T2, Package (0x07)
        {
            0x06030012, 
            "CPU Temperature", 
            0x20000000, 
            Zero, 
            0x0258, 
            0x015E, 
            0x02
        })
        Name (G6T3, Package (0x07)
        {
            0x06040013, 
            "CPU FAN Speed", 
            0x20000000, 
            Zero, 
            0x0258, 
            0x1900, 
            0x02
        })
        Name (G6T4, Package (0x07)
        {
            0x06040073, 
            "Chassis FAN Speed", 
            0x20000000, 
            Zero, 
            0x0258, 
            0x1900, 
            0x02
        })
        Name (G6T5, Package (0x07)
        {
            0x060400C3, 
            "Power FAN Speed", 
            0x20000000, 
            Zero, 
            0x0258, 
            0x1900, 
            0x02
        })
        Name (G6T6, Package (0x07)
        {
            0x06020061, 
            "+12V Voltage", 
            0x20000000, 
            0x2EE0, 
            0x27D8, 
            0x0E10, 
            0x02
        })
        Name (G6T7, Package (0x07)
        {
            0x06020062, 
            "+5V Voltage", 
            0x20000000, 
            0x1388, 
            0x1194, 
            0x03E8, 
            0x02
        })
        Name (G6T8, Package (0x07)
        {
            0x06020063, 
            "+3.3V Voltage", 
            0x20000000, 
            0x0CE4, 
            0x0B9A, 
            0x0294, 
            0x02
        })
        Name (G6T9, Package (0x07)
        {
            0x06030074, 
            "MB Temperature", 
            0x20000000, 
            Zero, 
            0x01C2, 
            0x01F4, 
            0x02
        })
        Name (GRP6, Package (0x09)
        {
            G6T1, 
            G6T2, 
            G6T3, 
            G6T4, 
            G6T5, 
            G6T6, 
            G6T7, 
            G6T8, 
            G6T9
        })
        Method (GIT6, 1, NotSerialized)
        {
            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), T_0) /* \_SB_.PCI0.SBRG.ASOC.GIT6.T_0 */
            If (LEqual (T_0, 0x11))
            {
                Store (0x0600, ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
            }
            Else
            {
                If (LEqual (T_0, 0x12))
                {
                    Store (0x0601, ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                }
                Else
                {
                    If (LEqual (T_0, 0x13))
                    {
                        Store (0x0602, ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                    }
                    Else
                    {
                        If (LEqual (T_0, 0x73))
                        {
                            Store (0x0603, ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                        }
                        Else
                        {
                            If (LEqual (T_0, 0xC3))
                            {
                                Store (0x0604, ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                            }
                            Else
                            {
                                If (LEqual (T_0, 0x61))
                                {
                                    Store (0x0605, ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                                }
                                Else
                                {
                                    If (LEqual (T_0, 0x62))
                                    {
                                        Store (0x0606, ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                                    }
                                    Else
                                    {
                                        If (LEqual (T_0, 0x63))
                                        {
                                            Store (0x0607, ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                                        }
                                        Else
                                        {
                                            If (LEqual (T_0, 0x74))
                                            {
                                                Store (0x0608, ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                                            }
                                            Else
                                            {
                                                Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        Method (SIT6, 3, NotSerialized)
        {
            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), T_0) /* \_SB_.PCI0.SBRG.ASOC.SIT6.T_0 */
            If (LEqual (T_0, 0x11))
            {
                Store (0x0600, DBG8) /* \DBG8 */
            }
            Else
            {
                If (LEqual (T_0, 0x12))
                {
                    Store (0x0601, DBG8) /* \DBG8 */
                }
                Else
                {
                    If (LEqual (T_0, 0x13))
                    {
                        Store (0x0602, DBG8) /* \DBG8 */
                    }
                    Else
                    {
                        If (LEqual (T_0, 0x73))
                        {
                            Store (0x0603, DBG8) /* \DBG8 */
                        }
                        Else
                        {
                            If (LEqual (T_0, 0xC3))
                            {
                                Store (0x0604, DBG8) /* \DBG8 */
                            }
                            Else
                            {
                                If (LEqual (T_0, 0x61))
                                {
                                    Store (0x0605, DBG8) /* \DBG8 */
                                }
                                Else
                                {
                                    If (LEqual (T_0, 0x62))
                                    {
                                        Store (0x0606, DBG8) /* \DBG8 */
                                    }
                                    Else
                                    {
                                        If (LEqual (T_0, 0x63))
                                        {
                                            Store (0x0607, DBG8) /* \DBG8 */
                                        }
                                        Else
                                        {
                                            If (LEqual (T_0, 0x74))
                                            {
                                                Store (0x0608, DBG8) /* \DBG8 */
                                            }
                                            Else
                                            {
                                                Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (G9T0, Package (0x0B)
        {
            0x09080000, 
            "AI Overclocking", 
            Zero, 
            One, 
            0x06, 
            "Manual", 
            "Auto", 
            "Standard", 
            Zero, 
            "N.O.S.", 
            Zero
        })
        Name (GRP9, Package (0x01)
        {
            G9T0
        })
        Method (GIT9, 1, NotSerialized)
        {
            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), T_0) /* \_SB_.PCI0.SBRG.ASOC.GIT9.T_0 */
            If (LEqual (T_0, Zero))
            {
                Store (GNVS (0x34F0), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
            }
            Else
            {
                Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
            }
        }

        Method (SIT9, 3, NotSerialized)
        {
            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), T_0) /* \_SB_.PCI0.SBRG.ASOC.SIT9.T_0 */
            If (LEqual (T_0, Zero))
            {
                If (LNotEqual (GNVS (0x34F0), Arg1))
                {
                    If (And (Arg2, One))
                    {
                        SNVS (0x34F0, Arg1)
                    }

                    Or (ASB0, 0x02, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                }
            }
            Else
            {
                Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
            }
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (GBT0, Package (0x07)
        {
            0x0B060001, 
            "System Performance", 
            Zero, 
            Zero, 
            0x03, 
            One, 
            0x04
        })
        Name (GBT1, Package (0x07)
        {
            0x0B060002, 
            "System Performance Control", 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GBT2, Package (0x07)
        {
            0x0B060003, 
            "System GUI", 
            0x02, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GRPB, Package (0x03)
        {
            GBT0, 
            GBT1, 
            GBT2
        })
        Method (GITB, 1, NotSerialized)
        {
            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), T_0) /* \_SB_.PCI0.SBRG.ASOC.GITB.T_0 */
            If (LEqual (T_0, One))
            {
                Store (And (DerefOf (Index (GBT0, 0x02)), 0xFFFF), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
            }
            Else
            {
                If (LEqual (T_0, 0x02))
                {
                    Store (DerefOf (Index (GBT1, 0x02)), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                }
                Else
                {
                    If (LEqual (T_0, 0x03))
                    {
                        Store (DerefOf (Index (GBT2, 0x02)), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                    }
                    Else
                    {
                        Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                    }
                }
            }
        }

        Method (SITB, 3, NotSerialized)
        {
            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), T_0) /* \_SB_.PCI0.SBRG.ASOC.SITB.T_0 */
            If (LEqual (T_0, One))
            {
                Name (T_1, Zero)  // T_x: Emitted by ASL Compiler
                Store (And (Arg2, 0xFFFF), T_1) /* \_SB_.PCI0.SBRG.ASOC.SITB.T_1 */
                If (LEqual (T_1, Zero))
                {
                    Store (And (DerefOf (Index (GBT0, 0x02)), 0xFFFF), Local0)
                    If (LEqual (Local0, Zero))
                    {
                        Store (Local0, PAR0) /* \PAR0 */
                    }
                }
                Else
                {
                    If (LEqual (T_1, One))
                    {
                        And (Arg1, 0xFFFF, Local0)
                        Store (Local0, Index (GBT0, 0x02))
                        SICL (Local0)
                        Store (Local0, PAR0) /* \PAR0 */
                        ISMI (0x88)
                    }
                    Else
                    {
                        Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                    }
                }
            }
            Else
            {
                If (LEqual (T_0, 0x02))
                {
                    Store (And (Arg1, 0xFF), Local0)
                    If (LEqual (ITCG (Local0), One))
                    {
                        Store (Local0, Index (GBT1, 0x02))
                    }
                    Else
                    {
                        Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                    }
                }
                Else
                {
                    Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                }
            }
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (GDT1, Package (0x07)
        {
            0x0D070001, 
            "RTC Alarm", 
            One, 
            Zero, 
            Zero, 
            One, 
            0x02
        })
        Name (GDT2, Package (0x07)
        {
            0x0D060002, 
            "Alarm Date", 
            Zero, 
            Zero, 
            Zero, 
            One, 
            0x20
        })
        Name (GDT3, Package (0x07)
        {
            0x0D060003, 
            "Alarm Hour", 
            Zero, 
            Zero, 
            Zero, 
            One, 
            0x18
        })
        Name (GDT4, Package (0x07)
        {
            0x0D060004, 
            "Alarm Minute", 
            Zero, 
            Zero, 
            Zero, 
            One, 
            0x3C
        })
        Name (GDT5, Package (0x07)
        {
            0x0D060005, 
            "Alarm Second", 
            Zero, 
            Zero, 
            Zero, 
            One, 
            0x3C
        })
        Name (GRPD, Package (0x05)
        {
            GDT1, 
            GDT2, 
            GDT3, 
            GDT4, 
            GDT5
        })
        Method (GITD, 1, NotSerialized)
        {
            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), T_0) /* \_SB_.PCI0.SBRG.ASOC.GITD.T_0 */
            If (LEqual (T_0, One))
            {
                Store (GNVS (0x168F), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
            }
            Else
            {
                If (LEqual (T_0, 0x02))
                {
                    Store (GNVS (0x5390), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                }
                Else
                {
                    If (LEqual (T_0, 0x03))
                    {
                        Store (GNVS (0x5398), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                    }
                    Else
                    {
                        If (LEqual (T_0, 0x04))
                        {
                            Store (GNVS (0x6358), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                        }
                        Else
                        {
                            If (LEqual (T_0, 0x05))
                            {
                                Store (GNVS (0x6360), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                            }
                            Else
                            {
                                Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                            }
                        }
                    }
                }
            }
        }

        Method (SITD, 3, NotSerialized)
        {
            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), T_0) /* \_SB_.PCI0.SBRG.ASOC.SITD.T_0 */
            If (LEqual (T_0, One))
            {
                SNVS (0x168F, Arg1)
                Store (0x03, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
            }
            Else
            {
                If (LEqual (T_0, 0x02))
                {
                    SNVS (0x5390, Arg1)
                    Store (0x03, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                }
                Else
                {
                    If (LEqual (T_0, 0x03))
                    {
                        SNVS (0x5398, Arg1)
                        Store (0x03, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                    }
                    Else
                    {
                        If (LEqual (T_0, 0x04))
                        {
                            SNVS (0x6358, Arg1)
                            Store (0x03, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                        }
                        Else
                        {
                            If (LEqual (T_0, 0x05))
                            {
                                SNVS (0x6360, Arg1)
                                Store (0x03, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                            }
                            Else
                            {
                                Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                            }
                        }
                    }
                }
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L18, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.SBRG.ASOC, 0x05) // Frequency Mismatch
            If (LEqual (\_SB.PCI0.SBRG.ASOC.AIGC, One))
            {
                \_SB.PCI0.SBRG.ASOC.GITE (0x0E060001)
                \_SB.PCI0.SBRG.ASOC.SICL (Or (0x8010, \_SB.PCI0.SBRG.ASOC.ASB1))
            }

            \_SB.PCI0.SBRG.ASOC.RCAS ()
        }
    }

    OperationRegion (GPS0, SystemIO, GPBS, 0x10)
    Field (GPS0, ByteAcc, NoLock, Preserve)
    {
        Offset (0x0C), 
        GPL0,   1
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (GET1, Package (0x07)
        {
            0x0E060001, 
            "OC Status", 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GET2, Package (0x07)
        {
            0x0E0A0011, 
            "ICPU Value", 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GET3, Package (0x07)
        {
            0x0E020012, 
            "VCPU Value", 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GET4, Package (0x07)
        {
            0x0E0B0013, 
            "PCPU Value", 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GET5, Package (0x07)
        {
            0x0E0A0014, 
            "OC Threshold1", 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GET6, Package (0x07)
        {
            0x0E0A0015, 
            "OC Threshold2", 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GET7, Package (0x07)
        {
            0x0E0A0016, 
            "OC Threshold3", 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GRPE, Package (0x07)
        {
            GET1, 
            GET2, 
            GET3, 
            GET4, 
            GET5, 
            GET6, 
            GET7
        })
        Name (ADP3, Package (0x0D)
        {
            0x40, 
            0x3B, 
            0x48, 
            0x4A, 
            0x4C, 
            0x69, 
            0x6A, 
            0x6B, 
            0x56, 
            0x5C, 
            0x37, 
            0x38, 
            0x36
        })
        Name (OCST, Buffer (0x04)
        {
             0x00, 0x01, 0x02, 0x03                           /* .... */
        })
        Method (GITE, 1, NotSerialized)
        {
            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), T_0) /* \_SB_.PCI0.SBRG.ASOC.GITE.T_0 */
            If (LEqual (T_0, One))
            {
                Store (DerefOf (Index (OCST, RBYT (DerefOf (Index (ADP3, Zero)), 
                    DerefOf (Index (ADP3, One))))), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
            }
            Else
            {
                If (LEqual (T_0, 0x11))
                {
                    Store (RBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 
                        0x02))), Local0)
                    Store (RBYT (DerefOf (Index (ADP3, Zero)), Add (DerefOf (Index (
                        ADP3, 0x02)), One)), Local1)
                    Or (ShiftLeft (Local1, 0x02), And (Local0, 0x03), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                }
                Else
                {
                    If (LEqual (T_0, 0x12))
                    {
                        Store (RBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 
                            0x03))), Local0)
                        Store (RBYT (DerefOf (Index (ADP3, Zero)), Add (DerefOf (Index (
                            ADP3, 0x03)), One)), Local1)
                        Or (ShiftLeft (Local1, 0x02), And (Local0, 0x03), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                    }
                    Else
                    {
                        If (LEqual (T_0, 0x13))
                        {
                            Store (RBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 
                                0x04))), Local0)
                            Store (RBYT (DerefOf (Index (ADP3, Zero)), Add (DerefOf (Index (
                                ADP3, 0x04)), One)), Local1)
                            Or (ShiftLeft (Local1, 0x08), Local0, ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                        }
                        Else
                        {
                            If (LEqual (T_0, 0x14))
                            {
                                Store (RBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 
                                    0x05))), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                            }
                            Else
                            {
                                If (LEqual (T_0, 0x15))
                                {
                                    Store (RBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 
                                        0x06))), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                                }
                                Else
                                {
                                    If (LEqual (T_0, 0x16))
                                    {
                                        Store (RBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 
                                            0x07))), ASB1) /* \_SB_.PCI0.SBRG.ASOC.ASB1 */
                                    }
                                    Else
                                    {
                                        Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        Method (SITE, 3, NotSerialized)
        {
            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), T_0) /* \_SB_.PCI0.SBRG.ASOC.SITE.T_0 */
            If (LEqual (T_0, 0x14))
            {
                WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x05
                    )), Arg1)
            }
            Else
            {
                If (LEqual (T_0, 0x15))
                {
                    WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x06
                        )), Arg1)
                }
                Else
                {
                    If (LEqual (T_0, 0x16))
                    {
                        WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x07
                            )), Arg1)
                    }
                    Else
                    {
                        Store (Zero, ASB0) /* \_SB_.PCI0.SBRG.ASOC.ASB0 */
                    }
                }
            }
        }

        Name (FSBL, Package (0x04)
        {
            Package (0x07)
            {
                0xDE, 
                0xDC, 
                0xD1, 
                0xD1, 
                0xD1, 
                0x64, 
                0xFC
            }, 

            Package (0x07)
            {
                0x6E, 
                0xE1, 
                0xD6, 
                0xD6, 
                0xD6, 
                0x36, 
                0xFC
            }, 

            Package (0x07)
            {
                0x22, 
                0xD0, 
                0xC6, 
                0xC6, 
                0xC6, 
                0x62, 
                0xC6
            }, 

            Package (0x07)
            {
                0xDE, 
                0xDC, 
                0xD1, 
                0xD1, 
                0xD1, 
                0xDE, 
                0xD1
            }
        })
        Name (CLKB, Buffer (0x1B)
        {
            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0018 */  0x00, 0x00, 0x00                                 /* ... */
        })
        Method (ITCG, 1, NotSerialized)
        {
            Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
            Store (GNVS (0x354C), T_0) /* \_SB_.PCI0.SBRG.ASOC.ITCG.T_0 */
            If (LEqual (T_0, Zero))
            {
                Store (One, Local0)
            }
            Else
            {
                If (LEqual (T_0, 0x04))
                {
                    Store (0x02, Local0)
                }
                Else
                {
                    If (LEqual (T_0, 0x06))
                    {
                        Store (0x03, Local0)
                    }
                    Else
                    {
                        Store (Zero, Local0)
                    }
                }
            }

            CreateByteField (CLKB, Zero, CB00)
            CreateByteField (CLKB, 0x0B, CB11)
            CreateByteField (CLKB, 0x0C, CB12)
            CreateByteField (CLKB, 0x14, CB20)
            CreateByteField (CLKB, 0x16, CB22)
            CreateByteField (CLKB, 0x17, CB23)
            CreateByteField (CLKB, 0x18, CB24)
            CreateByteField (CLKB, 0x19, CB25)
            Store (RBLK (0xD2, Zero, 0x1A), CLKB) /* \_SB_.PCI0.SBRG.ASOC.CLKB */
            Name (T_1, Zero)  // T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFF), T_1) /* \_SB_.PCI0.SBRG.ASOC.ITCG.T_1 */
            If (LEqual (T_1, Zero))
            {
                Store (Or (CB00, 0x20), CB00) /* \_SB_.PCI0.SBRG.ASOC.ITCG.CB00 */
                Store (And (CB20, 0xFB), CB20) /* \_SB_.PCI0.SBRG.ASOC.ITCG.CB20 */
                Store (And (CB22, 0xF7), CB22) /* \_SB_.PCI0.SBRG.ASOC.ITCG.CB22 */
                Store (DerefOf (Index (DerefOf (Index (FSBL, Local0)), 0x05)), 
                    CB11) /* \_SB_.PCI0.SBRG.ASOC.ITCG.CB11 */
                Store (DerefOf (Index (DerefOf (Index (FSBL, Local0)), 0x06)), 
                    CB12) /* \_SB_.PCI0.SBRG.ASOC.ITCG.CB12 */
            }
            Else
            {
                If (LEqual (T_1, One))
                {
                    Store (And (CB00, 0xDF), CB00) /* \_SB_.PCI0.SBRG.ASOC.ITCG.CB00 */
                    Store (Or (CB20, 0x04), CB20) /* \_SB_.PCI0.SBRG.ASOC.ITCG.CB20 */
                    Store (Or (CB22, 0x08), CB22) /* \_SB_.PCI0.SBRG.ASOC.ITCG.CB22 */
                    Store (DerefOf (Index (DerefOf (Index (FSBL, Local0)), Zero)), 
                        CB11) /* \_SB_.PCI0.SBRG.ASOC.ITCG.CB11 */
                    Store (DerefOf (Index (DerefOf (Index (FSBL, Local0)), One)), 
                        CB12) /* \_SB_.PCI0.SBRG.ASOC.ITCG.CB12 */
                    Store (DerefOf (Index (DerefOf (Index (FSBL, Local0)), 0x03)), 
                        CB23) /* \_SB_.PCI0.SBRG.ASOC.ITCG.CB23 */
                    Store (DerefOf (Index (DerefOf (Index (FSBL, Local0)), 0x02)), 
                        CB24) /* \_SB_.PCI0.SBRG.ASOC.ITCG.CB24 */
                    Store (DerefOf (Index (DerefOf (Index (FSBL, Local0)), 0x04)), 
                        CB25) /* \_SB_.PCI0.SBRG.ASOC.ITCG.CB25 */
                }
                Else
                {
                    Return (Zero)
                }
            }

            WBLK (0xD2, Zero, 0x1A, CLKB)
            Return (One)
        }

        Name (AIGC, Zero)
        Method (SICL, 1, NotSerialized)
        {
            If (And (Arg0, 0x8000))
            {
                Store (One, AIGC) /* \_SB_.PCI0.SBRG.ASOC.AIGC */
                Name (T_0, Zero)  // T_x: Emitted by ASL Compiler
                Store (And (Arg0, 0xFF), T_0) /* \_SB_.PCI0.SBRG.ASOC.SICL.T_0 */
                If (LEqual (T_0, 0x10))
                {
                    SPIC (Zero)
                    Store (Zero, PICL) /* \_SB_.PCI0.SBRG.ASOC.PICL */
                }
                Else
                {
                    If (LEqual (T_0, 0x11))
                    {
                        SPIC (One)
                        Store (One, PICL) /* \_SB_.PCI0.SBRG.ASOC.PICL */
                    }
                    Else
                    {
                        If (LEqual (T_0, 0x12))
                        {
                            SPIC (0x02)
                            Store (0x02, PICL) /* \_SB_.PCI0.SBRG.ASOC.PICL */
                        }
                        Else
                        {
                            If (LEqual (T_0, 0x13))
                            {
                                SPIC (0x03)
                                Store (0x03, PICL) /* \_SB_.PCI0.SBRG.ASOC.PICL */
                            }
                            Else
                            {
                            }
                        }
                    }
                }
            }
            Else
            {
                Store (Zero, AIGC) /* \_SB_.PCI0.SBRG.ASOC.AIGC */
                If (And (Arg0, 0x4000))
                {
                    SPIC (Zero)
                    Store (Zero, PICL) /* \_SB_.PCI0.SBRG.ASOC.PICL */
                }
                Else
                {
                    Name (T_1, Zero)  // T_x: Emitted by ASL Compiler
                    Store (And (Arg0, 0xFF), T_1) /* \_SB_.PCI0.SBRG.ASOC.SICL.T_1 */
                    If (LEqual (T_1, Zero))
                    {
                        SPIC (One)
                        Store (One, PICL) /* \_SB_.PCI0.SBRG.ASOC.PICL */
                    }
                    Else
                    {
                        If (LEqual (T_1, One))
                        {
                            SPIC (0x02)
                            Store (0x02, PICL) /* \_SB_.PCI0.SBRG.ASOC.PICL */
                        }
                        Else
                        {
                            If (LEqual (T_1, 0x02))
                            {
                                SPIC (0x03)
                                Store (0x03, PICL) /* \_SB_.PCI0.SBRG.ASOC.PICL */
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                }
            }

            Return (One)
        }

        Name (PICL, One)
        Name (PSLV, Package (0x04)
        {
            Package (0x05)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x05)
            {
                Zero, 
                Zero, 
                0xFF, 
                Zero, 
                0x10
            }, 

            Package (0x05)
            {
                Zero, 
                0xFF, 
                0xFF, 
                0x30, 
                Zero
            }, 

            Package (0x05)
            {
                0xFF, 
                0xFF, 
                0xFF, 
                0x2C, 
                Zero
            }
        })
        Method (SPIC, 1, NotSerialized)
        {
            If (LLessEqual (Arg0, PICL))
            {
                Store (One, GPL0) /* \GPL0 */
                WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x08
                    )), DerefOf (Index (DerefOf (Index (PSLV, Arg0)), 0x03)))
                WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x09
                    )), DerefOf (Index (DerefOf (Index (PSLV, Arg0)), 0x04)))
                If (LEqual (AIGC, Zero))
                {
                    WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x05
                        )), DerefOf (Index (DerefOf (Index (PSLV, Arg0)), Zero)))
                    Sleep (0x03E8)
                    WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x06
                        )), DerefOf (Index (DerefOf (Index (PSLV, Arg0)), One)))
                    Sleep (0x03E8)
                    WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x07
                        )), DerefOf (Index (DerefOf (Index (PSLV, Arg0)), 0x02)))
                    Sleep (0x03E8)
                }
            }
            Else
            {
                If (LEqual (AIGC, Zero))
                {
                    WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x07
                        )), DerefOf (Index (DerefOf (Index (PSLV, Arg0)), 0x02)))
                    Sleep (0x03E8)
                    WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x06
                        )), DerefOf (Index (DerefOf (Index (PSLV, Arg0)), One)))
                    Sleep (0x03E8)
                    WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x05
                        )), DerefOf (Index (DerefOf (Index (PSLV, Arg0)), Zero)))
                    Sleep (0x03E8)
                }

                WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x09
                    )), DerefOf (Index (DerefOf (Index (PSLV, Arg0)), 0x04)))
                WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x08
                    )), DerefOf (Index (DerefOf (Index (PSLV, Arg0)), 0x03)))
                If (LEqual (Arg0, 0x03))
                {
                    Store (Zero, GPL0) /* \GPL0 */
                }
            }

            RCAS ()
        }

        Method (RCAS, 0, NotSerialized)
        {
            RBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x0A
                )))
            RBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x0B
                )))
            RBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x0C
                )))
        }
    }

    OperationRegion (_SB.PCI0.SBRG.PIX0, PCI_Config, 0x60, 0x0C)
    Field (\_SB.PCI0.SBRG.PIX0, ByteAcc, NoLock, Preserve)
    {
        PIRA,   8, 
        PIRB,   8, 
        PIRC,   8, 
        PIRD,   8, 
        Offset (0x08), 
        PIRE,   8, 
        PIRF,   8, 
        PIRG,   8, 
        PIRH,   8
    }

    Scope (_SB)
    {
        Name (BUFA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {15}
        })
        CreateWordField (BUFA, One, IRA0)
        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRA, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSA) /* \_SB_.PRSA */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRA, 0x80, PIRA) /* \PIRA */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRA, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0) /* \_SB_.IRA0 */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRA) /* \PIRA */
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRB, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSB) /* \_SB_.PRSB */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRB, 0x80, PIRB) /* \PIRB */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRB, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0) /* \_SB_.IRA0 */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRB) /* \PIRB */
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRC, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSC) /* \_SB_.PRSC */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRC, 0x80, PIRC) /* \PIRC */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRC, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0) /* \_SB_.IRA0 */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRC) /* \PIRC */
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRD, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSD) /* \_SB_.PRSD */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRD, 0x80, PIRD) /* \PIRD */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRD, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0) /* \_SB_.IRA0 */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRD) /* \PIRD */
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRE, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSE) /* \_SB_.PRSE */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRE, 0x80, PIRE) /* \PIRE */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRE, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0) /* \_SB_.IRA0 */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRE) /* \PIRE */
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRF, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSF) /* \_SB_.PRSF */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRF, 0x80, PIRF) /* \PIRF */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRF, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0) /* \_SB_.IRA0 */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRF) /* \PIRF */
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRG, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSG) /* \_SB_.PRSG */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRG, 0x80, PIRG) /* \PIRG */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRG, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0) /* \_SB_.IRA0 */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRG) /* \PIRG */
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRH, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSH) /* \_SB_.PRSH */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRH, 0x80, PIRH) /* \PIRH */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRH, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0) /* \_SB_.IRA0 */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRH) /* \PIRH */
            }
        }
    }

    Scope (_SB)
    {
        Name (XCPD, Zero)
        Name (XNPT, One)
        Name (XCAP, 0x02)
        Name (XDCP, 0x04)
        Name (XDCT, 0x08)
        Name (XDST, 0x0A)
        Name (XLCP, 0x0C)
        Name (XLCT, 0x10)
        Name (XLST, 0x12)
        Name (XSCP, 0x14)
        Name (XSCT, 0x18)
        Name (XSST, 0x1A)
        Name (XRCT, 0x1C)
        Mutex (MUTE, 0x00)
        Method (RBPE, 1, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            Add (Arg0, PCIB, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, One)
            Field (PCFG, ByteAcc, NoLock, Preserve)
            {
                XCFG,   8
            }

            Release (MUTE)
            Return (XCFG) /* \_SB_.RBPE.XCFG */
        }

        Method (RWPE, 1, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            And (Arg0, 0xFFFFFFFE, Arg0)
            Add (Arg0, PCIB, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x02)
            Field (PCFG, WordAcc, NoLock, Preserve)
            {
                XCFG,   16
            }

            Release (MUTE)
            Return (XCFG) /* \_SB_.RWPE.XCFG */
        }

        Method (RDPE, 1, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            And (Arg0, 0xFFFFFFFC, Arg0)
            Add (Arg0, PCIB, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x04)
            Field (PCFG, DWordAcc, NoLock, Preserve)
            {
                XCFG,   32
            }

            Release (MUTE)
            Return (XCFG) /* \_SB_.RDPE.XCFG */
        }

        Method (WBPE, 2, NotSerialized)
        {
            Acquire (MUTE, 0x0FFF)
            Add (Arg0, PCIB, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, One)
            Field (PCFG, ByteAcc, NoLock, Preserve)
            {
                XCFG,   8
            }

            Store (Arg1, XCFG) /* \_SB_.WBPE.XCFG */
            Release (MUTE)
        }

        Method (WWPE, 2, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            And (Arg0, 0xFFFFFFFE, Arg0)
            Add (Arg0, PCIB, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x02)
            Field (PCFG, WordAcc, NoLock, Preserve)
            {
                XCFG,   16
            }

            Store (Arg1, XCFG) /* \_SB_.WWPE.XCFG */
            Release (MUTE)
        }

        Method (WDPE, 2, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            And (Arg0, 0xFFFFFFFC, Arg0)
            Add (Arg0, PCIB, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x04)
            Field (PCFG, DWordAcc, NoLock, Preserve)
            {
                XCFG,   32
            }

            Store (Arg1, XCFG) /* \_SB_.WDPE.XCFG */
            Release (MUTE)
        }

        Method (RWDP, 3, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            And (Arg0, 0xFFFFFFFC, Arg0)
            Add (Arg0, PCIB, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x04)
            Field (PCFG, DWordAcc, NoLock, Preserve)
            {
                XCFG,   32
            }

            And (XCFG, Arg2, Local1)
            Or (Local1, Arg1, XCFG) /* \_SB_.RWDP.XCFG */
            Release (MUTE)
        }

        Method (RPME, 1, NotSerialized)
        {
            Add (Arg0, 0x84, Local0)
            Store (RDPE (Local0), Local1)
            If (LEqual (Local1, Ones))
            {
                Return (Zero)
            }
            Else
            {
                If (LAnd (Local1, 0x00010000))
                {
                    WDPE (Local0, And (Local1, 0x00010000))
                    Return (One)
                }

                Return (Zero)
            }
        }
    }

    OperationRegion (SMRG, SystemIO, 0x0400, 0x10)
    Field (SMRG, ByteAcc, NoLock, Preserve)
    {
        HSTS,   8, 
        SSTS,   8, 
        HSTC,   8, 
        HCMD,   8, 
        HADR,   8, 
        HDT0,   8, 
        HDT1,   8, 
        BLKD,   8
    }

    Field (SMRG, ByteAcc, NoLock, Preserve)
    {
        Offset (0x05), 
        HDTW,   16
    }

    Method (SCMD, 4, Serialized)
    {
        Store (0x05, Local0)
        While (Decrement (Local0))
        {
            Store (0xFFFF, Local1)
            While (LAnd (HSTS, Decrement (Local1)))
            {
                Store (0xFE, HSTS) /* \HSTS */
                Stall (0x0A)
            }

            Store (HSTC, Local2)
            Store (Arg0, HADR) /* \HADR */
            Store (Arg1, HCMD) /* \HCMD */
            Store (Arg2, HDTW) /* \HDTW */
            Store (Arg3, HSTC) /* \HSTC */
            Store (0xFFFF, Local1)
            While (Decrement (Local1))
            {
                If (And (HSTS, 0x0C))
                {
                    Store (One, Local1)
                }

                If (LEqual (And (HSTS, 0x03), 0x02))
                {
                    Return (HDTW) /* \HDTW */
                }

                Stall (0x0A)
            }

            Store (0x42, HSTC) /* \HSTC */
            Store (0xFFFF, Local1)
            While (Decrement (Local1))
            {
                If (And (HSTS, 0x10))
                {
                    Store (One, Local1)
                }

                Stall (0x0A)
            }

            Store (Zero, HSTC) /* \HSTC */
        }

        Return (Ones)
    }

    Method (SBYT, 2, NotSerialized)
    {
        SCMD (Arg0, Arg1, Zero, 0x44)
    }

    Method (WBYT, 3, NotSerialized)
    {
        SCMD (Arg0, Arg1, Arg2, 0x48)
    }

    Method (WWRD, 3, NotSerialized)
    {
        SCMD (Arg0, Arg1, Arg2, 0x4C)
    }

    Method (RSBT, 2, NotSerialized)
    {
        Or (Arg0, One, Arg0)
        Return (And (SCMD (Arg0, Arg1, Zero, 0x44), 0xFF))
    }

    Method (RBYT, 2, NotSerialized)
    {
        Or (Arg0, One, Arg0)
        Return (And (SCMD (Arg0, Arg1, Zero, 0x48), 0xFF))
    }

    Method (RWRD, 2, NotSerialized)
    {
        Or (Arg0, One, Arg0)
        Return (SCMD (Arg0, Arg1, Zero, 0x4C))
    }

    Method (RBLK, 3, NotSerialized)
    {
        Or (Arg0, One, Local0)
        SCMD (Local0, Arg1, Arg2, 0x54)
        Store (HSTC, Local0)
        Store (HDT0, Local0)
        Add (Local0, One, Local7)
        Name (RBUF, Buffer (Local7) {})
        Store (Zero, Local1)
        While (Local0)
        {
            Store (BLKD, Index (RBUF, Local1))
            Decrement (Local0)
            Increment (Local1)
        }

        Return (RBUF) /* \RBLK.RBUF */
    }

    Method (WBLK, 4, NotSerialized)
    {
        Store (HSTC, Local0)
        Store (Zero, Local0)
        While (LLessEqual (Local0, Arg2))
        {
            Store (DerefOf (Index (Arg3, Local0)), BLKD) /* \BLKD */
            Increment (Local0)
        }

        And (Arg0, 0xFE, Local0)
        SCMD (Local0, Arg1, Arg2, 0x54)
    }

    Scope (_SB.PCI0.SBRG.SIOR)
    {
        Method (HWV0, 0, NotSerialized)
        {
            Return (Multiply (VCOR, 0x08))
        }

        Method (HWV1, 0, NotSerialized)
        {
            Return (Multiply (V12V, 0x08))
        }

        Method (HWV3, 0, NotSerialized)
        {
            Return (Multiply (V33V, 0x08))
        }

        Method (HWV5, 0, NotSerialized)
        {
            Return (Multiply (V50V, 0x08))
        }

        Method (HWT0, 0, NotSerialized)
        {
            Store (MBTE, Local1)
            Multiply (Local1, 0x0A, Local1)
            Return (Local1)
        }

        Method (HWT1, 0, NotSerialized)
        {
            Store (One, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
            Store (TSR1, Local1)
            Multiply (Local1, 0x0A, Local1)
            Store (TSR2, Local2)
            Multiply (Local2, 0x05, Local2)
            Add (Local1, Local2, Local1)
            Return (Local1)
        }

        Method (HWT2, 0, NotSerialized)
        {
            Store (0x02, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
            Store (TSR1, Local1)
            Multiply (Local1, 0x0A, Local1)
            Store (TSR2, Local2)
            Multiply (Local2, 0x05, Local2)
            Add (Local1, Local2, Local1)
            Return (Local1)
        }

        OperationRegion (DBGE, SystemIO, 0x80, 0x04)
        Field (DBGE, WordAcc, NoLock, Preserve)
        {
            DBGG,   22
        }

        Method (HWF0, 0, NotSerialized)
        {
            Store (FAN1, Local0)
            Store (Zero, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
            And (FD21, 0x20, Local1)
            ShiftRight (Local1, 0x05, Local1)
            Multiply (Local1, 0x04, Local1)
            And (FDR1, 0x30, Local2)
            ShiftRight (Local2, 0x04, Local2)
            Add (Local1, Local2, Local1)
            If (LOr (LGreater (Local1, 0x05), LLess (Local1, 0x02)))
            {
                If (LGreater (Local0, 0xF0))
                {
                    Store (0x02, Local1)
                }
                Else
                {
                    If (LLess (Local0, 0x1E))
                    {
                        Store (0x05, Local1)
                    }
                    Else
                    {
                        Store (0x03, Local1)
                    }
                }

                Divide (Local1, 0x04, Local2, Local3)
                ShiftLeft (Local3, 0x05, Local3)
                Store (FD21, Local4)
                And (Local4, 0xDF, Local4)
                Or (Local3, Local4, FD21) /* \_SB_.PCI0.SBRG.SIOR.FD21 */
                Store (FDR1, Local4)
                And (Local4, 0xCF, Local4)
                ShiftLeft (Local2, 0x04, Local2)
                Or (Local4, One, Local4)
                Or (Local4, Local2, FDR1) /* \_SB_.PCI0.SBRG.SIOR.FDR1 */
            }

            While (LOr (LAnd (LGreater (Local0, 0xF0), LLess (Local1, 0x05)), LAnd (
                LLess (Local0, 0x1E), LGreater (Local1, 0x02))))
            {
                If (LAnd (LGreater (Local0, 0xF0), LLess (Local1, 0x05)))
                {
                    Add (Local1, One, Local1)
                    Divide (Local1, 0x04, Local2, Local3)
                    Store (Zero, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
                    ShiftLeft (Local3, 0x05, Local3)
                    Store (FD21, Local4)
                    And (Local4, 0xDF, Local4)
                    Or (Local3, Local4, FD21) /* \_SB_.PCI0.SBRG.SIOR.FD21 */
                    Store (FDR1, Local4)
                    And (Local4, 0xCF, Local4)
                    ShiftLeft (Local2, 0x04, Local2)
                    Or (Local4, One, Local4)
                    Or (Local4, Local2, FDR1) /* \_SB_.PCI0.SBRG.SIOR.FDR1 */
                    Sleep (0x32)
                    Store (FAN1, Local0)
                    Sleep (0x32)
                    Store (FAN1, Local0)
                    Sleep (0x32)
                    Store (FAN1, Local0)
                }
                Else
                {
                    Subtract (Local1, One, Local1)
                    Divide (Local1, 0x04, Local2, Local3)
                    Store (Zero, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
                    ShiftLeft (Local3, 0x05, Local3)
                    Store (FD21, Local4)
                    And (Local4, 0xDF, Local4)
                    Or (Local3, Local4, FD21) /* \_SB_.PCI0.SBRG.SIOR.FD21 */
                    Store (FDR1, Local4)
                    And (Local4, 0xCF, Local4)
                    ShiftLeft (Local2, 0x04, Local2)
                    Or (Local4, One, Local4)
                    Or (Local4, Local2, FDR1) /* \_SB_.PCI0.SBRG.SIOR.FDR1 */
                    Sleep (0x32)
                    Store (FAN1, Local0)
                    Sleep (0x32)
                    Store (FAN1, Local0)
                    Sleep (0x32)
                    Store (FAN1, Local0)
                }
            }

            If (LAnd (LEqual (Local0, 0xFF), LEqual (Local1, 0x05)))
            {
                Return (Zero)
            }

            If (LAnd (LEqual (Local0, Zero), LEqual (Local1, 0x02)))
            {
                Return (0xFFFF)
            }

            Store (One, Local2)
            While (Local1)
            {
                Multiply (Local2, 0x02, Local2)
                Decrement (Local1)
            }

            Multiply (Local0, Local2, Local0)
            Divide (0x00149970, Local0, Local1, Local0)
            Return (Local0)
        }

        Method (HWF1, 0, NotSerialized)
        {
            Store (Zero, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
            Store (FAN2, Local0)
            And (FD21, 0x40, Local1)
            ShiftRight (Local1, 0x06, Local1)
            Multiply (Local1, 0x04, Local1)
            And (FDR1, 0xC0, Local2)
            ShiftRight (Local2, 0x06, Local2)
            Add (Local1, Local2, Local1)
            If (LOr (LGreater (Local1, 0x05), LLess (Local1, 0x02)))
            {
                If (LGreater (Local0, 0xF0))
                {
                    Store (0x02, Local1)
                }
                Else
                {
                    If (LLess (Local0, 0x1E))
                    {
                        Store (0x05, Local1)
                    }
                    Else
                    {
                        Store (0x03, Local1)
                    }
                }

                Divide (Local1, 0x04, Local2, Local3)
                ShiftLeft (Local3, 0x06, Local3)
                Store (FD21, Local4)
                And (Local4, 0xBF, Local4)
                Or (Local3, Local4, FD21) /* \_SB_.PCI0.SBRG.SIOR.FD21 */
                Store (FDR1, Local4)
                And (Local4, 0x3F, Local4)
                ShiftLeft (Local2, 0x06, Local2)
                Or (Local4, One, Local4)
                Or (Local4, Local2, FDR1) /* \_SB_.PCI0.SBRG.SIOR.FDR1 */
            }

            While (LOr (LAnd (LGreater (Local0, 0xF0), LLess (Local1, 0x05)), LAnd (
                LLess (Local0, 0x1E), LGreater (Local1, 0x02))))
            {
                If (LAnd (LLess (Local0, 0x1E), LGreater (Local1, 0x02)))
                {
                    Subtract (Local1, One, Local1)
                    Divide (Local1, 0x04, Local2, Local3)
                    Store (Zero, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
                    ShiftLeft (Local3, 0x06, Local3)
                    Store (FD21, Local4)
                    And (Local4, 0xBF, Local4)
                    Or (Local3, Local4, FD21) /* \_SB_.PCI0.SBRG.SIOR.FD21 */
                    Store (FDR1, Local4)
                    And (Local4, 0x3F, Local4)
                    ShiftLeft (Local2, 0x06, Local2)
                    Or (Local4, One, Local4)
                    Or (Local4, Local2, FDR1) /* \_SB_.PCI0.SBRG.SIOR.FDR1 */
                    Sleep (0x32)
                    Store (Zero, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
                    Store (FAN2, Local0)
                    Sleep (0x32)
                    Store (FAN2, Local0)
                    Sleep (0x32)
                    Store (FAN2, Local0)
                }
                Else
                {
                    Add (Local1, One, Local1)
                    Divide (Local1, 0x04, Local2, Local3)
                    Store (Zero, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
                    ShiftLeft (Local3, 0x06, Local3)
                    Store (FD21, Local4)
                    And (Local4, 0xBF, Local4)
                    Or (Local3, Local4, FD21) /* \_SB_.PCI0.SBRG.SIOR.FD21 */
                    Store (FDR1, Local4)
                    And (Local4, 0x3F, Local4)
                    ShiftLeft (Local2, 0x06, Local2)
                    Or (Local4, One, Local4)
                    Or (Local4, Local2, FDR1) /* \_SB_.PCI0.SBRG.SIOR.FDR1 */
                    Sleep (0x32)
                    Store (Zero, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
                    Store (FAN2, Local0)
                    Sleep (0x32)
                    Store (FAN2, Local0)
                    Sleep (0x32)
                    Store (FAN2, Local0)
                }
            }

            If (LAnd (LEqual (Local0, 0xFF), LEqual (Local1, 0x05)))
            {
                Return (Zero)
            }

            If (LAnd (LEqual (Local0, Zero), LEqual (Local1, 0x02)))
            {
                Return (0xFFFF)
            }

            Store (One, Local2)
            While (Local1)
            {
                Multiply (Local2, 0x02, Local2)
                Decrement (Local1)
            }

            Multiply (Local0, Local2, Local0)
            Divide (0x00149970, Local0, Local1, Local0)
            Return (Local0)
        }

        Method (HWF2, 0, NotSerialized)
        {
            Store (FAN3, Local0)
            Store (Zero, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
            And (FD21, 0x80, Local1)
            ShiftRight (Local1, 0x07, Local1)
            Multiply (Local1, 0x04, Local1)
            Divide (FD13, 0x40, Local2, Local3)
            Add (Local1, Local3, Local1)
            If (LOr (LGreater (Local1, 0x05), LLess (Local1, 0x02)))
            {
                If (LGreater (Local0, 0xF0))
                {
                    Store (0x02, Local1)
                }
                Else
                {
                    If (LLess (Local0, 0x1E))
                    {
                        Store (0x05, Local1)
                    }
                    Else
                    {
                        Store (0x03, Local1)
                    }
                }

                Divide (Local1, 0x04, Local2, Local3)
                ShiftLeft (Local3, 0x07, Local3)
                Store (FD21, Local4)
                And (Local4, 0x7F, Local4)
                Or (Local3, Local4, FD21) /* \_SB_.PCI0.SBRG.SIOR.FD21 */
                Store (FD13, Local3)
                And (Local3, 0x3F, Local3)
                Multiply (Local2, 0x40, Local2)
                Add (Local3, Local2, Local2)
                Store (Local2, FD13) /* \_SB_.PCI0.SBRG.SIOR.FD13 */
            }

            While (LOr (LAnd (LGreater (Local0, 0xF0), LLess (Local1, 0x05)), LAnd (
                LLess (Local0, 0x1E), LGreater (Local1, 0x02))))
            {
                If (LAnd (LGreater (Local0, 0xF0), LLess (Local1, 0x05)))
                {
                    If (LEqual (Local0, 0xFF))
                    {
                        Store (0x05, Local1)
                    }
                    Else
                    {
                        Add (Local1, One, Local1)
                    }

                    Divide (Local1, 0x04, Local2, Local3)
                    Store (Zero, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
                    ShiftLeft (Local3, 0x07, Local3)
                    Store (FD21, Local4)
                    And (Local4, 0x7F, Local4)
                    Or (Local3, Local4, FD21) /* \_SB_.PCI0.SBRG.SIOR.FD21 */
                    Store (FD13, Local3)
                    And (Local3, 0x3F, Local3)
                    Multiply (Local2, 0x40, Local2)
                    Add (Local3, Local2, Local2)
                    Store (Local2, FD13) /* \_SB_.PCI0.SBRG.SIOR.FD13 */
                    If (LNotEqual (Local0, 0xFF))
                    {
                        Sleep (0x32)
                    }

                    Store (FAN3, Local0)
                    Sleep (0x32)
                    Store (FAN3, Local0)
                    Sleep (0x32)
                    Store (FAN3, Local0)
                }
                Else
                {
                    Subtract (Local1, One, Local1)
                    Divide (Local1, 0x04, Local2, Local3)
                    Store (Zero, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
                    ShiftLeft (Local3, 0x07, Local3)
                    Store (FD21, Local4)
                    And (Local4, 0x7F, Local4)
                    Or (Local3, Local4, FD21) /* \_SB_.PCI0.SBRG.SIOR.FD21 */
                    Store (FD13, Local3)
                    And (Local3, 0x3F, Local3)
                    Multiply (Local2, 0x40, Local2)
                    Add (Local3, Local2, Local2)
                    Store (Local2, FD13) /* \_SB_.PCI0.SBRG.SIOR.FD13 */
                    Sleep (0x32)
                    Store (FAN3, Local0)
                    Sleep (0x32)
                    Store (FAN3, Local0)
                    Sleep (0x32)
                    Store (FAN3, Local0)
                }
            }

            If (LAnd (LEqual (Local0, 0xFF), LEqual (Local1, 0x05)))
            {
                Return (Zero)
            }

            If (LAnd (LEqual (Local0, Zero), LEqual (Local1, 0x02)))
            {
                Return (0xFFFF)
            }

            Store (One, Local2)
            While (Local1)
            {
                Multiply (Local2, 0x02, Local2)
                Decrement (Local1)
            }

            Multiply (Local0, Local2, Local0)
            Divide (0x00149970, Local0, Local1, Local0)
            Return (Local0)
        }

        Method (HWF4, 0, NotSerialized)
        {
            Store (0x05, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
            Store (FAN4, Local0)
            Store (Zero, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
            And (FND4, 0x80, Local1)
            ShiftRight (Local1, 0x08, Local1)
            Multiply (Local1, 0x04, Local1)
            And (FND4, 0x0C, Local2)
            ShiftRight (Local2, 0x02, Local2)
            Add (Local1, Local2, Local1)
            If (LOr (LGreater (Local1, 0x05), LLess (Local1, 0x02)))
            {
                If (LGreater (Local0, 0xF0))
                {
                    Store (0x02, Local1)
                }
                Else
                {
                    If (LLess (Local0, 0x1E))
                    {
                        Store (0x05, Local1)
                    }
                    Else
                    {
                        Store (0x03, Local1)
                    }
                }

                Divide (Local1, 0x04, Local2, Local3)
                ShiftLeft (Local3, 0x08, Local3)
                ShiftLeft (Local2, 0x02, Local2)
                Store (FND4, Local4)
                And (Local4, 0x73, Local4)
                Or (Local3, Local2, Local3)
                Or (Local3, Local4, FND4) /* \_SB_.PCI0.SBRG.SIOR.FND4 */
            }

            While (LOr (LAnd (LGreater (Local0, 0xF0), LLess (Local1, 0x05)), LAnd (
                LLess (Local0, 0x1E), LGreater (Local1, 0x02))))
            {
                If (LAnd (LGreater (Local0, 0xF0), LLess (Local1, 0x05)))
                {
                    Add (Local1, One, Local1)
                    Divide (Local1, 0x04, Local2, Local3)
                    Store (Zero, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
                    ShiftLeft (Local3, 0x08, Local3)
                    ShiftLeft (Local2, 0x02, Local2)
                    Store (FND4, Local4)
                    And (Local4, 0x73, Local4)
                    Or (Local3, Local2, Local3)
                    Or (Local3, Local4, FND4) /* \_SB_.PCI0.SBRG.SIOR.FND4 */
                    If (LNotEqual (Local0, 0xFF))
                    {
                        Sleep (0x32)
                    }

                    Store (0x05, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
                    Store (FAN4, Local0)
                    Sleep (0x32)
                    Store (FAN4, Local0)
                    Sleep (0x32)
                    Store (FAN4, Local0)
                    Store (Zero, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
                }
                Else
                {
                    Subtract (Local1, One, Local1)
                    Divide (Local1, 0x04, Local2, Local3)
                    Store (Zero, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
                    ShiftLeft (Local3, 0x08, Local3)
                    ShiftLeft (Local2, 0x02, Local2)
                    Store (FND4, Local4)
                    And (Local4, 0x73, Local4)
                    Or (Local3, Local2, Local3)
                    Or (Local3, Local4, FND4) /* \_SB_.PCI0.SBRG.SIOR.FND4 */
                    Sleep (0x32)
                    Store (0x05, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
                    Store (FAN4, Local0)
                    Sleep (0x32)
                    Store (FAN4, Local0)
                    Sleep (0x32)
                    Store (FAN4, Local0)
                    Store (Zero, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
                }
            }

            If (LAnd (LEqual (Local0, 0xFF), LEqual (Local1, 0x05)))
            {
                Return (Zero)
            }

            If (LAnd (LEqual (Local0, Zero), LEqual (Local1, 0x02)))
            {
                Return (0xFFFF)
            }

            Store (One, Local2)
            While (Local1)
            {
                Multiply (Local2, 0x02, Local2)
                Decrement (Local1)
            }

            Multiply (Local0, Local2, Local0)
            Divide (0x00149970, Local0, Local1, Local0)
            Return (Local0)
        }

        Name (FNDT, Package (0x08)
        {
            One, 
            0x02, 
            0x04, 
            0x08, 
            0x10, 
            0x20, 
            0x40, 
            0x80
        })
        Method (HWF3, 0, NotSerialized)
        {
            Store (Zero, BSEL) /* \_SB_.PCI0.SBRG.SIOR.BSEL */
            Store (CFN3, Local0)
            And (FD15, 0x80, Local1)
            ShiftRight (Local1, 0x05, Local1)
            And (FND4, 0x03, Local2)
            Or (Local1, Local2, Local1)
            If (LOr (LGreater (Local1, 0x05), LLess (Local1, 0x02)))
            {
                If (LGreater (Local0, 0xF0))
                {
                    Store (0x02, Local1)
                }
                Else
                {
                    If (LLess (Local0, 0x1E))
                    {
                        Store (0x05, Local1)
                    }
                    Else
                    {
                        Store (0x03, Local1)
                    }
                }

                ShiftLeft (Local1, 0x05, Local2)
                And (Local2, 0x80, Local2)
                And (FD15, 0x7F, Local3)
                Or (Local2, Local3, Local3)
                Store (Local3, FD15) /* \_SB_.PCI0.SBRG.SIOR.FD15 */
                And (Local1, 0x03, Local2)
                And (FND4, 0xFC, Local3)
                Or (Local2, Local3, Local3)
                Store (Local3, FND4) /* \_SB_.PCI0.SBRG.SIOR.FND4 */
            }

            While (LOr (LAnd (LGreater (Local0, 0xF0), LLess (Local1, 0x05)), LAnd (
                LLess (Local0, 0x1E), LGreater (Local1, 0x02))))
            {
                If (LAnd (LGreater (Local0, 0xF0), LLess (Local1, 0x05)))
                {
                    Increment (Local1)
                }
                Else
                {
                    Decrement (Local1)
                }

                ShiftLeft (Local1, 0x05, Local2)
                And (Local2, 0x80, Local2)
                And (FD15, 0x7F, Local3)
                Or (Local2, Local3, Local3)
                Store (Local3, FD15) /* \_SB_.PCI0.SBRG.SIOR.FD15 */
                And (Local1, 0x03, Local2)
                And (FND4, 0xFC, Local3)
                Or (Local2, Local3, Local3)
                Store (Local3, FND4) /* \_SB_.PCI0.SBRG.SIOR.FND4 */
                Sleep (0x32)
                Store (CFN3, Local0)
                Sleep (0x32)
                Store (CFN3, Local0)
                Sleep (0x32)
                Store (CFN3, Local0)
            }

            If (LAnd (LEqual (Local0, 0xFF), LEqual (Local1, 0x05)))
            {
                Return (Zero)
            }

            If (LAnd (LEqual (Local0, Zero), LEqual (Local1, 0x02)))
            {
                Return (0xFFFF)
            }

            Store (DerefOf (Index (FNDT, Local1)), Local2)
            Multiply (Local0, Local2, Local0)
            Divide (0x00149970, Local0, Local1, Local0)
            Return (Local0)
        }

        OperationRegion (HWRE, SystemIO, IOHW, 0x0A)
        Field (HWRE, ByteAcc, NoLock, Preserve)
        {
            Offset (0x05), 
            HIDX,   8, 
            HDAT,   8
        }

        IndexField (HIDX, HDAT, ByteAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            CHNM,   1, 
            CFNM,   1, 
            CHNS,   2, 
            CFNS,   2, 
            Offset (0x05), 
            SYST,   8, 
            TRGT,   8, 
            Offset (0x08), 
            SSDN,   8, 
            CSDN,   8, 
            SSUP,   8, 
            CSUP,   8, 
            Offset (0x20), 
            VCOR,   8, 
            V12V,   8, 
            Offset (0x23), 
            V33V,   8, 
            Offset (0x25), 
            V50V,   8, 
            Offset (0x27), 
            MBTE,   8, 
            FAN1,   8, 
            FAN2,   8, 
            FAN3,   8, 
            Offset (0x3F), 
            CFN3,   8, 
            Offset (0x47), 
            FDR1,   8, 
            Offset (0x4B), 
            FD13,   8, 
            FD15,   8, 
            Offset (0x4E), 
            BSEL,   3, 
            Offset (0x4F), 
            Offset (0x50), 
            TSR1,   8, 
                ,   7, 
            TSR2,   1, 
            Offset (0x53), 
            FAN4,   8, 
            Offset (0x59), 
            FND4,   8, 
            Offset (0x5D), 
            FD21,   8
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (CORV, Package (0x05)
        {
            0x06020000, 
            "Vcore Voltage", 
            0x0352, 
            0x0640, 
            One
        })
        Name (V3VV, Package (0x05)
        {
            0x06020001, 
            " +3.3 Voltage", 
            0x0B9A, 
            0x0E2E, 
            One
        })
        Name (V5VV, Package (0x05)
        {
            0x06020002, 
            " +5 Voltage", 
            0x1194, 
            0x157C, 
            One
        })
        Name (VV12, Package (0x05)
        {
            0x06020003, 
            " +12 Voltage", 
            0x27D8, 
            0x35E8, 
            One
        })
        Name (VPAR, Package (0x04)
        {
            Package (0x03)
            {
                Zero, 
                One, 
                Zero
            }, 

            Package (0x03)
            {
                0x22, 
                0x22, 
                Zero
            }, 

            Package (0x03)
            {
                0x14, 
                0x0A, 
                Zero
            }, 

            Package (0x03)
            {
                0x3C, 
                0x0A, 
                Zero
            }
        })
        Name (VBUF, Package (0x05)
        {
            0x04, 
            CORV, 
            V3VV, 
            V5VV, 
            VV12
        })
        Method (VGET, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Return (^^SIOR.HWV0 ())
            }

            If (LEqual (Arg0, One))
            {
                Return (^^SIOR.HWV3 ())
            }

            If (LEqual (Arg0, 0x02))
            {
                Return (^^SIOR.HWV5 ())
            }

            If (LEqual (Arg0, 0x03))
            {
                Return (^^SIOR.HWV1 ())
            }
        }

        Name (CPUT, Package (0x05)
        {
            0x06030000, 
            "CPU Temperature", 
            0x0258, 
            0x03B6, 
            0x00010001
        })
        Name (MBTP, Package (0x05)
        {
            0x06030001, 
            "MB Temperature", 
            0x01C2, 
            0x03B6, 
            0x00010001
        })
        Name (TBUF, Package (0x03)
        {
            0x02, 
            CPUT, 
            MBTP
        })
        Method (TGET, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Return (^^SIOR.HWT1 ())
            }

            If (LEqual (Arg0, One))
            {
                Return (^^SIOR.HWT0 ())
            }
        }

        Name (CPUF, Package (0x05)
        {
            0x06040000, 
            "CPU FAN Speed", 
            0x0258, 
            0x1C20, 
            0x00010001
        })
        Name (CHAF, Package (0x05)
        {
            0x06040001, 
            "CHASSIS FAN Speed", 
            0x0258, 
            0x1C20, 
            0x00010001
        })
        Name (PWRF, Package (0x05)
        {
            0x06040002, 
            "POWER FAN Speed", 
            0x0258, 
            0x1C20, 
            0x00010001
        })
        Name (FBUF, Package (0x04)
        {
            0x03, 
            CPUF, 
            CHAF, 
            PWRF
        })
        Method (FGET, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Return (^^SIOR.HWF1 ())
            }

            If (LEqual (Arg0, One))
            {
                Return (^^SIOR.HWF2 ())
            }

            If (LEqual (Arg0, 0x02))
            {
                Return (^^SIOR.HWF0 ())
            }
        }

        Method (VSIF, 0, NotSerialized)
        {
            Return (VBUF) /* \_SB_.PCI0.SBRG.ASOC.VBUF */
        }

        Method (RVLT, 1, NotSerialized)
        {
            And (Arg0, 0xFFFF, Local0)
            Store (VGET (Local0), Local1)
            Store (DerefOf (Index (DerefOf (Index (VPAR, Local0)), Zero)), 
                Local2)
            Store (DerefOf (Index (DerefOf (Index (VPAR, Local0)), One)), 
                Local3)
            Store (DerefOf (Index (DerefOf (Index (VPAR, Local0)), 0x02)), 
                Local4)
            Multiply (Local1, Add (Local2, Local3), Local5)
            Divide (Local5, Local3, , Local5)
            Add (Local5, Local4, Local5)
            Return (Local5)
        }

        Method (SVLT, 1, NotSerialized)
        {
            And (DerefOf (Index (Arg0, Zero)), 0xFFFF, Local0)
            Store (DerefOf (Index (VBUF, Zero)), Local1)
            If (LGreaterEqual (Local0, Local1))
            {
                Return (Zero)
            }

            Increment (Local0)
            Store (DerefOf (Index (Arg0, One)), Index (DerefOf (Index (VBUF, 
                Local0)), One))
            Store (DerefOf (Index (Arg0, 0x02)), Index (DerefOf (Index (VBUF, 
                Local0)), 0x02))
            Store (DerefOf (Index (Arg0, 0x03)), Index (DerefOf (Index (VBUF, 
                Local0)), 0x03))
            Store (DerefOf (Index (Arg0, 0x04)), Index (DerefOf (Index (VBUF, 
                Local0)), 0x04))
            Return (One)
        }

        Method (TSIF, 0, NotSerialized)
        {
            Return (TBUF) /* \_SB_.PCI0.SBRG.ASOC.TBUF */
        }

        Method (RTMP, 1, NotSerialized)
        {
            And (Arg0, 0xFFFF, Local0)
            Store (TGET (Local0), Local1)
            Return (Local1)
        }

        Method (STMP, 1, NotSerialized)
        {
            Store (And (DerefOf (Index (Arg0, Zero)), 0xFFFF), Local0)
            Store (DerefOf (Index (TBUF, Zero)), Local1)
            If (LGreaterEqual (Local0, Local1))
            {
                Return (Zero)
            }

            Increment (Local0)
            Store (DerefOf (Index (Arg0, One)), Index (DerefOf (Index (TBUF, 
                Local0)), One))
            Store (DerefOf (Index (Arg0, 0x02)), Index (DerefOf (Index (TBUF, 
                Local0)), 0x02))
            Store (DerefOf (Index (Arg0, 0x03)), Index (DerefOf (Index (TBUF, 
                Local0)), 0x03))
            Store (DerefOf (Index (Arg0, 0x04)), Index (DerefOf (Index (TBUF, 
                Local0)), 0x04))
            Return (One)
        }

        Method (FSIF, 0, NotSerialized)
        {
            Return (FBUF) /* \_SB_.PCI0.SBRG.ASOC.FBUF */
        }

        Method (RFAN, 1, NotSerialized)
        {
            And (Arg0, 0xFFFF, Local0)
            Store (FGET (Local0), Local1)
            Return (Local1)
        }

        Method (SFAN, 1, NotSerialized)
        {
            And (DerefOf (Index (Arg0, Zero)), 0xFFFF, Local0)
            Store (DerefOf (Index (FBUF, Zero)), Local1)
            If (LGreaterEqual (Local0, Local1))
            {
                Return (Zero)
            }

            Increment (Local0)
            Store (DerefOf (Index (Arg0, One)), Index (DerefOf (Index (FBUF, 
                Local0)), One))
            Store (DerefOf (Index (Arg0, 0x02)), Index (DerefOf (Index (FBUF, 
                Local0)), 0x02))
            Store (DerefOf (Index (Arg0, 0x03)), Index (DerefOf (Index (FBUF, 
                Local0)), 0x03))
            Store (DerefOf (Index (Arg0, 0x04)), Index (DerefOf (Index (FBUF, 
                Local0)), 0x04))
            Store (DerefOf (Index (Arg0, 0x05)), Index (DerefOf (Index (FBUF, 
                Local0)), 0x05))
            Return (One)
        }
    }

    Scope (_SB)
    {
        Scope (PCI0)
        {
            Name (CRS, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, )
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0CF8,             // Length
                    ,, , TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, _Y11, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y12, AddressRangeMemory, TypeStatic)
            })
            CreateDWordField (CRS, \_SB.PCI0._Y11._MIN, MIN5)  // _MIN: Minimum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y11._MAX, MAX5)  // _MAX: Maximum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y11._LEN, LEN5)  // _LEN: Length
            CreateDWordField (CRS, \_SB.PCI0._Y12._MIN, MIN6)  // _MIN: Minimum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y12._MAX, MAX6)  // _MAX: Maximum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y12._LEN, LEN6)  // _LEN: Length
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Store (MG1L, Local0)
                If (Local0)
                {
                    Store (MG1B, MIN5) /* \_SB_.PCI0.MIN5 */
                    Store (MG1L, LEN5) /* \_SB_.PCI0.LEN5 */
                    Add (MIN5, Decrement (Local0), MAX5) /* \_SB_.PCI0.MAX5 */
                }

                Store (MG2B, MIN6) /* \_SB_.PCI0.MIN6 */
                Store (MG2L, LEN6) /* \_SB_.PCI0.LEN6 */
                Store (MG2L, Local0)
                Add (MIN6, Decrement (Local0), MAX6) /* \_SB_.PCI0.MAX6 */
                Return (CRS) /* \_SB_.PCI0.CRS_ */
            }
        }
    }

    Name (WOTB, Zero)
    Name (WSSB, Zero)
    Name (WAXB, Zero)
    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        Store (Arg0, DBG8) /* \DBG8 */
        PTS (Arg0)
        Store (Zero, Index (WAKP, Zero))
        Store (Zero, Index (WAKP, One))
        If (LAnd (LEqual (Arg0, 0x04), LEqual (OSFL (), 0x02)))
        {
            Sleep (0x0BB8)
        }

        Store (ASSB, WSSB) /* \WSSB */
        Store (AOTB, WOTB) /* \WOTB */
        Store (AAXB, WAXB) /* \WAXB */
        Store (Arg0, ASSB) /* \ASSB */
        Store (OSFL (), AOTB) /* \AOTB */
        Store (Zero, AAXB) /* \AAXB */
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        ShiftLeft (Arg0, 0x04, DBG8) /* \DBG8 */
        WAK (Arg0)
        If (IOWK) {}
        Else
        {
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        If (ASSB)
        {
            Store (WSSB, ASSB) /* \ASSB */
            Store (WOTB, AOTB) /* \AOTB */
            Store (WAXB, AAXB) /* \AAXB */
        }

        If (DerefOf (Index (WAKP, Zero)))
        {
            Store (Zero, Index (WAKP, One))
        }
        Else
        {
            Store (Arg0, Index (WAKP, One))
        }

        Return (WAKP) /* \WAKP */
    }

    OperationRegion (IORK, SystemIO, 0xB3, One)
    Field (IORK, ByteAcc, NoLock, Preserve)
    {
        IOWK,   8
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If (SS1)
    {
        Name (_S1, Package (0x04)  // _S1_: S1 System State
        {
            One, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS3)
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x05, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS4)
    {
        Name (_S4, Package (0x04)  // _S4_: S4 System State
        {
            0x06, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
    Method (PTS, 1, NotSerialized)
    {
        If (Arg0)
        {
            \_SB.PCI0.SBRG.SIOS (Arg0)
            \_SB.PCI0.SBRG.SPTS (Arg0)
            \_SB.PCI0.NPTS (Arg0)
        }
    }

    Method (WAK, 1, NotSerialized)
    {
        \_SB.PCI0.SBRG.SIOW (Arg0)
        \_SB.PCI0.SBRG.SWAK (Arg0)
        \_SB.PCI0.NWAK (Arg0)
    }
}

