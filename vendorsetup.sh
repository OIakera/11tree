rm -rf vendor/qcom/opensource/power
rm -rf vendor/qcom/opensource/healthd-ext
rm -rf hardware/qcom-caf/msm8998/audio
rm -rf hardware/qcom-caf/msm8998/media
rm -rf hardware/qcom-caf/msm8998/display

git clone https://github.com/SuperiorOS/android_vendor_qcom_opensource_power.git -b eleven vendor/qcom/opensource/power
git clone https://github.com/LineageOS/android_vendor_qcom_opensource_healthd-ext.git -b lineage-18.1 vendor/qcom/opensource/healthd-ext 
git clone https://github.com/LineageOS/android_hardware_qcom_display.git -b lineage-18.1-caf-msm8998 hardware/qcom-caf/msm8998/display
git clone https://github.com/LineageOS/android_hardware_qcom_audio.git -b lineage-18.1-caf-msm8998 hardware/qcom-caf/msm8998/audio
git clone https://github.com/LineageOS/android_hardware_qcom_media.git -b lineage-18.1-caf-msm8998 hardware/qcom-caf/msm8998/media


lunch lighthouse_whyred-userdebug
lunch lighthouse_whyred-eng
