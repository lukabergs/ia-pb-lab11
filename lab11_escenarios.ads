with Laboratorio11;
use  Laboratorio11;
package Lab11_Escenarios is

   ---------------------
   -- Esta y Posicion --
   ---------------------
   --Nota: ¡Cuidado! L0 es constante, pero el resto de valores de la lista
   --      dinamica se puede modificar y Ada no lo comprueba.
   L0 : constant T_Lista_Dinamica := null; --()
   L1 : constant T_Lista_Dinamica :=  --(1)
      new T_Nodo_Enteros'(1, null);
   L2 : constant T_Lista_Dinamica :=  --(2)
      new T_Nodo_Enteros'(2, null);
   L3 : constant T_Lista_Dinamica :=  --(3)
      new T_Nodo_Enteros'(3, null);
   L12 : constant T_Lista_Dinamica :=  --(1 2)
      new T_Nodo_Enteros'(1, new T_Nodo_Enteros'(2,null));
   L23 : constant T_Lista_Dinamica :=  --(2 3)
      new T_Nodo_Enteros'(2, new T_Nodo_Enteros'(3,null));
   L123 : constant T_Lista_Dinamica := --(1 2 3)
      new T_Nodo_Enteros'(1,new T_Nodo_Enteros'(2,new T_nodo_Enteros'(3,null)));
   L124 : constant T_Lista_Dinamica := --(1 2 4)
      new T_Nodo_Enteros'(1,new T_Nodo_Enteros'(2,new T_nodo_Enteros'(4,null)));
   L1234 : constant T_Lista_Dinamica := --(1 2 3 4)
      new T_Nodo_Enteros'(1,new
          T_Nodo_Enteros'(2,new
          T_Nodo_Enteros'(3,new
          T_Nodo_Enteros'(4,null))));

end Lab11_Escenarios;

