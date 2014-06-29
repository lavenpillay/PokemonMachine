BEGIN TRANSACTION;
insert into growth_rates ("id", "identifier", "formula") values ('1', 'slow', '\frac{5x^3}{4}');
insert into growth_rates ("id", "identifier", "formula") values ('2', 'medium', 'x^3');
insert into growth_rates ("id", "identifier", "formula") values ('3', 'fast', '\frac{4x^3}{5}');
insert into growth_rates ("id", "identifier", "formula") values ('4', 'medium-slow', '\frac{6x^3}{5} - 15x^2 + 100x - 140');
insert into growth_rates ("id", "identifier", "formula") values ('5', 'slow-then-very-fast', '\begin{cases}
\frac{ x^3 \left( 100 - x \right) }{50},    & \text{if } x \leq 50  \\
\frac{ x^3 \left( 150 - x \right) }{100},   & \text{if } 50 < x \leq 68  \\
\frac{ x^3 \left( 1274 + (x \bmod 3)^2 - 9 (x \bmod 3) - 20 \left\lfloor \frac{x}{3} \right\rfloor \right) }{1000}, & \text{if } 68 < x \leq 98  \\
\frac{ x^3 \left( 160 - x \right) }{100},   & \text{if } x > 98  \\
\end{cases}');
insert into growth_rates ("id", "identifier", "formula") values ('6', 'fast-then-very-slow', '\begin{cases}
\frac{ x^3 \left( 24 + \left\lfloor \frac{x+1}{3} \right\rfloor \right) }{50},  & \text{if } x \leq 15  \\
\frac{ x^3 \left( 14 + x \right) }{50},     & \text{if } 15 < x \leq 35  \\
\frac{ x^3 \left( 32 + \left\lfloor \frac{x}{2} \right\rfloor \right ) }{50},   & \text{if } x > 35  \\
\end{cases}');
COMMIT;
