use array::ArrayTrait;
use orion::operators::tensor::{TensorTrait, Tensor};

use orion::operators::tensor::implementations::tensor_u32_fp8x23::Tensor_u32_fp8x23;

fn input_0() -> Tensor<u32> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(103);
    data.append(98);
    data.append(86);
    data.append(80);

    
    TensorTrait::new(shape.span(), data.span())
}