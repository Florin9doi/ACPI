#!/usr/bin/env bash

CLOVER_ACPI="/Volumes/USB-8GB/EFI/CLOVER/OEM/X299 Taichi XE/ACPI/patched/"
CLOVER_ACPI="/mnt/l/EFI/CLOVER/OEM/P5K SE_EPU/ACPI/patched/"

iasl SSDT-HPET-PIC-TMR-RTC.dsl
iasl SSDT-USB.dsl

mv SSDT-HPET-PIC-TMR-RTC.aml "${CLOVER_ACPI}"
mv SSDT-USB.aml "${CLOVER_ACPI}"
