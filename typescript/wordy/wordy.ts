export const answer = (input: string) => {
  const trimmed = input
      .replace(/^what is /i, '')
      .replace(/\?$/, '')
      .trim();

  const [operand1, operator, operand2] = trimmed.split(/\s+/);

  if (!operator || !operand2) {
    return Number(operand1);
  }

  const operators: Record<string, string> = {
    plus: "+"
  };

  const op = operators[operator];

  const result = eval(`${operand1} ${op} ${operand2}`);

  return result;
}
