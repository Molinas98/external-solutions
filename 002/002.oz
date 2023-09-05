functor
import
  Application System Open

define
  local
    Input = {New class $ from Open.file Open.text end init(name : stdin)}
    Amount = {String.toInt {Input getS($)} }

    fun {Sum Numbers Amount}
        if Amount == 0
        then 0
        else {Nth Numbers Amount} + {Sum Numbers Amount - 1}
        end
    end

    proc {PrintResult List Amount}
        local
            Numbers_List = {String.tokens {List getS($)} & }
            Numbers = {Map Numbers_List String.toInt}
        in
            {System.print {Sum Numbers Amount}}
        end
    end
  in
    {PrintResult Input Amount}
    {Application.exit 0}
  end
end