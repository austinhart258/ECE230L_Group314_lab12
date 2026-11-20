module onehot(
    input w, input clk, input reset,
    output z,
    output [4:0] state
);
    wire [4:0] next_state;
    // state[0]=A, state[1]=B, ..., state[4]=E
    assign next_state[0] = 1'b0; // A is entered only on reset
    assign next_state[1] = ~w & (state[0] | state[3] | state[4]);
    assign next_state[2] = ~w & (state[1] | state[2]);
    assign next_state[3] = w & (state[0] | state[1] | state[2]);
    assign next_state[4] = w & (state[3] | state[4]);
    assign z = state[2] | state[4];
    genvar i;
    generate for (i=0; i<5; i=i+1) begin : state_ff
        dff ff(.Default(i==0), .D(next_state[i]), .clk(clk),
               .reset(reset), .Q(state[i]));
    end endgenerate
endmodule