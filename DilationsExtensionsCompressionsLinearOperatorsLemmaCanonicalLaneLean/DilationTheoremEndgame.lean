import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean.OperatorDilationStructure
import HautevilleHouse.DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean.ExtensionCompressionPair

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean

structure DilationTheoremAdmissibleClass (H : Type) [AddCommGroup H] [Module ℂ H] [InnerProductSpace ℂ H] where
  dilationPackage : DilationPackage H
  extensionCompressionPair : ExtensionCompressionPair H
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def DilationTheoremClosed (A : DilationTheoremAdmissibleClass H) : Prop :=
  DilationClosed A.dilationPackage ∧ ExtensionCompressionClosed A.extensionCompressionPair

theorem dilation_theorem_closed_from_evidence
    {H : Type} [AddCommGroup H] [Module ℂ H] [InnerProductSpace ℂ H]
    (A : DilationTheoremAdmissibleClass H)
    (dilEv : DilationEvidence A.dilationPackage)
    (ecEv : ExtensionCompressionEvidence A.extensionCompressionPair) : DilationTheoremClosed A := by
  have hDil := dilation_closed_from_evidence A.dilationPackage dilEv
  have hEc := extension_compression_closed_from_evidence A.extensionCompressionPair ecEv
  exact And.intro hDil hEc

end DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean
end HautevilleHouse
