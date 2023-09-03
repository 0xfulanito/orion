use array::ArrayTrait;
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::numbers::fixed_point::core::{FixedTrait};
use orion::numbers::FP8x23;
use orion::operators::tensor::implementations::tensor_fp8x23::FP8x23Tensor;

fn output_0() -> Tensor<FP8x23> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(FP8x23 { mag: 17637476, sign: false });
    data.append(FP8x23 { mag: 9173457, sign: false });
    data.append(FP8x23 { mag: 16186111, sign: false });
    data.append(FP8x23 { mag: 9665119, sign: false });

    
    TensorTrait::new(shape.span(), data.span())
}