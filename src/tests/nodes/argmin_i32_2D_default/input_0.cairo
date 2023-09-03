use array::ArrayTrait;
use orion::operators::tensor::{TensorTrait, Tensor};

use orion::operators::tensor::I32Tensor;
use orion::numbers::{i32, FP16x16};

fn input_0() -> Tensor<i32> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(i32 { mag: 6, sign: false });
    data.append(i32 { mag: 64, sign: true });
    data.append(i32 { mag: 121, sign: true });
    data.append(i32 { mag: 28, sign: true });

    
    TensorTrait::new(shape.span(), data.span())
}