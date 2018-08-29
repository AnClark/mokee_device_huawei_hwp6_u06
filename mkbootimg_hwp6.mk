#
# Copyright 2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


# Huawei P6 cannot use newer versions (> Android 4.3) of mkbootimg to generate bootimg.
# So we must specify a proprietary mkbootimg recipe.
$(INSTALLED_RECOVERYIMAGE_TARGET): $(recovery_ramdisk) $(MKBOOTIMG) $(recovery_kernel)
	@echo -e ${PRT_IMG}"----- Making Huawei P6 recovery image with mkbootimg at Android 4.3 ------"${CL_RST}
	$(hide) $(MKBOOTIMG) $(INTERNAL_RECOVERYIMAGE_ARGS) $(BOARD_MKBOOTIMG_ARGS) --output $@
	@echo -e ${PRT_IMG}"----- Made Huawei P6 recovery image: $@ --------"${CL_RST}
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE))
