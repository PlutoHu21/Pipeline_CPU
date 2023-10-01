module d_ff  #(parameter WIDTH = 8) (q, d, reset, clock);
  input [WIDTH-1 : 0] d;
  input reset, clock;
  output reg [WIDTH-1 : 0] q;

  always @(posedge clock,negedge reset)
	begin
		if(reset)
		q <= d;
		else
		q <= 0;
	end

endmodule 









