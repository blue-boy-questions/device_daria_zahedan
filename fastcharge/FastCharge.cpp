/*
 * SPDX-FileCopyrightText: 2022-2025 The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

#define LOG_TAG "fastcharge@1.0-service.zahedan"

#define FASTCHARGE_PATH "/sys/devices/platform/common_node/charger_input_limit"

#include "FastCharge.h"
#include <android-base/logging.h>
#include <chrono>
#include <fstream>
#include <iostream>
#include <thread>

namespace vendor {
namespace lineage {
namespace fastcharge {
namespace V1_0 {
namespace implementation {

/*
 * Write value to path and close file.
 */
template <typename T>
static void set(const std::string& path, const T& value) {
    std::ofstream file(path);

    if (!file) {
        PLOG(ERROR) << "Failed to open: " << path;
        return;
    }

    LOG(DEBUG) << "write: " << path << " value: " << value;

    file << value << std::endl;

    if (!file) {
        PLOG(ERROR) << "Failed to write: " << path << " value: " << value;
    }
}

template <typename T>
static T get(const std::string& path, const T& def) {
    std::ifstream file(path);

    if (!file) {
        PLOG(ERROR) << "Failed to open: " << path;
        return def;
    }

    T result;

    file >> result;

    if (file.fail()) {
        PLOG(ERROR) << "Failed to read: " << path;
        return def;
    } else {
        LOG(DEBUG) << "read: " << path << " value: " << result;
        return result;
    }
}

Return<bool> FastCharge::isEnabled() {
    return get(FASTCHARGE_PATH, 0) < 1;
}

Return<bool> FastCharge::setEnabled(bool enable) {
    set(FASTCHARGE_PATH, enable ? 0 : 1800000);
    std::this_thread::sleep_for(std::chrono::milliseconds(500));
    return isEnabled();
}

}  // namespace implementation
}  // namespace V1_0
}  // namespace fastcharge
}  // namespace lineage
}  // namespace vendor
