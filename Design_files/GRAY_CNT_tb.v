/////////simulation of TOP module = GRAY_CNT ***********///
////Modelsim /////////

`timescale 1ns/1ps
module GRAY_CNT_tb ();

reg i_clk ;
 reg rst_n ;
 wire [3:0] gray_out ;

GRAY_CNT2  DUT ( i_clk , gray_out , rst_n   );






initial
  begin
   i_clk = 1'b0 ;
	rst_n = 1'b0 ;
	 end
	 
	 
	 always #0.5 i_clk = ~i_clk ;
	 initial begin
        $monitor(" gray_out = %4b", gray_out);
    end  
	 
	 initial 
	   begin
		 #3 rst_n = 1'b1 ;
		  end
	 
	
		  
		  endmodule
		  