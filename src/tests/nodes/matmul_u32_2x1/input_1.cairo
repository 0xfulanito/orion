use array::ArrayTrait;
use orion::operators::tensor::{TensorTrait, Tensor};

use orion::operators::tensor::U32Tensor;

fn input_1() -> Tensor<u32> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(1);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(50);
    data.append(113);

    
    TensorTrait::new(shape.span(), data.span())
}