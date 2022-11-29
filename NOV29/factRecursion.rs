use std::env;
fn factorial_recursive (n: u64) -> u64 {
    match n {
        0 => 1,
        _ => n * factorial_recursive(n-1)
    }
}

fn main () {
    let args: Vec<String> = env::args().collect();
    let num = &args[1];
    let temp = num.trim().parse::<i32>().expect("Item not integer");
    let n: u64 = temp as u64;
    println!("{}", factorial_recursive(n))
}