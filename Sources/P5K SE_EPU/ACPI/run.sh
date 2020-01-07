#!/usr/bin/env bash

SYSTEM="P5K SE_EPU"

CLOVER_ACPI="/mnt/l/EFI/CLOVER/OEM/${SYSTEM}/ACPI/patched/"
CLOVER_ACPI="/Volumes/BOOT/EFI/CLOVER/OEM/${SYSTEM}/ACPI/patched/"

TABLES=(
	SSDT-HPET-PIC-TMR-RTC
	SSDT-PTS-WAK
	SSDT-USB
)

for TABLE in "${TABLES[@]}"
do
	iasl "$TABLE".dsl
	cp "$TABLE".aml "../../../EFI/CLOVER/OEM/${SYSTEM}/ACPI/patched"
	mv "$TABLE".aml "${CLOVER_ACPI}"
done
