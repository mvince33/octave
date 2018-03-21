function digits = get_digits(a, b, c)
  % Function to get c digits of a / b.
  % digits = A vetor containging the digits of a / b.
  % a = numerator
  % b = denominator
  % c = The number of digits

% Initialize the vector containing the digits.
digits = [];

% Convert a and b to integers so we can use 
% integer arithmetic.
a = int32(a);
b = int32(b);

for i = 1:(c + 1)
  digits(i) = idivide(a, b);
  a = 10 * mod(a, b);
end

if (digits(end) > 4)
  digits(end - 1) = digits(end - 1) + 1;
end

digits = digits(1:(end - 1));
