import canonicalLaneMathlib.AdmissibleClass
import DualityTheoryOptimizationTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  OptimizationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DualityTheoryOptimizationTheoremCanonicalLaneLean
end HautevilleHouse