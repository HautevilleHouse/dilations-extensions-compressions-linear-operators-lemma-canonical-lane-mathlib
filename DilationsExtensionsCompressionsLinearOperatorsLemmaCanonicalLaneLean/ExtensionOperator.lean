import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean

structure ExtensionPackage where
  subspace : Type u
  superspace : Type u
  subspaceNorm : subspace → ℝ
  superspaceNorm : superspace → ℝ
  embedding : subspace → superspace
  originalOperator : subspace → subspace
  extendedOperator : superspace → superspace
  extensionMatches : ∀ x : subspace, extendedOperator (embedding x) = embedding (originalOperator x)
  extensionBounded : Prop

structure ExtensionEvidence (E : ExtensionPackage) where
  extensionBoundedClosed : E.extensionBounded

def ExtensionClosed (E : ExtensionPackage) : Prop :=
  E.extensionBounded

theorem extension_closed_from_evidence (E : ExtensionPackage) (Ev : ExtensionEvidence E) :
    ExtensionClosed E := by
  exact Ev.extensionBoundedClosed

end DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean
end HautevilleHouse