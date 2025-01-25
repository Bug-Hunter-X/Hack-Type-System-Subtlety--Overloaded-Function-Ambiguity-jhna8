function foo(x: int): int {
  return x + 1;
}

function fooStr(x: string): string {
  return x.toUpperCase();
}

function bar(x: int): int {
  return foo(x);
}

function main(): void {
  var x: int = 5;
  var y: int = bar(x);
  echo y; // Output: 6

  var z: string = "hello";
  var w: string = fooStr(z);
  echo w; //Output: HELLO
}

By renaming the second `foo` function to `fooStr`, we explicitly clarify the function's purpose and eliminate the ambiguity that may have caused the unexpected behavior in the original code. This makes the code much more readable and less prone to errors.