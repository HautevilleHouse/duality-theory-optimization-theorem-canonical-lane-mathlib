import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationTheoremCanonicalLaneLean

structure DualityGapAnalysisPackage where
  primalProblem : Type u
  dualProblem : Type v
  dualityGapDefinition : Prop
  gapZeroUnderConditions : Prop
  perturbationAnalysis : Prop

structure DualityGapAnalysisEvidence (D : DualityGapAnalysisPackage) where
  dualityGapDefinitionClosed : D.dualityGapDefinition
  gapZeroUnderConditionsClosed : D.gapZeroUnderConditions
  perturbationAnalysisClosed : D.perturbationAnalysis

def DualityGapClosed (D : DualityGapAnalysisPackage) : Prop :=
  D.dualityGapDefinition ∧ D.gapZeroUnderConditions ∧ D.perturbationAnalysis

theorem duality_gap_closed_from_evidence (D : DualityGapAnalysisPackage) (E : DualityGapAnalysisEvidence D) : DualityGapClosed D := by
  exact And.intro E.dualityGapDefinitionClosed (And.intro E.gapZeroUnderConditionsClosed E.perturbationAnalysisClosed)

end DualityTheoryOptimizationTheoremCanonicalLaneLean
end HautevilleHouse