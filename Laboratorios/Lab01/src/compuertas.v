module compuertas(A,B,C,S1,S2); 
input A; 
input B;
input C;

output S1;
output S2;


assign S1 = A & B; // Asignamos a S1 A and B.
assign S2 = ~C;  // Asignamos a S2 C negado.


endmodule
