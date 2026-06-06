module traffic_light(
    input wire clk,
    input wire rst,
    output reg  green,
    output reg  yellow,
    output reg  red
);
reg [2:0] state, next_state;
parameter S0 = 3'b010, S1 = 3'b001, S2 = 3'b100;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= S0;
    end else begin
        state <= next_state;
    end
end
always @(*) begin
    case (state)
        S0: begin
            green = 1;
            yellow = 0;
            red = 0;
            next_state = S1;
        end
        S1: begin
            green = 0;
            yellow = 1;
            red = 0;
            next_state = S2;
        end
        S2: begin
            green = 0;
            yellow = 0;
            red = 1;
            next_state = S0;
        end
        default: begin
            green = 0;
            yellow = 0;
            red = 0;
            next_state = S0;
        end
    endcase
end
endmodule
