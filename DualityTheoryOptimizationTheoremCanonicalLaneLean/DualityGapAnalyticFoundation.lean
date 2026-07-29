import DualityTheoryOptimizationTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationTheoremCanonicalLaneLean

structure DualityGapAnalyticFoundation where
  primalProblem : Type u
  dualProblem : Type v
  primalOptimalValue : Type w
  dualOptimalValue : Type x
  strongDualityHolds : Prop
  dualityGapVanishes : Prop

structure DualityGapEvidence (F : DualityGapAnalyticFoundation) where
  strongDualityHoldsClosed : F.strongDualityHolds
  dualityGapVanishesClosed : F.dualityGapVanishes

def DualityGapClosed (F : DualityGapAnalyticFoundation) : Prop :=
  F.strongDualityHolds ∧ F.dualityGapVanishes

theorem duality_gap_closed_from_evidence (F : DualityGapAnalyticFoundation)
    (E : DualityGapEvidence F) : DualityGapClosed F := by
  exact And.intro E.strongDualityHoldsClosed E.dualityGapVanishesClosed

end DualityTheoryOptimizationTheoremCanonicalLaneLean
end HautevilleHouse
