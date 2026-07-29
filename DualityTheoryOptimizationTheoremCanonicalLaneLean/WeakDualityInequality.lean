import DualityTheoryOptimizationTheoremCanonicalLaneLean.DualityGapAnalyticFoundation

namespace HautevilleHouse
namespace DualityTheoryOptimizationTheoremCanonicalLaneLean

structure WeakDualityPackage (F : DualityGapAnalyticFoundation) where
  weakDualityInequality : Prop
  primalLowerBound : Prop
  dualUpperBound : Prop

structure WeakDualityEvidence {F : DualityGapAnalyticFoundation} (W : WeakDualityPackage F) where
  weakDualityInequalityClosed : W.weakDualityInequality
  primalLowerBoundClosed : W.primalLowerBound
  dualUpperBoundClosed : W.dualUpperBound

def WeakDualityClosed {F : DualityGapAnalyticFoundation} (W : WeakDualityPackage F) : Prop :=
  W.weakDualityInequality ∧ W.primalLowerBound ∧ W.dualUpperBound

theorem weak_duality_closed_from_evidence {F : DualityGapAnalyticFoundation}
    (W : WeakDualityPackage F) (E : WeakDualityEvidence W) : WeakDualityClosed W := by
  exact And.intro E.weakDualityInequalityClosed
    (And.intro E.primalLowerBoundClosed E.dualUpperBoundClosed)

end DualityTheoryOptimizationTheoremCanonicalLaneLean
end HautevilleHouse
