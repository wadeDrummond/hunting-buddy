///GameInitDictionary();

var _File = file_text_open_read("Dictionary.json");
var _String = "";

while !file_text_eof(_File) {
  _String += file_text_read_string(_File);
  file_text_readln(_File);
}

file_text_close(_File);

var _Index = json_decode(_String);
g.wordList = _Index[? "default"];
g.wordListSize = ds_list_size(g.wordList);

var _debugString = "Dictionary loaded! Size is " + string(ds_list_size(_Index));
print(_debugString);
