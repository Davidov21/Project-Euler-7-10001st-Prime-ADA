with Ada.Containers; use Ada.Containers;
with Ada.Containers.Vectors;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;



procedure Main is

   package primes is new
     Ada.Containers.Vectors
       (Index_Type => Natural,
        Element_Type => Integer);

   use primes;

   prime_List : Vector :=2 & 3 & 5 ;
   prime_test : Integer := 7;
   isprime : Boolean;



begin

   while prime_List.Length < 10001 loop
      --Put_Line("we at the top");
      isprime := True;

      for i in 0.. (prime_List.Length -1) loop
         if (prime_list(Integer(i)))**2 > prime_test then

            --Put_Line(Integer'Image(prime_list(Integer(i))**2));
            --Put_Line(Count_Type'Image(prime_List.Length));
           -- Put_line(Count_Type'Image(i));
           -- Put_Line("we are exiting");
            exit;


         else

            if prime_test mod prime_List(Integer(i)) = 0 then

               --Put_Line("it it not prime");
               isprime := False;
               exit;

            end if;


         end if;


      end loop;

      if isprime then

         --Put_Line("I am appending the value");
         prime_List.Append(prime_test);
         --Put_Line("The last value is now " & Integer'Image(prime_List(prime_List.Last_Index)));

      end if;


     prime_test :=prime_test + 2;


   end loop;

   Put_Line("The last value is now " & Integer'Image(prime_List(prime_List.Last_Index)));

end Main;
