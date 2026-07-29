import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean

structure ExtensionCompressionPackage (A : AdmissibleClass) where
  boundedExtension : Prop
  compressionToSubspace : Prop
  isometricEmbedding : Prop
  contractiveCompression : Prop

def ExtensionCompressionClosed (A : AdmissibleClass) (E : ExtensionCompressionPackage A) : Prop :=
  E.boundedExtension ∧ E.compressionToSubspace ∧ E.isometricEmbedding ∧ E.contractiveCompression

structure ExtensionCompressionEvidence (A : AdmissibleClass) (E : ExtensionCompressionPackage A) where
  boundedExtensionClosed : E.boundedExtension
  compressionToSubspaceClosed : E.compressionToSubspace
  isometricEmbeddingClosed : E.isometricEmbedding
  contractiveCompressionClosed : E.contractiveCompression

theorem extension_compression_closed_from_evidence (A : AdmissibleClass) (E : ExtensionCompressionPackage A) (Ev : ExtensionCompressionEvidence A E) :
    ExtensionCompressionClosed A E := by
  exact And.intro Ev.boundedExtensionClosed (And.intro Ev.compressionToSubspaceClosed (And.intro Ev.isometricEmbeddingClosed Ev.contractiveCompressionClosed))

end DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean
end HautevilleHouse