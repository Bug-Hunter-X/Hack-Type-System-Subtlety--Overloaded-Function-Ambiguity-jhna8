function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x);
}

function main(): void {
  var x: int = 5;
  var y: int = bar(x);
  echo y; // Expected output: 6
}

This code seems straightforward, but it hides a subtle bug related to Hack's type system and function overloading. If you were to add another function `foo` with a different signature, like:

function foo(x: string): string {
  return x.toUpperCase();
}

Hack might not immediately throw an error. The compiler might choose the integer version of `foo` based on the context in `bar`, which is fine, but this can lead to surprising and difficult to debug behavior if you have more complex type interactions and function overloads.