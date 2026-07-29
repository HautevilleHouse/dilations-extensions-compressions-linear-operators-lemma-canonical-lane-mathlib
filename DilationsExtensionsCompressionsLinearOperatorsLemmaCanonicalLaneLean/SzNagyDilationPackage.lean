import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean

structure SzNagyDilationPackage where
  H : Type u
  T : H → H
  isContraction : Prop
  unitaryDilation : (H → H) → (H → H)
  dilationComplete : Prop
  minimality : Prop

def SzNagyDilationClosed (S : SzNagyDilationPackage) : Prop :=
  S.isContraction ∧ S.dilationComplete ∧ S.minimality

theorem sz_nagy_dilation_closed_from_evidence (S : SzNagyDilationPackage) (h1 : S.isContraction) (h2 : S.dilationComplete) (h3 : S.minimality) : SzNagyDilationClosed S := by
  exact And.intro h1 (And.intro h2 h3)

end DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean
end HautevilleHouse