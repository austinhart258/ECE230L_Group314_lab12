module binary(
    input w, input clk, input reset,
    output z,
    output [2:0] state
);
    wire [2:0] next_state;
    wire a = state[2], b = state[1], c = state[0];
    // Simplified sum-of-products from the transition table;
    // 101,110,111 are unused / don't-care current-state encodings.
    assign next_state[2] = (a & w) | (c & b & w);
    assign next_state[1] = (c & ~b) | (b & ~c) | (w & ~b & ~a);
    assign next_state[0] = (c & b & ~w) | (w & ~c & ~a)
                         | (w & ~b & ~a) | (~c & ~b & ~w);
    assign z = (state == 3'b010) | (state == 3'b100);
    genvar i;
    generate for (i=0; i<3; i=i+1) begin : state_ff
        dff ff(.Default(1'b0), .D(next_state[i]), .clk(clk),
               .reset(reset), .Q(state[i]));
    end endgenerate
endmodule