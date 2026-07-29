import DualityTheoryOptimizationTheoremCanonicalLaneLean.WeakDualityInequality

namespace HautevilleHouse
namespace DualityTheoryOptimizationTheoremCanonicalLaneLean

structure SlaterConditionPackage {F : DualityGapAnalyticFoundation}
    (W : WeakDualityPackage F) where
  constraintQualification : Prop
  strictlyFeasiblePoint : Prop
  strongDualityUnderSlater : Prop

structure SlaterConditionEvidence {F : DualityGapAnalyticFoundation}
    {W : WeakDualityPackage F} (S : SlaterConditionPackage W) where
  constraintQualificationClosed : S.constraintQualification
  strictlyFeasiblePointClosed : S.strictlyFeasiblePoint
  strongDualityUnderSlaterClosed : S.strongDualityUnderSlater

def SlaterConditionClosed {F : DualityGapAnalyticFoundation}
    {W : WeakDualityPackage F} (S : SlaterConditionPackage W) : Prop :=
  S.constraintQualification ∧ S.strictlyFeasiblePoint ∧ S.strongDualityUnderSlater

theorem slater_condition_closed_from_evidence {F : DualityGapAnalyticFoundation}
    {W : WeakDualityPackage F} (S : SlaterConditionPackage W)
    (E : SlaterConditionEvidence S) : SlaterConditionClosed S := by
  exact And.intro E.constraintQualificationClosed
    (And.intro E.strictlyFeasiblePointClosed E.strongDualityUnderSlaterClosed)

end DualityTheoryOptimizationTheoremCanonicalLaneLean
end HautevilleHouse
