% Code to solve "digital dilemma"

% Set number of digits to check.
n = 400;

% Initialize the solution matrix. 
solutions = zeros(1, n); 

% Hunt for solutions.
for i = 2:n
  for j = 1:(i - 1)
    % Get the current decimal expansion being checked.
    digits = get_digits(j, i, i);

    if (digits(end) != 0)
      % Sum the current decimal expansion.
      digit_sum = sum(digits);

      % Check for a zero remainder
      if (mod(digit_sum - j, i-1) == 0)
	% This is the first digit of the solution.
	a = (digit_sum - j) / (i - 1);

	% Build the solution.
	digits(1) = a;
	tmp = zeros(1, n);
	for k = 1:i
	  tmp(k) = digits(k);
	end

	solutions = [solutions; tmp];
      end
    end
  end
end

solutions = solutions(2:end, :);


