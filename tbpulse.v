// Code your testbench here
// or browse Examples
`default_nettype none

module test;

reg clk=0, reset=1;
wire ep, pp, ep0, pp2, ep1;

always #1 clk=~clk;

 epwmblock dut0(clk,reset,8'hff,8'h10,8'h0,ep0);
 epwmblock #(.CNT_WIDTH(10)) dut1(clk,reset,10'h3ff,10'h10,8'h0,ep);
 ppwmblock dut2(clk,reset,8'hFF,8'h0,pp);
 ppwmblock dut3(clk,reset,8'h80,8'h1,pp2);
 epwmblock dut4(clk,reset,8'h1f,8'h10,8'h0,ep1);


initial
    begin
    $dumpfile("dump.vcd");
      $dumpvars(3);
#5  reset=0;
# 4096 
    $finish;
    end 

endmodule