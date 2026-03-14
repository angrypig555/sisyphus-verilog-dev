reg halted;

always @(posedge clk) begin
    if (reset) begin
        halted <= 1'b0;
    end else if (opcode == 8'h00) begin
        halted <= 1'b1;
    end
end