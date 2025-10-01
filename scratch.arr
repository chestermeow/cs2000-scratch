use context dcic2024

fun triple(n :: Number) -> Number:
  doc: "multiples the input by 3"
  n * 3
where:
  triple(3) is 9
  triple(-8) is -24
  triple(4) is 12
end

fun is-pos(n :: Number) -> Boolean:
  doc: "returns true if number is greater than 0"
  n > 0
where:
  is-pos(-1) is false
  is-pos(0) is false
  is-pos(1) is true
end