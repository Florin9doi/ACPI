#!/bin/bash

CLOVER_ACPI="/Volumes/USB-8GB/EFI/CLOVER/OEM/X299 Taichi XE/ACPI"

iasl SSDT-HDEF.dsl

iasl SSDT-GPU-PCIE1.dsl
iasl SSDT-GPU-PCIE3.dsl
#iasl SSDT-GPU-PCIE5.dsl

#iasl SSDT-SSD1.dsl
iasl SSDT-SSD2.dsl
iasl SSDT-SSD3.dsl


mv SSDT-HDEF.aml "${CLOVER_ACPI}"/patched/

mv SSDT-GPU-PCIE1.aml "${CLOVER_ACPI}"/patched/
mv SSDT-GPU-PCIE3.aml "${CLOVER_ACPI}"/patched/
#mv SSDT-GPU-PCIE5.aml "${CLOVER_ACPI}"/patched/

#mv SSDT-SSD1.aml "${CLOVER_ACPI}"/patched/
mv SSDT-SSD2.aml "${CLOVER_ACPI}"/patched/
mv SSDT-SSD3.aml "${CLOVER_ACPI}"/patched/
