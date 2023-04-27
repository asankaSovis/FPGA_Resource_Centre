module ASK_FSK (int_clk, clk, bitstream, out_red, out_green);
input int_clk, clk, bitstream;
output out_red, out_green;

reg count = 1;
reg [1:0] bits = 2'b00;

always @(posedge clk) begin
    bits[count] <= bitstream;
    count = count + 1;

end

PWM pwm_red(int_clk, !bits[0], out_red);
PWM pwm_green(int_clk, (bits[0] != bits[1]), out_green);

endmodule

module PWM (int_clk, in, pwm_out);

input int_clk, in;
output reg pwm_out;

reg [4:0] pwm_clk = 5'b0_0000;

always @(posedge int_clk) begin
    pwm_clk = pwm_clk + 5'b0_0001;
    
    if (in) begin
        pwm_out = (pwm_clk < 1);
    end else begin
        pwm_out = (pwm_clk < 30);
    end
end

endmodule