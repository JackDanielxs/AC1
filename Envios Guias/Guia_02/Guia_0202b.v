/*
   Arquitetura de Computadores I - Guia_0202b.v
   1438796 - Daniel Matos Marques
*/

module Guia_0202;
// define data
    real x [0: 4]; // array of decimal values
    integer y; // counter for binary representation bits
    reg [7: 0] b; // binary representation (8-bit register)
    integer i; // index for iterating through the array
    real current_x; // Current value of x (moved to module level)

// actions
    initial
    begin :  main
        // Initialize array x with the given values
        x[0] = 0.625000;
        x[1] = 1.750000;
        x[2] = 3.125000;
        x[3] = 4.312500;
        x[4] = 7.875000;

        // Iterate through each value of x
        for (i = 0; i < 5; i = i + 1) begin
            y = 7; // Reset counter for each value of x
            b = 8'b00000000; // Reset binary representation to 8 zeros
            current_x = x[i]; // Assign the current value of x

            // Binary expansion for current value of x
            while (current_x > 0 && y >= 0) begin
                if (current_x * 2 >= 1) begin
                    b[y] = 1; // Set the current bit of b
                    current_x = current_x * 2.0 - 1.0;
                end
                else begin
                    b[y] = 0; // Set the current bit of b
                    current_x = current_x * 2.0;
                end
                
                $display("x = %f,  b = 0.%8b",  x[i],  b);
                y = y - 1; // Decrement y for next binary bit
            end
        end
    end
endmodule