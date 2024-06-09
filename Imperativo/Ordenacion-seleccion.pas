program ordenacionSeleccion;
type
    vectornumeros = array [1..20] of integer;

//Siempre revisar como son pasados los parametros
// si mando "vec" por valor el intermcambio no se veria 
//reflejado fuera del procedimiento    
procedure seleccion(var vec:vectornumeros,diml:integer);
var 
    posMin,i,j:integer;
    valorMin:integer
begin
    //Se realiza la iteracion solo hasta dimL ya que en la ultima iteracion 
    //el ultimo elemento estario en el lugar correcto 
    for i := 1 to diml-1 do
        posMin:=i;
        //Se realiza la iteracion desde " i+1 " en adelante ya que se debe buscar 
        //un valor minimo a lo que hay en " i " 
        for j := i+1 to diml do
            if (vec[j]<vec[posMin]) then
                p:=j;
        end;
        //realizo el intercambio
        item:=vec[posMin];
        vec[posMin]:=vec[i];
        vec[i]:=valorMin;
    end;
    

begin
    
end;