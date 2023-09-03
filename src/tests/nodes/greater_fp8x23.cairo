mod input_0; 
mod input_1; 
mod output_0; 


use array::ArrayTrait;
use orion::operators::tensor::core::TensorTrait;
use orion::operators::tensor::implementations::tensor_fp8x23::FP8x23Tensor;
use orion::operators::tensor::implementations::tensor_u32_fp8x23::{u32TensorPartialEq};
use orion::utils::assert_eq;

#[test]
#[available_gas(2000000000)]
fn test_greater_fp8x23() {
    let input_0 = input_0::input_0();
    let input_1 = input_1::input_1();
    let z = output_0::output_0();

    let y = input_0.greater(@input_1);

    assert_eq(y, z);
}