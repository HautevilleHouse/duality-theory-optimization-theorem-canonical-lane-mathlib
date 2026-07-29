import DualityTheoryOptimizationTheoremCanonicalLaneLean.SlaterConditionLagrangeDuality

namespace HautevilleHouse
namespace DualityTheoryOptimizationTheoremCanonicalLaneLean

structure KKTconditionsPackage {F : DualityGapAnalyticFoundation}
    {W : WeakDualityPackage F} {S : SlaterConditionPackage W} where
  primalStationarity : Prop
  complementarySlackness : Prop
  dualFeasibility : Prop
  saddlePointCharacterization : Prop

structure KKTconditionsEvidence {F : DualityGapAnalyticFoundation}
    {W : WeakDualityPackage F} {S : SlaterConditionPackage W}
    (K : KKTconditionsPackage S) where
  primalStationarityClosed : K.primalStationarity
  complementarySlacknessClosed : K.complementarySlackness
  dualFeasibilityClosed : K.dualFeasibility
  saddlePointCharacterizationClosed : K.saddlePointCharacterization

def KKTconditionsClosed {F : DualityGapAnalyticFoundation}
    {W : WeakDualityPackage F} {S : SlaterConditionPackage W}
    (K : KKTconditionsPackage S) : Prop :=
  K.primalStationarity ∧ K.complementarySlackness ∧ K.dualFeasibility ∧ K.saddlePointCharacterization

theorem kkt_conditions_closed_from_evidence {F : DualityGapAnalyticFoundation}
    {W : WeakDualityPackage F} {S : SlaterConditionPackage W}
    (K : KKTconditionsPackage S) (E : KKTconditionsEvidence K) : KKTconditionsClosed K := by
  exact And.intro E.primalStationarityClosed
    (And.intro E.complementarySlacknessClosed
      (And.intro E.dualFeasibilityClosed E.saddlePointCharacterizationClosed))

end DualityTheoryOptimizationTheoremCanonicalLaneLean
end HautevilleHouse
