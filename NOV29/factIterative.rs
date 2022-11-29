use std::env;

fn factorial_iterative(n: u64) -> u64 {
    (1..=n).product()
}

fn main () {
    let args: Vec<String> = env::args().collect();
    let num = &args[1];
    let temp = num.trim().parse::<i32>().expect("Item not integer");
    let n: u64 = temp as u64;
    println!("{}", factorial_iterative(n))
}