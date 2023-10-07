package body Lab11 is

   ------------------------------------
   -- AUTHOR: BERGARETXE LOPEZ, LUKA --
   ------------------------------------

   ----------
   -- Esta --
   ----------

   function Esta (L : in T_Lista_Dinamica; N : in Integer) return Boolean is
      r : Boolean          := False;
      a : T_Lista_Dinamica := L;
   begin
      if a /= null then
         loop
            if N = a.Info then
               r := True;
            end if;
            exit when r or a.Sig = null;
            a := a.Sig;
         end loop;
      end if;
      return r;
   end Esta;

   --------------
   -- Posicion --
   --------------

   function Posicion (L : in T_Lista_Dinamica; N : in Integer) return Natural
   is
      r : Natural          := Integer'Last;
      i : Natural          := 1;
      a : T_Lista_Dinamica := L;
   begin
      if a /= null then
         loop
            if N = a.Info then
               r := i;
            end if;
            exit when N = a.Info or a.Sig = null;
            i := i + 1;
            a := a.Sig;
         end loop;
      end if;
      return r;
   end Posicion;

   -----------
   -- Media --
   -----------

   function Media (L : in T_Lista_Dinamica) return Float is
      r : Float;
      i : Positive         := 1;
      a : T_Lista_Dinamica := L;
   begin
      if a /= null then
         r := Float (a.Info);
         while a.Sig /= null loop
            a := a.Sig;
            r := r + Float (a.Info);
            i := i + 1;
         end loop;
         r := r / Float (i);
      else
         r := Float'Last;
      end if;
      return r;
   end Media;

   -------------
   -- Prepend --
   -------------

   procedure Prepend (L : in out T_Lista_Dinamica; Num : Integer) is
      a : T_Lista_Dinamica;
   begin
      if L /= null then
         a     := new T_Nodo_Enteros'(L.all);
         L.all := (Num, a);
      else
         L := new T_Nodo_Enteros'(Num, null);
      end if;
   end Prepend;

   ------------
   -- Append --
   ------------

   procedure Append (L : in out T_Lista_Dinamica; Num : Integer) is
      a : T_Lista_Dinamica := L;
   begin
      if a /= null then
         while a.Sig /= null loop
            a := a.Sig;
         end loop;
         a.Sig := new T_Nodo_Enteros'(Num, null);
      else
         L := new T_Nodo_Enteros'(Num, null);
      end if;
   end Append;

   ------------------------------
   -- Insertar_Elemento_En_Pos --
   ------------------------------

   procedure Insertar_Elemento_En_Pos
     (L : in out T_Lista_Dinamica; Num : in Integer; Pos : in Integer)
   is
      a, n : T_Lista_Dinamica;
      i    : Positive := 2;
   begin
      if L = null then
         L := new T_Nodo_Enteros'(Num, null);
      elsif Pos < 2 then
         n := new T_Nodo_Enteros'(Num, L);
         L := n;
      else
         a := L;
         while i /= Pos and a.Sig /= null loop
            a := a.Sig;
            i := i + 1;
         end loop;
         n     := new T_Nodo_Enteros'(Num, a.Sig);
         a.Sig := n;
      end if;
   end Insertar_Elemento_En_Pos;

   --------------
   -- Insertar --
   --------------

   procedure Insertar (L : in out T_Lista_Dinamica; Num : in Integer) is
      a, n : T_Lista_Dinamica;
   begin
      if L = null then
         L := new T_Nodo_Enteros'(Num, null);
      elsif Num <= L.Info then
         n := new T_Nodo_Enteros'(Num, L);
         L := n;
      else
         a := L;
         while a.Sig /= null and then Num > a.Sig.Info loop
            a := a.Sig;
         end loop;
         n     := new T_Nodo_Enteros'(Num, a.Sig);
         a.Sig := n;
      end if;
   end Insertar;

   ------------
   -- Borrar --
   ------------

   procedure Borrar (L : in out T_Lista_Dinamica; Num : in Integer) is
      a : T_Lista_Dinamica;
   begin
      if L /= null then
         if L.Info = Num then
            L := L.Sig;
         else
            a := L;
            while a.Sig /= null and then a.Sig.Info /= Num loop
               a := a.Sig;
            end loop;
            if a.Sig /= null and then a.Sig.Info = Num then
               a.Sig := a.Sig.Sig;
            end if;
         end if;
      end if;
   end Borrar;

   ----------------
   -- Concatenar --
   ----------------

   procedure Concatenar (L1, L2 : in out T_Lista_Dinamica) is
      a : T_Lista_Dinamica;
   begin
      if L1 = null then
         L1 := L2;
      elsif L2 /= null then
         a := L1;
         while a.Sig /= null loop
            a := a.Sig;
         end loop;
         a.Sig := L2;
      end if;
   end Concatenar;

   --------------
   -- Invertir --
   --------------

   procedure Invertir (L : in out T_Lista_Dinamica) is
      a1, a2 : T_Lista_Dinamica;
   begin
      if L /= null and then L.Sig /= null then
         a2 := L;
         loop
            a1     := a2.Sig;
            a2.Sig := a1.Sig;
            a1.Sig := L;
            L      := a1;
            exit when a2.Sig = null;
         end loop;
      end if;
   end Invertir;

end Lab11;
