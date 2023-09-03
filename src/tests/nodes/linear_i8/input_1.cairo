use array::ArrayTrait;
use orion::operators::tensor::{TensorTrait, Tensor};

use orion::operators::tensor::I8Tensor;
use orion::numbers::signed_integer::{integer_trait::IntegerTrait, i8::i8};

fn input_1() -> Tensor<i8> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(3);

    let mut data = ArrayTrait::new();
    data.append(i8 { mag: 1, sign: false });
    data.append(i8 { mag: 2, sign: false });
    data.append(i8 { mag: 1, sign: true });
    data.append(i8 { mag: 2, sign: true });
    data.append(i8 { mag: 1, sign: true });
    data.append(i8 { mag: 3, sign: true });

    
    TensorTrait::new(shape.span(), data.span())
}