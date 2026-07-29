import canonicalLaneMathlib.AdmissibleClass
import DualityTheoryOptimizationTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationTheoremCanonicalLaneLean

structure KKTPackage where
  primalOptimal : Prop
  dualOptimal : Prop
  complementarySlackness : Prop
  stationarity : Prop

def KKTClosed (K : KKTPackage) : Prop :=
  K.primalOptimal ∧ K.dualOptimal ∧ K.complementarySlackness ∧ K.stationarity

end DualityTheoryOptimizationTheoremCanonicalLaneLean
end HautevilleHouse