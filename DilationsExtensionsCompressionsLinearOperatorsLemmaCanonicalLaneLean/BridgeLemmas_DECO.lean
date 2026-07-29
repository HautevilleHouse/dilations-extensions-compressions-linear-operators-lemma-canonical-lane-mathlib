import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean.DilationTheoremEndgame

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean

def bridgeClosed (A : DilationTheoremAdmissibleClass H) : Prop :=
  DilationClosed A.dilationPackage

theorem bridge_from_admissible_class (A : DilationTheoremAdmissibleClass H) (
    dilEv : DilationEvidence A.dilationPackage) : bridgeClosed A := by
  exact dilation_closed_from_evidence A.dilationPackage dilEv

end DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean
end HautevilleHouse
