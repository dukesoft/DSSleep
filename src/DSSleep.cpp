#include <thread>
#include <chrono>

#if !defined( _MSC_VER)
#define EXPORTED_FN __attribute__((visibility("default")))
#else
#define EXPORTED_FN __declspec(dllexport)
#define snprintf sprintf_s
#define strdup _strdup
#endif

extern "C" {
    EXPORTED_FN double sleep_nanoseconds(double nanoseconds) {
        std::this_thread::sleep_for(std::chrono::nanoseconds((int) nanoseconds));
        return 1;
    }

    EXPORTED_FN double sleep_microseconds(double microseconds) {
        std::this_thread::sleep_for(std::chrono::microseconds((int) microseconds));
        return 1;
    }

    EXPORTED_FN double sleep_milliseconds(double milliseconds) {
        std::this_thread::sleep_for(std::chrono::milliseconds((int) milliseconds));
        return 1;
    }

    EXPORTED_FN double sleep_seconds(double seconds) {
        std::this_thread::sleep_for(std::chrono::seconds((int) seconds));
        return 1;
    }

    EXPORTED_FN double sleep_minutes(double minutes) {
        std::this_thread::sleep_for(std::chrono::minutes((int) minutes));
        return 1;
    }
}