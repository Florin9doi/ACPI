/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of DSDT.aml, Sat Jan 20 16:16:43 2018
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00009B28 (39720)
 *     Revision         0x02
 *     Checksum         0x21
 *     OEM ID           "DELL"
 *     OEM Table ID     "WN09"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20051117 (537202967)
 */
DefinitionBlock ("", "DSDT", 2, "DELL", "WN09", 0x00000000)
{
    /*
     * iASL Warning: There were 5 external control methods found during
     * disassembly, but only 3 were resolved (2 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_PR_.CPU0._PPC, IntObj)
    External (_SB_.PCI0.GFX0.DACE, FieldUnitObj)
    External (_SB_.PCI0.GFX0.HGNC, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.GFX0.HWID, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.IDAB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.SNXD, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.PEG0.PEGP.DD02, UnknownObj)
    External (_SB_.PCI0.WMI1, UnknownObj)
    External (CFGD, IntObj)
    External (HDOS, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (HNOT, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (PDC0, IntObj)
    External (PDC1, IntObj)
    External (PDC2, IntObj)
    External (PDC3, IntObj)
    External (PDC4, IntObj)
    External (PDC5, IntObj)
    External (PDC6, IntObj)
    External (PDC7, IntObj)

    Name (WSMI, 0x0D)
    Name (SMBS, 0x0580)
    Name (SMBL, 0x20)
    Name (PMBS, 0x0400)
    Name (PMLN, 0x80)
    Name (GPBS, 0x0500)
    Name (GPLN, 0x80)
    Name (SMIP, 0xB2)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (SMCR, 0x0430)
    Name (HPTB, 0xFED00000)
    Name (HPTC, 0xFED1F404)
    Name (FLSZ, 0x00280000)
    Name (SRCB, 0xFED1C000)
    Name (RCLN, 0x4000)
    Name (TCBR, 0xFED08000)
    Name (TCLT, 0x1000)
    Name (PEBS, 0xF8000000)
    Name (PELN, 0x04000000)
    Name (LAPB, 0xFEE00000)
    Name (EGPB, 0xFED19000)
    Name (MCHB, 0xFED10000)
    Name (VTBS, 0xFED90000)
    Name (VTLN, 0x4000)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (FUPS, 0x03)
    Name (BSH, Zero)
    Name (BEL, One)
    Name (BEH, 0x02)
    Name (BRH, 0x03)
    Name (BTF, 0x04)
    Name (BHC, 0x05)
    Name (BYB, 0x06)
    Name (BPH, 0x07)
    Name (BSHS, 0x08)
    Name (BELS, 0x09)
    Name (BRHS, 0x0A)
    Name (BTFS, 0x0B)
    Name (BEHS, 0x0C)
    Name (BPHS, 0x0D)
    Name (BTL, 0x10)
    Name (BSR, 0x14)
    Name (BOF, 0x20)
    Name (BEF, 0x21)
    Name (BLLE, 0x22)
    Name (BLLC, 0x23)
    Name (BLCA, 0x24)
    Name (BLLS, 0x25)
    Name (BLLP, 0x26)
    Name (BLLD, 0x27)
    Name (BHBE, 0x30)
    Name (BHBC, 0x31)
    Name (BHBN, 0x32)
    Name (BHBM, 0x33)
    Name (TRTP, One)
    Name (WDTE, One)
    Name (TRTD, 0x02)
    Name (TRTI, 0x03)
    Name (GCDD, One)
    Name (DSTA, 0x0A)
    Name (DSLO, 0x0C)
    Name (DSLC, 0x0E)
    Name (PITS, 0x10)
    Name (SBCS, 0x12)
    Name (SALS, 0x13)
    Name (LSSS, 0x2A)
    Name (SOOT, 0x35)
    Name (PDBR, 0x4D)
    Name (DSSP, Zero)
    Name (FHPP, One)
    Name (MBEC, Zero)
    Name (DLSS, One)
    Name (PEPM, One)
    Name (UBPO, 0x04)
    Name (SS1, One)
    Name (SS2, Zero)
    Name (SS3, One)
    Name (SS4, One)
    Name (IOST, 0x4400)
    Name (TOPM, 0x00000000)
    Name (ROMS, 0xFFE00000)
    Name (VGAF, One)
    OperationRegion (DEBU, SystemMemory, 0xCAFE7F98, 0x0002)
    Field (DEBU, AnyAcc, Lock, Preserve)
    {
        FSDA,   8, 
        FPPC,   8
    }

    OperationRegion (GNVS, SystemMemory, 0xCAFDCE18, 0x01A8)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P80D,   32, 
        LIDS,   8, 
        PWRS,   8, 
        DBGS,   8, 
        THOF,   8, 
        ACT1,   8, 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
        Offset (0x25), 
        REVN,   8, 
        Offset (0x28), 
        APIC,   8, 
        TCNT,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        C67L,   8, 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        CMCP,   8, 
        CIRP,   8, 
        SMSC,   8, 
        W381,   8, 
        SMC1,   8, 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        SSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        KSV0,   32, 
        KSV1,   8, 
        Offset (0x67), 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        Offset (0x6E), 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
        Offset (0x74), 
        MEFE,   8, 
        DSTS,   8, 
        Offset (0x78), 
        TPMP,   8, 
        TPME,   8, 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        BID,    8, 
        Offset (0xAA), 
        ASLB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        ITVF,   8, 
        ITVM,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        I409,   8, 
        I509,   8, 
        I609,   8, 
        I709,   8, 
        IPCF,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
        Offset (0xE1), 
        OSCC,   8, 
        NEXP,   8, 
        SBV1,   8, 
        SBV2,   8, 
        Offset (0xEB), 
        DSEN,   8, 
        ECON,   8, 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        VFN2,   8, 
        VFN3,   8, 
        VFN4,   8, 
        Offset (0x100), 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        EBAS,   32, 
        CPSP,   32, 
        EECP,   32, 
        EVCP,   32, 
        XBAS,   32, 
        OBS1,   32, 
        OBS2,   32, 
        OBS3,   32, 
        OBS4,   32, 
        OBS5,   32, 
        OBS6,   32, 
        OBS7,   32, 
        OBS8,   32, 
        Offset (0x157), 
        ATMC,   8, 
        PTMC,   8, 
        ATRA,   8, 
        PTRA,   8, 
        PNHM,   32, 
        TBAB,   32, 
        TBAH,   32, 
        RTIP,   8, 
        TSOD,   8, 
        ATPC,   8, 
        PTPC,   8, 
        PFLV,   8, 
        BREV,   8, 
        SGMD,   8, 
        SGFL,   8, 
        PWOK,   8, 
        HLRS,   8, 
        DSEL,   8, 
        ESEL,   8, 
        PSEL,   8, 
        PWEN,   8, 
        PRST,   8, 
        MXD1,   32, 
        MXD2,   32, 
        MXD3,   32, 
        MXD4,   32, 
        MXD5,   32, 
        MXD6,   32, 
        MXD7,   32, 
        MXD8,   32, 
        GBAS,   16, 
        Offset (0x19D), 
        ALFP,   8, 
        IMON,   8, 
        PDTS,   8, 
        PKGA,   8, 
        PAMT,   8, 
        AC0F,   8, 
        AC1F,   8, 
        DTS3,   8, 
        DTS4,   8, 
        RSV2,   8, 
        RSV3,   8
    }

    OperationRegion (EXBU, SystemMemory, 0xCAFE5018, 0x1046)
    Field (EXBU, AnyAcc, Lock, Preserve)
    {
        ECMD,   8, 
        WCMD,   32, 
        WDID,   32, 
        WBUF,   32768, 
        GPUF,   8, 
        VGAT,   8, 
        SMIB,   8, 
        THML,   8, 
        S3FL,   8, 
        QSB0,   16, 
        QSB1,   16, 
        QSB2,   16, 
        QSB3,   16, 
        QSB4,   16, 
        QSB5,   16, 
        QSB6,   16, 
        QSB7,   16, 
        BUF1,   16, 
        BUF2,   16, 
        WCCL,   16, 
        WCSE,   16, 
        WCA1,   32, 
        WCA2,   32, 
        WCA3,   32, 
        WCA4,   32, 
        WCR1,   32, 
        WCR2,   32, 
        WCR3,   32, 
        WCR4,   32
    }

    Scope (_SB)
    {
        Name (PR00, Package (0x22)
        {
            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                LNKD, 
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
                0x001FFFFF, 
                0x03, 
                LNKA, 
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
                0x001DFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                LNKC, 
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
                0x001AFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                LNKD, 
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
                0x0016FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                LNKB, 
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
            }, 

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
                0x0006FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }
        })
        Name (AR00, Package (0x22)
        {
            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                Zero, 
                0x13
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
                0x001FFFFF, 
                0x03, 
                Zero, 
                0x10
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
                0x10
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                Zero, 
                0x12
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
                0x001AFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                Zero, 
                0x13
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
                0x0016FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                Zero, 
                0x11
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
            }, 

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
                0x0006FFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x10
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
        Name (PR07, Package (0x04)
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
        Name (AR07, Package (0x04)
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
        Name (PR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
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
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR0F, Package (0x04)
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
        Name (AR0F, Package (0x04)
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
        Name (PR01, Package (0x04)
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
        Name (AR01, Package (0x04)
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
        Name (PR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
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
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR0B, Package (0x04)
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
        Name (AR0B, Package (0x04)
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
        Name (PR21, Package (0x04)
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
        Name (AR21, Package (0x04)
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
        Name (PR22, Package (0x04)
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
        Name (AR22, Package (0x04)
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
        Name (PR20, Package (0x14)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR20, Package (0x14)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                Zero, 
                0x15
            }
        })
        Name (PR03, Package (0x04)
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
        Name (AR03, Package (0x04)
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
        Name (PR0D, Package (0x04)
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
        Name (AR0D, Package (0x04)
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
        Name (PR11, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR11, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,10,11,12,14,15}
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
            Name (_HID, EisaId ("PNP0A08"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03"))  // _CID: Compatible ID
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
                    Return (AR00 ())
                }

                Return (PR00 ())
            }

            OperationRegion (HBUS, PCI_Config, Zero, 0x0100)
            Field (HBUS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x40), 
                EPEN,   1, 
                    ,   11, 
                EPBR,   20, 
                Offset (0x48), 
                MHEN,   1, 
                    ,   14, 
                MHBR,   17, 
                Offset (0x50), 
                GCLK,   1, 
                Offset (0x54), 
                D0EN,   1, 
                Offset (0x60), 
                PXEN,   1, 
                PXSZ,   2, 
                    ,   23, 
                PXBR,   6, 
                Offset (0x68), 
                DIEN,   1, 
                    ,   11, 
                DIBR,   20, 
                Offset (0x70), 
                    ,   20, 
                MEBR,   12, 
                Offset (0x80), 
                    ,   4, 
                PM0H,   2, 
                Offset (0x81), 
                PM1L,   2, 
                    ,   2, 
                PM1H,   2, 
                Offset (0x82), 
                PM2L,   2, 
                    ,   2, 
                PM2H,   2, 
                Offset (0x83), 
                PM3L,   2, 
                    ,   2, 
                PM3H,   2, 
                Offset (0x84), 
                PM4L,   2, 
                    ,   2, 
                PM4H,   2, 
                Offset (0x85), 
                PM5L,   2, 
                    ,   2, 
                PM5H,   2, 
                Offset (0x86), 
                PM6L,   2, 
                    ,   2, 
                PM6H,   2, 
                Offset (0x87), 
                Offset (0xA8), 
                    ,   20, 
                TUUD,   19, 
                Offset (0xBC), 
                    ,   20, 
                TLUD,   12, 
                Offset (0xC8), 
                    ,   7, 
                HTSE,   1
            }

            OperationRegion (MCHT, SystemMemory, 0xFED10000, 0x1100)
            Field (MCHT, ByteAcc, NoLock, Preserve)
            {
            }

            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, _Y00)
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000CF7,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000CF8,         // Length
                    ,, , TypeStatic, DenseTranslation)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000D00,         // Range Minimum
                    0x0000FFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000F300,         // Length
                    ,, , TypeStatic, DenseTranslation)
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
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y06, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y07, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y08, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y09, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000F0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00010000,         // Length
                    ,, _Y0D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0xFEAFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFEB00000,         // Length
                    ,, _Y0E, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED40000,         // Range Minimum
                    0xFED44FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00005000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUF0, \_SB.PCI0._Y00._MAX, PBMX)  // _MAX: Maximum Base Address
                Store (Subtract (ShiftRight (PELN, 0x14), 0x02), PBMX)
                CreateWordField (BUF0, \_SB.PCI0._Y00._LEN, PBLN)  // _LEN: Length
                Store (Subtract (ShiftRight (PELN, 0x14), One), PBLN)
                If (PM1L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y01._LEN, C0LN)  // _LEN: Length
                    Store (Zero, C0LN)
                }

                If (LEqual (PM1L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y01._RW, C0RW)  // _RW_: Read-Write Status
                    Store (Zero, C0RW)
                }

                If (PM1H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y02._LEN, C4LN)  // _LEN: Length
                    Store (Zero, C4LN)
                }

                If (LEqual (PM1H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y02._RW, C4RW)  // _RW_: Read-Write Status
                    Store (Zero, C4RW)
                }

                If (PM2L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y03._LEN, C8LN)  // _LEN: Length
                    Store (Zero, C8LN)
                }

                If (LEqual (PM2L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y03._RW, C8RW)  // _RW_: Read-Write Status
                    Store (Zero, C8RW)
                }

                If (PM2H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y04._LEN, CCLN)  // _LEN: Length
                    Store (Zero, CCLN)
                }

                If (LEqual (PM2H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y04._RW, CCRW)  // _RW_: Read-Write Status
                    Store (Zero, CCRW)
                }

                If (PM3L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y05._LEN, D0LN)  // _LEN: Length
                    Store (Zero, D0LN)
                }

                If (LEqual (PM3L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y05._RW, D0RW)  // _RW_: Read-Write Status
                    Store (Zero, D0RW)
                }

                If (PM3H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y06._LEN, D4LN)  // _LEN: Length
                    Store (Zero, D4LN)
                }

                If (LEqual (PM3H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y06._RW, D4RW)  // _RW_: Read-Write Status
                    Store (Zero, D4RW)
                }

                If (PM4L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y07._LEN, D8LN)  // _LEN: Length
                    Store (Zero, D8LN)
                }

                If (LEqual (PM4L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y07._RW, D8RW)  // _RW_: Read-Write Status
                    Store (Zero, D8RW)
                }

                If (PM4H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y08._LEN, DCLN)  // _LEN: Length
                    Store (Zero, DCLN)
                }

                If (LEqual (PM4H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y08._RW, DCRW)  // _RW_: Read-Write Status
                    Store (Zero, DCRW)
                }

                If (PM5L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y09._LEN, E0LN)  // _LEN: Length
                    Store (Zero, E0LN)
                }

                If (LEqual (PM5L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y09._RW, E0RW)  // _RW_: Read-Write Status
                    Store (Zero, E0RW)
                }

                If (PM5H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0A._LEN, E4LN)  // _LEN: Length
                    Store (Zero, E4LN)
                }

                If (LEqual (PM5H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0A._RW, E4RW)  // _RW_: Read-Write Status
                    Store (Zero, E4RW)
                }

                If (PM6L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0B._LEN, E8LN)  // _LEN: Length
                    Store (Zero, E8LN)
                }

                If (LEqual (PM6L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0B._RW, E8RW)  // _RW_: Read-Write Status
                    Store (Zero, E8RW)
                }

                If (PM6H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0C._LEN, ECLN)  // _LEN: Length
                    Store (Zero, ECLN)
                }

                If (LEqual (PM6H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0C._RW, ECRW)  // _RW_: Read-Write Status
                    Store (Zero, ECRW)
                }

                If (PM0H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0D._LEN, F0LN)  // _LEN: Length
                    Store (Zero, F0LN)
                }

                If (LEqual (PM0H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0D._RW, F0RW)  // _RW_: Read-Write Status
                    Store (Zero, F0RW)
                }

                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._LEN, M1LN)  // _LEN: Length
                ShiftLeft (TLUD, 0x14, M1MN)
                Add (Subtract (M1MX, M1MN), One, M1LN)
                Return (BUF0)
            }

            Name (GUID, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Name (SUPP, Zero)
                Name (CTRL, Zero)
                CreateDWordField (Arg3, Zero, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                If (LEqual (Arg0, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                {
                    Store (CDW2, SUPP)
                    Store (CDW3, CTRL)
                    If (LNotEqual (And (SUPP, 0x16), 0x16))
                    {
                        And (CTRL, 0x1E, CTRL)
                    }

                    If (LNot (PEHP))
                    {
                        And (CTRL, 0x1E, CTRL)
                    }

                    If (LNot (SHPC))
                    {
                        And (CTRL, 0x1D, CTRL)
                    }

                    If (LNot (PEPM))
                    {
                        And (CTRL, 0x1B, CTRL)
                    }

                    If (LNot (PEER))
                    {
                        And (CTRL, 0x15, CTRL)
                    }

                    If (LNot (PECS))
                    {
                        And (CTRL, 0x0F, CTRL)
                    }

                    If (LNotEqual (Arg1, One))
                    {
                        Or (CDW1, 0x08, CDW1)
                    }

                    If (LNotEqual (CDW3, CTRL))
                    {
                        Or (CDW1, 0x10, CDW1)
                    }

                    Store (CTRL, CDW3)
                    Return (Arg3)
                }
                Else
                {
                    Or (CDW1, 0x04, CDW1)
                    Return (Arg3)
                }
            }

            Scope (\_SB.PCI0)
            {
                Method (AR00, 0, NotSerialized)
                {
                    Return (^^AR00)
                }

                Method (PR00, 0, NotSerialized)
                {
                    Return (^^PR00)
                }

                Method (AR01, 0, NotSerialized)
                {
                    Return (^^AR01)
                }

                Method (PR01, 0, NotSerialized)
                {
                    Return (^^PR01)
                }

                Method (AR02, 0, NotSerialized)
                {
                    Return (^^AR02)
                }

                Method (PR02, 0, NotSerialized)
                {
                    Return (^^PR02)
                }

                Method (AR03, 0, NotSerialized)
                {
                    Return (^^AR03)
                }

                Method (PR03, 0, NotSerialized)
                {
                    Return (^^PR03)
                }

                Method (AR05, 0, NotSerialized)
                {
                    Return (^^AR05)
                }

                Method (PR05, 0, NotSerialized)
                {
                    Return (^^PR05)
                }

                Method (AR07, 0, NotSerialized)
                {
                    Return (^^AR07)
                }

                Method (PR07, 0, NotSerialized)
                {
                    Return (^^PR07)
                }

                Method (AR09, 0, NotSerialized)
                {
                    Return (^^AR09)
                }

                Method (PR09, 0, NotSerialized)
                {
                    Return (^^PR09)
                }

                Method (AR0B, 0, NotSerialized)
                {
                    Return (^^AR0B)
                }

                Method (PR0B, 0, NotSerialized)
                {
                    Return (^^PR0B)
                }

                Method (AR0D, 0, NotSerialized)
                {
                    Return (^^AR0D)
                }

                Method (PR0D, 0, NotSerialized)
                {
                    Return (^^PR0D)
                }

                Method (AR0F, 0, NotSerialized)
                {
                    Return (^^AR0F)
                }

                Method (PR0F, 0, NotSerialized)
                {
                    Return (^^PR0F)
                }

                Method (AR11, 0, NotSerialized)
                {
                    Return (^^AR11)
                }

                Method (PR11, 0, NotSerialized)
                {
                    Return (^^PR11)
                }

                Method (AR20, 0, NotSerialized)
                {
                    Return (^^AR20)
                }

                Method (PR20, 0, NotSerialized)
                {
                    Return (^^PR20)
                }

                Method (AR21, 0, NotSerialized)
                {
                    Return (^^AR21)
                }

                Method (PR21, 0, NotSerialized)
                {
                    Return (^^PR21)
                }

                Method (AR22, 0, NotSerialized)
                {
                    Return (^^AR22)
                }

                Method (PR22, 0, NotSerialized)
                {
                    Return (^^PR22)
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Scope (\_SB)
                {
                    OperationRegion (PCI0.LPCB.LPC1, PCI_Config, 0x40, 0xC0)
                    Field (PCI0.LPCB.LPC1, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x20), 
                        PARC,   8, 
                        PBRC,   8, 
                        PCRC,   8, 
                        PDRC,   8, 
                        Offset (0x28), 
                        PERC,   8, 
                        PFRC,   8, 
                        PGRC,   8, 
                        PHRC,   8
                    }

                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PARC, 0x80, PARC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSA)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLA, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PARC, 0x0F), IRQ0)
                            Return (RTLA)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PARC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PARC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKB)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x02)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PBRC, 0x80, PBRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSB)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLB, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PBRC, 0x0F), IRQ0)
                            Return (RTLB)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PBRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PBRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKC)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PCRC, 0x80, PCRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSC)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLC, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PCRC, 0x0F), IRQ0)
                            Return (RTLC)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PCRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PCRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKD)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PDRC, 0x80, PDRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSD)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLD, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PDRC, 0x0F), IRQ0)
                            Return (RTLD)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PDRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PDRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKE)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x05)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PERC, 0x80, PERC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSE)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLE, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PERC, 0x0F), IRQ0)
                            Return (RTLE)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PERC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PERC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKF)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x06)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PFRC, 0x80, PFRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSF)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLF, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PFRC, 0x0F), IRQ0)
                            Return (RTLF)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PFRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PFRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKG)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x07)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PGRC, 0x80, PGRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSG)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLG, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PGRC, 0x0F), IRQ0)
                            Return (RTLG)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PGRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PGRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKH)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x08)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PHRC, 0x80, PHRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSH)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLH, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PHRC, 0x0F), IRQ0)
                            Return (RTLH)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PHRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PHRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                }

                OperationRegion (LPC0, PCI_Config, 0x40, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x40), 
                    IOD0,   8, 
                    IOD1,   8, 
                    Offset (0xB0), 
                    RAEN,   1, 
                        ,   13, 
                    RCBA,   18
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x11,               // Length
                            )
                        IO (Decode16,
                            0x0093,             // Range Minimum
                            0x0093,             // Range Maximum
                            0x01,               // Alignment
                            0x0D,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103"))  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y0F)
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LGreaterEqual (OSYS, 0x07D1))
                        {
                            If (HPAE)
                            {
                                Return (0x0F)
                            }
                        }
                        ElseIf (HPAE)
                        {
                            Return (0x0B)
                        }

                        Return (Zero)
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (HPAE)
                        {
                            CreateDWordField (BUF0, \_SB.PCI0.LPCB.HPET._Y0F._BAS, HPT0)  // _BAS: Base Address
                            If (LEqual (HPAS, One))
                            {
                                Store (0xFED01000, HPT0)
                            }

                            If (LEqual (HPAS, 0x02))
                            {
                                Store (0xFED02000, HPT0)
                            }

                            If (LEqual (HPAS, 0x03))
                            {
                                Store (0xFED03000, HPT0)
                            }
                        }

                        Return (BUF0)
                    }
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x004E,             // Range Minimum
                            0x004E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x1000,             // Range Minimum
                            0x1000,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0x54,               // Length
                            )
                        IO (Decode16,
                            0x0458,             // Range Minimum
                            0x0458,             // Range Maximum
                            0x01,               // Alignment
                            0x28,               // Length
                            )
                        IO (Decode16,
                            0x0500,             // Range Minimum
                            0x0500,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x164E,             // Range Minimum
                            0x164E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (CWDT)
                {
                    Name (_HID, EisaId ("INT3F0D"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0454,             // Range Minimum
                            0x0454,             // Range Maximum
                            0x04,               // Alignment
                            0x04,               // Length
                            )
                    })
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (LEqual (WDTE, One))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Return (BUF0)
                    }
                }

                Device (COPR)
                {
                    Name (_HID, EisaId ("PNP0C04"))  // _HID: Hardware ID
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
            }

            Device (USB1)
            {
                Name (_ADR, 0x001D0001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x03, 0x03))
                }
            }

            Device (USB2)
            {
                Name (_ADR, 0x001D0002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x04, 0x03))
                }
            }

            Device (USB3)
            {
                Name (_ADR, 0x001D0003)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0C, 0x03))
                }
            }

            Device (USB4)
            {
                Name (_ADR, 0x001D0004)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0E, 0x03))
                }
            }

            Device (USB5)
            {
                Name (_ADR, 0x001A0001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x05, 0x03))
                }
            }

            Device (USB6)
            {
                Name (_ADR, 0x001A0002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x20, 0x03))
                }
            }

            Device (USB7)
            {
                Name (_ADR, 0x001A0003)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x25, 0x03))
                }
            }

            Device (B0D4)
            {
                Name (_ADR, 0x00040000)  // _ADR: Address
            }

            Device (RP01)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (One, PMSX)
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (Zero, Local0)
                            }
                        }

                        Notify (PXSX, 0x02)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR03 ())
                    }

                    Return (PR03 ())
                }
            }

            Device (RP02)
            {
                Name (_ADR, 0x001C0001)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (One, PMSX)
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (Zero, Local0)
                            }
                        }

                        Notify (PXSX, 0x02)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR05 ())
                    }

                    Return (PR05 ())
                }
            }

            Device (RP03)
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (One, PMSX)
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (Zero, Local0)
                            }
                        }

                        Notify (PXSX, 0x02)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR07 ())
                    }

                    Return (PR07 ())
                }
            }

            Device (RP04)
            {
                Name (_ADR, 0x001C0003)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (One, PMSX)
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (Zero, Local0)
                            }
                        }

                        Notify (PXSX, 0x02)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR09 ())
                    }

                    Return (PR09 ())
                }
            }

            Device (RP05)
            {
                Name (_ADR, 0x001C0004)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (One, PMSX)
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (Zero, Local0)
                            }
                        }

                        Notify (PXSX, 0x02)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0B ())
                    }

                    Return (PR0B ())
                }
            }

            Device (RP06)
            {
                Name (_ADR, 0x001C0005)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (One, PMSX)
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (Zero, Local0)
                            }
                        }

                        Notify (PXSX, 0x02)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0D ())
                    }

                    Return (PR0D ())
                }
            }

            Device (RP07)
            {
                Name (_ADR, 0x001C0006)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (One, PMSX)
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (Zero, Local0)
                            }
                        }

                        Notify (PXSX, 0x02)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0F ())
                    }

                    Return (PR0F ())
                }
            }

            Device (RP08)
            {
                Name (_ADR, 0x001C0007)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (One, PMSX)
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (Zero, Local0)
                            }
                        }

                        Notify (PXSX, 0x02)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR11 ())
                    }

                    Return (PR11 ())
                }
            }

            Device (PEG0)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR01 ())
                    }

                    Return (PR01 ())
                }

                Device (PEGP)
                {
                    Name (_ADR, 0xFFFF)  // _ADR: Address
                }
            }

            Device (PEG1)
            {
                Name (_ADR, 0x00010001)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR02 ())
                    }

                    Return (PR02 ())
                }
            }

            Device (PEG2)
            {
                Name (_ADR, 0x00010002)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR21 ())
                    }

                    Return (PR21 ())
                }
            }

            Device (PEG3)
            {
                Name (_ADR, 0x00060000)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR22 ())
                    }

                    Return (PR22 ())
                }
            }

            Device (BR20)
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
                        Return (AR20 ())
                    }

                    Return (PR20 ())
                }
            }
        }

        Scope (\_GPE)
        {
            Method (_L03, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB1, 0x02)
            }

            Method (_L04, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB2, 0x02)
            }

            Method (_L0C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB3, 0x02)
            }

            Method (_L0E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB4, 0x02)
            }

            Method (_L05, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB5, 0x02)
            }

            Method (_L20, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB6, 0x02)
            }

            Method (_L25, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB7, 0x02)
            }

            Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.BR20, 0x02)
            }
        }
    }

    Scope (\)
    {
        OperationRegion (IO_T, SystemIO, 0x1000, 0x10)
        Field (IO_T, ByteAcc, NoLock, Preserve)
        {
            TRPI,   16, 
            Offset (0x04), 
            Offset (0x06), 
            Offset (0x08), 
            TRP0,   8, 
            Offset (0x0A), 
            Offset (0x0B), 
            Offset (0x0C), 
            Offset (0x0D), 
            Offset (0x0E), 
            Offset (0x0F), 
            Offset (0x10)
        }

        OperationRegion (IO_D, SystemIO, 0x0810, 0x04)
        Field (IO_D, ByteAcc, NoLock, Preserve)
        {
            TRPD,   8
        }

        OperationRegion (IO_H, SystemIO, 0x1000, 0x04)
        Field (IO_H, ByteAcc, NoLock, Preserve)
        {
            TRPH,   8
        }

        OperationRegion (PMIO, SystemIO, PMBS, 0x80)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x20), 
            Offset (0x22), 
                ,   3, 
            GPS3,   1, 
            Offset (0x28), 
            Offset (0x2A), 
                ,   3, 
            GPE3,   1, 
            Offset (0x3C), 
                ,   1, 
            UPRW,   1, 
            Offset (0x42), 
                ,   1, 
            GPEC,   1, 
            Offset (0x64), 
                ,   9, 
            SCIS,   1, 
            Offset (0x66)
        }

        OperationRegion (GPIO, SystemIO, GPBS, 0x64)
        Field (GPIO, ByteAcc, NoLock, Preserve)
        {
            GU00,   8, 
            GU01,   8, 
            GU02,   8, 
            GU03,   8, 
            GIO0,   8, 
            GIO1,   8, 
            GIO2,   8, 
            GIO3,   8, 
            Offset (0x0C), 
            GL00,   8, 
            GL01,   8, 
            GL02,   8, 
                ,   3, 
            GP27,   1, 
            GP28,   1, 
            Offset (0x10), 
            Offset (0x18), 
            GB00,   8, 
            GB01,   8, 
            GB02,   8, 
            GB03,   8, 
            Offset (0x2C), 
            GIV0,   8, 
            GIV1,   8, 
            GIV2,   8, 
            GIV3,   8, 
            GU04,   8, 
            GU05,   8, 
            GU06,   8, 
            GU07,   8, 
            GIO4,   8, 
            GIO5,   8, 
            GIO6,   8, 
            GIO7,   8, 
            GL04,   8, 
            GL05,   8, 
            GL06,   8, 
            GL07,   8, 
            Offset (0x40), 
            GU08,   8, 
            GU09,   8, 
            GU0A,   8, 
            GU0B,   8, 
            GIO8,   8, 
            GIO9,   8, 
            GIOA,   8, 
            GIOB,   8, 
            GL08,   8, 
            GL09,   8, 
            GL0A,   8, 
            GL0B,   8
        }

        OperationRegion (RCRB, SystemMemory, SRCB, 0x4000)
        Field (RCRB, DWordAcc, Lock, Preserve)
        {
            Offset (0x1000), 
            Offset (0x3000), 
            Offset (0x3404), 
            HPAS,   2, 
                ,   5, 
            HPAE,   1, 
            Offset (0x3418), 
                ,   1, 
                ,   1, 
            SATD,   1, 
            SMBD,   1, 
            HDAD,   1, 
            Offset (0x341A), 
            RP1D,   1, 
            RP2D,   1, 
            RP3D,   1, 
            RP4D,   1, 
            RP5D,   1, 
            RP6D,   1, 
            RP7D,   1, 
            RP8D,   1, 
            Offset (0x359C), 
            UP0D,   1, 
            UP1D,   1, 
            UP2D,   1, 
            UP3D,   1, 
            UP4D,   1, 
            UP5D,   1, 
            UP6D,   1, 
            UP7D,   1, 
            UP8D,   1, 
            UP9D,   1, 
            UPAD,   1, 
            UPBD,   1, 
            UPCD,   1, 
            UPDD,   1, 
                ,   1, 
            Offset (0x359E)
        }
    }

    Scope (_SB.PCI0)
    {
        Device (HDEF)
        {
            Name (_ADR, 0x001B0000)  // _ADR: Address
            OperationRegion (HDAR, PCI_Config, 0x4C, 0x10)
            Field (HDAR, WordAcc, NoLock, Preserve)
            {
                DCKA,   1, 
                Offset (0x01), 
                DCKM,   1, 
                    ,   6, 
                DCKS,   1, 
                Offset (0x08), 
                    ,   15, 
                PMES,   1
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x0D, 0x04))
            }
        }

        Device (SAT0)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
        }

        Device (SAT1)
        {
            Name (_ADR, 0x001F0005)  // _ADR: Address
        }

        Device (SBUS)
        {
            Name (_ADR, 0x001F0003)  // _ADR: Address
            OperationRegion (SMBP, PCI_Config, 0x40, 0xC0)
            Field (SMBP, DWordAcc, NoLock, Preserve)
            {
                    ,   2, 
                I2CE,   1
            }

            OperationRegion (SMPB, PCI_Config, 0x20, 0x04)
            Field (SMPB, DWordAcc, NoLock, Preserve)
            {
                    ,   5, 
                SBAR,   11
            }

            OperationRegion (SMBI, SystemIO, ShiftLeft (SBAR, 0x05), 0x10)
            Field (SMBI, ByteAcc, NoLock, Preserve)
            {
                HSTS,   8, 
                Offset (0x02), 
                HCON,   8, 
                HCOM,   8, 
                TXSA,   8, 
                DAT0,   8, 
                DAT1,   8, 
                HBDR,   8, 
                PECR,   8, 
                RXSA,   8, 
                SDAT,   16
            }

            Method (SSXB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRXB, 1, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (0x44, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (DAT0)
                }

                Return (0xFFFF)
            }

            Method (SWRB, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (Arg2, DAT0)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (DAT0)
                }

                Return (0xFFFF)
            }

            Method (SWRW, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                And (Arg2, 0xFF, DAT1)
                And (ShiftRight (Arg2, 0x08), 0xFF, DAT0)
                Store (0x4C, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDW, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x4C, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (Or (ShiftLeft (DAT0, 0x08), DAT1))
                }

                Return (0xFFFFFFFF)
            }

            Method (SBLW, 4, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Arg3, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (SizeOf (Arg2), DAT0)
                Store (Zero, Local1)
                Store (DerefOf (Index (Arg2, Zero)), HBDR)
                Store (0x54, HCON)
                While (LGreater (SizeOf (Arg2), Local1))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Store (0x80, HSTS)
                    Increment (Local1)
                    If (LGreater (SizeOf (Arg2), Local1))
                    {
                        Store (DerefOf (Index (Arg2, Local1)), HBDR)
                    }
                }

                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SBLR, 3, Serialized)
            {
                Name (TBUF, Buffer (0x0100) {})
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Arg2, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x54, HCON)
                Store (0x0FA0, Local0)
                While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                {
                    Decrement (Local0)
                    Stall (0x32)
                }

                If (LNot (Local0))
                {
                    KILL ()
                    Return (Zero)
                }

                Store (DAT0, Index (TBUF, Zero))
                Store (0x80, HSTS)
                Store (One, Local1)
                While (LLess (Local1, DerefOf (Index (TBUF, Zero))))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Store (HBDR, Index (TBUF, Local1))
                    Store (0x80, HSTS)
                    Increment (Local1)
                }

                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (TBUF)
                }

                Return (Zero)
            }

            Method (STRT, 0, Serialized)
            {
                Store (0xC8, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x40))
                    {
                        Decrement (Local0)
                        Sleep (One)
                        If (LEqual (Local0, Zero))
                        {
                            Return (One)
                        }
                    }
                    Else
                    {
                        Store (Zero, Local0)
                    }
                }

                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, One))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                        If (LEqual (Local0, Zero))
                        {
                            KILL ()
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (COMP, 0, Serialized)
            {
                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Decrement (Local0)
                        Stall (0x32)
                        If (LEqual (Local0, Zero))
                        {
                            KILL ()
                        }
                    }
                }

                Return (Zero)
            }

            Method (KILL, 0, Serialized)
            {
                Or (HCON, 0x02, HCON)
                Or (HSTS, 0xFF, HSTS)
            }
        }
    }

    Scope (_SB.PCI0.SAT0)
    {
        Name (^NATA, Package (0x01)
        {
            0x001F0002
        })
        Name (\FZTF, Buffer (0x07)
        {
             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF5       
        })
        Name (REGF, One)
        Method (_REG, 2, NotSerialized)  // _REG: Region Availability
        {
            If (LEqual (Arg0, 0x02))
            {
                Store (Arg1, REGF)
            }
        }

        Name (TMD0, Buffer (0x14) {})
        CreateDWordField (TMD0, Zero, PIO0)
        CreateDWordField (TMD0, 0x04, DMA0)
        CreateDWordField (TMD0, 0x08, PIO1)
        CreateDWordField (TMD0, 0x0C, DMA1)
        CreateDWordField (TMD0, 0x10, CHNF)
        OperationRegion (CFG2, PCI_Config, 0x40, 0xC0)
        Field (CFG2, DWordAcc, NoLock, Preserve)
        {
            Offset (0x50), 
            MAPV,   2, 
                ,   4, 
            SAMS,   2
        }

        Device (PRT0)
        {
            Name (_ADR, 0xFFFF)  // _ADR: Address
            Name (GTF0, Buffer (0x07)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00       
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNotEqual (SAMS, Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                Name (FFS0, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00       
                })
                CreateByteField (FFS0, Zero, FF00)
                CreateByteField (FFS0, 0x06, FF06)
                Store (SMI (0xEE, Zero), Local0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    If (LNotEqual (Local0, Zero))
                    {
                        CreateWordField (Arg0, 0x64, W119)
                        CreateWordField (Arg0, 0x0134, W154)
                        CreateWordField (Arg0, 0x0138, W156)
                        If (And (LEqual (W154, 0x1028), LEqual (And (W156, 0x4000), 0x4000)))
                        {
                            If (LEqual (And (W156, 0x8000), Zero))
                            {
                                Store (0x5A, FF00)
                                Store (0xEF, FF06)
                            }
                        }
                        ElseIf (LEqual (And (W119, 0x20), 0x20))
                        {
                            If (LEqual (Local0, 0x83))
                            {
                                Store (0x41, FF00)
                            }
                            ElseIf (LEqual (Local0, 0x84))
                            {
                                Store (0xC1, FF00)
                            }

                            Store (0xEF, FF06)
                        }
                    }
                }

                Store (FFS0, GTF0)
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                Return (GTF0)
            }
        }

        Device (CHN0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
            {
                Store (0x78, PIO0)
                Store (0x14, DMA0)
                Store (0x78, PIO1)
                Store (0x14, DMA1)
                Or (CHNF, 0x05, CHNF)
                Return (TMD0)
            }

            Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
            {
            }

            Device (DRV0)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }

            Device (DRV1)
            {
                Name (_ADR, One)  // _ADR: Address
            }
        }

        Device (CHN1)
        {
            Name (_ADR, One)  // _ADR: Address
            Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
            {
                Store (0x78, PIO0)
                Store (0x14, DMA0)
                Store (0x78, PIO1)
                Store (0x14, DMA1)
                Store (Zero, CHNF)
                Or (CHNF, 0x05, CHNF)
                Return (TMD0)
            }

            Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
            {
            }

            Device (DRV0)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }

            Device (DRV1)
            {
                Name (_ADR, One)  // _ADR: Address
            }
        }
    }

    Scope (_SB.PCI0.SAT1)
    {
        Name (REGF, One)
        Method (_REG, 2, NotSerialized)  // _REG: Region Availability
        {
            If (LEqual (Arg0, 0x02))
            {
                Store (Arg1, REGF)
            }
        }

        Name (TMD0, Buffer (0x14) {})
        CreateDWordField (TMD0, Zero, PIO0)
        CreateDWordField (TMD0, 0x04, DMA0)
        CreateDWordField (TMD0, 0x08, PIO1)
        CreateDWordField (TMD0, 0x0C, DMA1)
        CreateDWordField (TMD0, 0x10, CHNF)
        Device (CHN0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
            {
                Store (0x78, PIO0)
                Store (0x14, DMA0)
                Store (0x78, PIO1)
                Store (0x14, DMA1)
                Store (One, CHNF)
                Return (TMD0)
            }

            Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
            {
            }

            Device (DRV0)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }

            Device (DRV1)
            {
                Name (_ADR, One)  // _ADR: Address
            }
        }

        Device (CHN1)
        {
            Name (_ADR, One)  // _ADR: Address
            Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
            {
                Store (0x78, PIO0)
                Store (0x14, DMA0)
                Store (0x78, PIO1)
                Store (0x14, DMA1)
                Store (One, CHNF)
                Return (TMD0)
            }

            Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
            {
            }

            Device (DRV0)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }

            Device (DRV1)
            {
                Name (_ADR, One)  // _ADR: Address
            }
        }
    }

    Scope (_SB.PCI0.LPCB)
    {
        OperationRegion (CPSB, SystemMemory, 0xCAFF4F98, 0x10)
        Field (CPSB, AnyAcc, NoLock, Preserve)
        {
            RTCX,   1, 
            SBB0,   7, 
            SBB1,   8, 
            SBB2,   8, 
            SBB3,   8, 
            SBB4,   8, 
            SBB5,   8, 
            SBB6,   8, 
            SBB7,   8, 
            SBB8,   8, 
            SBB9,   8, 
            SBBA,   8, 
            SBBB,   8, 
            SBBC,   8, 
            SBBD,   8, 
            SBBE,   8, 
            SBBF,   8
        }

        Method (SPTS, 1, NotSerialized)
        {
            Store (One, SLPX)
            Store (One, SLPE)
        }

        Method (SWAK, 1, NotSerialized)
        {
            Store (Zero, SLPE)
            If (RTCS) {}
            Else
            {
                Notify (PWRB, 0x02)
            }
        }

        OperationRegion (SMIE, SystemIO, PMBS, 0x04)
        Field (SMIE, ByteAcc, NoLock, Preserve)
        {
                ,   10, 
            RTCS,   1, 
                ,   3, 
            PEXS,   1, 
            WAKS,   1, 
            Offset (0x03), 
            PWBT,   1, 
            Offset (0x04)
        }

        OperationRegion (SLPR, SystemIO, SMCR, 0x08)
        Field (SLPR, ByteAcc, NoLock, Preserve)
        {
                ,   4, 
            SLPE,   1, 
                ,   31, 
            SLPX,   1, 
            Offset (0x08)
        }
    }

    Scope (_SB.PCI0.RP01)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP02)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP03)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP04)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP06)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP07)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP08)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    OperationRegion (_SB.PCI0.LPCB.LPCR, PCI_Config, 0x80, 0x04)
    Field (\_SB.PCI0.LPCB.LPCR, ByteAcc, NoLock, Preserve)
    {
        CADR,   3, 
            ,   1, 
        CBDR,   3, 
        Offset (0x01), 
        LTDR,   2, 
            ,   2, 
        FDDR,   1, 
            ,   2, 
        CALE,   1, 
        CBLE,   1, 
        LTLE,   1, 
        FDLE,   1, 
            ,   4, 
        GLLE,   1, 
        GHLE,   1, 
        KCLE,   1, 
        MCLE,   1, 
        C1LE,   1, 
        C2LE,   1, 
            ,   2
    }

    Method (UXDV, 1, NotSerialized)
    {
        Store (0xFF, Local0)
        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
        Store (Add (Arg0, Zero), _T_0)
        If (LEqual (_T_0, 0x03F8))
        {
            Store (Zero, Local0)
        }
        ElseIf (LEqual (_T_0, 0x02F8))
        {
            Store (One, Local0)
        }
        ElseIf (LEqual (_T_0, 0x0220))
        {
            Store (0x02, Local0)
        }
        ElseIf (LEqual (_T_0, 0x0228))
        {
            Store (0x03, Local0)
        }
        ElseIf (LEqual (_T_0, 0x0238))
        {
            Store (0x04, Local0)
        }
        ElseIf (LEqual (_T_0, 0x02E8))
        {
            Store (0x05, Local0)
        }
        ElseIf (LEqual (_T_0, 0x0338))
        {
            Store (0x06, Local0)
        }
        ElseIf (LEqual (_T_0, 0x03E8))
        {
            Store (0x07, Local0)
        }

        Return (Local0)
    }

    Method (RRIO, 4, NotSerialized)
    {
        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
        Store (Add (Arg0, Zero), _T_0)
        If (LEqual (_T_0, Zero))
        {
            Store (Zero, CALE)
            Store (UXDV (Arg2), Local0)
            If (LNotEqual (Local0, 0xFF))
            {
                Store (Local0, CADR)
            }

            If (Arg1)
            {
                Store (One, CALE)
            }
        }
        ElseIf (LEqual (_T_0, One))
        {
            Store (Zero, CBLE)
            Store (UXDV (Arg2), Local0)
            If (LNotEqual (Local0, 0xFF))
            {
                Store (Local0, CBDR)
            }

            If (Arg1)
            {
                Store (One, CBLE)
            }
        }
        ElseIf (LEqual (_T_0, 0x02))
        {
            Store (Zero, LTLE)
            If (LEqual (Arg2, 0x0378))
            {
                Store (Zero, LTDR)
            }

            If (LEqual (Arg2, 0x0278))
            {
                Store (One, LTDR)
            }

            If (LEqual (Arg2, 0x03BC))
            {
                Store (0x02, LTDR)
            }

            If (Arg1)
            {
                Store (One, LTLE)
            }
        }
        ElseIf (LEqual (_T_0, 0x03))
        {
            Store (Zero, FDLE)
            If (LEqual (Arg2, 0x03F0))
            {
                Store (Zero, FDDR)
            }

            If (LEqual (Arg2, 0x0370))
            {
                Store (One, FDDR)
            }

            If (Arg1)
            {
                Store (One, FDLE)
            }
        }
        ElseIf (LEqual (_T_0, 0x08))
        {
            If (LEqual (Arg2, 0x0200))
            {
                If (Arg1)
                {
                    Store (One, GLLE)
                }
                Else
                {
                    Store (Zero, GLLE)
                }
            }

            If (LEqual (Arg2, 0x0208))
            {
                If (Arg1)
                {
                    Store (One, GHLE)
                }
                Else
                {
                    Store (Zero, GHLE)
                }
            }
        }
        ElseIf (LEqual (_T_0, 0x09))
        {
            If (LEqual (Arg2, 0x0200))
            {
                If (Arg1)
                {
                    Store (One, GLLE)
                }
                Else
                {
                    Store (Zero, GLLE)
                }
            }

            If (LEqual (Arg2, 0x0208))
            {
                If (Arg1)
                {
                    Store (One, GHLE)
                }
                Else
                {
                    Store (Zero, GHLE)
                }
            }
        }
        ElseIf (LEqual (_T_0, 0x0A))
        {
            If (LOr (LEqual (Arg2, 0x60), LEqual (Arg2, 0x64)))
            {
                If (Arg1)
                {
                    Store (One, KCLE)
                }
                Else
                {
                    Store (Zero, KCLE)
                }
            }
        }
        ElseIf (LEqual (_T_0, 0x0B))
        {
            If (LOr (LEqual (Arg2, 0x62), LEqual (Arg2, 0x66)))
            {
                If (Arg1)
                {
                    Store (One, MCLE)
                }
                Else
                {
                    Store (Zero, MCLE)
                }
            }
        }
        ElseIf (LEqual (_T_0, 0x0C))
        {
            If (LEqual (Arg2, 0x2E))
            {
                If (Arg1)
                {
                    Store (One, C1LE)
                }
                Else
                {
                    Store (Zero, C1LE)
                }
            }

            If (LEqual (Arg2, 0x4E))
            {
                If (Arg1)
                {
                    Store (One, C2LE)
                }
                Else
                {
                    Store (Zero, C2LE)
                }
            }
        }
        ElseIf (LEqual (_T_0, 0x0D))
        {
            If (LEqual (Arg2, 0x2E))
            {
                If (Arg1)
                {
                    Store (One, C1LE)
                }
                Else
                {
                    Store (Zero, C1LE)
                }
            }

            If (LEqual (Arg2, 0x4E))
            {
                If (Arg1)
                {
                    Store (One, C2LE)
                }
                Else
                {
                    Store (Zero, C2LE)
                }
            }
        }
    }

    Method (RDMA, 3, NotSerialized)
    {
    }

    Scope (_SB.PCI0)
    {
        Method (NPTS, 1, NotSerialized)
        {
        }

        Method (NWAK, 1, NotSerialized)
        {
        }
    }

    Scope (_SB.PCI0.PEG0)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.PEG0.PEGP)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.PEG1)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.PEG2)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.PEG3)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0)
    {
        Device (GFX0)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            Method (PCPC, 0, NotSerialized)
            {
            }

            Method (PAPR, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
            {
                Store (And (Arg0, 0x07), DSEN)
                If (LEqual (And (Arg0, 0x03), Zero))
                {
                    If (CondRefOf (HDOS))
                    {
                        HDOS ()
                    }
                }
            }

            Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
            {
                If (CondRefOf (IDAB))
                {
                    IDAB ()
                }
                Else
                {
                    Store (Zero, NDID)
                    If (LNotEqual (DIDL, Zero))
                    {
                        Store (SDDL (DIDL), DID1)
                    }

                    If (LNotEqual (DDL2, Zero))
                    {
                        Store (SDDL (DDL2), DID2)
                    }

                    If (LNotEqual (DDL3, Zero))
                    {
                        Store (SDDL (DDL3), DID3)
                    }

                    If (LNotEqual (DDL4, Zero))
                    {
                        Store (SDDL (DDL4), DID4)
                    }

                    If (LNotEqual (DDL5, Zero))
                    {
                        Store (SDDL (DDL5), DID5)
                    }

                    If (LNotEqual (DDL6, Zero))
                    {
                        Store (SDDL (DDL6), DID6)
                    }

                    If (LNotEqual (DDL7, Zero))
                    {
                        Store (SDDL (DDL7), DID7)
                    }

                    If (LNotEqual (DDL8, Zero))
                    {
                        Store (SDDL (DDL8), DID8)
                    }
                }

                If (LEqual (NDID, One))
                {
                    Name (TMP1, Package (0x01)
                    {
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP1, Zero))
                    Return (TMP1)
                }

                If (LEqual (NDID, 0x02))
                {
                    Name (TMP2, Package (0x02)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP2, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP2, One))
                    Return (TMP2)
                }

                If (LEqual (NDID, 0x03))
                {
                    Name (TMP3, Package (0x03)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP3, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP3, One))
                    Store (Or (0x00010000, DID3), Index (TMP3, 0x02))
                    Return (TMP3)
                }

                If (LEqual (NDID, 0x04))
                {
                    Name (TMP4, Package (0x04)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP4, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP4, One))
                    Store (Or (0x00010000, DID3), Index (TMP4, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP4, 0x03))
                    Return (TMP4)
                }

                If (LEqual (NDID, 0x05))
                {
                    Name (TMP5, Package (0x05)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP5, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP5, One))
                    Store (Or (0x00010000, DID3), Index (TMP5, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP5, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP5, 0x04))
                    Return (TMP5)
                }

                If (LEqual (NDID, 0x06))
                {
                    Name (TMP6, Package (0x06)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP6, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP6, One))
                    Store (Or (0x00010000, DID3), Index (TMP6, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP6, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP6, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMP6, 0x05))
                    Return (TMP6)
                }

                If (LEqual (NDID, 0x07))
                {
                    Name (TMP7, Package (0x07)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP7, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP7, One))
                    Store (Or (0x00010000, DID3), Index (TMP7, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP7, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP7, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMP7, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMP7, 0x06))
                    Return (TMP7)
                }

                If (LEqual (NDID, 0x08))
                {
                    Name (TMP8, Package (0x08)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP8, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP8, One))
                    Store (Or (0x00010000, DID3), Index (TMP8, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP8, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP8, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMP8, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMP8, 0x06))
                    Store (Or (0x00010000, DID8), Index (TMP8, 0x07))
                    Return (TMP8)
                }

                If (LEqual (NDID, 0x09))
                {
                    If (CondRefOf (HWID))
                    {
                        Return (HWID ())
                    }
                }

                Return (Package (0x01)
                {
                    0x0400
                })
            }

            Device (DD01)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID1, Zero))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID1))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Return (CDDS (DID1))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (SGMD, One), CondRefOf (SNXD)))
                    {
                        Return (NXD1)
                    }

                    Return (NDDS (DID1))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD02)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID2, Zero))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID2))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (LIDS, Zero))
                    {
                        Return (Zero)
                    }

                    Return (CDDS (DID2))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (SGMD, One), CondRefOf (SNXD)))
                    {
                        Return (NXD2)
                    }

                    Return (NDDS (DID2))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }

                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    Return (Package (0x12)
                    {
                        0x64, 
                        0x1E, 
                        0x06, 
                        0x0C, 
                        0x12, 
                        0x18, 
                        0x1E, 
                        0x24, 
                        0x2A, 
                        0x30, 
                        0x36, 
                        0x3C, 
                        0x42, 
                        0x48, 
                        0x4E, 
                        0x54, 
                        0x5A, 
                        0x64
                    })
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    If (LAnd (LGreaterEqual (Arg0, Zero), LLessEqual (Arg0, 0x64)))
                    {
                        AINT (One, Arg0)
                        Store (Arg0, BRTL)
                    }
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    Return (BRTL)
                }
            }

            Device (DD03)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID3, Zero))
                    {
                        Return (0x03)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID3))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID3, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID3))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (SGMD, One), CondRefOf (SNXD)))
                    {
                        Return (NXD3)
                    }

                    Return (NDDS (DID3))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD04)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID4, Zero))
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID4))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID4, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID4))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (SGMD, One), CondRefOf (SNXD)))
                    {
                        Return (NXD4)
                    }

                    Return (NDDS (DID4))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD05)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID5, Zero))
                    {
                        Return (0x05)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID5))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID5, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID5))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (SGMD, One), CondRefOf (SNXD)))
                    {
                        If (LNot (LOr (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6))))
                        {
                            Return (NXD5)
                        }
                    }

                    Return (NDDS (DID5))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD06)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID6, Zero))
                    {
                        Return (0x06)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID6))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID6, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID6))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (SGMD, One), CondRefOf (SNXD)))
                    {
                        If (LNot (LOr (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6))))
                        {
                            Return (NXD6)
                        }
                    }

                    Return (NDDS (DID6))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD07)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID7, Zero))
                    {
                        Return (0x07)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID7))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID7, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID7))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (SGMD, One), CondRefOf (SNXD)))
                    {
                        If (LNot (LOr (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6))))
                        {
                            Return (NXD7)
                        }
                    }

                    Return (NDDS (DID7))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD08)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID8, Zero))
                    {
                        Return (0x08)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID8))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID8, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID8))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (SGMD, One), CondRefOf (SNXD)))
                    {
                        If (LNot (LOr (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6))))
                        {
                            Return (NXD8)
                        }
                    }

                    Return (NDDS (DID8))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Method (SDDL, 1, NotSerialized)
            {
                Increment (NDID)
                Store (And (Arg0, 0x0F0F), Local0)
                Or (0x80000000, Local0, Local1)
                If (LEqual (DIDL, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL2, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL3, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL4, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL5, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL6, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL7, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL8, Local0))
                {
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (CDDS, 1, NotSerialized)
            {
                Store (And (Arg0, 0x0F0F), Local0)
                If (LEqual (Zero, Local0))
                {
                    Return (0x1D)
                }

                If (LEqual (CADL, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL2, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL3, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL4, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL5, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL6, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL7, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL8, Local0))
                {
                    Return (0x1F)
                }

                Return (0x1D)
            }

            Method (NDDS, 1, NotSerialized)
            {
                Store (And (Arg0, 0x0F0F), Local0)
                If (LEqual (Zero, Local0))
                {
                    Return (Zero)
                }

                If (LEqual (NADL, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL2, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL3, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL4, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL5, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL6, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL7, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL8, Local0))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Scope (^^PCI0)
            {
                OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
                Field (MCHP, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    TASM,   10, 
                    Offset (0x62)
                }
            }

            OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
            Field (IGDP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x12), 
                    ,   1, 
                GIVD,   1, 
                    ,   2, 
                GUMA,   3, 
                Offset (0x14), 
                    ,   4, 
                GMFN,   1, 
                Offset (0x18), 
                Offset (0xA4), 
                ASLE,   8, 
                Offset (0xA8), 
                GSSE,   1, 
                GSSB,   14, 
                GSES,   1, 
                Offset (0xB0), 
                    ,   12, 
                CDVL,   1, 
                Offset (0xB2), 
                Offset (0xB5), 
                LBPC,   8, 
                Offset (0xBC), 
                ASLS,   32
            }

            OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
            Field (IGDM, AnyAcc, NoLock, Preserve)
            {
                SIGN,   128, 
                SIZE,   32, 
                OVER,   32, 
                SVER,   256, 
                VVER,   128, 
                GVER,   128, 
                MBOX,   32, 
                DMOD,   32, 
                Offset (0x100), 
                DRDY,   32, 
                CSTS,   32, 
                CEVT,   32, 
                Offset (0x120), 
                DIDL,   32, 
                DDL2,   32, 
                DDL3,   32, 
                DDL4,   32, 
                DDL5,   32, 
                DDL6,   32, 
                DDL7,   32, 
                DDL8,   32, 
                CPDL,   32, 
                CPL2,   32, 
                CPL3,   32, 
                CPL4,   32, 
                CPL5,   32, 
                CPL6,   32, 
                CPL7,   32, 
                CPL8,   32, 
                CADL,   32, 
                CAL2,   32, 
                CAL3,   32, 
                CAL4,   32, 
                CAL5,   32, 
                CAL6,   32, 
                CAL7,   32, 
                CAL8,   32, 
                NADL,   32, 
                NDL2,   32, 
                NDL3,   32, 
                NDL4,   32, 
                NDL5,   32, 
                NDL6,   32, 
                NDL7,   32, 
                NDL8,   32, 
                ASLP,   32, 
                TIDX,   32, 
                CHPD,   32, 
                CLID,   32, 
                CDCK,   32, 
                SXSW,   32, 
                EVTS,   32, 
                CNOT,   32, 
                NRDY,   32, 
                Offset (0x200), 
                SCIE,   1, 
                GEFC,   4, 
                GXFC,   3, 
                GESF,   8, 
                Offset (0x204), 
                PARM,   32, 
                DSLP,   32, 
                Offset (0x300), 
                ARDY,   32, 
                ASLC,   32, 
                TCHE,   32, 
                ALSI,   32, 
                BCLP,   32, 
                PFIT,   32, 
                CBLV,   32, 
                BCLM,   320, 
                CPFM,   32, 
                EPFM,   32, 
                PLUT,   592, 
                PFMB,   32, 
                CCDV,   32, 
                PCFT,   32, 
                Offset (0x400), 
                GVD1,   49152, 
                PHED,   32, 
                BDDC,   2048
            }

            Name (DBTB, Package (0x15)
            {
                Zero, 
                0x07, 
                0x38, 
                0x01C0, 
                0x0E00, 
                0x3F, 
                0x01C7, 
                0x0E07, 
                0x01F8, 
                0x0E38, 
                0x0FC0, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x7000, 
                0x7007, 
                0x7038, 
                0x71C0, 
                0x7E00
            })
            Name (CDCT, Package (0x05)
            {
                Package (0x02)
                {
                    0xE4, 
                    0x0140
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }, 

                Package (0x02)
                {
                    Zero, 
                    Zero
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }
            })
            Name (SUCC, One)
            Name (NVLD, 0x02)
            Name (CRIT, 0x04)
            Name (NCRT, 0x06)
            Method (GSCI, 0, Serialized)
            {
                Method (GBDA, 0, Serialized)
                {
                    If (LEqual (GESF, Zero))
                    {
                        Store (0x0679, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, One))
                    {
                        Store (0x0240, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x04))
                    {
                        And (PARM, 0xEFFF0000, PARM)
                        And (PARM, ShiftLeft (DerefOf (Index (DBTB, IBTT)), 0x10), PARM)
                        Or (IBTT, PARM, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x05))
                    {
                        Store (IPSC, PARM)
                        Or (PARM, ShiftLeft (IPAT, 0x08), PARM)
                        Add (PARM, 0x0100, PARM)
                        Or (PARM, ShiftLeft (LIDS, 0x10), PARM)
                        Add (PARM, 0x00010000, PARM)
                        Or (PARM, ShiftLeft (IBIA, 0x14), PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x06))
                    {
                        Store (ITVF, PARM)
                        Or (PARM, ShiftLeft (ITVM, 0x04), PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x07))
                    {
                        Store (GIVD, PARM)
                        XOr (PARM, One, PARM)
                        Or (PARM, ShiftLeft (GMFN, One), PARM)
                        Or (PARM, 0x1800, PARM)
                        Or (PARM, ShiftLeft (IDMS, 0x11), PARM)
                        Or (ShiftLeft (DerefOf (Index (DerefOf (Index (CDCT, HVCO)), CDVL)), 0x15), PARM, PARM)
                        Store (One, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0A))
                    {
                        Store (Zero, PARM)
                        If (ISSC)
                        {
                            Or (PARM, 0x03, PARM)
                        }

                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0B))
                    {
                        Store (KSV0, PARM)
                        Store (KSV1, GESF)
                        Return (SUCC)
                    }

                    Store (Zero, GESF)
                    Return (CRIT)
                }

                Method (SBCB, 0, Serialized)
                {
                    If (LEqual (GESF, Zero))
                    {
                        Store (Zero, PARM)
                        Store (0x000F87FD, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, One))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x03))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x04))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x05))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x06))
                    {
                        Store (And (PARM, 0x0F), ITVF)
                        Store (ShiftRight (And (PARM, 0xF0), 0x04), ITVM)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x07))
                    {
                        If (LEqual (PARM, Zero))
                        {
                            Store (CLID, Local0)
                            If (And (0x80000000, Local0))
                            {
                                And (CLID, 0x0F, CLID)
                                GLID (CLID)
                            }
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x08))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x09))
                    {
                        And (PARM, 0xFF, IBTT)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0A))
                    {
                        And (PARM, 0xFF, IPSC)
                        If (And (ShiftRight (PARM, 0x08), 0xFF))
                        {
                            And (ShiftRight (PARM, 0x08), 0xFF, IPAT)
                            Decrement (IPAT)
                        }

                        And (ShiftRight (PARM, 0x14), 0x07, IBIA)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0B))
                    {
                        And (ShiftRight (PARM, One), One, IF1E)
                        If (And (PARM, 0x0001E000))
                        {
                            And (ShiftRight (PARM, 0x0D), 0x0F, IDMS)
                        }
                        Else
                        {
                            And (ShiftRight (PARM, 0x11), 0x0F, IDMS)
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x10))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x11))
                    {
                        Store (ShiftLeft (LIDS, 0x08), PARM)
                        Add (PARM, 0x0100, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x12))
                    {
                        If (And (PARM, One))
                        {
                            If (LEqual (ShiftRight (PARM, One), One))
                            {
                                Store (One, ISSC)
                            }
                            Else
                            {
                                Store (Zero, GESF)
                                Return (CRIT)
                            }
                        }
                        Else
                        {
                            Store (Zero, ISSC)
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x13))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x14))
                    {
                        And (PARM, 0x0F, PAVP)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GEFC, 0x04))
                {
                    Store (GBDA (), GXFC)
                }

                If (LEqual (GEFC, 0x06))
                {
                    Store (SBCB (), GXFC)
                }

                Store (Zero, GEFC)
                Store (One, SCIS)
                Store (Zero, GSSE)
                Store (Zero, SCIE)
                Return (Zero)
            }

            Method (PDRD, 0, NotSerialized)
            {
                If (LNot (DRDY))
                {
                    Sleep (ASLP)
                }

                Return (LNot (DRDY))
            }

            Method (PSTS, 0, NotSerialized)
            {
                If (LGreater (CSTS, 0x02))
                {
                    Sleep (ASLP)
                }

                Return (LEqual (CSTS, 0x03))
            }

            Method (GNOT, 2, NotSerialized)
            {
                If (PDRD ())
                {
                    Return (One)
                }

                Store (Arg0, CEVT)
                Store (0x03, CSTS)
                If (LAnd (LEqual (CHPD, Zero), LEqual (Arg1, Zero)))
                {
                    If (LOr (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))
                    {
                        Notify (PCI0, Arg1)
                    }
                    Else
                    {
                        Notify (GFX0, Arg1)
                    }
                }

                If (LAnd (CondRefOf (HNOT), LNot (LOr (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))))
                {
                    HNOT (Arg0)
                }
                Else
                {
                    Notify (GFX0, 0x80)
                }

                Return (Zero)
            }

            Method (GHDS, 1, NotSerialized)
            {
                Store (Arg0, TIDX)
                Return (GNOT (One, Zero))
            }

            Method (GLID, 1, NotSerialized)
            {
                If (LEqual (Arg0, One))
                {
                    Store (0x03, CLID)
                }
                Else
                {
                    Store (Arg0, CLID)
                }

                Return (GNOT (0x02, Zero))
            }

            Method (GDCK, 1, NotSerialized)
            {
                Store (Arg0, CDCK)
                Return (GNOT (0x04, Zero))
            }

            Method (PARD, 0, NotSerialized)
            {
                If (LNot (ARDY))
                {
                    Sleep (ASLP)
                }

                Return (LNot (ARDY))
            }

            Method (AINT, 2, NotSerialized)
            {
                If (LNot (And (TCHE, ShiftLeft (One, Arg0))))
                {
                    Return (One)
                }

                If (PARD ())
                {
                    Return (One)
                }

                If (LEqual (Arg0, 0x02))
                {
                    If (CPFM)
                    {
                        And (CPFM, 0x0F, Local0)
                        And (EPFM, 0x0F, Local1)
                        If (LEqual (Local0, One))
                        {
                            If (And (Local1, 0x06))
                            {
                                Store (0x06, PFIT)
                            }
                            ElseIf (And (Local1, 0x08))
                            {
                                Store (0x08, PFIT)
                            }
                            Else
                            {
                                Store (One, PFIT)
                            }
                        }

                        If (LEqual (Local0, 0x06))
                        {
                            If (And (Local1, 0x08))
                            {
                                Store (0x08, PFIT)
                            }
                            ElseIf (And (Local1, One))
                            {
                                Store (One, PFIT)
                            }
                            Else
                            {
                                Store (0x06, PFIT)
                            }
                        }

                        If (LEqual (Local0, 0x08))
                        {
                            If (And (Local1, One))
                            {
                                Store (One, PFIT)
                            }
                            ElseIf (And (Local1, 0x06))
                            {
                                Store (0x06, PFIT)
                            }
                            Else
                            {
                                Store (0x08, PFIT)
                            }
                        }
                    }
                    Else
                    {
                        XOr (PFIT, 0x07, PFIT)
                    }

                    Or (PFIT, 0x80000000, PFIT)
                    Store (0x04, ASLC)
                }
                ElseIf (LEqual (Arg0, One))
                {
                    Store (Divide (Multiply (Arg1, 0xFF), 0x64, ), BCLP)
                    Or (BCLP, 0x80000000, BCLP)
                    Store (0x02, ASLC)
                }
                ElseIf (LEqual (Arg0, Zero))
                {
                    Store (Arg1, ALSI)
                    Store (One, ASLC)
                }
                Else
                {
                    Return (One)
                }

                Store (One, ASLE)
                Return (Zero)
            }

            Method (SCIP, 0, NotSerialized)
            {
                If (LNotEqual (OVER, Zero))
                {
                    Return (LNot (GSMI))
                }

                Return (Zero)
            }

            Device (^^MEM2)
            {
                Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
                Name (_UID, 0x02)  // _UID: Unique ID
                Name (CRS, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x20000000,         // Address Base
                        0x00200000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x40000000,         // Address Base
                        0x00200000,         // Address Length
                        )
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    If (IGDS)
                    {
                        Return (CRS)
                    }

                    Return (Buffer ()
                    {
                         0x00
                    })
                }
            }
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00000410, 0x06) {}
        Processor (CPU1, 0x02, 0x00000410, 0x06) {}
        Processor (CPU2, 0x03, 0x00000410, 0x06) {}
        Processor (CPU3, 0x04, 0x00000410, 0x06) {}
        Processor (CPU4, 0x05, 0x00000410, 0x06) {}
        Processor (CPU5, 0x06, 0x00000410, 0x06) {}
        Processor (CPU6, 0x07, 0x00000410, 0x06) {}
        Processor (CPU7, 0x08, 0x00000410, 0x06) {}
    }

    Mutex (MUTX, 0x00)
    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 2, Serialized)
    {
        If (LEqual (Arg0, Zero))
        {
            Store (Or (And (P80D, 0xFFFFFF00), Arg1), P80D)
        }

        If (LEqual (Arg0, One))
        {
            Store (Or (And (P80D, 0xFFFF00FF), ShiftLeft (Arg1, 0x08)), P80D)
        }

        If (LEqual (Arg0, 0x02))
        {
            Store (Or (And (P80D, 0xFF00FFFF), ShiftLeft (Arg1, 0x10)), P80D)
        }

        If (LEqual (Arg0, 0x03))
        {
            Store (Or (And (P80D, 0x00FFFFFF), ShiftLeft (Arg1, 0x18)), P80D)
        }

        Store (P80D, P80H)
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        Store (Arg0, GPIC)
        Store (Arg0, PICM)
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        Store (Zero, P80D)
        P8XH (Zero, Arg0)
        PTS (Arg0)
        If (LEqual (Arg0, 0x03))
        {
            If (LAnd (DTSE, LGreater (TCNT, One)))
            {
                TRAP (TRTD, 0x1E)
            }
        }

        If (LOr (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)), LEqual (Arg0, 0x05)))
        {
            If (LEqual (PFLV, FDTP))
            {
                Store (One, GP27)
            }
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        P8XH (One, 0xAB)
        WAK (Arg0)
        If (NEXP)
        {
            If (And (OSCC, 0x02))
            {
                \_SB.PCI0.NHPG ()
            }

            If (And (OSCC, 0x04))
            {
                \_SB.PCI0.NPME ()
            }
        }

        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            If (LAnd (DTSE, LGreater (TCNT, One)))
            {
                TRAP (TRTD, 0x14)
            }

            If (LEqual (OSYS, 0x07D2))
            {
                If (And (CFGD, One))
                {
                    If (LGreater (\_PR.CPU0._PPC, Zero))
                    {
                        Subtract (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                        Add (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                    }
                    Else
                    {
                        Add (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                        Subtract (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                    }
                }
            }

            If (LEqual (RP1D, Zero))
            {
                Notify (\_SB.PCI0.RP01, Zero)
            }

            If (LEqual (RP2D, Zero))
            {
                Notify (\_SB.PCI0.RP02, Zero)
            }

            If (LEqual (RP3D, Zero))
            {
                Notify (\_SB.PCI0.RP03, Zero)
            }

            If (LEqual (RP4D, Zero))
            {
                Notify (\_SB.PCI0.RP04, Zero)
            }

            If (LEqual (RP5D, Zero))
            {
                Notify (\_SB.PCI0.RP05, Zero)
            }

            If (LEqual (RP7D, Zero))
            {
                If (LEqual (DSTS, Zero))
                {
                    Notify (\_SB.PCI0.RP07, Zero)
                }
            }

            If (LEqual (RP8D, Zero))
            {
                If (LEqual (DSTS, Zero))
                {
                    Notify (\_SB.PCI0.RP08, Zero)
                }
            }
        }

        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Method (GETB, 3, Serialized)
    {
        Multiply (Arg0, 0x08, Local0)
        Multiply (Arg1, 0x08, Local1)
        CreateField (Arg2, Local0, Local1, TBF3)
        Return (TBF3)
    }

    Method (PNOT, 0, Serialized)
    {
        If (LGreater (TCNT, One))
        {
            If (And (PDC0, 0x08))
            {
                Notify (\_PR.CPU0, 0x80)
                If (And (PDC0, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU0, 0x81)
                }
            }

            If (And (PDC1, 0x08))
            {
                Notify (\_PR.CPU1, 0x80)
                If (And (PDC1, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU1, 0x81)
                }
            }

            If (And (PDC2, 0x08))
            {
                Notify (\_PR.CPU2, 0x80)
                If (And (PDC2, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU2, 0x81)
                }
            }

            If (And (PDC3, 0x08))
            {
                Notify (\_PR.CPU3, 0x80)
                If (And (PDC3, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU3, 0x81)
                }
            }

            If (And (PDC4, 0x08))
            {
                Notify (\_PR.CPU4, 0x80)
                If (And (PDC4, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU4, 0x81)
                }
            }

            If (And (PDC5, 0x08))
            {
                Notify (\_PR.CPU5, 0x80)
                If (And (PDC5, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU5, 0x81)
                }
            }

            If (And (PDC6, 0x08))
            {
                Notify (\_PR.CPU6, 0x80)
                If (And (PDC6, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU6, 0x81)
                }
            }

            If (And (PDC7, 0x08))
            {
                Notify (\_PR.CPU7, 0x80)
                If (And (PDC7, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU7, 0x81)
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80)
            Sleep (0x64)
            Notify (\_PR.CPU0, 0x81)
        }
    }

    Method (TRAP, 2, Serialized)
    {
        Store (Arg1, SMIF)
        If (LEqual (Arg0, TRTP))
        {
            Store (Zero, TRP0)
        }

        If (LEqual (Arg0, TRTD))
        {
            Store (Arg1, DTSF)
            Store (Zero, TRPD)
            Return (DTSF)
        }

        If (LEqual (Arg0, TRTI))
        {
            Store (Zero, TRPH)
        }

        Return (SMIF)
    }

    Scope (_SB.PCI0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (0x07D0, OSYS)
            If (CondRefOf (_OSI, Local0))
            {
                If (_OSI ("Linux"))
                {
                    Store (0x03E8, OSYS)
                }

                If (_OSI ("Windows 2001"))
                {
                    Store (0x07D1, OSYS)
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    Store (0x07D1, OSYS)
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    Store (0x07D2, OSYS)
                }

                If (_OSI ("Windows 2001.1"))
                {
                    Store (0x07D3, OSYS)
                }

                If (_OSI ("Windows 2006"))
                {
                    Store (0x07D6, OSYS)
                }

                If (_OSI ("Windows 2009"))
                {
                    Store (0x07D9, OSYS)
                }
            }
        }

        Method (NHPG, 0, Serialized)
        {
            Store (Zero, ^RP01.HPEX)
            Store (Zero, ^RP02.HPEX)
            Store (Zero, ^RP03.HPEX)
            Store (Zero, ^RP04.HPEX)
            Store (One, ^RP01.HPSX)
            Store (One, ^RP02.HPSX)
            Store (One, ^RP03.HPSX)
            Store (One, ^RP04.HPSX)
        }

        Method (NPME, 0, Serialized)
        {
            Store (Zero, ^RP01.PMEX)
            Store (Zero, ^RP02.PMEX)
            Store (Zero, ^RP03.PMEX)
            Store (Zero, ^RP04.PMEX)
            Store (Zero, ^RP05.PMEX)
            Store (Zero, ^RP07.PMEX)
            Store (Zero, ^RP08.PMEX)
            Store (One, ^RP01.PMSX)
            Store (One, ^RP02.PMSX)
            Store (One, ^RP03.PMSX)
            Store (One, ^RP04.PMSX)
            Store (One, ^RP05.PMSX)
            Store (One, ^RP07.PMSX)
            Store (One, ^RP08.PMSX)
        }
    }

    Scope (\)
    {
        Name (PICM, Zero)
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
                FindSetLeftBit (Local0, Index (PRWP, One))
            }

            Return (PRWP)
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y10)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00008000,         // Address Length
                    _Y12)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y13)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y14)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y15)
                Memory32Fixed (ReadWrite,
                    0xFED20000,         // Address Base
                    0x00020000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFED90000,         // Address Base
                    0x00004000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED45000,         // Address Base
                    0x0004B000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFF000000,         // Address Base
                    0x01000000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y11)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y10._BAS, RBR0)  // _BAS: Base Address
                ShiftLeft (^^LPCB.RCBA, 0x0E, RBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._BAS, TBR0)  // _BAS: Base Address
                Store (TBAB, TBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._LEN, TBLN)  // _LEN: Length
                If (LEqual (TBAB, Zero))
                {
                    Store (Zero, TBLN)
                }

                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y12._BAS, MBR0)  // _BAS: Base Address
                ShiftLeft (MHBR, 0x0F, MBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y13._BAS, DBR0)  // _BAS: Base Address
                ShiftLeft (DIBR, 0x0C, DBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y14._BAS, EBR0)  // _BAS: Base Address
                ShiftLeft (EPBR, 0x0C, EBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y15._BAS, XBR0)  // _BAS: Base Address
                ShiftLeft (PXBR, 0x1A, XBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y15._LEN, XSZ0)  // _LEN: Length
                ShiftRight (0x10000000, PXSZ, XSZ0)
                Return (BUF0)
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LEqual (RP1D, Zero))
            {
                \_SB.PCI0.RP01.HPME ()
                Notify (\_SB.PCI0.RP01, 0x02)
            }

            If (LEqual (RP2D, Zero))
            {
                \_SB.PCI0.RP02.HPME ()
                Notify (\_SB.PCI0.RP02, 0x02)
            }

            If (LEqual (RP3D, Zero))
            {
                \_SB.PCI0.RP03.HPME ()
                Notify (\_SB.PCI0.RP03, 0x02)
            }

            If (LEqual (RP4D, Zero))
            {
                \_SB.PCI0.RP04.HPME ()
                Notify (\_SB.PCI0.RP04, 0x02)
            }

            If (LEqual (RP5D, Zero))
            {
                \_SB.PCI0.RP05.HPME ()
                Notify (\_SB.PCI0.RP05, 0x02)
            }

            If (LEqual (RP7D, Zero))
            {
                \_SB.PCI0.RP07.HPME ()
                Notify (\_SB.PCI0.RP07, 0x02)
            }

            If (LEqual (RP8D, Zero))
            {
                \_SB.PCI0.RP08.HPME ()
                Notify (\_SB.PCI0.RP08, 0x02)
            }

            Notify (\_SB.PCI0.PEG0, 0x02)
            Notify (\_SB.PCI0.PEG0.PEGP, 0x02)
            Notify (\_SB.PCI0.PEG1, 0x02)
            Notify (\_SB.PCI0.PEG2, 0x02)
            Notify (\_SB.PCI0.PEG3, 0x02)
        }

        Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.EHC1, 0x02)
            Notify (\_SB.PCI0.EHC2, 0x02)
            Notify (\_SB.PCI0.HDEF, 0x02)
        }

        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Add (L01C, One, L01C)
            P8XH (Zero, One)
            P8XH (One, L01C)
            If (LAnd (LEqual (RP1D, Zero), \_SB.PCI0.RP01.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP01.PDCX)
                {
                    Store (One, \_SB.PCI0.RP01.PDCX)
                    Store (One, \_SB.PCI0.RP01.HPSX)
                    If (LNot (\_SB.PCI0.RP01.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP01.L0SE)
                    }

                    Notify (\_SB.PCI0.RP01, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP01.HPSX)
                }
            }

            If (LAnd (LEqual (RP2D, Zero), \_SB.PCI0.RP02.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP02.PDCX)
                {
                    Store (One, \_SB.PCI0.RP02.PDCX)
                    Store (One, \_SB.PCI0.RP02.HPSX)
                    If (LNot (\_SB.PCI0.RP02.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP02.L0SE)
                    }

                    Notify (\_SB.PCI0.RP02, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP02.HPSX)
                }
            }

            If (LAnd (LEqual (RP3D, Zero), \_SB.PCI0.RP03.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP03.PDCX)
                {
                    Store (One, \_SB.PCI0.RP03.PDCX)
                    Store (One, \_SB.PCI0.RP03.HPSX)
                    If (LNot (\_SB.PCI0.RP03.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP03.L0SE)
                    }

                    Notify (\_SB.PCI0.RP03, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP03.HPSX)
                }
            }

            If (LAnd (LEqual (RP4D, Zero), \_SB.PCI0.RP04.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP04.PDCX)
                {
                    Store (One, \_SB.PCI0.RP04.PDCX)
                    Store (One, \_SB.PCI0.RP04.HPSX)
                    If (LNot (\_SB.PCI0.RP04.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP04.L0SE)
                    }

                    Notify (\_SB.PCI0.RP04, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP04.HPSX)
                }
            }

            If (LAnd (LEqual (RP5D, Zero), \_SB.PCI0.RP05.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP05.PDCX)
                {
                    Store (One, \_SB.PCI0.RP05.PDCX)
                    Store (One, \_SB.PCI0.RP05.HPSX)
                    If (LNot (\_SB.PCI0.RP05.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP05.L0SE)
                    }

                    Notify (\_SB.PCI0.RP05, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP05.HPSX)
                }
            }

            If (LAnd (LEqual (RP7D, Zero), \_SB.PCI0.RP07.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP07.PDCX)
                {
                    Store (One, \_SB.PCI0.RP07.PDCX)
                    Store (One, \_SB.PCI0.RP07.HPSX)
                    If (LNot (\_SB.PCI0.RP07.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP07.L0SE)
                    }
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP07.HPSX)
                }
            }

            If (LAnd (LEqual (RP8D, Zero), \_SB.PCI0.RP08.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP08.PDCX)
                {
                    Store (One, \_SB.PCI0.RP08.PDCX)
                    Store (One, \_SB.PCI0.RP08.HPSX)
                    If (LNot (\_SB.PCI0.RP08.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP08.L0SE)
                    }

                    Notify (\_SB.PCI0.RP08, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP08.HPSX)
                }
            }
        }

        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LAnd (\_SB.PCI0.GFX0.GSSE, LNot (GSMI)))
            {
                \_SB.PCI0.GFX0.GSCI ()
            }
        }
    }

    Scope (_SB.PCI0.SAT0)
    {
        Device (PRT4)
        {
            Name (_ADR, 0x0004FFFF)  // _ADR: Address
            Method (GZPS, 1, NotSerialized)
            {
                SX10 ()
                SX30 (Arg0)
                SX11 ()
                Store (SX40 (), Local0)
                SX12 ()
                Return (Local0)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66")))
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Store (ToInteger (Arg2), _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                        Store (ToInteger (Arg1), _T_1)
                        If (LEqual (_T_1, One))
                        {
                            If (LEqual (PFLV, FDTP))
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                           
                                })
                            }

                            Return (Buffer (One)
                            {
                                 0x0F                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    ElseIf (LEqual (_T_0, One))
                    {
                        Store (GZPS (0x1D), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (_T_0, 0x02))
                    {
                        Store (Zero, GPE3)
                        If (LEqual (And (GL00, 0x08), 0x08))
                        {
                            Or (GIV0, 0x08, GIV0)
                        }
                        Else
                        {
                            And (GIV0, 0xF7, GIV0)
                        }

                        And (GL08, 0xEF, GL08)
                        Sleep (0xC8)
                        Store (One, GPS3)
                        Store (One, GPE3)
                        Return (One)
                    }
                    ElseIf (LEqual (_T_0, 0x03))
                    {
                        Store (Zero, GPE3)
                        Store (One, GPS3)
                        Or (GL08, 0x10, GL08)
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L13, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LEqual (PFLV, FDTP))
            {
                Return (Zero)
            }

            Store (Zero, GPE3)
            Or (GL08, 0x10, GL08)
            Notify (\_SB.PCI0.SAT0, 0x84)
            Return (Zero)
        }
    }

    Name (MISC, Buffer (0x07)
    {
         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00       
    })
    CreateByteField (MISC, Zero, MIS0)
    CreateByteField (MISC, One, MIS1)
    CreateByteField (MISC, 0x02, MIS2)
    CreateByteField (MISC, 0x03, MIS3)
    CreateByteField (MISC, 0x04, MIS4)
    CreateByteField (MISC, 0x06, MIS6)
    Name (FBST, Buffer (0x08)
    {
         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
    })
    CreateByteField (FBST, Zero, FF00)
    CreateByteField (FBST, One, FF01)
    CreateWordField (FBST, 0x02, FF02)
    CreateWordField (FBST, 0x04, FF04)
    CreateWordField (FBST, 0x06, FF06)
    Scope (_SB.PCI0)
    {
        Method (UCMD, 3, NotSerialized)
        {
            SX10 ()
            SX30 (0x0F)
            SX30 (Arg0)
            SX30 (Arg1)
            SX30 (Arg2)
            SX11 ()
            Store (SX40 (), Local0)
            SX12 ()
            Return (Local0)
        }

        Method (UPSW, 2, NotSerialized)
        {
            Return (UCMD (0x02, Arg0, Arg1))
        }

        Method (UPRW, 2, NotSerialized)
        {
            Return (UCMD (One, Arg0, Arg1))
        }

        Device (EHC2)
        {
            Name (_ADR, 0x001A0000)  // _ADR: Address
            Name (_S1D, 0x02)  // _S1D: S1 Device State
            Name (_S3D, 0x02)  // _S3D: S3 Device State
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Store (UPRW (Zero, 0x02), Local0)
                If (LEqual (Local0, 0x03))
                {
                    Return (Package (0x02)
                    {
                        0x0D, 
                        0x03
                    })
                }

                If (LEqual (Local0, One))
                {
                    Return (Package (0x02)
                    {
                        0x0D, 
                        One
                    })
                }

                Return (Package (0x02)
                {
                    0x0D, 
                    Zero
                })
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                UPSW (Arg0, 0x02)
            }

            Device (HUB7)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (RMCH)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package ()  // _PLD: Physical Location of Device
                    {
                        Buffer ()
                        {
                            /* 0000 */  0x00, 0x00, 0x00, 0x81, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */  0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00
                        }
                    })
                    Device (CH00)
                    {
                        Name (_ADR, One)  // _ADR: Address
                    }

                    Device (CH01)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                    }

                    Device (CH10)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                    }

                    Device (CH11)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package ()  // _PLD: Physical Location of Device
                        {
                            Buffer ()
                            {
                                /* 0000 */  0x00, 0x00, 0x00, 0x81, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                    }

                    Device (CH20)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package ()  // _PLD: Physical Location of Device
                        {
                            Buffer ()
                            {
                                /* 0000 */  0x00, 0x00, 0x00, 0x81, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                    }

                    Device (CH21)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Name (_EJD, "_SB.PCI0.RP08")  // _EJD: Ejection Dependent Device
                    }
                }
            }
        }

        Device (EHC1)
        {
            Name (_ADR, 0x001D0000)  // _ADR: Address
            Name (_S1D, 0x02)  // _S1D: S1 Device State
            Name (_S3D, 0x02)  // _S3D: S3 Device State
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Store (UPRW (Zero, 0x02), Local0)
                If (LEqual (Local0, 0x03))
                {
                    Return (Package (0x02)
                    {
                        0x0D, 
                        0x03
                    })
                }

                If (LEqual (Local0, One))
                {
                    Return (Package (0x02)
                    {
                        0x0D, 
                        One
                    })
                }

                Return (Package (0x02)
                {
                    0x0D, 
                    Zero
                })
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                UPSW (Arg0, 0x02)
            }

            Device (HUB7)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (RMCH)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package ()  // _PLD: Physical Location of Device
                    {
                        Buffer ()
                        {
                            /* 0000 */  0x00, 0x00, 0x00, 0x81, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */  0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00
                        }
                    })
                    Device (CH00)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package ()  // _PLD: Physical Location of Device
                        {
                            Buffer ()
                            {
                                /* 0000 */  0x00, 0x00, 0x00, 0x81, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                    }

                    Device (CH01)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                    }

                    Device (CH10)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package ()  // _PLD: Physical Location of Device
                        {
                            Buffer ()
                            {
                                /* 0000 */  0x00, 0x00, 0x00, 0x81, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                    }

                    Device (CH11)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package ()  // _PLD: Physical Location of Device
                        {
                            Buffer ()
                            {
                                /* 0000 */  0x00, 0x00, 0x00, 0x81, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                    }

                    Device (CH20)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package ()  // _PLD: Physical Location of Device
                        {
                            Buffer ()
                            {
                                /* 0000 */  0x00, 0x00, 0x00, 0x81, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                    }

                    Device (CH21)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package ()  // _PLD: Physical Location of Device
                        {
                            Buffer ()
                            {
                                /* 0000 */  0x00, 0x00, 0x00, 0x81, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                    }

                    Device (CH30)
                    {
                        Name (_ADR, 0x07)  // _ADR: Address
                    }

                    Device (CH31)
                    {
                        Name (_ADR, 0x08)  // _ADR: Address
                    }
                }
            }
        }
    }

    Scope (_SB.PCI0.RP05)
    {
        Device (XHCI)
        {
            Name (_ADR, Zero)  // _ADR: Address
            OperationRegion (XHPE, PCI_Config, Zero, 0x10)
            Field (XHPE, AnyAcc, NoLock, Preserve)
            {
                DID0,   32
            }
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            If (Ones)
            {
                Store (UPRW (Zero, 0x02), Local0)
                If (LEqual (Local0, 0x03))
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x03
                    })
                }

                If (LEqual (^XHCI.DID0, 0x01941033))
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        Zero
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x03
                    })
                }
            }
            Else
            {
                Return (GPRW (0x09, 0x03))
            }
        }
    }

    Scope (_SB.PCI0.LPCB)
    {
        Device (RMSC)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
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
                    0x1C,               // Length
                    )
                IO (Decode16,
                    0x0068,             // Range Minimum
                    0x0068,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
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
                Memory32Fixed (ReadWrite,
                    0xFE800000,         // Address Base
                    0x00003000,         // Address Length
                    )
            })
            OperationRegion (MBOX, SystemMemory, 0xFE800000, 0x2000)
            Field (MBOX, ByteAcc, Lock, Preserve)
            {
                Offset (0x01), 
                ENTF,   8, 
                Offset (0x1001), 
                MBX0,   8, 
                MBX1,   8, 
                MBX2,   8, 
                MBX3,   8, 
                MBX4,   8, 
                MBX5,   8, 
                MBX6,   8, 
                MBX7,   8, 
                MBX8,   8, 
                MBX9,   8
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (CRS)
            }
        }

        Device (PS2)
        {
            Name (_HID, EisaId ("DLL04B0"))  // _HID: Hardware ID
            Name (_CID, Package (0x03)  // _CID: Compatible ID
            {
                EisaId ("SYN0600"), 
                EisaId ("SYN0002"), 
                EisaId ("PNP0F13")
            })
            Name (CRS, ResourceTemplate ()
            {
                IRQNoFlags ()
                    {12}
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (CRS)
            }
        }

        Device (KBC)
        {
            Name (_HID, EisaId ("PNP0303"))  // _HID: Hardware ID
            Name (ECNT, Zero)
            Name (DAHA, Buffer (0x03)
            {
                 0x00, 0x00, 0x55                               
            })
            CreateByteField (DAHA, Zero, DCK0)
            CreateByteField (DAHA, One, DCK1)
            CreateByteField (DAHA, 0x02, DCK2)
            Name (CRS, ResourceTemplate ()
            {
                IO (Decode16,
                    0x0060,             // Range Minimum
                    0x0060,             // Range Maximum
                    0x10,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0064,             // Range Minimum
                    0x0064,             // Range Maximum
                    0x04,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0062,             // Range Minimum
                    0x0062,             // Range Maximum
                    0x02,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0066,             // Range Minimum
                    0x0066,             // Range Maximum
                    0x06,               // Alignment
                    0x01,               // Length
                    )
                IRQNoFlags ()
                    {1}
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (CRS)
            }

            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                Store (One, ^^^GFX0.CLID)
            }

            OperationRegion (MMBX, SystemMemory, 0xFE800000, 0x2000)
            Field (MMBX, AnyAcc, Lock, Preserve)
            {
                Offset (0x1000), 
                MZ00,   8, 
                MZ01,   8, 
                MZ02,   8, 
                MZ03,   32, 
                MZ04,   32, 
                MZ05,   32, 
                MZ06,   32, 
                MZ07,   32, 
                MZ08,   32, 
                Offset (0x104B), 
                MZ09,   32, 
                MZ10,   32
            }

            Method (ECRB, 1, NotSerialized)
            {
                Store (Zero, Local0)
                If (LEqual (Arg0, Zero))
                {
                    Store (MZ00, Local0)
                }
                ElseIf (LEqual (Arg0, One))
                {
                    Store (MZ01, Local0)
                }
                ElseIf (LEqual (Arg0, 0x02))
                {
                    Store (MZ02, Local0)
                }
                ElseIf (LEqual (Arg0, 0x03))
                {
                    Store (MZ03, Local0)
                }
                ElseIf (LEqual (Arg0, 0x04))
                {
                    Store (MZ04, Local0)
                }
                ElseIf (LEqual (Arg0, 0x05))
                {
                    Store (MZ05, Local0)
                }
                ElseIf (LEqual (Arg0, 0x06))
                {
                    Store (MZ06, Local0)
                }
                ElseIf (LEqual (Arg0, 0x07))
                {
                    Store (MZ07, Local0)
                }
                ElseIf (LEqual (Arg0, 0x08))
                {
                    Store (MZ08, Local0)
                }
                ElseIf (LEqual (Arg0, 0x09))
                {
                    Store (MZ09, Local0)
                }
                ElseIf (LEqual (Arg0, 0x0A))
                {
                    Store (MZ10, Local0)
                }

                Return (Local0)
            }

            Method (ECWB, 2, NotSerialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    Store (Arg1, MZ00)
                }
                ElseIf (LEqual (Arg0, One))
                {
                    Store (Arg1, MZ01)
                }
                ElseIf (LEqual (Arg0, 0x02))
                {
                    Store (Arg1, MZ02)
                }
                ElseIf (LEqual (Arg0, 0x03))
                {
                    Store (Arg1, MZ03)
                }
                ElseIf (LEqual (Arg0, 0x05))
                {
                    Store (Arg1, MZ04)
                }
                ElseIf (LEqual (Arg0, 0x04))
                {
                    Store (Arg1, MZ10)
                }
            }

            Method (WATK, 2, NotSerialized)
            {
                Store (0x01F4, ECNT)
                While (ECNT)
                {
                    If (LEqual (ECRB (Arg0), Arg1))
                    {
                        Break
                    }

                    Sleep (One)
                    Decrement (ECNT)
                }
            }

            Method (PCA1, 2, NotSerialized)
            {
                If (LEqual (NSMI, Zero))
                {
                    ECWB (0x03, Arg1)
                    ECWB (One, Arg0)
                    WATK (0x0A, DCK2)
                    WATK (One, DCK0)
                    ECWB (0x04, Zero)
                    WATK (0x0A, DCK1)
                }
            }

            Method (PCA2, 2, NotSerialized)
            {
                SX10 ()
                If (LEqual (NSMI, Zero))
                {
                    ECWB (0x03, Arg1)
                    ECWB (One, Arg0)
                    WATK (0x0A, DCK2)
                    WATK (One, DCK0)
                    ECWB (0x04, Zero)
                    WATK (0x0A, DCK1)
                }

                SX12 ()
            }

            Method (PCA5, 3, NotSerialized)
            {
                SX10 ()
                If (LEqual (NSMI, Zero))
                {
                    ECWB (0x05, Arg2)
                    ECWB (0x03, Arg1)
                    ECWB (One, Arg0)
                    WATK (0x0A, DCK2)
                    WATK (One, DCK0)
                    ECWB (0x04, Zero)
                    WATK (0x0A, DCK1)
                }

                SX12 ()
            }
        }
    }

    Scope (_SB)
    {
        OperationRegion (SMIR, SystemIO, 0xB2, 0x02)
        Field (SMIR, ByteAcc, NoLock, Preserve)
        {
            SMII,   8, 
            SMID,   8
        }

        OperationRegion (SMR2, SystemIO, 0x86, One)
        Field (SMR2, ByteAcc, NoLock, Preserve)
        {
            SMIA,   8
        }
    }

    Mutex (SMIX, 0x01)
    Method (SMI, 2, NotSerialized)
    {
        Acquire (SMIX, 0xFFFF)
        Store (Arg1, SMIB)
        Store (Arg0, \_SB.SMII)
        Store (SMIB, Local1)
        Release (SMIX)
        Return (Local1)
    }

    Name (SXX0, Buffer (0x0100) {})
    Name (SXX1, Buffer (0x08) {})
    Name (NSMI, Zero)
    CreateWordField (SXX1, Zero, SXX2)
    CreateWordField (SXX1, 0x04, SXX3)
    Method (SX10, 0, NotSerialized)
    {
        Acquire (SMIX, 0xFFFF)
        Store (Zero, SXX2)
        If (LEqual (\_SB.PCI0.LPCB.RMSC.ENTF, Zero))
        {
            Store (Zero, NSMI)
        }
        Else
        {
            Store (One, NSMI)
        }
    }

    Method (SX30, 1, NotSerialized)
    {
        If (LEqual (NSMI, Zero))
        {
            Store (SXX2, Local0)
            Increment (Local0)
            If (LLessEqual (Local0, SizeOf (SXX0)))
            {
                CreateByteField (SXX0, SXX2, SX20)
                Store (Arg0, SX20)
                Store (Local0, SXX2)
            }
        }
    }

    Method (SX31, 1, NotSerialized)
    {
        If (LEqual (NSMI, Zero))
        {
            Store (SXX2, Local0)
            Add (Local0, 0x02, Local0)
            If (LLessEqual (Local0, SizeOf (SXX0)))
            {
                CreateWordField (SXX0, SXX2, SX21)
                Store (Arg0, SX21)
                Store (Local0, SXX2)
            }
        }
    }

    Method (SX32, 1, NotSerialized)
    {
        If (LEqual (NSMI, Zero))
        {
            Store (SXX2, Local0)
            Add (Local0, 0x04, Local0)
            If (LLessEqual (Local0, SizeOf (SXX0)))
            {
                CreateDWordField (SXX0, SXX2, SX22)
                Store (Arg0, SX22)
                Store (Local0, SXX2)
            }
        }
    }

    Method (SX33, 2, NotSerialized)
    {
        If (LEqual (NSMI, Zero))
        {
            If (LLess (Arg1, SizeOf (Arg0)))
            {
                CreateByteField (Arg0, Arg1, SX20)
                SX30 (SX20)
            }
        }
    }

    Method (SX34, 2, NotSerialized)
    {
        If (LEqual (NSMI, Zero))
        {
            Store (Zero, Local0)
            While (LLess (Local0, Arg1))
            {
                SX33 (Arg0, Local0)
                Increment (Local0)
            }
        }
    }

    Method (SXX6, 2, NotSerialized)
    {
        Store (Arg1, SMIB)
        Store (Arg0, \_SB.SMII)
        Return (SMIB)
    }

    Method (SXX5, 2, NotSerialized)
    {
        If (LLess (Arg1, SizeOf (Arg0)))
        {
            CreateByteField (Arg0, Arg1, SX20)
            SXX6 (0x7C, SX20)
        }
    }

    Method (SXX4, 0, NotSerialized)
    {
        SXX6 (0x7B, Zero)
        Store (Zero, Local0)
        While (LLess (Local0, SXX2))
        {
            SXX5 (SXX0, Local0)
            Increment (Local0)
        }
    }

    Method (SXX8, 2, NotSerialized)
    {
        If (LLess (Arg1, SizeOf (Arg0)))
        {
            CreateByteField (Arg0, Arg1, SX20)
            Store (SXX6 (0x7D, Zero), SX20)
        }
    }

    Method (SXX7, 0, NotSerialized)
    {
        Store (Zero, Local0)
        While (LLess (Local0, SXX3))
        {
            Add (SXX2, Local0, Local1)
            SXX8 (SXX0, Local1)
            Increment (Local0)
        }
    }

    Method (SX11, 0, NotSerialized)
    {
        If (LEqual (NSMI, Zero))
        {
            SXX4 ()
            Store (SXX6 (0x79, Zero), SXX3)
            Add (SXX2, SXX3, Local0)
            If (LLess (SizeOf (SXX0), Local0))
            {
                Store (SizeOf (SXX0), Local0)
                Subtract (Local0, SXX2, Local0)
                Store (Local0, SXX3)
            }

            SXX7 ()
        }
    }

    Method (SX40, 0, NotSerialized)
    {
        If (LEqual (NSMI, Zero))
        {
            Store (SXX2, Local0)
            Increment (Local0)
            If (LLessEqual (Local0, SizeOf (SXX0)))
            {
                CreateByteField (SXX0, SXX2, SX20)
                Store (Local0, SXX2)
                Return (SX20)
            }
        }

        Return (Zero)
    }

    Method (SX41, 0, NotSerialized)
    {
        If (LEqual (NSMI, Zero))
        {
            Store (SXX2, Local0)
            Add (Local0, 0x02, Local0)
            If (LLessEqual (Local0, SizeOf (SXX0)))
            {
                CreateWordField (SXX0, SXX2, SX21)
                Store (Local0, SXX2)
                Return (SX21)
            }
        }

        Return (Zero)
    }

    Method (SX42, 0, NotSerialized)
    {
        If (LEqual (NSMI, Zero))
        {
            Store (SXX2, Local0)
            Add (Local0, 0x04, Local0)
            If (LLessEqual (Local0, SizeOf (SXX0)))
            {
                CreateDWordField (SXX0, SXX2, SX22)
                Store (Local0, SXX2)
                Return (SX22)
            }
        }

        Return (Zero)
    }

    Method (SX43, 2, NotSerialized)
    {
        If (LEqual (NSMI, Zero))
        {
            If (LLess (Arg1, SizeOf (Arg0)))
            {
                CreateByteField (Arg0, Arg1, SX20)
                Store (SX40 (), SX20)
            }
        }
    }

    Method (SX44, 2, NotSerialized)
    {
        If (LEqual (NSMI, Zero))
        {
            Store (Zero, Local0)
            While (LLess (Local0, Arg1))
            {
                SX43 (Arg0, Local0)
                Increment (Local0)
            }
        }
    }

    Method (SX45, 0, NotSerialized)
    {
        If (LEqual (NSMI, Zero))
        {
            Store (SX40 (), Local0)
            Name (SX23, Buffer (Local0) {})
            SX44 (SX23, Local0)
            Return (SX23)
        }

        Return (Zero)
    }

    Method (SX12, 0, NotSerialized)
    {
        Release (SMIX)
    }

    Name (W98S, "Microsoft Windows")
    Name (NT5S, "Microsoft Windows NT")
    Name (WINM, "Microsoft WindowsME: Millennium Edition")
    Name (WXP, "Windows 2001")
    Name (WLG, "Windows 2006")
    Name (WIN7, "Windows 2009")
    Name (LNX, "Linux")
    Method (GETZ, 2, NotSerialized)
    {
        CreateByteField (Arg0, Arg1, TCHR)
        Return (TCHR)
    }

    Method (STRE, 2, NotSerialized)
    {
        Name (STR1, Buffer (0x50) {})
        Name (STR2, Buffer (0x50) {})
        Store (Arg0, STR1)
        Store (Arg1, STR2)
        Store (Zero, Local0)
        Store (One, Local1)
        While (Local1)
        {
            Store (GETZ (STR1, Local0), Local1)
            Store (GETZ (STR2, Local0), Local2)
            If (LNotEqual (Local1, Local2))
            {
                Return (Zero)
            }

            Increment (Local0)
        }

        Return (One)
    }

    Method (OSID, 0, NotSerialized)
    {
        If (LEqual (MIS3, Zero))
        {
            Store (One, MIS3)
            If (CondRefOf (_OSI, Local0))
            {
                If (_OSI (WXP))
                {
                    Store (0x10, MIS3)
                }

                If (_OSI (WLG))
                {
                    Store (0x20, MIS3)
                }

                If (_OSI (WIN7))
                {
                    Store (0x80, MIS3)
                }

                If (_OSI (LNX))
                {
                    Store (0x40, MIS3)
                }
            }
            Else
            {
                If (STRE (_OS, W98S))
                {
                    Store (0x02, MIS3)
                }

                If (STRE (_OS, NT5S))
                {
                    Store (0x08, MIS3)
                }

                If (STRE (_OS, WINM))
                {
                    Store (0x04, MIS3)
                }
            }
        }

        Store (MIS3, OSYS)
        Return (MIS3)
    }

    Method (SOST, 0, NotSerialized)
    {
        SX10 ()
        SX30 (0x0A)
        OSID ()
        SX30 (MIS3)
        SX11 ()
        SX12 ()
    }

    Scope (_SB)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (SMI (0x98, Zero), MIS0)
            And (MIS0, 0x13, MIS0)
            SOST ()
            If (LOr (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))
            {
                SX10 ()
                SX30 (0x19)
                SX30 (0x02)
                SX11 ()
                Store (SX40 (), Local1)
                SX12 ()
                Store (Divide (Multiply (Local1, 0xFF), 0x64, ), ^PCI0.GFX0.BCLP)
                Or (^PCI0.GFX0.BCLP, 0x80000000, ^PCI0.GFX0.BCLP)
                Store (0x02, ^PCI0.GFX0.ASLC)
                Store (One, ^PCI0.GFX0.ASLE)
            }
        }
    }

    Method (DISP, 1, NotSerialized)
    {
    }

    Method (NEVT, 0, NotSerialized)
    {
        Store (ECG1 (), Local0)
        If (And (Local0, One))
        {
            Notify (\_SB.PWRB, 0x80)
        }

        If (And (Local0, 0x04))
        {
            LIDE ()
        }

        If (And (Local0, 0x08))
        {
            PWRE ()
        }

        If (And (Local0, 0x80))
        {
            SMIE ()
        }

        If (And (Local0, 0x8000))
        {
            Notify (\_SB.PCI0.PEG0.PEGP, 0x81)
        }

        If (And (Local0, 0x0400))
        {
            SX10 ()
            \_SB.PCI0.LPCB.KBC.PCA1 (0xFB, 0x80E2)
            Store (\_SB.PCI0.LPCB.KBC.ECRB (0x02), Local0)
            SX12 ()
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (Local0, _T_0)
            If (LEqual (_T_0, 0x02))
            {
                \_SB.PCI0.LPCB.KBC.PCA2 (0xAE, 0x0301)
            }
            ElseIf (LEqual (_T_0, One))
            {
                \_SB.PCI0.LPCB.KBC.PCA2 (0xAE, 0x0201)
            }
            Else
            {
            }
        }

        If (And (Local0, 0x0800))
        {
            WMIA (0x0800)
        }
    }

    Name (WAKE, Zero)
    Method (NWAK, 0, NotSerialized)
    {
        Store (One, WAKE)
        Store (ECG7 (), Local0)
        Store (Zero, Local1)
        If (LEqual (Local0, Zero))
        {
            Store (One, Local1)
        }

        If (And (Local0, One))
        {
            Store (One, Local1)
        }

        If (And (Local0, 0x02))
        {
            LIDE ()
        }

        If (And (Local0, 0x20)) {}
        If (Local1)
        {
            Notify (\_SB.PWRB, 0x02)
        }

        Store (Zero, WAKE)
    }

    Mutex (GFXM, 0x01)
    Method (ILID, 0, NotSerialized)
    {
        Acquire (GFXM, 0xFFFF)
        Store (SMI (0x46, Zero), Local0)
        \_SB.PCI0.GFX0.GLID (Local0)
        Notify (\_SB.LID0, 0x80)
        Release (GFXM)
    }

    Method (LIDE, 0, NotSerialized)
    {
        Store (GPUF, Local1)
        Notify (\_SB.LID0, 0x80)
    }

    Method (PWRE, 0, NotSerialized)
    {
        Store (ECG5 (), Local0)
        XOr (Local0, MIS0, Local1)
        And (Local0, 0x13, MIS0)
        If (LOr (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))
        {
            SX10 ()
            SX30 (0x19)
            SX30 (0x02)
            SX11 ()
            Store (SX40 (), Local3)
            SX12 ()
            Store (Divide (Multiply (Local3, 0xFF), 0x64, ), \_SB.PCI0.GFX0.BCLP)
            Or (\_SB.PCI0.GFX0.BCLP, 0x80000000, \_SB.PCI0.GFX0.BCLP)
            Store (0x02, \_SB.PCI0.GFX0.ASLC)
            Store (One, \_SB.PCI0.GFX0.ASLE)
        }

        If (And (Local1, One))
        {
            Notify (\_SB.AC, 0x80)
        }

        And (MIS0, 0x02, Local2)
        If (And (Local1, 0x02))
        {
            If (Local2)
            {
                \_SB.PCI0.LPCB.KBC.PCA5 (0xFB, 0x030181E2, 0x05)
                Notify (\_SB.BAT0, 0x81)
            }
            Else
            {
                Notify (\_SB.BAT0, 0x81)
            }
        }

        If (And (Local1, 0x04))
        {
            If (Local2)
            {
                Notify (\_SB.BAT0, 0x80)
            }
        }

        If (And (Local1, 0x08))
        {
            If (Local2)
            {
                Notify (\_SB.BAT0, 0x80)
            }
        }
    }

    Method (SMIE, 0, NotSerialized)
    {
        Store (SMI (0x96, Zero), Local0)
        If (And (Local0, One))
        {
            Notify (\_TZ.THM, 0x80)
        }

        If (And (Local0, 0x02))
        {
            Store (GPUF, Local1)
            \_SB.PCI0.GFX0.GHDS (Zero)
        }

        If (And (Local0, 0x04))
        {
            CESM (Local0)
        }

        If (And (Local0, 0x08))
        {
            Store (FPPC, \_PR.CPU0._PPC)
            Notify (\_PR.CPU0, 0x80)
            Notify (\_PR.CPU1, 0x80)
            Notify (\_PR.CPU2, 0x80)
            Notify (\_PR.CPU3, 0x80)
        }
    }

    Method (CESM, 1, NotSerialized)
    {
        Store (Arg0, Local0)
        SX10 ()
        SX30 (0x18)
        SX11 ()
        Store (SX42 (), Local0)
        SX12 ()
        If (LOr (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))
        {
            If (And (Local0, 0x0600))
            {
                SX10 ()
                SX30 (0x19)
                SX30 (0x02)
                SX11 ()
                Store (SX40 (), Local1)
                SX12 ()
                Store (Divide (Multiply (Local1, 0xFF), 0x64, ), \_SB.PCI0.GFX0.BCLP)
                Or (\_SB.PCI0.GFX0.BCLP, 0x80000000, \_SB.PCI0.GFX0.BCLP)
                Store (0x02, \_SB.PCI0.GFX0.ASLC)
                Store (One, \_SB.PCI0.GFX0.ASLE)
            }
        }

        If (LGreaterEqual (OSYS, 0x20))
        {
            If (And (Local0, 0x0400))
            {
                Store (GPUF, Local1)
                If (LNotEqual (_REV, 0x03))
                {
                    Notify (\_SB.PCI0.GFX0.DD02, 0x86)
                    If (LAnd (LGreaterEqual (OSYS, 0x80), LEqual (VGAT, 0x02)))
                    {
                        Notify (\_SB.PCI0.PEG0.PEGP.DD02, 0x86)
                    }
                }
            }
        }

        If (LGreaterEqual (OSYS, 0x20))
        {
            If (And (Local0, 0x0200))
            {
                Store (GPUF, Local1)
                If (LNotEqual (_REV, 0x03))
                {
                    Notify (\_SB.PCI0.GFX0.DD02, 0x87)
                    If (LAnd (LGreaterEqual (OSYS, 0x80), LEqual (VGAT, 0x02)))
                    {
                        Notify (\_SB.PCI0.PEG0.PEGP.DD02, 0x87)
                    }
                }
            }
        }
    }

    Method (SGTG, 0, NotSerialized)
    {
        Store (0x03, \_SB.PCI0.GFX0.HGNC)
        Store (One, \_SB.PCI0.GFX0.DACE)
        Notify (\_SB.PCI0.GFX0, 0x80)
        Notify (\_SB.PCI0.WMI1, 0x80)
    }

    Method (SGBD, 0, NotSerialized)
    {
        Notify (\_SB.PCI0.GFX0.DD02, 0x87)
    }

    Method (SGBU, 0, NotSerialized)
    {
        Notify (\_SB.PCI0.GFX0.DD02, 0x86)
    }

    Scope (_GPE)
    {
        Method (_L17, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            NEVT ()
        }

        Method (_L1B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            NWAK ()
        }
    }

    Method (OPTS, 1, NotSerialized)
    {
        If (LEqual (Arg0, 0x03))
        {
            Store (One, S3FL)
        }

        SMI (0x8A, Arg0)
        Store (SMI (0x46, Zero), MIS1)
    }

    Method (OWAK, 1, NotSerialized)
    {
        SOST ()
        SMI (0x7A, Zero)
        Store (ECG5 (), MIS0)
        Notify (\_SB.AC, 0x80)
        SMI (0x9A, Arg0)
        Store (GPUF, Local1)
        Store (SMI (0x46, Zero), Local0)
        If (LEqual (Arg0, 0x03))
        {
            If (Or (LNotEqual (MIS1, Local0), LEqual (Local0, Zero)))
            {
                If (LGreaterEqual (OSYS, 0x20)) {}
                Else
                {
                    LIDE ()
                }
            }
        }
    }

    Method (PSW, 2, NotSerialized)
    {
        SX10 ()
        SX30 (0x06)
        SX30 (Arg0)
        SX30 (Arg1)
        SX11 ()
        SX12 ()
    }

    Method (DSS, 2, NotSerialized)
    {
        SX10 ()
        SX30 (0x08)
        SX30 (Arg0)
        SX32 (Arg1)
        SX11 ()
        SX12 ()
    }

    Method (ECG1, 0, NotSerialized)
    {
        SX10 ()
        SX30 (0x1C)
        SX11 ()
        Store (SX41 (), Local0)
        SX12 ()
        Return (Local0)
    }

    Method (ECG7, 0, NotSerialized)
    {
        Return (SMI (0x89, Zero))
    }

    Method (ECG3, 0, NotSerialized)
    {
        Return (SMI (0x84, Zero))
    }

    Method (ECG4, 0, NotSerialized)
    {
        Return (Zero)
    }

    Method (ECG5, 0, NotSerialized)
    {
        Return (SMI (0x98, Zero))
    }

    Method (EGB0, 3, NotSerialized)
    {
        Name (KBMN, Buffer (0x0D) {})
        CreateDWordField (KBMN, Zero, KB00)
        CreateDWordField (KBMN, 0x04, KB04)
        CreateDWordField (KBMN, 0x08, KB08)
        CreateByteField (KBMN, 0x0C, KB12)
        Store (Arg0, KB00)
        Store (Arg1, KB04)
        Store (Arg2, KB08)
        Store (Zero, KB12)
        Return (KBMN)
    }

    Method (EGB1, 1, NotSerialized)
    {
        Name (KBSN, Buffer (0x06)
        {
            "     "
        })
        Name (BBSN, Buffer (0x04) {})
        CreateByteField (BBSN, Zero, SN00)
        CreateWordField (BBSN, One, SN01)
        CreateByteField (BBSN, 0x03, SN03)
        Store (Arg0, BBSN)
        Store (SN01, Local2)
        Store (0x04, Local3)
        While (Local2)
        {
            Divide (Local2, 0x0A, Local4, Local2)
            Add (Local4, 0x30, Index (KBSN, Local3))
            Decrement (Local3)
        }

        Return (KBSN)
    }

    Method (EGB2, 1, NotSerialized)
    {
        Name (BBTY, Buffer (0x04) {})
        CreateByteField (BBTY, Zero, TY00)
        Name (KBLI, Buffer (0x05)
        {
            "LION"
        })
        Name (KBNI, Buffer (0x05)
        {
            "NiMH"
        })
        Store (Arg0, BBTY)
        If (LEqual (TY00, 0x02))
        {
            Store (KBLI, Local0)
        }
        ElseIf (LEqual (TY00, 0x04))
        {
            Store (KBNI, Local0)
        }

        Return (Local0)
    }

    Method (EGB3, 1, NotSerialized)
    {
        Name (BBOI, Buffer (0x04) {})
        CreateWordField (BBOI, Zero, OI00)
        CreateByteField (BBOI, 0x02, OI02)
        CreateByteField (BBOI, 0x03, OI03)
        Name (KNSO, Buffer (0x05)
        {
            "Sony"
        })
        Name (KNSA, Buffer (0x06)
        {
            "Sanyo"
        })
        Name (KNPA, Buffer (0x0A)
        {
            "Panasonic"
        })
        Name (KNSU, Buffer (0x0C)
        {
            "Samsung SDI"
        })
        Name (KNSP, Buffer (0x04)
        {
            "SMP"
        })
        Name (KNMO, Buffer (0x09)
        {
            "Motorola"
        })
        Name (KNDY, Buffer (0x09)
        {
            "Dynapack"
        })
        Name (KNNL, Buffer (0x05)
        {
            "    "
        })
        Store (Arg0, BBOI)
        If (LEqual (OI03, 0x02))
        {
            Store (KNSO, Local0)
        }
        ElseIf (LEqual (OI03, 0x03))
        {
            Store (KNSA, Local0)
        }
        ElseIf (LEqual (OI03, 0x04))
        {
            Store (KNPA, Local0)
        }
        ElseIf (LEqual (OI03, 0x06))
        {
            Store (KNSU, Local0)
        }
        ElseIf (LEqual (OI03, 0x07))
        {
            Store (KNSP, Local0)
        }
        ElseIf (LEqual (OI03, 0x08))
        {
            Store (KNMO, Local0)
        }
        ElseIf (LEqual (OI03, 0x09))
        {
            Store (KNDY, Local0)
        }
        ElseIf (LEqual (OI03, 0x0A))
        {
            Store (KNDY, Local0)
        }
        ElseIf (LEqual (OI03, 0x0B))
        {
            Store (KNDY, Local0)
        }
        ElseIf (LEqual (OI03, 0x0C))
        {
            Store (KNDY, Local0)
        }
        ElseIf (LEqual (OI03, 0x0D))
        {
            Store (KNDY, Local0)
        }
        ElseIf (LEqual (OI03, 0x0E))
        {
            Store (KNSP, Local0)
        }
        Else
        {
            Store (KNNL, Local0)
        }

        Return (Local0)
    }

    Method (ECG6, 2, NotSerialized)
    {
        Name (BBST, Buffer (0x04) {})
        CreateByteField (BBST, Zero, BF00)
        CreateByteField (BBST, One, BF01)
        CreateWordField (BBST, 0x02, BF02)
        Name (BBS1, Buffer (0x04) {})
        CreateWordField (BBS1, Zero, BF04)
        CreateWordField (BBS1, 0x02, BF06)
        SX10 ()
        If (LEqual (NSMI, Zero))
        {
            \_SB.PCI0.LPCB.KBC.PCA1 (0x9F, One)
            Store (\_SB.PCI0.LPCB.KBC.ECRB (0x07), BBST)
            Store (\_SB.PCI0.LPCB.KBC.ECRB (0x08), BBS1)
            Store (BF00, Index (Arg1, Zero))
            Store (BF00, FF00)
            Store (BF02, Local0)
            And (MIS0, One, Local1)
            If (LEqual (Local0, Zero))
            {
                Increment (Local0)
            }
            ElseIf (And (LEqual (Local1, One), And (Local0, 0x8000)))
            {
                Store (0xFFFFFFFF, Local0)
            }
            ElseIf (And (LEqual (Local1, One), Not (And (Local0, 0x8000))))
            {
                Store (Local0, Local0)
            }
            ElseIf (And (Local0, 0x8000))
            {
                XOr (Local0, 0xFFFF, Local0)
            }
            Else
            {
                Store (0xFFFFFFFF, Local0)
            }

            Store (Local0, Index (Arg1, One))
            Store (Local0, FF02)
            Store (BF06, Index (Arg1, 0x02))
            Store (BF04, Index (Arg1, 0x03))
            Store (BF06, FF04)
            Store (BF04, FF06)
        }

        SX12 ()
    }

    Method (ECG9, 2, NotSerialized)
    {
        Name (BBI1, Buffer (0x04) {})
        CreateByteField (BBI1, Zero, BI00)
        CreateByteField (BBI1, One, BI01)
        CreateByteField (BBI1, 0x02, BI02)
        CreateByteField (BBI1, 0x03, BI03)
        Name (BBI2, Buffer (0x04) {})
        CreateByteField (BBI2, Zero, BI04)
        CreateByteField (BBI2, One, BI05)
        CreateByteField (BBI2, 0x02, BI06)
        CreateByteField (BBI2, 0x03, BI07)
        Name (BBI3, Buffer (0x04) {})
        Name (BBI4, Buffer (0x04) {})
        Name (BC00, Buffer (0x04) {})
        Name (BC04, Buffer (0x04) {})
        Name (BC08, Buffer (0x04) {})
        SX10 ()
        If (LEqual (NSMI, Zero))
        {
            \_SB.PCI0.LPCB.KBC.PCA1 (0xA0, One)
            Store (\_SB.PCI0.LPCB.KBC.ECRB (0x04), BBI2)
            Store (\_SB.PCI0.LPCB.KBC.ECRB (0x03), BBI1)
            Store (\_SB.PCI0.LPCB.KBC.ECRB (0x05), BBI3)
            Store (\_SB.PCI0.LPCB.KBC.ECRB (0x06), BBI4)
            \_SB.PCI0.LPCB.KBC.PCA1 (0x9E, One)
            Store (\_SB.PCI0.LPCB.KBC.ECRB (0x03), BC00)
            Store (\_SB.PCI0.LPCB.KBC.ECRB (0x04), BC04)
            Store (\_SB.PCI0.LPCB.KBC.ECRB (0x05), BC08)
            Store (One, Index (Arg1, Zero))
            Or (BI03, ShiftLeft (BI04, 0x08), Local0)
            Store (Local0, Local1)
            Store (Local0, Index (Arg1, One))
            Or (BI01, ShiftLeft (BI02, 0x08), Local0)
            If (LGreaterEqual (OSYS, 0x80))
            {
                If (LLess (Divide (Multiply (Local0, 0x64), Local1, ), 0x28))
                {
                    If (LGreater (Divide (Multiply (Local0, 0x64), Local1, ), 0x05))
                    {
                        Store (Local0, Index (Arg1, One))
                    }
                }
            }

            Store (Local0, Index (Arg1, 0x02))
            Store (One, Index (Arg1, 0x03))
            Or (BI05, ShiftLeft (BI06, 0x08), Local0)
            Store (Local0, Index (Arg1, 0x04))
            Store (Divide (Local1, 0x0A, ), Index (Arg1, 0x05))
            Store (Divide (Local1, 0x21, ), Index (Arg1, 0x06))
            Store (Divide (Local1, 0x64, ), Index (Arg1, 0x07))
            Store (Divide (Local1, 0x64, ), Index (Arg1, 0x08))
            Store (EGB0 (BC00, BC04, BC08), Index (Arg1, 0x09))
            Store (EGB1 (BBI3), Index (Arg1, 0x0A))
            Store (EGB2 (BBI4), Index (Arg1, 0x0B))
            Store (EGB3 (BBI3), Index (Arg1, 0x0C))
        }
        Else
        {
            Store (Zero, Index (Arg1, Zero))
            Store (Zero, Index (Arg1, One))
            Store (Zero, Index (Arg1, 0x02))
            Store (Zero, Index (Arg1, 0x03))
            Store (Zero, Index (Arg1, 0x04))
            Store (Zero, Index (Arg1, 0x05))
            Store (Zero, Index (Arg1, 0x06))
            Store (Zero, Index (Arg1, 0x07))
            Store (Zero, Index (Arg1, 0x08))
            Store (Zero, Index (Arg1, 0x09))
            Store (Zero, Index (Arg1, 0x0A))
            Store (Zero, Index (Arg1, 0x0B))
            Store (Zero, Index (Arg1, 0x0C))
        }

        SX12 ()
    }

    Scope (_SB)
    {
        OperationRegion (SMI1, SystemIO, SMIP, 0x02)
        Field (SMI1, ByteAcc, NoLock, Preserve)
        {
            SSMI,   8
        }

        Mutex (MUTE, 0x00)
        Method (ESWI, 1, NotSerialized)
        {
            Acquire (MUTE, 0xFFFF)
            Store (Arg0, ECMD)
            Store (0xEC, SSMI)
            Release (MUTE)
        }
    }

    Scope (_SB)
    {
        Device (LID0)
        {
            Name (_HID, EisaId ("PNP0C0D"))  // _HID: Hardware ID
            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                Store (ECG3 (), Local0)
                Return (Local0)
            }

            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x1B, 
                0x03
            })
            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                PSW (Arg0, 0x02)
            }
        }

        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
            Name (_UID, 0xAA)  // _UID: Unique ID
            Name (_STA, 0x0B)  // _STA: Status
        }

        Device (SBTN)
        {
            Name (_HID, EisaId ("PNP0C0E"))  // _HID: Hardware ID
        }
    }

    Scope (_SB)
    {
        Device (AC)
        {
            Name (_HID, "ACPI0003")  // _HID: Hardware ID
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                BAT0
            })
            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                And (MIS0, One, Local0)
                Return (Local0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }

    Scope (_SB)
    {
        Device (BAT0)
        {
            Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                _SB
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (MIS0, 0x02, Local0)
                If (Local0)
                {
                    Return (0x1F)
                }

                Return (0x0F)
            }

            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                Name (BIF0, Package (0x0D) {})
                ECG9 (One, BIF0)
                Return (BIF0)
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                Name (BST0, Package (0x04) {})
                If (LEqual (^^PCI0.LPCB.RMSC.ENTF, Zero))
                {
                    ECG6 (One, BST0)
                }
                Else
                {
                    Store (FF00, Index (BST0, Zero))
                    Store (FF02, Index (BST0, One))
                    Store (FF04, Index (BST0, 0x02))
                    Store (FF06, Index (BST0, 0x03))
                }

                Return (BST0)
            }
        }
    }

    Scope (_TZ)
    {
        ThermalZone (THM)
        {
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Store (GINF (0x12), Local0)
                Return (Local0)
            }

            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                If (LEqual (THML, One))
                {
                    Store (GINF (0x12), Local0)
                    Add (Local0, One, Local0)
                }
                Else
                {
                    Store (GINT (0x04), Local0)
                }

                Return (Local0)
            }

            Method (GINF, 1, NotSerialized)
            {
                SX10 ()
                SX30 (Arg0)
                SX11 ()
                Store (SX41 (), Local0)
                SX12 ()
                If (LLess (Local0, 0x0DF4))
                {
                    Store (0x0DF4, Local0)
                }

                Return (Local0)
            }

            Method (GINT, 1, NotSerialized)
            {
                SX10 ()
                SX30 (Arg0)
                SX11 ()
                Store (SX41 (), Local0)
                SX12 ()
                If (LLess (Local0, 0x0BA6))
                {
                    Store (0x0BA6, Local0)
                }

                Return (Local0)
            }
        }
    }

    Scope (_SB)
    {
        Device (AMW0)
        {
            Mutex (WMIX, 0x01)
            Name (_HID, "PNP0c14")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (STBY, 3, NotSerialized)
            {
                CreateByteField (Arg0, Arg1, TMP)
                Store (Arg2, TMP)
            }

            Method (STWD, 3, NotSerialized)
            {
                CreateWordField (Arg0, Arg1, TMP)
                Store (Arg2, TMP)
            }

            Method (STDW, 3, NotSerialized)
            {
                CreateDWordField (Arg0, Arg1, TMP)
                Store (Arg2, TMP)
            }

            Method (CLBY, 1, NotSerialized)
            {
                Store (Zero, Local0)
                While (LLess (Local0, SizeOf (Arg0)))
                {
                    STBY (Arg0, Local0, Zero)
                    Increment (Local0)
                }
            }

            Name (_WDG, Buffer (0x78)
            {
                /* 0000 */  0xBC, 0xDC, 0x9D, 0x8D, 0x97, 0xA9, 0xDA, 0x11,
                /* 0008 */  0xB0, 0x12, 0xB6, 0x22, 0xA1, 0xEF, 0x54, 0x92,
                /* 0010 */  0x41, 0x41, 0x01, 0x00, 0xCE, 0x93, 0x05, 0xA8,
                /* 0018 */  0x97, 0xA9, 0xDA, 0x11, 0xB0, 0x12, 0xB6, 0x22,
                /* 0020 */  0xA1, 0xEF, 0x54, 0x92, 0x42, 0x41, 0x01, 0x02,
                /* 0028 */  0x94, 0x59, 0xBB, 0x9D, 0x97, 0xA9, 0xDA, 0x11,
                /* 0030 */  0xB0, 0x12, 0xB6, 0x22, 0xA1, 0xEF, 0x54, 0x92,
                /* 0038 */  0xD0, 0x00, 0x01, 0x08, 0xE0, 0x6C, 0x77, 0xA3,
                /* 0040 */  0x88, 0x1E, 0xDB, 0x11, 0xA9, 0x8B, 0x08, 0x00,
                /* 0048 */  0x20, 0x0C, 0x9A, 0x66, 0x42, 0x43, 0x01, 0x00,
                /* 0050 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,
                /* 0058 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,
                /* 0060 */  0x4D, 0x4F, 0x01, 0x00, 0x28, 0x07, 0xBD, 0x77,
                /* 0068 */  0x34, 0x2E, 0x8C, 0x47, 0xB6, 0x25, 0x67, 0xF0,
                /* 0070 */  0x2A, 0x7E, 0x48, 0x97, 0x42, 0x44, 0x01, 0x02 
            })
            Name (INFO, Buffer (0x80) {})
            Name (ECD0, Zero)
            Method (WED0, 1, NotSerialized)
            {
                Store (Arg0, ECD0)
                Return (Arg0)
            }

            Method (WCAA, 1, NotSerialized)
            {
                Return (Zero)
            }

            Method (WQAA, 1, NotSerialized)
            {
                Acquire (WMIX, 0xFFFF)
                CLBY (INFO)
                If (LNotEqual (Arg0, Zero))
                {
                    Store (INFO, Local1)
                }
                Else
                {
                    STDW (INFO, Zero, 0x4C4C4544)
                    STDW (INFO, 0x04, 0x494D5720)
                    STDW (INFO, 0x08, One)
                    STDW (INFO, 0x0C, 0x1000)
                    Store (INFO, Local1)
                }

                Release (WMIX)
                Return (Local1)
            }

            Method (WSAA, 2, NotSerialized)
            {
                Return (Arg1)
            }

            Method (WMI, 2, NotSerialized)
            {
                Return (PHWM (Arg0, Arg1))
            }

            Method (WMBA, 3, NotSerialized)
            {
                CreateDWordField (Arg2, 0x28, WBUF)
                Add (WBUF, 0x2C, Local1)
                If (LLessEqual (Local1, 0x1000))
                {
                    Store (WMI (Arg2, Local1), Local0)
                }

                Return (Local0)
            }

            Name (WMI1, Zero)
            Name (WMI2, Buffer (0x80) {})
            Name (WMI3, Zero)
            Method (WMI4, 1, NotSerialized)
            {
                Or (WMI1, Arg0, WMI1)
            }

            Method (WMI5, 1, NotSerialized)
            {
                And (WMI1, Not (Arg0), WMI1)
            }

            Method (WMI6, 0, NotSerialized)
            {
                Acquire (WMIX, 0xFFFF)
                Store (Zero, WMI3)
                CLBY (WMI2)
            }

            Method (WMI7, 0, NotSerialized)
            {
                Acquire (WMIX, 0xFFFF)
                Store (Zero, WMI3)
            }

            Method (WMI8, 1, NotSerialized)
            {
                Store (WMI3, Local0)
                Add (Local0, 0x02, Local0)
                If (LLessEqual (Local0, SizeOf (WMI2)))
                {
                    CreateWordField (WMI2, WMI3, WMI9)
                    Store (Arg0, WMI9)
                    Store (Local0, WMI3)
                }
            }

            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
            {
                WMI6 ()
                If (LNotEqual (Arg0, 0xD0))
                {
                    WMI7 ()
                    Return (WMI2)
                }

                If (LEqual (ECD0, Zero))
                {
                    WMI7 ()
                    Return (WMI2)
                }

                SX10 ()
                SX30 (0x16)
                SX11 ()
                WMI8 (QSB0)
                WMI8 (QSB1)
                WMI8 (QSB2)
                WMI8 (QSB3)
                WMI8 (QSB4)
                WMI8 (QSB5)
                WMI8 (QSB6)
                WMI8 (QSB7)
                WMI8 (Zero)
                SX12 ()
                WMI7 ()
                Store (Zero, QSB0)
                Store (Zero, QSB1)
                Store (Zero, QSB2)
                Store (Zero, QSB3)
                Store (Zero, QSB4)
                Store (Zero, QSB5)
                Store (Zero, QSB6)
                Store (Zero, QSB7)
                Return (WMI2)
            }

            Name (WQMO, Buffer (0x079B)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                /* 0008 */  0x8B, 0x07, 0x00, 0x00, 0x60, 0x2C, 0x00, 0x00,
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                /* 0018 */  0x28, 0xD1, 0x95, 0x00, 0x01, 0x06, 0x18, 0x42,
                /* 0020 */  0x10, 0x13, 0x10, 0x22, 0x21, 0x04, 0x12, 0x01,
                /* 0028 */  0xA1, 0xC8, 0x2C, 0x0C, 0x86, 0x10, 0x38, 0x2E,
                /* 0030 */  0x84, 0x1C, 0x40, 0x48, 0x1C, 0x14, 0x4A, 0x08,
                /* 0038 */  0x84, 0xFA, 0x13, 0xC8, 0xAF, 0x00, 0x84, 0x0E,
                /* 0040 */  0x05, 0xC8, 0x14, 0x60, 0x50, 0x80, 0x53, 0x04,
                /* 0048 */  0x11, 0xF4, 0x2A, 0xC0, 0xA6, 0x00, 0x93, 0x02,
                /* 0050 */  0x2C, 0x0A, 0xD0, 0x2E, 0xC0, 0xB2, 0x00, 0xDD,
                /* 0058 */  0x02, 0xA4, 0xC3, 0x12, 0x91, 0xE0, 0x28, 0x31,
                /* 0060 */  0xE0, 0x28, 0x9D, 0xD8, 0xC2, 0x0D, 0x1B, 0xBC,
                /* 0068 */  0x50, 0x14, 0xCD, 0x20, 0x4A, 0x82, 0x72, 0x11,
                /* 0070 */  0xA4, 0x0B, 0x42, 0xCA, 0x05, 0xF8, 0x46, 0xD0,
                /* 0078 */  0x00, 0xA2, 0xF4, 0x2E, 0xC0, 0xB6, 0x00, 0xD3,
                /* 0080 */  0xF0, 0x44, 0xEA, 0x10, 0x50, 0x72, 0x86, 0x80,
                /* 0088 */  0x1A, 0x40, 0xAB, 0x13, 0x10, 0x7E, 0xA5, 0x53,
                /* 0090 */  0x42, 0x12, 0x84, 0x33, 0x56, 0xF1, 0x33, 0xD0,
                /* 0098 */  0x1C, 0x4E, 0xE0, 0x9C, 0x3A, 0xC7, 0x90, 0xE3,
                /* 00A0 */  0x71, 0xA1, 0x07, 0xC1, 0x03, 0x29, 0x00, 0x61,
                /* 00A8 */  0xE1, 0x21, 0x14, 0x01, 0x06, 0x25, 0x61, 0x2C,
                /* 00B0 */  0xD4, 0xC5, 0xA8, 0x51, 0x23, 0x65, 0x03, 0x32,
                /* 00B8 */  0x44, 0x69, 0xA3, 0x46, 0x0F, 0xE8, 0xEC, 0x8E,
                /* 00C0 */  0xA4, 0x61, 0x01, 0xB2, 0x47, 0x22, 0x02, 0xA3,
                /* 00C8 */  0x1E, 0xD3, 0x11, 0x16, 0x36, 0x23, 0xA1, 0xC6,
                /* 00D0 */  0x68, 0x0E, 0x8A, 0x40, 0xE3, 0x06, 0x6D, 0x89,
                /* 00D8 */  0xB0, 0x1A, 0x57, 0xEC, 0x33, 0xB3, 0xF0, 0x61,
                /* 00E0 */  0x09, 0xE3, 0x08, 0x0E, 0x2C, 0x41, 0xA3, 0x68,
                /* 00E8 */  0x9A, 0xE3, 0xD9, 0x86, 0x48, 0x70, 0x10, 0xA1,
                /* 00F0 */  0x31, 0x32, 0x20, 0xE4, 0x59, 0x80, 0x75, 0x50,
                /* 00F8 */  0x49, 0x06, 0x22, 0xEE, 0x11, 0xA5, 0x10, 0x41,
                /* 0100 */  0xF3, 0x3D, 0x91, 0x1A, 0x05, 0x68, 0xC3, 0x90,
                /* 0108 */  0xAD, 0xB3, 0x81, 0x86, 0x1A, 0xAB, 0x31, 0x14,
                /* 0110 */  0x41, 0x44, 0x08, 0x1A, 0xC5, 0x60, 0x11, 0x42,
                /* 0118 */  0x85, 0xF8, 0xFF, 0x47, 0x89, 0x7A, 0x4A, 0x41,
                /* 0120 */  0xA2, 0x56, 0x06, 0x22, 0xB4, 0x60, 0x46, 0x60,
                /* 0128 */  0xF6, 0x07, 0x41, 0x62, 0x9C, 0x19, 0x74, 0x58,
                /* 0130 */  0xB0, 0x0C, 0x10, 0x19, 0x11, 0x34, 0x1A, 0x76,
                /* 0138 */  0x16, 0xF0, 0x70, 0x3C, 0x93, 0xE6, 0x27, 0xA6,
                /* 0140 */  0xC1, 0x99, 0x60, 0x6C, 0x08, 0x69, 0x80, 0x90,
                /* 0148 */  0xA8, 0x83, 0x03, 0x25, 0xB0, 0x94, 0x81, 0x93,
                /* 0150 */  0xCB, 0x81, 0xC7, 0x77, 0xC6, 0x51, 0x43, 0x9C,
                /* 0158 */  0xFA, 0x99, 0xF9, 0x1F, 0xE1, 0x2D, 0xF8, 0x08,
                /* 0160 */  0xC0, 0xC7, 0xE0, 0xC1, 0x1E, 0x42, 0xC0, 0x23,
                /* 0168 */  0x64, 0x67, 0x00, 0x03, 0xE2, 0xAF, 0x0B, 0x27,
                /* 0170 */  0xED, 0xB9, 0xF8, 0x2C, 0x00, 0x63, 0xF8, 0x70,
                /* 0178 */  0x8D, 0x8F, 0x42, 0xE3, 0x61, 0xE7, 0x03, 0x36,
                /* 0180 */  0x2E, 0x0E, 0xEF, 0x43, 0xC1, 0x09, 0x17, 0x0B,
                /* 0188 */  0xA2, 0x00, 0x10, 0x92, 0x75, 0x3E, 0x40, 0xCF,
                /* 0190 */  0xFA, 0xD8, 0x02, 0x3E, 0x0C, 0x34, 0x7B, 0x87,
                /* 0198 */  0x20, 0x04, 0x2F, 0x02, 0x3E, 0x3A, 0xF8, 0xB8,
                /* 01A0 */  0xE1, 0x71, 0x3F, 0x6F, 0x80, 0xE1, 0x70, 0xE0,
                /* 01A8 */  0xE1, 0xF8, 0xB4, 0x01, 0x5C, 0x46, 0xC0, 0xA5,
                /* 01B0 */  0x3D, 0x29, 0x4C, 0x20, 0xC9, 0x4F, 0x00, 0x89,
                /* 01B8 */  0x81, 0x41, 0x1D, 0x08, 0x7C, 0xB0, 0x80, 0x2B,
                /* 01C0 */  0x09, 0x0E, 0x35, 0x3C, 0x4F, 0xEC, 0x01, 0xE1,
                /* 01C8 */  0xFF, 0x7F, 0x94, 0x67, 0x76, 0x20, 0x9E, 0xFE,
                /* 01D0 */  0x63, 0x00, 0x8C, 0x03, 0x82, 0xA7, 0x75, 0x4A,
                /* 01D8 */  0xBE, 0x79, 0x3C, 0x48, 0xF8, 0x22, 0x10, 0x26,
                /* 01E0 */  0x81, 0x4F, 0x09, 0x0C, 0x8D, 0x1F, 0x37, 0xC0,
                /* 01E8 */  0x3A, 0x6A, 0xFC, 0x01, 0x01, 0xDE, 0x49, 0xE2,
                /* 01F0 */  0xFC, 0xFA, 0x1C, 0x80, 0x0E, 0x0D, 0xA7, 0xC8,
                /* 01F8 */  0x40, 0x5E, 0x03, 0x9E, 0x09, 0x4E, 0xC9, 0xE3,
                /* 0200 */  0x4B, 0xE0, 0x33, 0x07, 0xEC, 0xBB, 0xC1, 0x61,
                /* 0208 */  0x1C, 0x4C, 0x88, 0x08, 0xEF, 0x01, 0x4F, 0x1D,
                /* 0210 */  0xBE, 0x6B, 0x3C, 0x0A, 0x04, 0x8A, 0xD0, 0xDB,
                /* 0218 */  0x99, 0x83, 0x9E, 0x42, 0x8C, 0x12, 0xED, 0xAC,
                /* 0220 */  0xC2, 0x3C, 0x70, 0x44, 0xF1, 0x91, 0xC3, 0x08,
                /* 0228 */  0xEF, 0x1E, 0xBE, 0x13, 0x3C, 0x80, 0xB4, 0x36,
                /* 0230 */  0x39, 0xE1, 0x06, 0x7A, 0xE6, 0x60, 0xD1, 0xCE,
                /* 0238 */  0x2C, 0xB2, 0x00, 0xA2, 0x48, 0xA3, 0x41, 0x9D,
                /* 0240 */  0x11, 0x7C, 0x1A, 0xF0, 0xB4, 0x9E, 0x62, 0x7C,
                /* 0248 */  0x94, 0x30, 0xC8, 0x19, 0x1E, 0xD8, 0x73, 0xC2,
                /* 0250 */  0x63, 0x80, 0x07, 0xCC, 0x6E, 0x0C, 0x3E, 0x4E,
                /* 0258 */  0xF8, 0x5C, 0x80, 0x77, 0x0D, 0xA8, 0x19, 0xFA,
                /* 0260 */  0xB0, 0x01, 0xE7, 0xD0, 0x81, 0x3F, 0x4D, 0xE0,
                /* 0268 */  0x0F, 0x16, 0xF8, 0xF1, 0xF8, 0x9A, 0xC3, 0x26,
                /* 0270 */  0x9C, 0xC0, 0xF2, 0x07, 0x81, 0x1A, 0x99, 0xA1,
                /* 0278 */  0x3D, 0xCB, 0xD3, 0x7A, 0x0D, 0xF0, 0x69, 0xC7,
                /* 0280 */  0x04, 0x3E, 0x6F, 0xF8, 0xFF, 0xFF, 0xCF, 0xF1,
                /* 0288 */  0x78, 0xC0, 0xAF, 0xF8, 0x6C, 0x41, 0xEE, 0x0A,
                /* 0290 */  0x9E, 0xAF, 0xCF, 0x2E, 0xCC, 0xC6, 0x78, 0x50,
                /* 0298 */  0xA3, 0xF0, 0x01, 0x07, 0x77, 0x76, 0xF1, 0x11,
                /* 02A0 */  0xC0, 0x67, 0x17, 0xE0, 0x39, 0x89, 0x67, 0x09,
                /* 02A8 */  0xF0, 0x1E, 0x02, 0xAC, 0x19, 0x4F, 0x87, 0x2D,
                /* 02B0 */  0x18, 0x23, 0xC6, 0x43, 0x9E, 0x71, 0xD5, 0xC3,
                /* 02B8 */  0xD0, 0x45, 0xC0, 0xEA, 0xEE, 0x2B, 0xA8, 0xA3,
                /* 02C0 */  0x17, 0x98, 0xA0, 0x5E, 0x33, 0x70, 0xA7, 0x17,
                /* 02C8 */  0xE0, 0x73, 0xCA, 0x82, 0xF7, 0xFF, 0x3F, 0x65,
                /* 02D0 */  0x01, 0xF7, 0xAB, 0x02, 0x3F, 0xA2, 0x80, 0x01,
                /* 02D8 */  0xB2, 0xB3, 0xD3, 0x89, 0x10, 0xDE, 0x4B, 0x9E,
                /* 02E0 */  0x43, 0x7C, 0xBB, 0xF2, 0xC1, 0x24, 0xC8, 0x73,
                /* 02E8 */  0x40, 0x84, 0xA7, 0x2C, 0x7E, 0x1F, 0x88, 0x12,
                /* 02F0 */  0xF3, 0x80, 0x22, 0x45, 0x31, 0x62, 0x90, 0x27,
                /* 02F8 */  0x2C, 0x5F, 0x4F, 0x62, 0x18, 0x3A, 0x58, 0xB8,
                /* 0300 */  0xF0, 0x11, 0x9E, 0xB2, 0x00, 0x8B, 0x97, 0x2C,
                /* 0308 */  0xCC, 0x29, 0x0B, 0xE6, 0xDB, 0xC0, 0xA7, 0x2C,
                /* 0310 */  0x70, 0xFC, 0xFF, 0x4F, 0x59, 0xE0, 0x1A, 0xF7,
                /* 0318 */  0x53, 0x16, 0x30, 0x93, 0xFE, 0x14, 0xF0, 0xA9,
                /* 0320 */  0xC6, 0x4F, 0x00, 0x45, 0x3F, 0x58, 0x50, 0x18,
                /* 0328 */  0x9F, 0xB2, 0x00, 0x57, 0xF2, 0x0E, 0x08, 0xA0,
                /* 0330 */  0x39, 0x3B, 0xF9, 0xB6, 0x60, 0xB0, 0xE7, 0x98,
                /* 0338 */  0x93, 0x78, 0xC9, 0xF0, 0x29, 0x11, 0x0C, 0x87,
                /* 0340 */  0x0C, 0xDF, 0xA9, 0x0E, 0xE5, 0x91, 0xE3, 0x29,
                /* 0348 */  0xC0, 0x47, 0x2C, 0xB0, 0xC7, 0x39, 0x06, 0xE8,
                /* 0350 */  0xB8, 0xE2, 0x23, 0x96, 0xFF, 0xFF, 0x47, 0x2C,
                /* 0358 */  0x80, 0x1B, 0x07, 0x10, 0xFC, 0xA9, 0x03, 0xD6,
                /* 0360 */  0x3D, 0x20, 0xAC, 0x0F, 0x1D, 0xC0, 0x43, 0xF6,
                /* 0368 */  0x43, 0x40, 0x67, 0x18, 0x4B, 0x06, 0x91, 0x8D,
                /* 0370 */  0x73, 0x0D, 0x1D, 0xA3, 0xC5, 0x2F, 0x54, 0x37,
                /* 0378 */  0x85, 0xB8, 0x07, 0xC3, 0x65, 0x03, 0x09, 0xD4,
                /* 0380 */  0xC3, 0xB5, 0x60, 0x0A, 0x89, 0xA2, 0xD1, 0x68,
                /* 0388 */  0x0C, 0x4C, 0x60, 0x04, 0x67, 0x10, 0x03, 0x3A,
                /* 0390 */  0x23, 0x84, 0x0E, 0x65, 0x38, 0x15, 0xE7, 0x21,
                /* 0398 */  0xD4, 0xFF, 0x9F, 0x60, 0xA8, 0x1B, 0x13, 0x9D,
                /* 03A0 */  0x9D, 0xE7, 0xCF, 0x6F, 0x23, 0x3E, 0x11, 0x18,
                /* 03A8 */  0xD8, 0x57, 0x88, 0xB7, 0x0C, 0xB0, 0x0C, 0xCB,
                /* 03B0 */  0x8B, 0x7B, 0x02, 0x78, 0xBC, 0x78, 0xCB, 0x48,
                /* 03B8 */  0x50, 0xCD, 0xB1, 0x06, 0x35, 0x07, 0x5F, 0x05,
                /* 03C0 */  0xDE, 0xC8, 0x4C, 0xE0, 0x2B, 0x18, 0xD8, 0x4E,
                /* 03C8 */  0x33, 0x18, 0x7D, 0x77, 0x02, 0x50, 0x00, 0xF9,
                /* 03D0 */  0x28, 0xE0, 0xFB, 0xF2, 0xDB, 0x00, 0x9B, 0xC5,
                /* 03D8 */  0x2B, 0xB3, 0xD1, 0x7C, 0xFE, 0x44, 0x0C, 0x1D,
                /* 03E0 */  0x25, 0x66, 0xE8, 0x14, 0xC4, 0x43, 0x77, 0xD0,
                /* 03E8 */  0xA1, 0xA3, 0x8F, 0x03, 0x3E, 0x59, 0xE1, 0x82,
                /* 03F0 */  0x1D, 0xBE, 0xA0, 0x4D, 0xEE, 0x68, 0x4F, 0xCC,
                /* 03F8 */  0xB3, 0xF0, 0x3C, 0x71, 0x73, 0x07, 0xD3, 0x11,
                /* 0400 */  0x09, 0xC6, 0xE0, 0x31, 0x93, 0x07, 0xB3, 0xC0,
                /* 0408 */  0xC9, 0x83, 0xE2, 0xFF, 0x3F, 0x79, 0x98, 0xF0,
                /* 0410 */  0x98, 0xB0, 0x87, 0x43, 0x7A, 0xE8, 0xF0, 0xC8,
                /* 0418 */  0xF8, 0x38, 0x7D, 0xFA, 0x61, 0xD8, 0xA7, 0x73,
                /* 0420 */  0x2E, 0x45, 0xCF, 0x48, 0x57, 0x91, 0x67, 0x2E,
                /* 0428 */  0x0C, 0xAC, 0x47, 0xCE, 0x61, 0x8D, 0x16, 0xF6,
                /* 0430 */  0x80, 0x9F, 0x43, 0x7C, 0x87, 0xF1, 0x81, 0x87,
                /* 0438 */  0xC1, 0xFA, 0xF4, 0x02, 0x8E, 0xE3, 0x17, 0xFC,
                /* 0440 */  0xD3, 0x00, 0x78, 0x0E, 0x20, 0x1E, 0xC3, 0x0B,
                /* 0448 */  0x08, 0x3F, 0xBE, 0xE8, 0xFC, 0x4B, 0x85, 0x2E,
                /* 0450 */  0x4E, 0xF2, 0x60, 0x50, 0xA7, 0x29, 0xC0, 0xD5,
                /* 0458 */  0xE9, 0x0D, 0x3C, 0x57, 0x7D, 0xDC, 0x59, 0x0A,
                /* 0460 */  0xF7, 0xFF, 0x3F, 0x4B, 0xC1, 0x38, 0xFC, 0xFA,
                /* 0468 */  0x02, 0xEF, 0xBB, 0x94, 0x11, 0x0E, 0xE4, 0x59,
                /* 0470 */  0x0A, 0xEC, 0xB1, 0x9F, 0x21, 0x3A, 0x04, 0xF8,
                /* 0478 */  0x2C, 0x05, 0xF0, 0xE3, 0xF5, 0xE1, 0xF3, 0x0C,
                /* 0480 */  0xDC, 0xC0, 0xA7, 0x5F, 0xA0, 0xF5, 0xFF, 0x3F,
                /* 0488 */  0x85, 0x80, 0xFF, 0x18, 0xE1, 0x23, 0x0E, 0xEE,
                /* 0490 */  0xE8, 0x0B, 0xDC, 0x0E, 0xC6, 0xFC, 0x8C, 0x81,
                /* 0498 */  0x3B, 0x8E, 0x01, 0x8F, 0x93, 0x33, 0xEE, 0x34,
                /* 04A0 */  0xE1, 0x21, 0xF0, 0x01, 0xB4, 0x3A, 0x3D, 0x72,
                /* 04A8 */  0xEA, 0x39, 0x25, 0xDC, 0x71, 0x80, 0x4F, 0x09,
                /* 04B0 */  0x37, 0x00, 0x4C, 0x80, 0x33, 0x26, 0xA0, 0xEA,
                /* 04B8 */  0xFF, 0x7F, 0xC6, 0x04, 0xC6, 0x20, 0x11, 0xDE,
                /* 04C0 */  0x15, 0xA2, 0xBE, 0x23, 0x1B, 0xE2, 0x19, 0x99,
                /* 04C8 */  0xE1, 0xBC, 0x35, 0x3C, 0xBE, 0x3C, 0x23, 0x83,
                /* 04D0 */  0xF3, 0x8C, 0x09, 0xF0, 0xE7, 0xFF, 0x7F, 0xA4,
                /* 04D8 */  0xC7, 0xDE, 0x14, 0x82, 0x3F, 0x85, 0x00, 0x13,
                /* 04E0 */  0xF1, 0x67, 0x4C, 0x2A, 0xFC, 0x8C, 0x09, 0x6D,
                /* 04E8 */  0x2E, 0x9E, 0xB6, 0xCF, 0x98, 0x00, 0xF7, 0xFE,
                /* 04F0 */  0xFF, 0x67, 0x4C, 0xC0, 0x77, 0xE4, 0x33, 0x26,
                /* 04F8 */  0xA0, 0xE7, 0x48, 0x85, 0x3B, 0x63, 0x82, 0x61,
                /* 0500 */  0x9C, 0xEF, 0x4F, 0x06, 0x79, 0x5E, 0xF2, 0x81,
                /* 0508 */  0xC0, 0x47, 0x19, 0x16, 0xE3, 0x8C, 0x49, 0xCF,
                /* 0510 */  0x3D, 0x16, 0x0E, 0x83, 0x3A, 0x50, 0xC1, 0xF9,
                /* 0518 */  0xFF, 0x1F, 0xA8, 0x00, 0x2F, 0x01, 0x86, 0x0C,
                /* 0520 */  0x9A, 0x03, 0xC3, 0x19, 0x9C, 0x42, 0xB4, 0x08,
                /* 0528 */  0x67, 0x7C, 0xC0, 0x31, 0x5E, 0x09, 0x8C, 0x12,
                /* 0530 */  0xF0, 0xBC, 0x0D, 0x11, 0xF5, 0xA8, 0x7C, 0x81,
                /* 0538 */  0x30, 0x48, 0xA0, 0x77, 0x03, 0xDF, 0x13, 0x38,
                /* 0540 */  0xB0, 0x27, 0x60, 0x8C, 0x78, 0x21, 0x82, 0x3E,
                /* 0548 */  0x5F, 0xF9, 0xBC, 0x14, 0xE3, 0x05, 0xE0, 0xA8,
                /* 0550 */  0xD8, 0x09, 0x0B, 0xF6, 0x41, 0xE2, 0xC5, 0xD3,
                /* 0558 */  0xE3, 0x39, 0xB7, 0xE7, 0x8D, 0xA7, 0x98, 0x20,
                /* 0560 */  0x6F, 0x56, 0x8F, 0x19, 0xCF, 0x12, 0x2F, 0x9C,
                /* 0568 */  0x3E, 0x61, 0x71, 0x14, 0x1F, 0xAE, 0x0C, 0xF5,
                /* 0570 */  0xA2, 0x65, 0xC4, 0xB3, 0x0C, 0xF2, 0xE8, 0x69,
                /* 0578 */  0x90, 0x68, 0xC1, 0x8C, 0xC0, 0x4E, 0x58, 0x2C,
                /* 0580 */  0xEA, 0xE3, 0x44, 0xA7, 0x0A, 0x9F, 0xB0, 0x80,
                /* 0588 */  0xF3, 0xFF, 0xFF, 0x84, 0x05, 0xB8, 0x92, 0x73,
                /* 0590 */  0xC2, 0x90, 0x91, 0x23, 0x14, 0x3D, 0xE5, 0x70,
                /* 0598 */  0xDC, 0x37, 0x12, 0x1F, 0x10, 0x12, 0x38, 0xFE,
                /* 05A0 */  0xC1, 0x88, 0x9E, 0x3C, 0x81, 0xE7, 0xD9, 0x04,
                /* 05A8 */  0x3C, 0x23, 0x7B, 0x9A, 0x78, 0xA4, 0xF0, 0x8C,
                /* 05B0 */  0x9E, 0x36, 0x3C, 0x8B, 0x77, 0x00, 0x5F, 0x7D,
                /* 05B8 */  0xC2, 0x3D, 0xFB, 0xC0, 0x19, 0xF0, 0x3B, 0xC0,
                /* 05C0 */  0x03, 0x80, 0x61, 0x7C, 0x3A, 0xC3, 0x0F, 0x1C,
                /* 05C8 */  0x7F, 0xA9, 0xF0, 0x7D, 0xC6, 0xA7, 0x20, 0x9F,
                /* 05D0 */  0xCE, 0x70, 0x07, 0x35, 0x98, 0x67, 0x15, 0x43,
                /* 05D8 */  0x1D, 0x14, 0xEE, 0xFF, 0x3F, 0xA8, 0x27, 0xD2,
                /* 05E0 */  0x43, 0x88, 0xE3, 0xCB, 0x83, 0xCF, 0x6B, 0xC0,
                /* 05E8 */  0xE4, 0x30, 0x84, 0x78, 0x98, 0xF9, 0x40, 0x43,
                /* 05F0 */  0xC5, 0x2E, 0x95, 0x9E, 0x69, 0x00, 0x6E, 0x8D,
                /* 05F8 */  0xEB, 0x99, 0x06, 0x6C, 0xFF, 0xFF, 0x33, 0x0D,
                /* 0600 */  0x3E, 0xDE, 0x21, 0x14, 0xA0, 0xC9, 0xF1, 0xE1,
                /* 0608 */  0x61, 0x04, 0x4C, 0xC7, 0x82, 0xD0, 0x46, 0x7A,
                /* 0610 */  0x61, 0xF0, 0xA9, 0xC1, 0x90, 0xEF, 0x0A, 0x1E,
                /* 0618 */  0xA3, 0x27, 0xE1, 0xC3, 0x28, 0x50, 0xF1, 0x30,
                /* 0620 */  0x56, 0x96, 0xED, 0x30, 0x8A, 0x3A, 0x14, 0x38,
                /* 0628 */  0x0F, 0x95, 0x6E, 0xD8, 0x0F, 0x15, 0xC6, 0x3E,
                /* 0630 */  0x86, 0xC7, 0x09, 0x8F, 0xE1, 0x24, 0x22, 0x1D,
                /* 0638 */  0x96, 0xFF, 0xFF, 0x63, 0x74, 0x82, 0x03, 0x29,
                /* 0640 */  0x4A, 0x3B, 0x85, 0x94, 0x1D, 0x23, 0x51, 0x5A,
                /* 0648 */  0x8E, 0x91, 0x14, 0xC4, 0xC7, 0x48, 0xAE, 0xE4,
                /* 0650 */  0x34, 0x80, 0xD2, 0x71, 0xEC, 0x21, 0xE3, 0xC4,
                /* 0658 */  0x10, 0xCC, 0x75, 0x22, 0x85, 0x3E, 0x9B, 0xB7,
                /* 0660 */  0x48, 0xF0, 0xCC, 0xCB, 0x87, 0x8B, 0xE3, 0xC0,
                /* 0668 */  0x6C, 0xF2, 0x05, 0x13, 0x73, 0x2A, 0x85, 0x39,
                /* 0670 */  0xEF, 0xB7, 0x1F, 0xB0, 0x9C, 0x37, 0xDE, 0x59,
                /* 0678 */  0x7D, 0x25, 0x05, 0x16, 0x02, 0x27, 0x8F, 0x92,
                /* 0680 */  0x34, 0x79, 0x0A, 0xE2, 0xC9, 0x3B, 0xEE, 0xE4,
                /* 0688 */  0xD1, 0x33, 0xF1, 0xE4, 0xB1, 0x04, 0xC3, 0xDD,
                /* 0690 */  0x49, 0x41, 0x71, 0x73, 0xC0, 0x0F, 0x1F, 0xAC,
                /* 0698 */  0x97, 0x29, 0xFC, 0xFF, 0xFF, 0x5E, 0x8A, 0xBD,
                /* 06A0 */  0x71, 0xC0, 0x1F, 0x3F, 0xF6, 0x56, 0x0A, 0x4C,
                /* 06A8 */  0x24, 0x8C, 0x5D, 0xB7, 0x52, 0xC0, 0x0D, 0xAA,
                /* 06B0 */  0xCF, 0x03, 0xE0, 0xB8, 0x87, 0xB0, 0xD3, 0x92,
                /* 06B8 */  0x2F, 0x62, 0x06, 0x89, 0xF8, 0xAA, 0xC2, 0x06,
                /* 06C0 */  0xC5, 0x8E, 0x4A, 0xEC, 0xBA, 0xF6, 0xA8, 0x04,
                /* 06C8 */  0x2B, 0xDD, 0xED, 0x04, 0x35, 0x12, 0xA7, 0x79,
                /* 06D0 */  0x3F, 0x68, 0xEA, 0xAF, 0x00, 0x2F, 0x27, 0xC0,
                /* 06D8 */  0xEE, 0xFF, 0x7F, 0x39, 0x01, 0xF8, 0xFF, 0xFF,
                /* 06E0 */  0xBF, 0x9C, 0x80, 0x57, 0xC6, 0xE5, 0x04, 0x74,
                /* 06E8 */  0xC7, 0x00, 0x5F, 0x4E, 0x80, 0xEB, 0xE9, 0x0F,
                /* 06F0 */  0x77, 0x1E, 0x80, 0x3B, 0xCC, 0x53, 0xF3, 0xCC,
                /* 06F8 */  0x83, 0x3D, 0x10, 0xFA, 0x78, 0x02, 0x4E, 0x82,
                /* 0700 */  0x0A, 0x6D, 0xFA, 0xD4, 0x68, 0xD4, 0xAA, 0x41,
                /* 0708 */  0x99, 0x1A, 0x65, 0x1A, 0xD4, 0xEA, 0x53, 0xA9,
                /* 0710 */  0x31, 0x63, 0x86, 0xC6, 0xE3, 0x55, 0x6B, 0xD8,
                /* 0718 */  0x0E, 0xB5, 0x72, 0x81, 0x58, 0xD2, 0x67, 0x43,
                /* 0720 */  0x20, 0x16, 0x75, 0x32, 0x13, 0x88, 0xE3, 0x9A,
                /* 0728 */  0x00, 0x61, 0xC2, 0xD7, 0x27, 0x10, 0xC7, 0x06,
                /* 0730 */  0xA1, 0x62, 0xFF, 0x25, 0x32, 0x32, 0x58, 0x83,
                /* 0738 */  0x08, 0xC8, 0x21, 0x7C, 0x00, 0xB1, 0x48, 0x20,
                /* 0740 */  0x02, 0x27, 0xCF, 0x0A, 0x81, 0x12, 0x27, 0x20,
                /* 0748 */  0x4C, 0xE8, 0x73, 0x53, 0x20, 0x96, 0xE7, 0x05,
                /* 0750 */  0x84, 0x85, 0x03, 0xA1, 0x92, 0xCC, 0x80, 0x33,
                /* 0758 */  0x7D, 0x20, 0x02, 0xB2, 0xD4, 0xFF, 0x88, 0x80,
                /* 0760 */  0x2C, 0x1C, 0x44, 0x87, 0x03, 0xA2, 0x07, 0x84,
                /* 0768 */  0xFD, 0xFF, 0xE5, 0x83, 0xD0, 0x38, 0x7E, 0x40,
                /* 0770 */  0x58, 0x0C, 0x45, 0x20, 0x4C, 0x84, 0xA3, 0x41,
                /* 0778 */  0xD0, 0x27, 0xA9, 0xC0, 0x9D, 0x14, 0x44, 0x40,
                /* 0780 */  0x4E, 0x6E, 0x09, 0x88, 0xE9, 0xD0, 0x04, 0xC4,
                /* 0788 */  0x54, 0xBF, 0x85, 0x05, 0xE4, 0x08, 0x20, 0x02,
                /* 0790 */  0x72, 0x24, 0x53, 0x40, 0x2C, 0x20, 0x88, 0x80,
                /* 0798 */  0xFC, 0xFF, 0x07                               
            })
        }

        Mutex (PSMX, 0x00)
        Method (PHWM, 2, NotSerialized)
        {
            Acquire (PSMX, 0xFFFF)
            Store ("QSET", WCMD)
            Store (Arg1, WDID)
            Store (Arg0, WBUF)
            Store (WSMI, SMII)
            Name (RETB, Buffer (0x1000) {})
            Store (WBUF, RETB)
            Release (PSMX)
            Return (RETB)
        }
    }

    Scope (\)
    {
        Method (WMIA, 1, NotSerialized)
        {
            \_SB.AMW0.WMI4 (Arg0)
            Notify (\_SB.AMW0, 0xD0)
        }
    }

    Name (WQMO, Buffer (0x079B)
    {
        /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
        /* 0008 */  0x8B, 0x07, 0x00, 0x00, 0x60, 0x2C, 0x00, 0x00,
        /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
        /* 0018 */  0x28, 0xD1, 0x95, 0x00, 0x01, 0x06, 0x18, 0x42,
        /* 0020 */  0x10, 0x13, 0x10, 0x22, 0x21, 0x04, 0x12, 0x01,
        /* 0028 */  0xA1, 0xC8, 0x2C, 0x0C, 0x86, 0x10, 0x38, 0x2E,
        /* 0030 */  0x84, 0x1C, 0x40, 0x48, 0x1C, 0x14, 0x4A, 0x08,
        /* 0038 */  0x84, 0xFA, 0x13, 0xC8, 0xAF, 0x00, 0x84, 0x0E,
        /* 0040 */  0x05, 0xC8, 0x14, 0x60, 0x50, 0x80, 0x53, 0x04,
        /* 0048 */  0x11, 0xF4, 0x2A, 0xC0, 0xA6, 0x00, 0x93, 0x02,
        /* 0050 */  0x2C, 0x0A, 0xD0, 0x2E, 0xC0, 0xB2, 0x00, 0xDD,
        /* 0058 */  0x02, 0xA4, 0xC3, 0x12, 0x91, 0xE0, 0x28, 0x31,
        /* 0060 */  0xE0, 0x28, 0x9D, 0xD8, 0xC2, 0x0D, 0x1B, 0xBC,
        /* 0068 */  0x50, 0x14, 0xCD, 0x20, 0x4A, 0x82, 0x72, 0x11,
        /* 0070 */  0xA4, 0x0B, 0x42, 0xCA, 0x05, 0xF8, 0x46, 0xD0,
        /* 0078 */  0x00, 0xA2, 0xF4, 0x2E, 0xC0, 0xB6, 0x00, 0xD3,
        /* 0080 */  0xF0, 0x44, 0xEA, 0x10, 0x50, 0x72, 0x86, 0x80,
        /* 0088 */  0x1A, 0x40, 0xAB, 0x13, 0x10, 0x7E, 0xA5, 0x53,
        /* 0090 */  0x42, 0x12, 0x84, 0x33, 0x56, 0xF1, 0x33, 0xD0,
        /* 0098 */  0x1C, 0x4E, 0xE0, 0x9C, 0x3A, 0xC7, 0x90, 0xE3,
        /* 00A0 */  0x71, 0xA1, 0x07, 0xC1, 0x03, 0x29, 0x00, 0x61,
        /* 00A8 */  0xE1, 0x21, 0x14, 0x01, 0x06, 0x25, 0x61, 0x2C,
        /* 00B0 */  0xD4, 0xC5, 0xA8, 0x51, 0x23, 0x65, 0x03, 0x32,
        /* 00B8 */  0x44, 0x69, 0xA3, 0x46, 0x0F, 0xE8, 0xEC, 0x8E,
        /* 00C0 */  0xA4, 0x61, 0x01, 0xB2, 0x47, 0x22, 0x02, 0xA3,
        /* 00C8 */  0x1E, 0xD3, 0x11, 0x16, 0x36, 0x23, 0xA1, 0xC6,
        /* 00D0 */  0x68, 0x0E, 0x8A, 0x40, 0xE3, 0x06, 0x6D, 0x89,
        /* 00D8 */  0xB0, 0x1A, 0x57, 0xEC, 0x33, 0xB3, 0xF0, 0x61,
        /* 00E0 */  0x09, 0xE3, 0x08, 0x0E, 0x2C, 0x41, 0xA3, 0x68,
        /* 00E8 */  0x9A, 0xE3, 0xD9, 0x86, 0x48, 0x70, 0x10, 0xA1,
        /* 00F0 */  0x31, 0x32, 0x20, 0xE4, 0x59, 0x80, 0x75, 0x50,
        /* 00F8 */  0x49, 0x06, 0x22, 0xEE, 0x11, 0xA5, 0x10, 0x41,
        /* 0100 */  0xF3, 0x3D, 0x91, 0x1A, 0x05, 0x68, 0xC3, 0x90,
        /* 0108 */  0xAD, 0xB3, 0x81, 0x86, 0x1A, 0xAB, 0x31, 0x14,
        /* 0110 */  0x41, 0x44, 0x08, 0x1A, 0xC5, 0x60, 0x11, 0x42,
        /* 0118 */  0x85, 0xF8, 0xFF, 0x47, 0x89, 0x7A, 0x4A, 0x41,
        /* 0120 */  0xA2, 0x56, 0x06, 0x22, 0xB4, 0x60, 0x46, 0x60,
        /* 0128 */  0xF6, 0x07, 0x41, 0x62, 0x9C, 0x19, 0x74, 0x58,
        /* 0130 */  0xB0, 0x0C, 0x10, 0x19, 0x11, 0x34, 0x1A, 0x76,
        /* 0138 */  0x16, 0xF0, 0x70, 0x3C, 0x93, 0xE6, 0x27, 0xA6,
        /* 0140 */  0xC1, 0x99, 0x60, 0x6C, 0x08, 0x69, 0x80, 0x90,
        /* 0148 */  0xA8, 0x83, 0x03, 0x25, 0xB0, 0x94, 0x81, 0x93,
        /* 0150 */  0xCB, 0x81, 0xC7, 0x77, 0xC6, 0x51, 0x43, 0x9C,
        /* 0158 */  0xFA, 0x99, 0xF9, 0x1F, 0xE1, 0x2D, 0xF8, 0x08,
        /* 0160 */  0xC0, 0xC7, 0xE0, 0xC1, 0x1E, 0x42, 0xC0, 0x23,
        /* 0168 */  0x64, 0x67, 0x00, 0x03, 0xE2, 0xAF, 0x0B, 0x27,
        /* 0170 */  0xED, 0xB9, 0xF8, 0x2C, 0x00, 0x63, 0xF8, 0x70,
        /* 0178 */  0x8D, 0x8F, 0x42, 0xE3, 0x61, 0xE7, 0x03, 0x36,
        /* 0180 */  0x2E, 0x0E, 0xEF, 0x43, 0xC1, 0x09, 0x17, 0x0B,
        /* 0188 */  0xA2, 0x00, 0x10, 0x92, 0x75, 0x3E, 0x40, 0xCF,
        /* 0190 */  0xFA, 0xD8, 0x02, 0x3E, 0x0C, 0x34, 0x7B, 0x87,
        /* 0198 */  0x20, 0x04, 0x2F, 0x02, 0x3E, 0x3A, 0xF8, 0xB8,
        /* 01A0 */  0xE1, 0x71, 0x3F, 0x6F, 0x80, 0xE1, 0x70, 0xE0,
        /* 01A8 */  0xE1, 0xF8, 0xB4, 0x01, 0x5C, 0x46, 0xC0, 0xA5,
        /* 01B0 */  0x3D, 0x29, 0x4C, 0x20, 0xC9, 0x4F, 0x00, 0x89,
        /* 01B8 */  0x81, 0x41, 0x1D, 0x08, 0x7C, 0xB0, 0x80, 0x2B,
        /* 01C0 */  0x09, 0x0E, 0x35, 0x3C, 0x4F, 0xEC, 0x01, 0xE1,
        /* 01C8 */  0xFF, 0x7F, 0x94, 0x67, 0x76, 0x20, 0x9E, 0xFE,
        /* 01D0 */  0x63, 0x00, 0x8C, 0x03, 0x82, 0xA7, 0x75, 0x4A,
        /* 01D8 */  0xBE, 0x79, 0x3C, 0x48, 0xF8, 0x22, 0x10, 0x26,
        /* 01E0 */  0x81, 0x4F, 0x09, 0x0C, 0x8D, 0x1F, 0x37, 0xC0,
        /* 01E8 */  0x3A, 0x6A, 0xFC, 0x01, 0x01, 0xDE, 0x49, 0xE2,
        /* 01F0 */  0xFC, 0xFA, 0x1C, 0x80, 0x0E, 0x0D, 0xA7, 0xC8,
        /* 01F8 */  0x40, 0x5E, 0x03, 0x9E, 0x09, 0x4E, 0xC9, 0xE3,
        /* 0200 */  0x4B, 0xE0, 0x33, 0x07, 0xEC, 0xBB, 0xC1, 0x61,
        /* 0208 */  0x1C, 0x4C, 0x88, 0x08, 0xEF, 0x01, 0x4F, 0x1D,
        /* 0210 */  0xBE, 0x6B, 0x3C, 0x0A, 0x04, 0x8A, 0xD0, 0xDB,
        /* 0218 */  0x99, 0x83, 0x9E, 0x42, 0x8C, 0x12, 0xED, 0xAC,
        /* 0220 */  0xC2, 0x3C, 0x70, 0x44, 0xF1, 0x91, 0xC3, 0x08,
        /* 0228 */  0xEF, 0x1E, 0xBE, 0x13, 0x3C, 0x80, 0xB4, 0x36,
        /* 0230 */  0x39, 0xE1, 0x06, 0x7A, 0xE6, 0x60, 0xD1, 0xCE,
        /* 0238 */  0x2C, 0xB2, 0x00, 0xA2, 0x48, 0xA3, 0x41, 0x9D,
        /* 0240 */  0x11, 0x7C, 0x1A, 0xF0, 0xB4, 0x9E, 0x62, 0x7C,
        /* 0248 */  0x94, 0x30, 0xC8, 0x19, 0x1E, 0xD8, 0x73, 0xC2,
        /* 0250 */  0x63, 0x80, 0x07, 0xCC, 0x6E, 0x0C, 0x3E, 0x4E,
        /* 0258 */  0xF8, 0x5C, 0x80, 0x77, 0x0D, 0xA8, 0x19, 0xFA,
        /* 0260 */  0xB0, 0x01, 0xE7, 0xD0, 0x81, 0x3F, 0x4D, 0xE0,
        /* 0268 */  0x0F, 0x16, 0xF8, 0xF1, 0xF8, 0x9A, 0xC3, 0x26,
        /* 0270 */  0x9C, 0xC0, 0xF2, 0x07, 0x81, 0x1A, 0x99, 0xA1,
        /* 0278 */  0x3D, 0xCB, 0xD3, 0x7A, 0x0D, 0xF0, 0x69, 0xC7,
        /* 0280 */  0x04, 0x3E, 0x6F, 0xF8, 0xFF, 0xFF, 0xCF, 0xF1,
        /* 0288 */  0x78, 0xC0, 0xAF, 0xF8, 0x6C, 0x41, 0xEE, 0x0A,
        /* 0290 */  0x9E, 0xAF, 0xCF, 0x2E, 0xCC, 0xC6, 0x78, 0x50,
        /* 0298 */  0xA3, 0xF0, 0x01, 0x07, 0x77, 0x76, 0xF1, 0x11,
        /* 02A0 */  0xC0, 0x67, 0x17, 0xE0, 0x39, 0x89, 0x67, 0x09,
        /* 02A8 */  0xF0, 0x1E, 0x02, 0xAC, 0x19, 0x4F, 0x87, 0x2D,
        /* 02B0 */  0x18, 0x23, 0xC6, 0x43, 0x9E, 0x71, 0xD5, 0xC3,
        /* 02B8 */  0xD0, 0x45, 0xC0, 0xEA, 0xEE, 0x2B, 0xA8, 0xA3,
        /* 02C0 */  0x17, 0x98, 0xA0, 0x5E, 0x33, 0x70, 0xA7, 0x17,
        /* 02C8 */  0xE0, 0x73, 0xCA, 0x82, 0xF7, 0xFF, 0x3F, 0x65,
        /* 02D0 */  0x01, 0xF7, 0xAB, 0x02, 0x3F, 0xA2, 0x80, 0x01,
        /* 02D8 */  0xB2, 0xB3, 0xD3, 0x89, 0x10, 0xDE, 0x4B, 0x9E,
        /* 02E0 */  0x43, 0x7C, 0xBB, 0xF2, 0xC1, 0x24, 0xC8, 0x73,
        /* 02E8 */  0x40, 0x84, 0xA7, 0x2C, 0x7E, 0x1F, 0x88, 0x12,
        /* 02F0 */  0xF3, 0x80, 0x22, 0x45, 0x31, 0x62, 0x90, 0x27,
        /* 02F8 */  0x2C, 0x5F, 0x4F, 0x62, 0x18, 0x3A, 0x58, 0xB8,
        /* 0300 */  0xF0, 0x11, 0x9E, 0xB2, 0x00, 0x8B, 0x97, 0x2C,
        /* 0308 */  0xCC, 0x29, 0x0B, 0xE6, 0xDB, 0xC0, 0xA7, 0x2C,
        /* 0310 */  0x70, 0xFC, 0xFF, 0x4F, 0x59, 0xE0, 0x1A, 0xF7,
        /* 0318 */  0x53, 0x16, 0x30, 0x93, 0xFE, 0x14, 0xF0, 0xA9,
        /* 0320 */  0xC6, 0x4F, 0x00, 0x45, 0x3F, 0x58, 0x50, 0x18,
        /* 0328 */  0x9F, 0xB2, 0x00, 0x57, 0xF2, 0x0E, 0x08, 0xA0,
        /* 0330 */  0x39, 0x3B, 0xF9, 0xB6, 0x60, 0xB0, 0xE7, 0x98,
        /* 0338 */  0x93, 0x78, 0xC9, 0xF0, 0x29, 0x11, 0x0C, 0x87,
        /* 0340 */  0x0C, 0xDF, 0xA9, 0x0E, 0xE5, 0x91, 0xE3, 0x29,
        /* 0348 */  0xC0, 0x47, 0x2C, 0xB0, 0xC7, 0x39, 0x06, 0xE8,
        /* 0350 */  0xB8, 0xE2, 0x23, 0x96, 0xFF, 0xFF, 0x47, 0x2C,
        /* 0358 */  0x80, 0x1B, 0x07, 0x10, 0xFC, 0xA9, 0x03, 0xD6,
        /* 0360 */  0x3D, 0x20, 0xAC, 0x0F, 0x1D, 0xC0, 0x43, 0xF6,
        /* 0368 */  0x43, 0x40, 0x67, 0x18, 0x4B, 0x06, 0x91, 0x8D,
        /* 0370 */  0x73, 0x0D, 0x1D, 0xA3, 0xC5, 0x2F, 0x54, 0x37,
        /* 0378 */  0x85, 0xB8, 0x07, 0xC3, 0x65, 0x03, 0x09, 0xD4,
        /* 0380 */  0xC3, 0xB5, 0x60, 0x0A, 0x89, 0xA2, 0xD1, 0x68,
        /* 0388 */  0x0C, 0x4C, 0x60, 0x04, 0x67, 0x10, 0x03, 0x3A,
        /* 0390 */  0x23, 0x84, 0x0E, 0x65, 0x38, 0x15, 0xE7, 0x21,
        /* 0398 */  0xD4, 0xFF, 0x9F, 0x60, 0xA8, 0x1B, 0x13, 0x9D,
        /* 03A0 */  0x9D, 0xE7, 0xCF, 0x6F, 0x23, 0x3E, 0x11, 0x18,
        /* 03A8 */  0xD8, 0x57, 0x88, 0xB7, 0x0C, 0xB0, 0x0C, 0xCB,
        /* 03B0 */  0x8B, 0x7B, 0x02, 0x78, 0xBC, 0x78, 0xCB, 0x48,
        /* 03B8 */  0x50, 0xCD, 0xB1, 0x06, 0x35, 0x07, 0x5F, 0x05,
        /* 03C0 */  0xDE, 0xC8, 0x4C, 0xE0, 0x2B, 0x18, 0xD8, 0x4E,
        /* 03C8 */  0x33, 0x18, 0x7D, 0x77, 0x02, 0x50, 0x00, 0xF9,
        /* 03D0 */  0x28, 0xE0, 0xFB, 0xF2, 0xDB, 0x00, 0x9B, 0xC5,
        /* 03D8 */  0x2B, 0xB3, 0xD1, 0x7C, 0xFE, 0x44, 0x0C, 0x1D,
        /* 03E0 */  0x25, 0x66, 0xE8, 0x14, 0xC4, 0x43, 0x77, 0xD0,
        /* 03E8 */  0xA1, 0xA3, 0x8F, 0x03, 0x3E, 0x59, 0xE1, 0x82,
        /* 03F0 */  0x1D, 0xBE, 0xA0, 0x4D, 0xEE, 0x68, 0x4F, 0xCC,
        /* 03F8 */  0xB3, 0xF0, 0x3C, 0x71, 0x73, 0x07, 0xD3, 0x11,
        /* 0400 */  0x09, 0xC6, 0xE0, 0x31, 0x93, 0x07, 0xB3, 0xC0,
        /* 0408 */  0xC9, 0x83, 0xE2, 0xFF, 0x3F, 0x79, 0x98, 0xF0,
        /* 0410 */  0x98, 0xB0, 0x87, 0x43, 0x7A, 0xE8, 0xF0, 0xC8,
        /* 0418 */  0xF8, 0x38, 0x7D, 0xFA, 0x61, 0xD8, 0xA7, 0x73,
        /* 0420 */  0x2E, 0x45, 0xCF, 0x48, 0x57, 0x91, 0x67, 0x2E,
        /* 0428 */  0x0C, 0xAC, 0x47, 0xCE, 0x61, 0x8D, 0x16, 0xF6,
        /* 0430 */  0x80, 0x9F, 0x43, 0x7C, 0x87, 0xF1, 0x81, 0x87,
        /* 0438 */  0xC1, 0xFA, 0xF4, 0x02, 0x8E, 0xE3, 0x17, 0xFC,
        /* 0440 */  0xD3, 0x00, 0x78, 0x0E, 0x20, 0x1E, 0xC3, 0x0B,
        /* 0448 */  0x08, 0x3F, 0xBE, 0xE8, 0xFC, 0x4B, 0x85, 0x2E,
        /* 0450 */  0x4E, 0xF2, 0x60, 0x50, 0xA7, 0x29, 0xC0, 0xD5,
        /* 0458 */  0xE9, 0x0D, 0x3C, 0x57, 0x7D, 0xDC, 0x59, 0x0A,
        /* 0460 */  0xF7, 0xFF, 0x3F, 0x4B, 0xC1, 0x38, 0xFC, 0xFA,
        /* 0468 */  0x02, 0xEF, 0xBB, 0x94, 0x11, 0x0E, 0xE4, 0x59,
        /* 0470 */  0x0A, 0xEC, 0xB1, 0x9F, 0x21, 0x3A, 0x04, 0xF8,
        /* 0478 */  0x2C, 0x05, 0xF0, 0xE3, 0xF5, 0xE1, 0xF3, 0x0C,
        /* 0480 */  0xDC, 0xC0, 0xA7, 0x5F, 0xA0, 0xF5, 0xFF, 0x3F,
        /* 0488 */  0x85, 0x80, 0xFF, 0x18, 0xE1, 0x23, 0x0E, 0xEE,
        /* 0490 */  0xE8, 0x0B, 0xDC, 0x0E, 0xC6, 0xFC, 0x8C, 0x81,
        /* 0498 */  0x3B, 0x8E, 0x01, 0x8F, 0x93, 0x33, 0xEE, 0x34,
        /* 04A0 */  0xE1, 0x21, 0xF0, 0x01, 0xB4, 0x3A, 0x3D, 0x72,
        /* 04A8 */  0xEA, 0x39, 0x25, 0xDC, 0x71, 0x80, 0x4F, 0x09,
        /* 04B0 */  0x37, 0x00, 0x4C, 0x80, 0x33, 0x26, 0xA0, 0xEA,
        /* 04B8 */  0xFF, 0x7F, 0xC6, 0x04, 0xC6, 0x20, 0x11, 0xDE,
        /* 04C0 */  0x15, 0xA2, 0xBE, 0x23, 0x1B, 0xE2, 0x19, 0x99,
        /* 04C8 */  0xE1, 0xBC, 0x35, 0x3C, 0xBE, 0x3C, 0x23, 0x83,
        /* 04D0 */  0xF3, 0x8C, 0x09, 0xF0, 0xE7, 0xFF, 0x7F, 0xA4,
        /* 04D8 */  0xC7, 0xDE, 0x14, 0x82, 0x3F, 0x85, 0x00, 0x13,
        /* 04E0 */  0xF1, 0x67, 0x4C, 0x2A, 0xFC, 0x8C, 0x09, 0x6D,
        /* 04E8 */  0x2E, 0x9E, 0xB6, 0xCF, 0x98, 0x00, 0xF7, 0xFE,
        /* 04F0 */  0xFF, 0x67, 0x4C, 0xC0, 0x77, 0xE4, 0x33, 0x26,
        /* 04F8 */  0xA0, 0xE7, 0x48, 0x85, 0x3B, 0x63, 0x82, 0x61,
        /* 0500 */  0x9C, 0xEF, 0x4F, 0x06, 0x79, 0x5E, 0xF2, 0x81,
        /* 0508 */  0xC0, 0x47, 0x19, 0x16, 0xE3, 0x8C, 0x49, 0xCF,
        /* 0510 */  0x3D, 0x16, 0x0E, 0x83, 0x3A, 0x50, 0xC1, 0xF9,
        /* 0518 */  0xFF, 0x1F, 0xA8, 0x00, 0x2F, 0x01, 0x86, 0x0C,
        /* 0520 */  0x9A, 0x03, 0xC3, 0x19, 0x9C, 0x42, 0xB4, 0x08,
        /* 0528 */  0x67, 0x7C, 0xC0, 0x31, 0x5E, 0x09, 0x8C, 0x12,
        /* 0530 */  0xF0, 0xBC, 0x0D, 0x11, 0xF5, 0xA8, 0x7C, 0x81,
        /* 0538 */  0x30, 0x48, 0xA0, 0x77, 0x03, 0xDF, 0x13, 0x38,
        /* 0540 */  0xB0, 0x27, 0x60, 0x8C, 0x78, 0x21, 0x82, 0x3E,
        /* 0548 */  0x5F, 0xF9, 0xBC, 0x14, 0xE3, 0x05, 0xE0, 0xA8,
        /* 0550 */  0xD8, 0x09, 0x0B, 0xF6, 0x41, 0xE2, 0xC5, 0xD3,
        /* 0558 */  0xE3, 0x39, 0xB7, 0xE7, 0x8D, 0xA7, 0x98, 0x20,
        /* 0560 */  0x6F, 0x56, 0x8F, 0x19, 0xCF, 0x12, 0x2F, 0x9C,
        /* 0568 */  0x3E, 0x61, 0x71, 0x14, 0x1F, 0xAE, 0x0C, 0xF5,
        /* 0570 */  0xA2, 0x65, 0xC4, 0xB3, 0x0C, 0xF2, 0xE8, 0x69,
        /* 0578 */  0x90, 0x68, 0xC1, 0x8C, 0xC0, 0x4E, 0x58, 0x2C,
        /* 0580 */  0xEA, 0xE3, 0x44, 0xA7, 0x0A, 0x9F, 0xB0, 0x80,
        /* 0588 */  0xF3, 0xFF, 0xFF, 0x84, 0x05, 0xB8, 0x92, 0x73,
        /* 0590 */  0xC2, 0x90, 0x91, 0x23, 0x14, 0x3D, 0xE5, 0x70,
        /* 0598 */  0xDC, 0x37, 0x12, 0x1F, 0x10, 0x12, 0x38, 0xFE,
        /* 05A0 */  0xC1, 0x88, 0x9E, 0x3C, 0x81, 0xE7, 0xD9, 0x04,
        /* 05A8 */  0x3C, 0x23, 0x7B, 0x9A, 0x78, 0xA4, 0xF0, 0x8C,
        /* 05B0 */  0x9E, 0x36, 0x3C, 0x8B, 0x77, 0x00, 0x5F, 0x7D,
        /* 05B8 */  0xC2, 0x3D, 0xFB, 0xC0, 0x19, 0xF0, 0x3B, 0xC0,
        /* 05C0 */  0x03, 0x80, 0x61, 0x7C, 0x3A, 0xC3, 0x0F, 0x1C,
        /* 05C8 */  0x7F, 0xA9, 0xF0, 0x7D, 0xC6, 0xA7, 0x20, 0x9F,
        /* 05D0 */  0xCE, 0x70, 0x07, 0x35, 0x98, 0x67, 0x15, 0x43,
        /* 05D8 */  0x1D, 0x14, 0xEE, 0xFF, 0x3F, 0xA8, 0x27, 0xD2,
        /* 05E0 */  0x43, 0x88, 0xE3, 0xCB, 0x83, 0xCF, 0x6B, 0xC0,
        /* 05E8 */  0xE4, 0x30, 0x84, 0x78, 0x98, 0xF9, 0x40, 0x43,
        /* 05F0 */  0xC5, 0x2E, 0x95, 0x9E, 0x69, 0x00, 0x6E, 0x8D,
        /* 05F8 */  0xEB, 0x99, 0x06, 0x6C, 0xFF, 0xFF, 0x33, 0x0D,
        /* 0600 */  0x3E, 0xDE, 0x21, 0x14, 0xA0, 0xC9, 0xF1, 0xE1,
        /* 0608 */  0x61, 0x04, 0x4C, 0xC7, 0x82, 0xD0, 0x46, 0x7A,
        /* 0610 */  0x61, 0xF0, 0xA9, 0xC1, 0x90, 0xEF, 0x0A, 0x1E,
        /* 0618 */  0xA3, 0x27, 0xE1, 0xC3, 0x28, 0x50, 0xF1, 0x30,
        /* 0620 */  0x56, 0x96, 0xED, 0x30, 0x8A, 0x3A, 0x14, 0x38,
        /* 0628 */  0x0F, 0x95, 0x6E, 0xD8, 0x0F, 0x15, 0xC6, 0x3E,
        /* 0630 */  0x86, 0xC7, 0x09, 0x8F, 0xE1, 0x24, 0x22, 0x1D,
        /* 0638 */  0x96, 0xFF, 0xFF, 0x63, 0x74, 0x82, 0x03, 0x29,
        /* 0640 */  0x4A, 0x3B, 0x85, 0x94, 0x1D, 0x23, 0x51, 0x5A,
        /* 0648 */  0x8E, 0x91, 0x14, 0xC4, 0xC7, 0x48, 0xAE, 0xE4,
        /* 0650 */  0x34, 0x80, 0xD2, 0x71, 0xEC, 0x21, 0xE3, 0xC4,
        /* 0658 */  0x10, 0xCC, 0x75, 0x22, 0x85, 0x3E, 0x9B, 0xB7,
        /* 0660 */  0x48, 0xF0, 0xCC, 0xCB, 0x87, 0x8B, 0xE3, 0xC0,
        /* 0668 */  0x6C, 0xF2, 0x05, 0x13, 0x73, 0x2A, 0x85, 0x39,
        /* 0670 */  0xEF, 0xB7, 0x1F, 0xB0, 0x9C, 0x37, 0xDE, 0x59,
        /* 0678 */  0x7D, 0x25, 0x05, 0x16, 0x02, 0x27, 0x8F, 0x92,
        /* 0680 */  0x34, 0x79, 0x0A, 0xE2, 0xC9, 0x3B, 0xEE, 0xE4,
        /* 0688 */  0xD1, 0x33, 0xF1, 0xE4, 0xB1, 0x04, 0xC3, 0xDD,
        /* 0690 */  0x49, 0x41, 0x71, 0x73, 0xC0, 0x0F, 0x1F, 0xAC,
        /* 0698 */  0x97, 0x29, 0xFC, 0xFF, 0xFF, 0x5E, 0x8A, 0xBD,
        /* 06A0 */  0x71, 0xC0, 0x1F, 0x3F, 0xF6, 0x56, 0x0A, 0x4C,
        /* 06A8 */  0x24, 0x8C, 0x5D, 0xB7, 0x52, 0xC0, 0x0D, 0xAA,
        /* 06B0 */  0xCF, 0x03, 0xE0, 0xB8, 0x87, 0xB0, 0xD3, 0x92,
        /* 06B8 */  0x2F, 0x62, 0x06, 0x89, 0xF8, 0xAA, 0xC2, 0x06,
        /* 06C0 */  0xC5, 0x8E, 0x4A, 0xEC, 0xBA, 0xF6, 0xA8, 0x04,
        /* 06C8 */  0x2B, 0xDD, 0xED, 0x04, 0x35, 0x12, 0xA7, 0x79,
        /* 06D0 */  0x3F, 0x68, 0xEA, 0xAF, 0x00, 0x2F, 0x27, 0xC0,
        /* 06D8 */  0xEE, 0xFF, 0x7F, 0x39, 0x01, 0xF8, 0xFF, 0xFF,
        /* 06E0 */  0xBF, 0x9C, 0x80, 0x57, 0xC6, 0xE5, 0x04, 0x74,
        /* 06E8 */  0xC7, 0x00, 0x5F, 0x4E, 0x80, 0xEB, 0xE9, 0x0F,
        /* 06F0 */  0x77, 0x1E, 0x80, 0x3B, 0xCC, 0x53, 0xF3, 0xCC,
        /* 06F8 */  0x83, 0x3D, 0x10, 0xFA, 0x78, 0x02, 0x4E, 0x82,
        /* 0700 */  0x0A, 0x6D, 0xFA, 0xD4, 0x68, 0xD4, 0xAA, 0x41,
        /* 0708 */  0x99, 0x1A, 0x65, 0x1A, 0xD4, 0xEA, 0x53, 0xA9,
        /* 0710 */  0x31, 0x63, 0x86, 0xC6, 0xE3, 0x55, 0x6B, 0xD8,
        /* 0718 */  0x0E, 0xB5, 0x72, 0x81, 0x58, 0xD2, 0x67, 0x43,
        /* 0720 */  0x20, 0x16, 0x75, 0x32, 0x13, 0x88, 0xE3, 0x9A,
        /* 0728 */  0x00, 0x61, 0xC2, 0xD7, 0x27, 0x10, 0xC7, 0x06,
        /* 0730 */  0xA1, 0x62, 0xFF, 0x25, 0x32, 0x32, 0x58, 0x83,
        /* 0738 */  0x08, 0xC8, 0x21, 0x7C, 0x00, 0xB1, 0x48, 0x20,
        /* 0740 */  0x02, 0x27, 0xCF, 0x0A, 0x81, 0x12, 0x27, 0x20,
        /* 0748 */  0x4C, 0xE8, 0x73, 0x53, 0x20, 0x96, 0xE7, 0x05,
        /* 0750 */  0x84, 0x85, 0x03, 0xA1, 0x92, 0xCC, 0x80, 0x33,
        /* 0758 */  0x7D, 0x20, 0x02, 0xB2, 0xD4, 0xFF, 0x88, 0x80,
        /* 0760 */  0x2C, 0x1C, 0x44, 0x87, 0x03, 0xA2, 0x07, 0x84,
        /* 0768 */  0xFD, 0xFF, 0xE5, 0x83, 0xD0, 0x38, 0x7E, 0x40,
        /* 0770 */  0x58, 0x0C, 0x45, 0x20, 0x4C, 0x84, 0xA3, 0x41,
        /* 0778 */  0xD0, 0x27, 0xA9, 0xC0, 0x9D, 0x14, 0x44, 0x40,
        /* 0780 */  0x4E, 0x6E, 0x09, 0x88, 0xE9, 0xD0, 0x04, 0xC4,
        /* 0788 */  0x54, 0xBF, 0x85, 0x05, 0xE4, 0x08, 0x20, 0x02,
        /* 0790 */  0x72, 0x24, 0x53, 0x40, 0x2C, 0x20, 0x88, 0x80,
        /* 0798 */  0xFC, 0xFF, 0x07                               
    })
    Scope (_SB.PCI0.GFX0)
    {
        Name (GINI, Zero)
        Method (_REG, 2, NotSerialized)  // _REG: Region Availability
        {
            If (LEqual (GINI, Zero))
            {
                Store (One, CLID)
                Store (One, GINI)
            }
        }
    }

    Scope (_SB.PCI0.PEG0.PEGP)
    {
        Method (NVSM, 1, NotSerialized)
        {
            Store (Arg0, Local0)
            SX10 ()
            SX30 (0x1E)
            SX30 (Local0)
            SX11 ()
            SX12 ()
        }
    }

    Name (TPMF, Zero)
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
            OPTS (Arg0)
            \_SB.PCI0.LPCB.SPTS (Arg0)
        }
    }

    Method (WAK, 1, NotSerialized)
    {
        OWAK (Arg0)
        \_SB.PCI0.LPCB.SWAK (Arg0)
    }
}

