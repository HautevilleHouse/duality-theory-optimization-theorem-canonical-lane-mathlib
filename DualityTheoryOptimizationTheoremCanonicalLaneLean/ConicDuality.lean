import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationTheoremCanonicalLaneLean

structure ConicDualityPackage where
  primalConicProblem : Prop
  dualConicProblem : Prop
  weakDualityForCones : Prop
  strongDualityForCones : Prop
  coneInteriorCondition : Prop
  optimalityConditionsConic : Prop

structure ConicDualityEvidence (C : ConicDualityPackage) where
  primalConicProblemClosed : C.primalConicProblem
  dualConicProblemClosed : C.dualConicProblem
  weakDualityForConesClosed : C.weakDualityForCones
  strongDualityForConesClosed : C.strongDualityForCones
  coneInteriorConditionClosed : C.coneInteriorCondition
  optimalityConditionsConicClosed : C.optimalityConditionsConic

def ConicDualityClosed (C : ConicDualityPackage) : Prop :=
  C.primalConicProblem ∧ C.dualConicProblem ∧ C.weakDualityForCones ∧
  C.strongDualityForCones ∧ C.coneInteriorCondition ∧ C.optimalityConditionsConic

theorem conic_duality_closed_from_evidence (C : ConicDualityPackage)
    (E : ConicDualityEvidence C) : ConicDualityClosed C := by
  exact And.intro E.primalConicProblemClosed
    (And.intro E.dualConicProblemClosed
      (And.intro E.weakDualityForConesClosed
        (And.intro E.strongDualityForConesClosed
          (And.intro E.coneInteriorConditionClosed E.optimalityConditionsConicClosed))))

end DualityTheoryOptimizationTheoremCanonicalLaneLean
end HautevilleHouse