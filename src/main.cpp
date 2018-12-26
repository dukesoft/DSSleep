#include "main.h"

DLL_EXPORT double sleep_nanoseconds(double nanoseconds) {
	std::this_thread::sleep_for(std::chrono::nanoseconds((int) nanoseconds));
	return 1;
}

DLL_EXPORT double sleep_microseconds(double microseconds) {
	std::this_thread::sleep_for(std::chrono::microseconds((int) microseconds));
	return 1;
}

DLL_EXPORT double sleep_milliseconds(double milliseconds) {
	std::this_thread::sleep_for(std::chrono::milliseconds((int) milliseconds));
	return 1;
}

DLL_EXPORT double sleep_seconds(double seconds) {
	std::this_thread::sleep_for(std::chrono::seconds((int) seconds));
	return 1;
}

DLL_EXPORT double sleep_minutes(double minutes) {
	std::this_thread::sleep_for(std::chrono::minutes((int) minutes));
	return 1;
}
