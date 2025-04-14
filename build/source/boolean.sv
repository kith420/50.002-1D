/*
    This file was generated automatically by Alchitry Labs 2.0.24-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module boolean #(
        parameter SIZE = 6'h20
    ) (
        input wire [(SIZE)-1:0] a,
        input wire [(SIZE)-1:0] b,
        input wire [5:0] alufn_signal,
        output reg [(SIZE)-1:0] bool
    );
    logic [4:0] R_7a8b210a_i;
    logic [5:0] RR_7a8b210a_i;
    logic [31:0] M_mux_4_32_s0;
    logic [31:0] M_mux_4_32_s1;
    logic [31:0][3:0] M_mux_4_32_in;
    logic [31:0] M_mux_4_32_out;
    
    genvar idx_0_1258843063;
    
    generate
        for (idx_0_1258843063 = 0; idx_0_1258843063 < 32; idx_0_1258843063 = idx_0_1258843063 + 1) begin: forLoop_idx_0_1258843063
            mux_4 mux_4_32 (
                .s0(M_mux_4_32_s0[idx_0_1258843063]),
                .s1(M_mux_4_32_s1[idx_0_1258843063]),
                .in(M_mux_4_32_in[idx_0_1258843063]),
                .out(M_mux_4_32_out[idx_0_1258843063])
            );
        end
    endgenerate
    
    
    always @* begin
        for (RR_7a8b210a_i = 0; RR_7a8b210a_i < 6'h20; RR_7a8b210a_i = RR_7a8b210a_i + 1) begin
      R_7a8b210a_i = (0) + RR_7a8b210a_i * (1);
            M_mux_4_32_s0[R_7a8b210a_i] = a[R_7a8b210a_i];
            M_mux_4_32_s1[R_7a8b210a_i] = b[R_7a8b210a_i];
            M_mux_4_32_in[R_7a8b210a_i][1'h0] = alufn_signal[1'h0];
            M_mux_4_32_in[R_7a8b210a_i][1'h1] = alufn_signal[1'h1];
            M_mux_4_32_in[R_7a8b210a_i][2'h2] = alufn_signal[2'h2];
            M_mux_4_32_in[R_7a8b210a_i][2'h3] = alufn_signal[2'h3];
            bool[R_7a8b210a_i] = M_mux_4_32_out[R_7a8b210a_i];
        end
    end
    
    
endmodule