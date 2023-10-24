use array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::I32Tensor;
use orion::numbers::{IntegerTrait, i32};

fn input_0() -> Tensor<i32> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(i32 { mag: 105, sign: true });
    data.append(i32 { mag: 124, sign: true });
    data.append(i32 { mag: 53, sign: true });
    data.append(i32 { mag: 77, sign: true });
    TensorTrait::new(shape.span(), data.span())
}