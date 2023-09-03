use array::ArrayTrait;
use orion::operators::tensor::{TensorTrait, Tensor};

use orion::operators::tensor::U32Tensor;

fn output_0() -> Tensor<u32> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(3);
    shape.append(3);
    shape.append(6);

    let mut data = ArrayTrait::new();
    data.append(0);
    data.append(1);
    data.append(2);
    data.append(27);
    data.append(28);
    data.append(29);
    data.append(3);
    data.append(4);
    data.append(5);
    data.append(30);
    data.append(31);
    data.append(32);
    data.append(6);
    data.append(7);
    data.append(8);
    data.append(33);
    data.append(34);
    data.append(35);
    data.append(9);
    data.append(10);
    data.append(11);
    data.append(36);
    data.append(37);
    data.append(38);
    data.append(12);
    data.append(13);
    data.append(14);
    data.append(39);
    data.append(40);
    data.append(41);
    data.append(15);
    data.append(16);
    data.append(17);
    data.append(42);
    data.append(43);
    data.append(44);
    data.append(18);
    data.append(19);
    data.append(20);
    data.append(45);
    data.append(46);
    data.append(47);
    data.append(21);
    data.append(22);
    data.append(23);
    data.append(48);
    data.append(49);
    data.append(50);
    data.append(24);
    data.append(25);
    data.append(26);
    data.append(51);
    data.append(52);
    data.append(53);

    
    TensorTrait::new(shape.span(), data.span())
}