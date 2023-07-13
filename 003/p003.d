import std.stdio;
import std.conv;
import std.string;

void main(string[] args) { 
  string amount_array_string = remove_space(readln());
  int amount_array = to!int(amount_array_string);
  int[] result = sum(amount_array);
  print_result(result, amount_array);
}

string remove_space(string phrase){
    phrase = phrase[0 .. (phrase.length - 1)]; 
    return phrase;
}

int[] sum(int amount_array){
  int[] result;
  result.length = amount_array;
  for (int i = 0; i < amount_array; i++) {
    string line = remove_space(readln());
    string[]  numbers_strings = line.split(" ");
    for (int j = 0; j < numbers_strings.length; j++) {
      result[i] += to!int(numbers_strings[j]);
    }    
  }
  return result;
}

void print_result(int[] result,int amount_array){
  for (int i = 0; i < amount_array; i++) {
    write(result[i]);
    if(i != amount_array - 1) {
      write(" ");
    }else{
      writeln("");
    }
  }
}








