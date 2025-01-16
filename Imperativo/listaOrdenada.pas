program listaOrdenada;
type
    lista=^nodo;
    nodo=record
        datos:integer;
        sig:lista;
    end;
    Procedure InsertarEnLista ( var pri: lista; elem: integer); 
    var 
        ant, nue, act: lista; 
    begin 
        new (nue); // creo un nodo para el dato
        nue^.datos := elem; // le agrego el dato al nodo
        act := pri; 
        // EN ESTE while PUEDEN PASAR DOS COSAS
        // + act == NIL -> esto significa que la lista esa vacia y debemos agregar el primer dato
        // + act <> NIL y act^.datos > o < elem(segun como se quiera ordenar la lista)
        //en este caso se quiere ordenar de menor a mayor lo que significa que si ya hay un dato se recorre act hasta que 
        // no se cumple la condicion o se acabe la lista
        //+  
        while (act<>NIL) and (act^.datos < elem) do begin 
            ant := act; 
            act := act^.sig ; 
        end; 
        // EN EL IF PODEMOS LLEGAR A LA CONCLUSION DE QUE 
        // + se salto el while es decir que act=pri y nue se agregara como primer dato de lista
        // + se encontro el lugar correcto para el nuevo dato en la lista ordenada por lo que 
        // act <> pri y se hara el enlace entre ant<->nue  
        if (act = pri)  then 
            pri := nue    
        else 
            ant^.sig := nue;  
        // este paso siempre se hace ya que 
        // si la lista no tenia datos nue es el primero y act(osea NIL) es el ultimo dato 
        // si la lista tenia un dato se enlaza de forma ordenada
        // si la lista tenia mychos datos orndenados se hace el elnlace en el lugar correspondiente al nuevo dato
        nue^.sig := act ; 
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
    l:lista;
    num:integer;
begin
    new(l);
    l:=nil;
    writeln(' INICIO PROGRAMA ');
    writeln('Ingrese un numero ');
    readln(num);
    while(num <> 0)do
    begin   
        writeln('-----------------ESTADO ACTUAL DE LISTA--------------');
        imprimirLista(l);
        writeln('-----------------------------------------------------');
        InsertarEnLista(l,num);
        writeln('-----------------NUEVO ESTADO DE LISTA--------------');
        imprimirLista(l);
        writeln();
        writeln('Ingrese un numero ');
        readln(num);
    end;
end.