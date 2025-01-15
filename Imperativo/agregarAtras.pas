program agregarAtras;
type    
    lista=^nodo;
    nodo=record
        datos:integer;
        sig:lista;
    end;
procedure imprimirLista(l:lista);
begin
    while(l<>nil)do 
    begin
        write(l^.datos,'--');
        l:=l^.sig;
    end;
end;

procedure AgregarAtras (var pri, ult: lista; elem: integer);  
var  nue : lista; 
begin  
    // ACLARACION -> ult en este caso solo sirve para tener un acceso mas rapido al ultimo nodo
    // y no tener que recorrer todo la lista para encontrarlo
    new (nue); // reservo mem para un nuevo nodo
    nue^.datos:= elem; // agrego el dato al nuevo nodo
    nue^.sig := NIL; // al puntero sig del nuevo nodo le agrego nil ya que es el ultimo
    if pri <> Nil then  // si la lista tiene datos lo agrego en el puntero sig de ult
        ult^.sig := nue // agrego el nuevo dato a sig de ult ya que esa var tiene el ultimo nodo de la lista
    else  
        pri := nue; // agrego el nuevo dato como primero en pri 
    ult := nue; // guardo en ult el nuevo nodo para tener acceso al ultimo nodo de lista de forma directa en la proximo
    // iteracion
end;
var 
    l,ult:lista;
    num:integer;
begin
    new(l);
    new(ult);
    ult:=nil;
    l:=nil;
    writeln(' INICIO PROGRAMA ');
    writeln('Ingrese un numero ');
    readln(num);
    while(num <> 0)do
    begin   
        writeln('-----------------ESTADO ACTUAL DE LISTA--------------');
        imprimirLista(l);
        writeln('-----------------------------------------------------');
        agregarAtras(l,ult,num);
        writeln('-----------------NUEVO ESTADO DE LISTA--------------');
        imprimirLista(l);
        writeln();
        writeln('Ingrese un numero ');
        readln(num);
    end;
end.