import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationTheoremCanonicalLaneLean

structure SaddlePointPackage where
  lagrangianFunction : Prop
  saddlePointExistence : Prop
  minMaxTheorem : Prop
  convexConcaveAssumptions : Prop
  compactnessConditions : Prop
  optimalityEquivalence : Prop

structure SaddlePointEvidence (S : SaddlePointPackage) where
  lagrangianFunctionClosed : S.lagrangianFunction
  saddlePointExistenceClosed : S.saddlePointExistence
  minMaxTheoremClosed : S.minMaxTheorem
  convexConcaveAssumptionsClosed : S.convexConcaveAssumptions
  compactnessConditionsClosed : S.compactnessConditions
  optimalityEquivalenceClosed : S.optimalityEquivalence

def SaddlePointClosed (S : SaddlePointPackage) : Prop :=
  S.lagrangianFunction ∧ S.saddlePointExistence ∧ S.minMaxTheorem ∧
  S.convexConcaveAssumptions ∧ S.compactnessConditions ∧ S.optimalityEquivalence

theorem saddle_point_closed_from_evidence (S : SaddlePointPackage)
    (E : SaddlePointEvidence S) : SaddlePointClosed S := by
  exact And.intro E.lagrangianFunctionClosed
    (And.intro E.saddlePointExistenceClosed
      (And.intro E.minMaxTheoremClosed
        (And.intro E.convexConcaveAssumptionsClosed
          (And.intro E.compactnessConditionsClosed E.optimalityEquivalenceClosed))))

end DualityTheoryOptimizationTheoremCanonicalLaneLean
end HautevilleHouse