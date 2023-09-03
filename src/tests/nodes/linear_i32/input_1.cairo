use array::ArrayTrait;
use orion::operators::tensor::{TensorTrait, Tensor};

use orion::operators::tensor::I32Tensor;
use orion::numbers::{i32, FP16x16};

fn input_1() -> Tensor<i32> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(3);

    let mut data = ArrayTrait::new();
    data.append(i32 { mag: 1, sign: true });
    data.append(i32 { mag: 5, sign: true });
    data.append(i32 { mag: 7, sign: false });
    data.append(i32 { mag: 4, sign: false });
    data.append(i32 { mag: 3, sign: true });
    data.append(i32 { mag: 3, sign: false });

    
    TensorTrait::new(shape.span(), data.span())
}