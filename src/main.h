#include <thread>
#include <chrono>

#ifdef _WIN32
#    define DLL_EXPORT extern "C" __declspec (dllexport)
#else
#    define DLL_EXPORT
#endif
