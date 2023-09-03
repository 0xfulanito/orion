use array::ArrayTrait;

use orion::operators::tensor::{TensorTrait, Tensor};
use orion::numbers::fixed_point::core::{FixedTrait};
use orion::operators::tensor::implementations::tensor_fp8x23::FP8x23Tensor;use orion::numbers::FP8x23;


fn input_0() -> Tensor<FP8x23> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(2);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(FP8x23 { mag: 1031798784, sign: false });
    data.append(FP8x23 { mag: 687865856, sign: true });
    data.append(FP8x23 { mag: 612368384, sign: false });
    data.append(FP8x23 { mag: 822083584, sign: true });
    data.append(FP8x23 { mag: 746586112, sign: false });
    data.append(FP8x23 { mag: 226492416, sign: false });
    data.append(FP8x23 { mag: 268435456, sign: false });
    data.append(FP8x23 { mag: 553648128, sign: false });

    
    TensorTrait::new(shape.span(), data.span())
}