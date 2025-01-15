program agregarAdelante;

type
    lista=^nodo;
    nodo=record
        datos:integer;
        sig:lista;
    end;
Procedure AgregarAdelante(var L:lista; elem: integer); 
Var 
    nue:Lista; //nodo aux en el que voy a guardar el nuevo dato 
            // luego lo enlazo con la lista original
Begin 
    // ACLARAR QUE CUANDO RECIBIMOS L DEBERIA TENER UN DATO O NIL EN ESTE CASO 
    // ES DECIR QUE COMO TIENE ALGO , ESO MISMO VA QUEDADANDO AL FINAL DE LA LISTA 
    New(nue); // se crea el nuevo nodo
    nue^.datos:=elem; // agrego al nuevo nodo los datos 
    nue^.sig:=L; // se enlaza al nuevo dato con L
    L:=nue; // se guardan todos los cambios en la lista orginal 
end; 

procedure imprimirLista(l:lista);
begin
    while(l<>nil)do 
    begin
        write(l^.datos,'--');
        l:=l^.sig;
    end;
end;
var 
    num:integer;
    l:lista;
begin
    New(l);
    l:=nil;
    writeln(' INICIO PROGRAMA ');
    writeln('Ingrese un numero ');
    readln(num);
    while(num <> 0)do
    begin   
        writeln('-----------------ESTADO ACTUAL DE LISTA--------------');
        imprimirLista(l);
        writeln('-----------------------------------------------------');
        agregarAdelante(l,num);
        writeln('-----------------NUEVO ESTADO DE LISTA--------------');
        imprimirLista(l);
        writeln();
        writeln('Ingrese un numero ');
        readln(num);
        
    end;

end.