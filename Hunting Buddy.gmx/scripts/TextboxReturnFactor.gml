///TextboxReturnFactor(char);

var _Char = argument[0];

switch (_Char)  {
    case ".":
    case ",":
    case ":":
    case '"':
        var _Return = 0.25;
    break;
    
    case " ":
        var _Return = 0.75;
    break;
    
    default:
        var _Return = 1;
    break;
}

return _Return;
