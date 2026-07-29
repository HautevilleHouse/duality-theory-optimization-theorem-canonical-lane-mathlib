import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : OptimizationAdmittedObject
  primalFeasibility : Prop
  dualFeasibility : Prop
  strongDualityWitness : primalFeasibility → dualFeasibility → Prop

def admittedClosure (A : AdmissibleClass) : Prop :=
  OptimizationWitnessClosed A.object ∧ (A.primalFeasibility ∨ A.dualFeasibility)

end DualityTheoryOptimizationTheoremCanonicalLaneLean
end HautevilleHouse