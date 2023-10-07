with Ada.Text_IO, Ada.Integer_Text_IO, Lab11, Data11;
use Ada.Text_IO, Ada.Integer_Text_IO, Lab11, Data11;

procedure Test11 is

   L2342 : constant T_Lista_Dinamica := -- (2 3 4 2)
      new T_Nodo_Enteros'(2,
      new T_Nodo_Enteros'(3,
      new T_Nodo_Enteros'(4,
      new T_Nodo_Enteros'(2, null))));

   L_copia   : T_Lista_Dinamica := null;
   L_copia_2 : T_Lista_Dinamica := null;

   cuantos : Integer;

   -- Programa auxiliar para copiar objetos de tipo T_Lista_Dinamica

   function copiar (L : T_Lista_Dinamica) return T_Lista_Dinamica is
   begin
      if L = null then
         return null;
      else
         return new T_Nodo_Enteros'(L.info, copiar (L.all.sig));
      end if;
   end copiar;

   -- Programa auxiliar para mostrar objetos T_Lista_Dinamica por consola

   procedure recorrer (L : T_Lista_Dinamica) is
   begin
      if L /= null then
         put (L.info);
         recorrer (L.sig);
      end if;
   end recorrer;

   --  -- Programa auxiliar para copiar objetos de tipo T_Lista_Puntos

   --  function copiar_lista_puntos (LP : T_Lista_Puntos) return T_Lista_Puntos is
   --  begin
   --     if LP = null then
   --        return null;
   --     else
   --        return new T_Nodo_Punto'(LP.info, copiar_lista_puntos (LP.all.sig));
   --     end if;
   --  end copiar_lista_puntos;

   -- Programa axiliar que comprueba si el programa simplificar devuelve el resultado correcto

   --  function eval_simplificar
   --    (LP, LP_correcta           : in T_Lista_Puntos;
   --     cuantos, cuantos_correcto : in Integer) return Boolean
   --  is
   --  begin
   --     if LP = null and LP_correcta = null and cuantos = cuantos_correcto then
   --        return True;
   --     else
   --        if (LP /= null and LP_correcta /= null)
   --          and then LP.info = LP_correcta.info
   --        then
   --           return
   --             eval_simplificar
   --               (LP.all.sig, LP_correcta.all.sig, cuantos, cuantos_correcto);
   --        else
   --           return False;
   --        end if;
   --     end if;
   --  end eval_simplificar;

