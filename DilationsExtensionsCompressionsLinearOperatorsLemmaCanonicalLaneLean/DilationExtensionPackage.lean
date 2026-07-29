import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean

structure DilationExtensionPackage where
  H : Type u
  K : Type v
  operator : (H → H) → (K → K)
  dilationProperty : Prop
  minimalDilation : Prop
  spectralMeasure : Prop

def DilationExtensionClosed (D : DilationExtensionPackage) : Prop :=
  D.dilationProperty ∧ D.minimalDilation ∧ D.spectralMeasure

theorem dilation_extension_closed_from_evidence (D : DilationExtensionPackage) (h1 : D.dilationProperty) (h2 : D.minimalDilation) (h3 : D.spectralMeasure) : DilationExtensionClosed D := by
  exact And.intro h1 (And.intro h2 h3)

end DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean
end HautevilleHouse