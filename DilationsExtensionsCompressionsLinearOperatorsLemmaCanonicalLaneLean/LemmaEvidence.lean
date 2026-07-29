import canonicalLaneMathlib.AdmissibleClass
import DilationOperator
import ExtensionOperator
import CompressionOperator

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean

structure LemmaEvidence where
  dilation : DilationOperator
  extension : ExtensionOperator
  compression : CompressionOperator
  compatibility : (dilation.isometry) ∘ (extension.extension) = (compression.compression) ∘ (dilation.projection)

theorem lemma_evidence_compatibility (L : LemmaEvidence) :
    (L.dilation.isometry) ∘ (L.extension.extension) = (L.compression.compression) ∘ (L.dilation.projection) := by
  exact L.compatibility

end DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean
end HautevilleHouse
