# DSSleep

Sleep / pause your application, without blocking your thread on the CPU / wasting resources.

### Example usage
```gml
dssleep_init(); // Initialize DLL

dssleep_nanoseconds(1000000000); //1 second = 1000 milliseconds = 1000000 microseconds = 1000000000 nanoseconds
dssleep_microseconds(2000000); //2 seconds = 2000 milliseconds = 2000000 microseconds
dssleep_milliseconds(3000); //3 seconds = 3000 milliseconds
dssleep_seconds(3);
dssleep_minutes(1);

dssleep_cleanup(); // Cleanup DLL from memory
```

### Supported platforms
- Windows
- Linux

### Source
Written in C++ using Code::Blocks. Project file is included.

### Screenshot of usage
![Screenshot of usage](https://github.com/dukesoft/DSSleep/raw/master/screenshot.png)