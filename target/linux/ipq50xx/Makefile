include $(TOPDIR)/rules.mk

BOARD:=ipq50xx
BOARDNAME:=Qualcomm Atheros IPQ50XX
SUBTARGETS:=arm aarch64

CPU_TYPE:=cortex-a53
FEATURES:=fpu ramdisk nand squashfs pcie

KERNEL_PATCHVER:=5.4
LINUX_VERSION-5.4:=-qsdk-11.5.0.5

CONFIG_KERNEL_GIT_CLONE_URI:=https://git.codelinaro.org/clo/qsdk/oss/kernel/linux-ipq-5.4
CONFIG_KERNEL_GIT_REF:=dcf119b441de268da594bcf427e3934b5db7613a

include $(INCLUDE_DIR)/target.mk

define Kernel/Prepare/Default
	$(LINUX_CAT) $(DL_DIR)/$(LINUX_SOURCE) | $(TAR) -C $(KERNEL_BUILD_DIR) $(TAR_OPTIONS)
	$(Kernel/Patch)
	$(if $(QUILT),touch $(LINUX_DIR)/.quilt_used)
endef

KERNELNAME:=Image dtbs

DEFAULT_PACKAGES += \
	kmod-gpio-button-hotplug \
	uboot-envtools \
	kmod-qca-nss-dp swconfig \
	kmod-qca-nss-drv qca-nss-fw-ipq50xx-retail \
	kmod-ath11k wpad-mesh-openssl

$(eval $(call BuildTarget))
