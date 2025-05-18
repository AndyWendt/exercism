export const answer = (input: string) => {
  const trimmed = input
      .replace(/^what is /i, '')
      .replace(/\?$/, '')
      .trim();

  const operators: Record<string, string> = {
    plus: "+",
    minus: "-",
  };

  const parts = trimmed.split(/(plus|minus)/);

  const mappedParts = parts.map((item) => {
    const number = Number(item);

    if (Number.isNaN(number)) {
      return operators[item];
    }

    return number;
  });

  const joined = mappedParts.join(" ");

  const result = eval(joined);

  return result;
}
