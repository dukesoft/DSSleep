show_message("We're going to sleep, not blocking the CPU. Check your process monitor to make sure!");

dssleep_init();

show_message("Sleeping for 1000000000 nanoseconds!");
var start = get_timer();
dssleep_nanoseconds(1000000000); //1 second = 1000 milliseconds = 1000000 microseconds = 1000000000 nanoseconds
show_message("Game Maker Timer: " + string(get_timer() - start) + " microseconds");

show_message("Sleeping for 2000000 microseconds!");
var start = get_timer();
dssleep_microseconds(2000000); //2 seconds = 2000 milliseconds = 2000000 microseconds
show_message("Game Maker Timer: " + string(get_timer() - start) + " microseconds");

show_message("Sleeping for 3000 milliseconds!");
var start = get_timer();
dssleep_milliseconds(3000); //3 seconds = 3000 milliseconds
show_message("Game Maker Timer: " + string(get_timer() - start) + " microseconds");

show_message("Sleeping for 3 seconds!");
var start = get_timer();
dssleep_seconds(3);
show_message("Game Maker Timer: " + string((get_timer() - start)/1000) + " seconds");

show_message("Sleeping for 1 minute!");
var start = get_timer();
dssleep_minutes(1);
show_message("Wow. You really waited 1 minute? \n Game Maker Timer: " + string((get_timer() - start)/1000) + " seconds.");

show_message("Done, goodnight!");
dssleep_cleanup();
game_end();