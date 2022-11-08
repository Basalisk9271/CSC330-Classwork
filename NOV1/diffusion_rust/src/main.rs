extern crate ndarray;
use ndarray::Array3;

const MDIM: usize = 102;

fn main() {

    let mut cube = Array3::<f64>::zeros((MDIM,MDIM,MDIM));
    let val: f64 = MDIM as f64;
    for i in 0..MDIM {
      for j in 0..MDIM {
        for k in 0..MDIM {
          cube[[i,j,k]]=val*val*(i as f64)+val*(j as f64)+(k as f64)+1.0;
        }
      }
    }
    println!("{}", cube[[MDIM-1,MDIM-1,MDIM-1]]);
}
