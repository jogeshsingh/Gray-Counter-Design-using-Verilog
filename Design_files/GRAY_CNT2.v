//////////Top file = GRAY_CNT ***********/////

module GRAY_CNT2  
#(parameter DATA_WIDTH = 4)
( i_clk , gray_out , rst_n   );

input i_clk ;
input rst_n ;
output reg [DATA_WIDTH-1:0] gray_out ;


wire [DATA_WIDTH-1:0] d_in;      
wire [DATA_WIDTH-1:0] g_nEXT ;
wire [DATA_WIDTH-1:0] bin_out ; 

 bin_gray DUT1  ( .b_in(d_in) , .g_out(g_nEXT) );
 gray_bin DUT2 ( .g_in(gray_out) , .b_out(bin_out));
 
 
 
 assign d_in = 1'b1 + bin_out ;
 ////////intermediate data register ///

 
 always @ (posedge i_clk )
   begin
	    if (~rst_n)
		  begin
		    gray_out <= 4'b0000;
			  end
	else
       begin
		 gray_out <= g_nEXT ;
		  end
		   end
		

endmodule 		
