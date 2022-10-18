with Ada.Text_IO;  use Ada.Text_IO;
with Ada.Containers.Ordered_Sets;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Happy is
   function Is_Happy (N : Positive) return Boolean is
      package Sets_Of_Positive is new Ada.Containers.Ordered_Sets (Positive);
      use Sets_Of_Positive;
      function Next (N : Positive) return Natural is
         Sum   : Natural := 0;
         Accum : Natural := N;
      begin
         while Accum > 0 loop
            Sum   := Sum + (Accum mod 10) ** 2;
            Accum := Accum / 10;
         end loop;
         return Sum;
      end Next;
      Current : Positive := N;
      Visited : Set;
   begin
      loop
         if Current = 1 then
            return True;
         elsif Visited.Contains (Current) then
            return False;
         else
            Visited.Insert (Current);
            Current := Next (Current);
         end if;
      end loop;
   end Is_Happy;

-- MAIN PROGRAM

Found : Natural := 0;
NumberToFind : Integer := 0;

begin
Ada.Text_IO.Put ("Enter an integer: ");
Ada.Integer_Text_IO.Get(NumberToFind);
   for N in Positive'Range loop
      if Is_Happy (N) then
         Put (Integer'Image (N));
         Found := Found + 1;
         exit when Found = NumberToFind;
      end if;
   end loop;
end Happy;