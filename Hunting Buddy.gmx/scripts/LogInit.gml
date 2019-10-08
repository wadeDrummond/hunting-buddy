///LogInit();

var _Date = string(current_month) + "/" + string(current_day) + "/" + string(current_year);
var _Time = string(current_hour) + ":" + string(current_minute);

var _File = file_text_open_append(FILE_LOG);
file_text_write_string(_File, "#### LAUNCHED ON " + _Date + " AT " + _Time + " ####");
file_text_writeln(_File);
file_text_close(_File);
