use array::ArrayTrait;
use orion::operators::tensor::{TensorTrait, Tensor};

use orion::operators::tensor::I32Tensor;
use orion::numbers::{i32, FP8x23};

fn input_0() -> Tensor<i32> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(i32 { mag: 20, sign: false });
    data.append(i32 { mag: 40, sign: false });
    data.append(i32 { mag: 59, sign: false });
    data.append(i32 { mag: 85, sign: false });

    
    TensorTrait::new(shape.span(), data.span())
}