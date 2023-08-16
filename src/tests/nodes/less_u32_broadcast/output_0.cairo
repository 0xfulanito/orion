use array::ArrayTrait;
use orion::operators::tensor::core::{TensorTrait, Tensor, ExtraParams};
use orion::numbers::fixed_point::core::FixedImpl;
use orion::operators::tensor::implementations::impl_tensor_u32::Tensor_u32;

fn output_0() -> Tensor<u32> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(3);
    shape.append(3);
    shape.append(3);

    let mut data = ArrayTrait::new();
    data.append(0);
    data.append(0);
    data.append(0);
    data.append(1);
    data.append(1);
    data.append(0);
    data.append(1);
    data.append(1);
    data.append(1);
    data.append(0);
    data.append(0);
    data.append(0);
    data.append(1);
    data.append(1);
    data.append(1);
    data.append(1);
    data.append(1);
    data.append(0);
    data.append(0);
    data.append(0);
    data.append(0);
    data.append(1);
    data.append(0);
    data.append(1);
    data.append(1);
    data.append(1);
    data.append(1);

    let extra = ExtraParams { fixed_point: Option::Some(FixedImpl::FP16x16) };
    TensorTrait::new(shape.span(), data.span(), Option::Some(extra))
}