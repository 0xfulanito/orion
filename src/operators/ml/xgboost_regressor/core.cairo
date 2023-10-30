use orion::operators::ml::{TreeRegressor, TreeRegressorTrait};
use orion::numbers::FixedTrait;

/// Trait
///
/// predict - Predicts the target value for a set of features using the provided ensemble of decision trees.
trait XGBoostRegressorTrait<T> {
    /// # XGBoostRegressorTrait::predict
    ///
    /// ```rust 
    ///    fn predict(ref self: Span<TreeNode<T>>, ref features: Span<T>, ref weights: Span<T>) -> T;
    /// ```
    ///
    /// Predicts the target value for a set of features using the provided ensemble of decision trees
    /// and combining their results using given weights.
    /// 
    /// ## Args
    ///
    /// * `self`: A reference to a span representing a ensemble of decision trees.
    /// * `features`:  A reference to a span representing the features for which the prediction is to be made.
    /// * `weights`:  A reference to a span representing the weights applied to the predictions from each tree.
    ///
    /// ## Returns
    ///
    /// The predicted target value.
    ///
    /// ## Type Constraints
    ///
    /// Constrain input and output types to fixed point.
    ///
    /// ## Examples
    /// 
    /// ```rust
    /// use orion::operators::ml::{FP16x16XGBoostRegressor, TreeRegressorTrait, TreeRegressor};
    /// use orion::numbers::{FP16x16, FixedTrait};
    /// 
    /// fn xgboost_regressor_example(trees: Span<TreeRegressor<FP16x16>>) {
    /// 
    ///     let mut features =  array![
    ///         FixedTrait::new_unscaled(1, false), 
    ///         FixedTrait::new_unscaled(2, false),
    ///     ].span();
    ///
    ///     let mut weights = array![
    ///         FixedTrait::new_unscaled(0.5, false),
    ///         FixedTrait::new_unscaled(0.5, false)
    ///     ].span();
    ///
    ///     FP16x16XGBoostRegressor::predict(ref trees, ref features, ref weights);
    /// }
    /// ```
    ///
    fn predict(ref self: Span<TreeRegressor<T>>, ref features: Span<T>, ref weights: Span<T>) -> T;
}

fn predict<
    T,
    MAG,
    impl TFixed: FixedTrait<T, MAG>,
    impl TTreeRegressor: TreeRegressorTrait<T>,
    impl TMul: Mul<T>,
    impl TAddEq: AddEq<T>,
    impl TCopy: Copy<T>,
    impl TDrop: Drop<T>,
>(
    ref trees: Span<TreeRegressor<T>>, ref features: Span<T>, ref weights: Span<T>
) -> T {
    let mut sum_prediction: T = FixedTrait::ZERO();

    loop {
        match trees.pop_front() {
            Option::Some(tree) => {
                let mut tree = *tree;
                sum_prediction += tree.predict(features) * *weights.pop_front().unwrap()
            },
            Option::None(_) => { break; }
        };
    };

    sum_prediction
}