begin

   ----------
   -- Esta --
   ----------

   Put_Line ("*** Esta ***");
   New_Line;

   Put_Line ("Caso 1: numero por el medio.");
   Put_Line ("Esta el numero 3 en la lista (1 2 3 4)? TRUE");
   Put_Line (esta (L1234, 3)'Img);

   New_Line (2);

   Put_Line ("Caso 2: numero al principio.");
   Put_Line ("Esta el numero 1 en la lista (1 2 3 4)? TRUE");
   Put_Line (esta (L1234, 1)'Img);

   New_Line (2);

   Put_Line ("Caso 3: numero al final.");
   Put_Line ("Esta el numero 4 en la lista (1 2 3 4)? TRUE");
   Put_Line (esta (L1234, 3)'Img);

   New_Line (2);

   Put_Line ("Caso 4: numero no existe en la lista.");
   Put_Line ("Esta el numero 27 en la lista (1 2 3 4)? FALSE");
   Put_Line (esta (L1234, 27)'Img);

   New_Line (2);

   Put_Line ("Caso 5: lista vacia.");
   Put_Line ("Esta el numero 8 en la lista ()? FALSE");
   Put_Line (esta (L0, 8)'Img);

   New_Line (2);

   Put_Line ("Caso 6: lista con un unico nodo.");
   Put_Line ("Esta el numero 1 en la lista (1)? TRUE");
   Put_Line (esta (L1, 1)'Img);

   --------------
   -- Posicion --
   --------------

   New_Line (3);
   Put_Line ("*** Posicion ***");
   New_Line;

   Put_Line ("Caso 1: numero por el medio.");
   Put_Line ("Posicion del numero 2 en el vector (1 2 3 4): 2");
   Put_Line (posicion (L1234, 2)'Img);

   New_Line (2);

   Put_Line ("Caso 2: numero al principio.");
   Put_Line ("Posicion del numero 1 en la lista (1 2 3 4): 1");
   Put_Line (posicion (L1234, 1)'Img);

   New_Line (2);

   Put_Line ("Caso 3: numero al final.");
   Put_Line ("Posicion del numero 4 en la lista (1 2 3 4): 4");
   Put_Line (posicion (L1234, 4)'Img);

   New_Line (2);

   Put_Line ("Caso 4: numero no existe en la lista.");
   Put_Line ("Posicion del numero 27 en la lista (1 2 3 4)? Integer'Last");
   Put_Line (posicion (L1234, 27)'Img);

   New_Line (2);

   Put_Line ("Caso 5: lista vacia.");
   Put_Line ("Posicion del numero 8 en la lista (): Integer'Last");
   Put_Line (posicion (L0, 8)'Img);

   New_Line (2);

   Put_Line ("Caso 6: lista con un unico nodo.");
   Put_Line ("Posicion del numero 1 en la lista (1): 1");
   Put_Line (posicion (L1, 1)'Img);

   New_Line (2);

   Put_Line ("Caso 6: lista con el entero repetido.");
   Put_Line ("Posicion del numero 2 en la lista (2 3 4 2): 1");
   Put_Line (posicion (L2342, 2)'Img);

   -----------
   -- Media --
   -----------

   New_Line (3);
   Put_Line ("*** Media ***");
   New_Line;

   Put_Line ("Caso 1: Media un numero real");
   Put_Line ("Media del vector (1 2 3 4): 2.50");
   Put_Line (Media (L1234)'Img);

   New_Line (2);

   Put_Line ("Caso 2:");
   Put_Line ("Media del vector (1 2 3): 2.00");
   Put_Line (Media (L123)'Img);

   New_Line (2);

   Put_Line ("Caso 3: lista vacia.");
   Put_Line ("Media de (): Float'Last");
   Put_Line (Media (L0)'Img);

   New_Line (2);

   Put_Line ("Caso 4: lista con un unico nodo.");
   Put_Line ("Media de (1): 1.00");
   Put_Line (Media (L1)'Img);

   New_Line (2);

   Put_Line ("Caso 6: lista con el entero repetido.");
   Put_Line ("Posicion del numero 2 en la lista (2 3 4 2): 2.25");
   Put_Line (Media (L2342)'Img);

   -------------
   -- Prepend --
   -------------

   New_Line (3);
   Put_Line ("*** Insertar_Delante ***");
   New_Line;

   L_copia := copiar (L1234);
   Put_Line ("Caso 1: una lista estandar");
   Put_Line ("Anteponer el numero 5 a la lista (1 2 3 4)");
   Prepend (L_copia, 5);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L1);
   Put_Line ("Caso 2: una lista con un unico nodo");
   Put_Line ("Anteponer el numero 9 a la lista (1)");
   Prepend (L_copia, 9);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L0);
   Put_Line ("Caso 3: una lista vacia");
   Put_Line ("Anteponer el numero 7 a la lista ()");
   Prepend (L_copia, 7);
   recorrer (L_copia);

   ------------
   -- Append --
   ------------

   New_Line (3);
   Put_Line ("*** Insertar_Detras ***");
   New_Line;

   L_copia := copiar (L1234);
   Put_Line ("Caso 1: una lista estandar");
   Put_Line ("Posponer el numero 5 a la lista (1 2 3 4)");
   Append (L_copia, 5);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L1);
   Put_Line ("Caso 2: una lista con un unico nodo");
   Put_Line ("Posponer el numero 9 a la lista (1)");
   Append (L_copia, 9);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L0);
   Put_Line ("Caso 3: una lista vacia");
   Put_Line ("Posponer el numero 7 a la lista ()");
   Append (L_copia, 7);
   recorrer (L_copia);

   ------------------------------
   -- Insertar_Elemento_En_Pos --
   ------------------------------

   New_Line (3);
   Put_Line ("*** Insertar_Elemento_En_Pos ***");
   New_Line;

   L_copia := copiar (L1234);
   Put_Line ("Caso 1: insertar en el medio");
   Put_Line ("Insertar el numero 20 en la posicion 3 de la lista (1 2 3 4)");
   insertar_elemento_en_pos (L_copia, 20, 3);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L1234);
   Put_Line ("Caso 2: insertar en el medio");
   Put_Line ("Insertar el numero 30 en la posicion 3 de la lista (1 2 3 4)");
   insertar_elemento_en_pos (L_copia, 30, 3);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L1234);
   Put_Line ("Caso 3: insertar al principio (primera posicion)");
   Put_Line ("Insertar el numero 0 en la posicion 1 de la lista (1 2 3 4)");
   insertar_elemento_en_pos (L_copia, 0, 1);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L1234);
   Put_Line ("Caso 4: insertar al principio (menor que primera posicion)");
   Put_Line
     ("Insertar el numero 0 en la posicion -5000 de la lista (1 2 3 4)");
   insertar_elemento_en_pos (L_copia, 0, -5_000);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L1234);
   Put_Line ("Caso 5: insertar al final (posicion final)");
   Put_Line ("Insertar el numero 5 en la posicion 5 de la lista (1 2 3 4)");
   insertar_elemento_en_pos (L_copia, 5, 5);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L1234);

   Put_Line ("Caso 6: insertar al final (posicion mayor que final)");
   Put_Line ("Insertar el numero 5 en la posicion 5000 de la lista (1 2 3 4)");
   insertar_elemento_en_pos (L_copia, 5, 5_000);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L0);
   Put_Line ("Caso 7: insertar en lista vacia");
   Put_Line ("Insertar el numero 0 en la posicion 1 de la lista ()");
   insertar_elemento_en_pos (L_copia, 0, 1);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L0);
   Put_Line ("Caso 8: insertar en lista vacia 2");
   Put_Line ("Insertar el numero 2 en la posicion 10 de la lista ()");
   insertar_elemento_en_pos (L_copia, 2, 10);
   recorrer (L_copia);

   --------------------------------
   -- Insertar en lista ordenada --
   --------------------------------

   New_Line (3);
   Put_Line ("*** Insertar (PENDIENTE DE REVISAR) ***");
   New_Line;

   L_copia := copiar (L1234);
   Put_Line ("Caso 1: insertar al final");
   Put_Line ("Insertar el numero 20 en la lista (1 2 3 4)");
   insertar (L_copia, 20);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L1234);
   Put_Line ("Caso 2: insertar en el medio");
   Put_Line ("Insertar el numero 3 en la lista (1 2 3 4)");
   insertar (L_copia, 3);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L1234);
   Put_Line ("Caso 3: insertar al principio (primera posicion)");
   Put_Line ("Insertar el numero -30 en la posicion 1 de la lista (1 2 3 4)");
   insertar (L_copia, -30);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L1234);
   Put_Line ("Caso 4: insertar al principio (menor que primera posicion)");
   Put_Line ("Insertar el numero -5000 en la lista (1 2 3 4)");
   insertar (L_copia, -5_000);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L1234);
   Put_Line ("Caso 5: insertar al inicio (numero igual al primer elemento)");
   Put_Line ("Insertar el numero 1 en la lista (1 2 3 4)");
   insertar (L_copia, 1);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L1234);

   Put_Line ("Caso 6: insertar al final (posicion mayor que final)");
   Put_Line ("Insertar el numero 5 en la lista (1 2 3 4)");
   insertar (L_copia, 5);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L0);
   Put_Line ("Caso 7: insertar en lista vacia");
   Put_Line ("Insertar el numero 0 en la lista ()");
   insertar (L_copia, 0);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L0);
   Put_Line ("Caso 8: insertar en lista vacia 2");
   Put_Line ("Insertar el numero 2 en la lista ()");
   insertar (L_copia, 2);
   recorrer (L_copia);

   ------------
   -- Borrar --
   ------------

   New_Line (3);
   Put_Line ("*** Borrar ***");
   New_Line;

   L_copia := copiar (L1234);
   Put_Line ("Caso 1: borrar un elemento del medio");
   Put_Line ("Eliminar el numero 3 de la lista (1 2 3 4). Resultado: (1 2 4)");
   borrar (L_copia, 3);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L1234);
   Put_Line ("Caso 2: borrar primer elemento");
   Put_Line ("Eliminar el numero 1 de la lista (1 2 3 4). Resultado: (2 3 4)");
   borrar (L_copia, 1);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L1234);
   Put_Line ("Caso 3: borrar ultimo elemento");
   Put_Line ("Eliminar el numero 4 de la lista (1 2 3 4). Resultado: (1 2 3)");
   borrar (L_copia, 4);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L1234);
   Put_Line ("Caso 4: el numero no existe en la lista");
   Put_Line
     ("Eliminar el numero 5 de la lista (1 2 3 4). Resultado: (1 2 3 4)");
   borrar (L_copia, 5);
   recorrer (L_copia);

   New_Line (3);

   L_copia := copiar (L0);
   Put_Line ("Caso 5: lista vacia");
   Put_Line ("Eliminar el numero 1 de la lista (). Resultado: ()");
   borrar (L_copia, 1);
   recorrer (L_copia);

   ----------------
   -- Concatenar --
   ----------------

   New_Line (3);
   Put_Line ("*** Concatenar ***");
   New_Line;

   L_copia   := copiar (L1234);
   L_copia_2 := copiar (L1234);
   Put_Line ("Caso 1: dos listas con al menos un nodo en cada una");
   Put_Line
     ("Concatenar las listas (1 2 3 4) y (1 2 3 4). Resultado: (1 2 3 4 1 2 3 4)");
   concatenar (L_copia, L_copia_2);
   recorrer (L_copia);

   New_Line (3);

   L_copia   := copiar (L0);
   L_copia_2 := copiar (L1234);
   Put_Line ("Caso 2: primera lista vacia");
   Put_Line ("Concatenar las listas () y (1 2 3 4). Resultado: (1 2 3 4)");
   concatenar (L_copia, L_copia_2);
   recorrer (L_copia);

   New_Line (3);

   L_copia   := copiar (L1234);
   L_copia_2 := copiar (L0);
   Put_Line ("Caso 3: segunda lista vacia");
   Put_Line ("Concatenar las listas (1 2 3 4) y (). Resultado: (1 2 3 4)");
   concatenar (L_copia, L_copia_2);
   recorrer (L_copia);

   New_Line (3);

   L_copia   := copiar (L0);
   L_copia_2 := copiar (L0);
   Put_Line ("Caso 4: ambas listas vacias");
   Put_Line ("Concatenar las listas () y (). Resultado: ()");
   concatenar (L_copia, L_copia_2);
   recorrer (L_copia);

   --------------
   -- Invertir --
   --------------

   New_Line (3);
   Put_Line ("*** Invertir ***");
   New_Line;

   L_copia := copiar (L1234);
   Put_Line ("Caso 1: lista con al menos un nodo");
   Put_Line ("Invertir la lista (1 2 3 4). Resultado: (4 3 2 1)");
   invertir (L_copia);
   recorrer (L_copia);

   New_Line (2);

   L_copia := copiar (L1);
   Put_Line ("Caso 2: lista con un solo nodo");
   Put_Line ("Invertir la lista (1). Resultado: (1)");
   invertir (L_copia);
   recorrer (L_copia);

   New_Line (2);

   L_copia := copiar (L0);
   Put_Line ("Caso 3: lista sin nodos");
   Put_Line ("Invertir la lista (). Resultado: ()");
   invertir (L_copia);
   recorrer (L_copia);

   New_Line (2);

   L_copia := copiar (L123);
   Put_Line ("Caso 4: lista tres nodos");
   recorrer (L_copia);
   Put_Line ("Invertir la lista (1 2 3). Resultado: (3 2 1)");
   invertir (L_copia);
   recorrer (L_copia);

   New_Line (2);

   L_copia := copiar (L12);
   Put_Line ("Caso 5: lista dos nodos");
   recorrer (L_copia);
   Put_Line ("Invertir la lista (1 2). Resultado: (2 1)");
   invertir (L_copia);
   recorrer (L_copia);

end Test11;
