///LogWrite(string);

var _String = argument[0];

var _File = file_text_open_append(FILE_LOG);
file_text_write_string(_File, _String);
file_text_writeln(_File);
file_text_close(_File);
