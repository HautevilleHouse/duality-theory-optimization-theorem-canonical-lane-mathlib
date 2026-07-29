import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationTheoremCanonicalLaneLean

structure SaddlePointTheoremPackage where
  primalDualPair : Type u
  saddlePointExistence : Prop
  optimalityEquivalence : Prop
  minimaxTheorem : Prop

structure SaddlePointTheoremEvidence (S : SaddlePointTheoremPackage) where
  saddlePointExistenceClosed : S.saddlePointExistence
  optimalityEquivalenceClosed : S.optimalityEquivalence
  minimaxTheoremClosed : S.minimaxTheorem

def SaddlePointTheoremClosed (S : SaddlePointTheoremPackage) : Prop :=
  S.saddlePointExistence ∧ S.optimalityEquivalence ∧ S.minimaxTheorem

theorem saddle_point_theorem_closed_from_evidence (S : SaddlePointTheoremPackage) (E : SaddlePointTheoremEvidence S) : SaddlePointTheoremClosed S := by
  exact And.intro E.saddlePointExistenceClosed (And.intro E.optimalityEquivalenceClosed E.minimaxTheoremClosed)

end DualityTheoryOptimizationTheoremCanonicalLaneLean
end HautevilleHouse