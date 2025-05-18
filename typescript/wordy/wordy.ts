export const answer = (input: string) => {
  const trimmed = input
      .replace(/^what is\s?/i, '')
      .replace(/\?$/, '')
      .trim();

  const operators: Record<string, string> = {
    plus: "+",
    minus: "-",
    "multiplied by": "*",
    "divided by": "/",
  };

  const parts = trimmed.split(/(plus|minus|multiplied by|divided by|-?\d+)/)
      .filter(el => el?.trim() !== "");

  let mappedParts = parts.map((item, index) => {
    const number = Number(item);

    if (Number.isNaN(number)) {
      if (!operators.hasOwnProperty(item)) {
        throw new Error("Unknown operation");
      }

      if ((index % 2) === 0 ) {
        throw new Error("Syntax error");
      }


      return operators[item];
    }

    if ((index % 2) !== 0) {
      throw new Error("Syntax error");
    }

    return number;
  });

  if ([0, 2].includes(mappedParts.length)) {
    throw new Error("Syntax error");
  }

  if (mappedParts.length > 3) {
    mappedParts.splice(3, 0, ")");
    mappedParts.unshift("(");
  }

  const joined = mappedParts.join(" ");

  const result = eval(joined);

  return result;
}
