import canonicalLaneMathlib.AdmissibleClass
import DualityTheoryOptimizationTheoremCanonicalLaneLean.BridgeLemmas
import DualityTheoryOptimizationTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DualityTheoryOptimizationTheoremCanonicalLaneLean

def ConstrainedDualityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_duality_endgame (A : AdmissibleClass) :
    ConstrainedDualityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DualityTheoryOptimizationTheoremCanonicalLaneLean
end HautevilleHouse