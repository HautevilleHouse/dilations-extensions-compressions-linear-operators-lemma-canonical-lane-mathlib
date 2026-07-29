import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean

structure DilationPackage (A : AdmissibleClass) where
  isometryDilation : Prop
  minimalExtension : Prop
  spectralResponse : Prop
  dilationClosed : Prop

structure DilationEvidence (A : AdmissibleClass) (D : DilationPackage A) where
  isometryDilationClosed : D.isometryDilation
  minimalExtensionClosed : D.minimalExtension
  spectralResponseClosed : D.spectralResponse

def DilationClosed (A : AdmissibleClass) (D : DilationPackage A) : Prop :=
  D.isometryDilation ∧ D.minimalExtension ∧ D.spectralResponse

theorem dilation_closed_from_evidence (A : AdmissibleClass) (D : DilationPackage A) (E : DilationEvidence A D) :
    DilationClosed A D := by
  exact And.intro E.isometryDilationClosed (And.intro E.minimalExtensionClosed E.spectralResponseClosed)

end DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean
end HautevilleHouse