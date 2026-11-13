
module tb_array_multiplier_4bit;

    reg [3:0] A, B;
    wire [7:0] P;
    array_multiplier_4bit uut (
        .A(A),
        .B(B),
        .P(P)
    );

    initial begin

        $monitor("Time=%0t A=%d B=%d Product=%d",
                  $time, A, B, P);

        A = 4'd2; B = 4'd3;
        #10;
        A = 4'd4; B = 4'd5;
        #10;
        A = 4'd7; B = 4'd6;
        #10;
        A = 4'd10; B = 4'd10;
        #10;
        A = 4'd15; B = 4'd15;
        #10;

      
        $finish;

    end

endmodule
