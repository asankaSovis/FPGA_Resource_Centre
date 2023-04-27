/*
 * ------------------------------------------------------------------
 *                  HAMMING 74 ENCODER v1.0
 * 
 * Hamming code (Hamming(7,4)) is a type of error-correcting code used
 * to detect and correct errors that may occur when transmitting digital
 * data. The code uses four data bits and adds three parity bits to form
 * a seven-bit code word. These parity bits are calculated based on the
 * data bits using a specific algorithm. The code can detect and correct
 * single-bit errors, making it useful in applications where data
 * integrity is critical, such as in computer memory or communication
 * systems. The Hamming code was invented by Richard Hamming in the
 * 1950s and is still widely used today.
 * 
 * Written Date: 27/042023
 * Filename: hamming74_enc.v
 * Last Edited: 27/04/2023
 * Author: Asanka Sovis
 * 
 *      (C) 2023, Asanka Sovis
 * ------------------------------------------------------------------
 */

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