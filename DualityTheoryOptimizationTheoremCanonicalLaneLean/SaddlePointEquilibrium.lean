import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationTheoremCanonicalLaneLean

structure SaddlePointPackage where
  primalDualPair : Type u
  saddlePoint : Type v
  minimaxEquality : Prop
  existenceConditions : Prop

structure SaddlePointEvidence (S : SaddlePointPackage) where
  minimaxEqualityClosed : S.minimaxEquality
  existenceConditionsClosed : S.existenceConditions

def SaddlePointClosed (S : SaddlePointPackage) : Prop :=
  S.minimaxEquality ∧ S.existenceConditions

theorem saddle_point_closed_from_evidence (S : SaddlePointPackage)
    (E : SaddlePointEvidence S) : SaddlePointClosed S := by
  exact And.intro E.minimaxEqualityClosed E.existenceConditionsClosed

end DualityTheoryOptimizationTheoremCanonicalLaneLean
end HautevilleHouse