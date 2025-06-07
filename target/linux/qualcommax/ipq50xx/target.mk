SUBTARGET:=ipq50xx
BOARDNAME:=Qualcomm Atheros IPQ50xx
DEFAULT_PACKAGES += ath11k-firmware-ipq5018 nss-firmware-ipq50xx

define Target/Description
	Build firmware images for Qualcomm Atheros IPQ50xx based boards.
endef
