	module DFF(input D,input clk, input reset_button, input EN ,output Q);
	reg temp;
	            always @(posedge clk) 
	                    begin
	                      if(reset_button) begin
	                        temp <=0;
	                      end
	                      else begin
	                        if(EN)
	                                begin
	                                   temp <= D; 
	                                end 
											  else
											  temp<=temp;
	                    end  
	                  end
	assign 	Q=temp;					  
	endmodule
