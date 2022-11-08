with ada.text_io, ada.integer_text_io, ada.float_text_io;
use ada.text_io, ada.integer_text_io, ada.float_text_io;

procedure multi is
    type Three_Dimensional_Float_Array is array (Integer range <>, Integer range <>, Integer range <>) of Float;
    dimension : Integer := 1;

begin
    put("What is the dimension of the rank 3 tensor: ");
    get(dimension);

    declare
        cube :  Three_Dimensional_Float_Array ( 1..dimension, 1..dimension, 1..dimension) := (others => (others => (others => 0.0)));

    begin
        for i in 1..dimension loop
            for j in 1..dimension loop
                for k in 1..dimension loop
                    cube(i,j,k) := Float((i-1)*dimension*dimension+(j-1)*dimension+k);
                end loop;
            end loop;
        end loop;

        new_line;
        put("The value of the last element of the tensor is: ");
        put( cube(dimension,dimension,dimension) );
        new_line;
    end;

end multi;