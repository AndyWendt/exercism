export const answer = (input: string) => {
  const trimmed = input
      .replace(/^what is /i, '')
      .replace(/\?$/, '')
      .trim();

  const operators: Record<string, string> = {
    plus: "+",
    minus: "-",
    "multiplied by": "*",
    "divided by": "/",
  };

  const parts = trimmed.split(/(plus|minus|multiplied by|divided by)/);

  let mappedParts = parts.map((item) => {
    const number = Number(item);

    if (Number.isNaN(number)) {
      return operators[item];
    }

    return number;
  });

  if (mappedParts.length > 3) {
    mappedParts.splice(3, 0, ")");
    mappedParts.unshift("(");
  }

  const joined = mappedParts.join(" ");

  const result = eval(joined);

  return result;
}
