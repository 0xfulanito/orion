use array::ArrayTrait;
use orion::operators::tensor::{TensorTrait, Tensor};

use orion::operators::tensor::I32Tensor;
use orion::numbers::{i32, FP16x16};

fn output_0() -> Tensor<i32> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(3);
    shape.append(3);
    shape.append(6);

    let mut data = ArrayTrait::new();
    data.append(i32 { mag: 0, sign: false });
    data.append(i32 { mag: 1, sign: false });
    data.append(i32 { mag: 2, sign: false });
    data.append(i32 { mag: 27, sign: false });
    data.append(i32 { mag: 28, sign: false });
    data.append(i32 { mag: 29, sign: false });
    data.append(i32 { mag: 3, sign: false });
    data.append(i32 { mag: 4, sign: false });
    data.append(i32 { mag: 5, sign: false });
    data.append(i32 { mag: 30, sign: false });
    data.append(i32 { mag: 31, sign: false });
    data.append(i32 { mag: 32, sign: false });
    data.append(i32 { mag: 6, sign: false });
    data.append(i32 { mag: 7, sign: false });
    data.append(i32 { mag: 8, sign: false });
    data.append(i32 { mag: 33, sign: false });
    data.append(i32 { mag: 34, sign: false });
    data.append(i32 { mag: 35, sign: false });
    data.append(i32 { mag: 9, sign: false });
    data.append(i32 { mag: 10, sign: false });
    data.append(i32 { mag: 11, sign: false });
    data.append(i32 { mag: 36, sign: false });
    data.append(i32 { mag: 37, sign: false });
    data.append(i32 { mag: 38, sign: false });
    data.append(i32 { mag: 12, sign: false });
    data.append(i32 { mag: 13, sign: false });
    data.append(i32 { mag: 14, sign: false });
    data.append(i32 { mag: 39, sign: false });
    data.append(i32 { mag: 40, sign: false });
    data.append(i32 { mag: 41, sign: false });
    data.append(i32 { mag: 15, sign: false });
    data.append(i32 { mag: 16, sign: false });
    data.append(i32 { mag: 17, sign: false });
    data.append(i32 { mag: 42, sign: false });
    data.append(i32 { mag: 43, sign: false });
    data.append(i32 { mag: 44, sign: false });
    data.append(i32 { mag: 18, sign: false });
    data.append(i32 { mag: 19, sign: false });
    data.append(i32 { mag: 20, sign: false });
    data.append(i32 { mag: 45, sign: false });
    data.append(i32 { mag: 46, sign: false });
    data.append(i32 { mag: 47, sign: false });
    data.append(i32 { mag: 21, sign: false });
    data.append(i32 { mag: 22, sign: false });
    data.append(i32 { mag: 23, sign: false });
    data.append(i32 { mag: 48, sign: false });
    data.append(i32 { mag: 49, sign: false });
    data.append(i32 { mag: 50, sign: false });
    data.append(i32 { mag: 24, sign: false });
    data.append(i32 { mag: 25, sign: false });
    data.append(i32 { mag: 26, sign: false });
    data.append(i32 { mag: 51, sign: false });
    data.append(i32 { mag: 52, sign: false });
    data.append(i32 { mag: 53, sign: false });

    
    TensorTrait::new(shape.span(), data.span())
}