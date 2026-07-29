import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean

structure DilationPackage where
  space : Type u
  norm : space → ℝ
  operator : space → space
  scalingFactor : ℝ
  operatorBounded : Prop
  dilationProperty : Prop
  scalingFactorPos : scalingFactor > 0

structure DilationEvidence (D : DilationPackage) where
  operatorBoundedClosed : D.operatorBounded
  dilationPropertyClosed : D.dilationProperty

def DilationClosed (D : DilationPackage) : Prop :=
  D.operatorBounded ∧ D.dilationProperty

theorem dilation_closed_from_evidence (D : DilationPackage) (E : DilationEvidence D) :
    DilationClosed D := by
  exact And.intro E.operatorBoundedClosed E.dilationPropertyClosed

end DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean
end HautevilleHouse