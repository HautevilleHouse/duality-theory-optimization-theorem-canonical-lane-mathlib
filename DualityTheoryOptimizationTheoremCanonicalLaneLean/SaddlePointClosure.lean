import DualityTheoryOptimizationTheoremCanonicalLaneLean.KKTConditions

namespace HautevilleHouse
namespace DualityTheoryOptimizationTheoremCanonicalLaneLean

structure SaddlePointClosurePackage (L : Lagrangian P) where
  existenceSaddle : Prop
  minMaxEquality : Prop
  closednessCondition : Prop
  closureProof : closednessCondition → minMaxEquality

structure SaddlePointClosureEvidence (L : Lagrangian P) (S : SaddlePointClosurePackage L) where
  existenceSaddleClosed : S.existenceSaddle
  minMaxEqualityClosed : S.minMaxEquality
  closednessConditionClosed : S.closednessCondition

def SaddlePointClosureClosed (S : SaddlePointClosurePackage L) : Prop :=
  S.existenceSaddle ∧ S.minMaxEquality ∧ S.closednessCondition

theorem saddle_point_closed_from_evidence (S : SaddlePointClosurePackage L) (E : SaddlePointClosureEvidence L S) : SaddlePointClosureClosed S := by
  exact And.intro E.existenceSaddleClosed (And.intro E.minMaxEqualityClosed E.closednessConditionClosed)

end DualityTheoryOptimizationTheoremCanonicalLaneLean
end HautevilleHouse