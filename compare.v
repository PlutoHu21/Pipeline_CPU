module comparer #(parameter width=8) (gt,lt,eq,a,b);
  input [width-1:0]a,b;
  output reg gt,lt,eq;

  always @(a,b)
	begin
	  if(a>b) 
	                begin
		if(a[width-1]==1&&b[width-1]==0) {gt,lt,eq} <= 3'b010;
		else {gt,lt,eq} <= 3'b100;
		end
	  else if (a<b)
		begin
		if(a[width-1]==0&&b[width-1]==1) {gt,lt,eq} <= 3'b100; 
		else {gt,lt,eq} <= 3'b010;
		end
	  else {gt,lt,eq} <= 3'b001;
	end

endmodule 