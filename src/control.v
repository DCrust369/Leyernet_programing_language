module addr_computer (
    input CPU,
    input GPU,
    output Kernel,
    output System,
);

module addr_phone (
    input motherboard,
    input batery,
    output Android, // google android but have others systens
    output IOS, // the IOS is a Apple
);

module addr_other_phone (
    input motherboard,
    input batery,
    input memory,
    output GrapheneOS,
    output LineageOS,
    output KaliNetHunter,
);

always @(*) begin
    if (a)
        Kernel = System;
    else
        y = 1'b0;

    if (a)
        Android = IOS;
    else
        y = 1'b0;
end

endmodule
