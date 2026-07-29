import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationTheoremCanonicalLaneLean

structure FenchelConjugatePackage where
  primalFunction : Type u
  conjugateFunction : Type v
  biconjugateRecoversPrimalUnderConvex : Prop
  fenchelYoungInequality : Prop
  subgradientCharacterisation : Prop

structure FenchelConjugateEvidence (F : FenchelConjugatePackage) where
  biconjugateRecoversPrimalUnderConvexClosed : F.biconjugateRecoversPrimalUnderConvex
  fenchelYoungInequalityClosed : F.fenchelYoungInequality
  subgradientCharacterisationClosed : F.subgradientCharacterisation

def FenchelConjugateClosed (F : FenchelConjugatePackage) : Prop :=
  F.biconjugateRecoversPrimalUnderConvex ∧ F.fenchelYoungInequality ∧ F.subgradientCharacterisation

theorem fenchel_conjugate_closed_from_evidence (F : FenchelConjugatePackage) (E : FenchelConjugateEvidence F) : FenchelConjugateClosed F := by
  exact And.intro E.biconjugateRecoversPrimalUnderConvexClosed (And.intro E.fenchelYoungInequalityClosed E.subgradientCharacterisationClosed)

end DualityTheoryOptimizationTheoremCanonicalLaneLean
end HautevilleHouse