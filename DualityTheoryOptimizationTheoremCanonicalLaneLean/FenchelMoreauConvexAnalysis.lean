import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationTheoremCanonicalLaneLean

structure FenchelMoreauPackage where
  convexFunction : Type u
  convexConjugate : Type v
  biconjugate : Type w
  fenchelMoreauTheorem : Prop
  properConvexLowerSemicontinuous : Prop

structure FenchelMoreauEvidence (F : FenchelMoreauPackage) where
  fenchelMoreauTheoremClosed : F.fenchelMoreauTheorem
  properConvexLowerSemicontinuousClosed : F.properConvexLowerSemicontinuous

def FenchelMoreauClosed (F : FenchelMoreauPackage) : Prop :=
  F.fenchelMoreauTheorem ∧ F.properConvexLowerSemicontinuous

theorem fenchel_moreau_closed_from_evidence (F : FenchelMoreauPackage)
    (E : FenchelMoreauEvidence F) : FenchelMoreauClosed F := by
  exact And.intro E.fenchelMoreauTheoremClosed E.properConvexLowerSemicontinuousClosed

end DualityTheoryOptimizationTheoremCanonicalLaneLean
end HautevilleHouse