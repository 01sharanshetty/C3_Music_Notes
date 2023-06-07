 module counter (clk, SCLR,EN,c);
	     input clk;
	     input SCLR;   // Clear of counter //
	     input EN ; // Active 'HIGH' Enable //
	     reg [5:0] Cout; // Counter Output //
	     output reg c; 
	         
	
	parameter N = 5;
	
	            always@(posedge clk)
	                    if(SCLR) 
	                        begin
							  Cout <= 5'd0;
							  c<=1'd0;
							  end
	                        else if (EN)    
	                            begin
	                                    if (Cout == 5) 
	                                    begin
	                                            c<=1'd1;
	                                            Cout <= 5'd0;
	                                    end 
	                                    else
	                                    begin
	                                            Cout <= Cout + 1'd1;
	                                            c<=1'd0;
	                                    end
	                            end
	                    
	endmodule     
	 
