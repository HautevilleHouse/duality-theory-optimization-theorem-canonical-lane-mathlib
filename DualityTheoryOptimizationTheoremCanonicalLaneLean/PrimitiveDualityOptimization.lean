import DualityTheoryOptimizationTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationTheoremCanonicalLaneLean

structure PrimalProblem where
  decisionSpace : Type u
  objective : decisionSpace → ℝ
  feasibleSet : Set decisionSpace
  optimalValue : ℝ
  optimalValueDefined : optimalValue = ⨅ x ∈ feasibleSet, objective x

structure DualProblem where
  dualVariables : Type v
  dualObjective : dualVariables → ℝ
  dualFeasibleSet : Set dualVariables
  dualOptimalValue : ℝ
  dualOptimalValueDefined : dualOptimalValue = ⨆ y ∈ dualFeasibleSet, dualObjective y

structure DualityGap where
  primal : PrimalProblem
  dual : DualProblem
  gap : ℝ
  gapNonnegative : gap ≥ 0
  equalityCondition : gap = 0 ↔ (primal.optimalValue = dual.dualOptimalValue)

structure PrimitiveDualityPackage (P : PrimalProblem) (D : DualProblem) where
  weakDuality : ∀ x ∈ P.feasibleSet, ∀ y ∈ D.dualFeasibleSet, P.objective x ≥ D.dualObjective y
  strongDuality : (∀ x ∈ P.feasibleSet, P.objective x = D.dualOptimalValue) ∨ (∃ gap : DualityGap, gap.gap = 0)
  constraintQualification : Prop
  primalAttains : Prop
  dualAttains : Prop

end DualityTheoryOptimizationTheoremCanonicalLaneLean
end HautevilleHouse