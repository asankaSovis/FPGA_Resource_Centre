
module hamming74_enc(
    input  [8:0] i_data,
    output [8:0] o_hamming_code
);

reg p1, p2, p4;

always @(*) begin
    p1 = i_data[0] ^ i_data[1] ^ i_data[3];
    p2 = i_data[0] ^ i_data[2] ^ i_data[3];
    p4 = i_data[1] ^ i_data[2] ^ i_data[3];
end

assign o_hamming_code[6:0] = {i_data[3:1],p4,i_data[0],p2,p1};

assign o_hamming_code[7] = ^o_hamming_code[6:0];
assign o_hamming_code[8] = i_data[8];

endmodule