#
# Copyright 2013 The Android Open Source Project
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

for flavor in eng userdebug user; do
    add_lunch_combo "full_P350-${flavor}"
    add_lunch_combo "lineage_P350-${flavor}"
    add_lunch_combo "aicp_P350-${flavor}"
done

# Hack for aicp
if [ -d vendor/aicp/products/ ]; then
cp -f device/ixion/P350/aicp.mk vendor/aicp/products/P350.mk
fi

