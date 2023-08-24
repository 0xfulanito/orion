use core::traits::Into;
use array::ArrayTrait;
use array::SpanTrait;
use option::OptionTrait;

use orion::numbers::signed_integer::i8::i8;
use orion::operators::tensor::core::{Tensor, TensorTrait};
use orion::operators::tensor::implementations::impl_tensor_fp::Tensor_fp;
use orion::numbers::fixed_point::core::{FixedType, FixedTrait};
use orion::numbers::fixed_point::implementations::fp16x16::core::{
    FP16x16Impl, FP16x16Add, FP16x16Div
};


/// Cf: NNTrait::softsign docstring
fn softsign(mut z: Tensor<i8>) -> Tensor<FixedType> {
    let mut data_result = ArrayTrait::new();

    loop {
        match z.data.pop_front() {
            Option::Some(item) => {
                let fp_current_item = FixedTrait::new_unscaled((*item.mag).into(), *item.sign);
                let result = fp_current_item / (FixedTrait::ONE() + fp_current_item.abs());
                data_result.append(result);
            },
            Option::None(_) => {
                break;
            }
        };
    };

    return TensorTrait::new(z.shape, data_result.span(), z.extra);
}

