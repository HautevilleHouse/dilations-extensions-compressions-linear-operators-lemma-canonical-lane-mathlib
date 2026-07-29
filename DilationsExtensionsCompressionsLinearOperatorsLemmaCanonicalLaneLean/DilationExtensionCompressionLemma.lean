import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean.DilationOperator
import HautevilleHouse.DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean.ExtensionOperator
import HautevilleHouse.DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean.CompressionOperator

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean

structure DilationExtensionCompressionLemmaPackage (D : DilationPackage) (E : ExtensionPackage) (C : CompressionPackage) where
  extensionAsDilation : ∃ (factor : ℝ) (factorPos : factor > 0),
    ∀ x : E.subspace, D.dilationProperty ∧ E.extensionMatches x
  compressionAsDilation : ∃ (factor : ℝ) (factorPos : factor > 0),
    ∀ x : C.superspace, D.dilationProperty ∧ C.compressionMatches x
  normBound : ∀ x : E.subspace, E.superspaceNorm (E.embedding x) = D.norm (D.operator x) → D.scalingFactor = 1

structure DilationExtensionCompressionLemmaEvidence (D : DilationPackage) (E : ExtensionPackage) (C : CompressionPackage)
    (P : DilationExtensionCompressionLemmaPackage D E C) where
  extensionAsDilationClosed : P.extensionAsDilation
  compressionAsDilationClosed : P.compressionAsDilation
  normBoundClosed : P.normBound

def DilationExtensionCompressionLemmaClosed (D : DilationPackage) (E : ExtensionPackage) (C : CompressionPackage)
    (P : DilationExtensionCompressionLemmaPackage D E C) : Prop :=
  P.extensionAsDilation ∧ P.compressionAsDilation ∧ P.normBound

theorem dilation_extension_compression_lemma_closed (D : DilationPackage) (E : ExtensionPackage) (C : CompressionPackage)
    (P : DilationExtensionCompressionLemmaPackage D E C) (Ev : DilationExtensionCompressionLemmaEvidence D E C P) :
    DilationExtensionCompressionLemmaClosed D E C P := by
  exact And.intro Ev.extensionAsDilationClosed (And.intro Ev.compressionAsDilationClosed Ev.normBoundClosed)

end DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean
end HautevilleHouse