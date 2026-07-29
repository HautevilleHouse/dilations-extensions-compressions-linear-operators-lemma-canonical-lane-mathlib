import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean.OperatorDilationStructure

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean

structure ExtensionOperator (H : Type) [AddCommGroup H] [Module ℂ H] [InnerProductSpace ℂ H] where
  originalDomain : Submodule ℂ H
  extendedOperator : H → H
  agreesOnDomain : Prop
  isBoundedExtension : Prop

structure CompressionOperator (H : Type) [AddCommGroup H] [Module ℂ H] [InnerProductSpace ℂ H] where
  originalOperator : H → H
  compressedDomain : Submodule ℂ H
  compressedOperator : compressedDomain → compressedDomain
  isCompression : Prop

structure ExtensionCompressionPair (H : Type) [AddCommGroup H] [Module ℂ H] [InnerProductSpace ℂ H] where
  extension : ExtensionOperator H
  compression : CompressionOperator H
  pairCompatibility : Prop
  dilationIntertwines : Prop

structure ExtensionCompressionEvidence {H : Type} [AddCommGroup H] [Module ℂ H] [InnerProductSpace ℂ H]
    (P : ExtensionCompressionPair H) where
  agreesOnDomainClosed : P.extension.agreesOnDomain
  isBoundedExtensionClosed : P.extension.isBoundedExtension
  isCompressionClosed : P.compression.isCompression
  pairCompatibilityClosed : P.pairCompatibility
  dilationIntertwinesClosed : P.dilationIntertwines

def ExtensionCompressionClosed {H : Type} [AddCommGroup H] [Module ℂ H] [InnerProductSpace ℂ H]
    (P : ExtensionCompressionPair H) : Prop :=
  P.extension.agreesOnDomain ∧ P.extension.isBoundedExtension ∧
  P.compression.isCompression ∧ P.pairCompatibility ∧ P.dilationIntertwines

theorem extension_compression_closed_from_evidence
    {H : Type} [AddCommGroup H] [Module ℂ H] [InnerProductSpace ℂ H]
    (P : ExtensionCompressionPair H) (E : ExtensionCompressionEvidence P) : ExtensionCompressionClosed P := by
  exact And.intro E.agreesOnDomainClosed
    (And.intro E.isBoundedExtensionClosed
      (And.intro E.isCompressionClosed
        (And.intro E.pairCompatibilityClosed E.dilationIntertwinesClosed)))

end DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean
end HautevilleHouse
