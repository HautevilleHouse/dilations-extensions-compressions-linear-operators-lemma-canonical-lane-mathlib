import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean

def DilationsExtensionsCompressionsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem dilations_extensions_compressions_endgame (A : AdmissibleClass) :
    DilationsExtensionsCompressionsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean
end HautevilleHouse