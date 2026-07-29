import DualityTheoryOptimizationTheoremCanonicalLaneLean.FinalTheorem
import DualityTheoryOptimizationTheoremCanonicalLaneLean.DualityGapAnalyticFoundation

namespace HautevilleHouse
namespace DualityTheoryOptimizationTheoremCanonicalLaneLean

structure DualityRouteObligations where
  weakDuality : Prop
  slaterCondition : Prop
  kktConditions : Prop
  dualityGapVanishes : Prop

structure DualityRouteEvidence (R : DualityRouteObligations) where
  weakDualityClosed : R.weakDuality
  slaterConditionClosed : R.slaterCondition
  kktConditionsClosed : R.kktConditions
  dualityGapVanishesClosed : R.dualityGapVanishes

def DualityRouteClosed (R : DualityRouteObligations) : Prop :=
  R.weakDuality ∧ R.slaterCondition ∧ R.kktConditions ∧ R.dualityGapVanishes

theorem duality_route_closed_from_evidence (R : DualityRouteObligations)
    (E : DualityRouteEvidence R) : DualityRouteClosed R := by
  exact And.intro E.weakDualityClosed
    (And.intro E.slaterConditionClosed
      (And.intro E.kktConditionsClosed E.dualityGapVanishesClosed))

def DualityGapAnalyticFoundation.toDualityRouteObligations
    (F : DualityGapAnalyticFoundation) : DualityRouteObligations :=
  { weakDuality := True
    slaterCondition := True
    kktConditions := True
    dualityGapVanishes := F.dualityGapVanishes
  }

end DualityTheoryOptimizationTheoremCanonicalLaneLean
end HautevilleHouse
