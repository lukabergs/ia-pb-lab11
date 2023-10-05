package Laboratorio11 is

   Type T_Nodo_enteros;
   Type T_Lista_Dinamica is access T_Nodo_Enteros;
   type T_Nodo_Enteros is record
      Info: Integer;
      Sig: T_Lista_Dinamica;
   end record;

   function Esta(L: in T_Lista_Dinamica; N: in Integer) return Boolean;
   -- Post: Resultado = True <--> N está en L
   function Posicion(L: in T_Lista_Dinamica; N: in Integer) return Natural;
   -- Post: Resultado es la posicion de N (comenzando en 1) en L. Si no está, REsultado = Integer'Last
   function Media(L: in T_Lista_Dinamica) return Float;
   -- Post: Resultado = Media de los valores de la lista L

   procedure Prepend(L: in out T_Lista_Dinamica; Num: Integer);
   -- Post: L incluye a Num como primer elemento de la lista
   procedure Append(L: in out T_Lista_Dinamica; Num: Integer);
   -- Post: L incluye a Num como ultimo elemento de la lista
   procedure Insertar_Elemento_En_Pos(L: in out T_Lista_Dinamica; Num: in Integer; Pos: in Integer);
   -- Post: L incluye Num en la Posicion indicada.
   --      Si Pos<1, en la primera posicion.
   --      Si pos>Longitud de L en la última posición
   procedure Insertar(L: in out T_Lista_Dinamica; Num: in Integer);
   --Pre: L ordenada ascendentemente
   --Post: L contiene a Num y está ordenada ascendentemente
   procedure Borrar(L: in out T_Lista_Dinamica; Num: in Integer);
   --Post: De L ha desaparecido la primera aparición de num (si había)
   procedure Concatenar(L1, L2: in out T_Lista_Dinamica);
   --Post: L1 incluye a L2 al final
   Procedure Invertir (L: in out T_Lista_Dinamica);
   --Post L es la lista inicial con los elementos en orden inverso
end Laboratorio11;

