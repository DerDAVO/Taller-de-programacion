program ordenacionInsercion;
type
    vectorNumeros = array [1..20] of integer;
procedure insercion(var vec:vectorNumeros;diml:integer) 
var 
    i,j,actual:integer;
begin
    //dado el vector desordenado   |2|3|1|
    for i := 2 to dimL do
    begin
        actual:=vec[i]; //guardo el elemento actual para no perderlo al hacer el corrimiento
        j:=i-1;
        //busco el lugar para insertar el actual
        while(j > 0) and (v[j] > actual)do
        begin
            //realizo el corrimiento 
            v[j+1]:=v[j];
            //1er bucle -> |2|3|3| 2do bucle -> |2|2|3|
            j:=j-1;
        end;
        //Se inserta actual 
        v[j+1]:=actual; // -> |1|2|3|
    end;
        
end;  
begin
end.