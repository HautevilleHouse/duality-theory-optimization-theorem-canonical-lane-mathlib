import canonicalLaneMathlib.AdmissibleClass
import DualityTheoryOptimizationTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationTheoremCanonicalLaneLean

structure LagrangianDualityPackage where
  primalProblem : Type u
  dualProblem : Type u
  lagrangian : primalProblem → dualProblem → ℝ
  strongDualityHolds : Prop
  constraintQualification : Prop

structure LagrangianDualityEvidence (L : LagrangianDualityPackage) where
  strongDualityHoldsClosed : L.strongDualityHolds
  constraintQualificationClosed : L.constraintQualification

def LagrangianDualityClosed (L : LagrangianDualityPackage) : Prop :=
  L.strongDualityHolds ∧ L.constraintQualification

theorem lagrangian_duality_closed_from_evidence
    (L : LagrangianDualityPackage) (E : LagrangianDualityEvidence L) :
    LagrangianDualityClosed L := by
  exact And.intro E.strongDualityHoldsClosed E.constraintQualificationClosed

end DualityTheoryOptimizationTheoremCanonicalLaneLean
end HautevilleHouse