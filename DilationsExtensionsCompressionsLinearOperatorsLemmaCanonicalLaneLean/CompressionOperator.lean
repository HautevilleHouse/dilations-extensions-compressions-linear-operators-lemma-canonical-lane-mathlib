import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean

structure CompressionPackage where
  subspace : Type u
  superspace : Type u
  subspaceNorm : subspace → ℝ
  superspaceNorm : superspace → ℝ
  projection : superspace → subspace
  originalOperator : superspace → superspace
  compressedOperator : subspace → subspace
  compressionMatches : ∀ x : superspace, compressedOperator (projection x) = projection (originalOperator x)
  compressionBounded : Prop

structure CompressionEvidence (C : CompressionPackage) where
  compressionBoundedClosed : C.compressionBounded

def CompressionClosed (C : CompressionPackage) : Prop :=
  C.compressionBounded

theorem compression_closed_from_evidence (C : CompressionPackage) (Ev : CompressionEvidence C) :
    CompressionClosed C := by
  exact Ev.compressionBoundedClosed

end DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean
end HautevilleHouse