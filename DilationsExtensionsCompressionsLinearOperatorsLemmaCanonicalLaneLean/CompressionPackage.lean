import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean

structure CompressionPackage where
  H : Type u
  K : Type v
  operator : (H → H) → (K → K)
  compressionProperty : Prop
  isometricEmbedding : Prop
  minimalCompression : Prop

def CompressionClosed (C : CompressionPackage) : Prop :=
  C.compressionProperty ∧ C.isometricEmbedding ∧ C.minimalCompression

theorem compression_closed_from_evidence (C : CompressionPackage) (h1 : C.compressionProperty) (h2 : C.isometricEmbedding) (h3 : C.minimalCompression) : CompressionClosed C := by
  exact And.intro h1 (And.intro h2 h3)

end DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean
end HautevilleHouse