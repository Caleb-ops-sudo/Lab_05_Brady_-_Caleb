module light(
    input A, B,   // Declare downstairs and upstairs input
    output Y    // Declare stair light output
);
    assign Y = A^B;
    // Enter logic equation here

endmodule
