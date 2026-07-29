import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean

structure DilationOperator (H : Type) [AddCommGroup H] [Module ℂ H] [InnerProductSpace ℂ H] where
  A : H → H
  isBounded : Prop
  isLinear : Prop
  ‖A‖ : ℝ
  bound : ℝ
  bound_pos : bound > 0

structure DilationPackage (H : Type) [AddCommGroup H] [Module ℂ H] [InnerProductSpace ℂ H] where
  originalOperator : DilationOperator H
  dilationSpace : Type
  dilationInnerProduct : InnerProductSpace ℂ dilationSpace
  isometry : dilationSpace → H
  isIsometry : Prop
  dilationOperatorOnSpace : dilationSpace → dilationSpace
  commutesWithProjection : Prop

structure DilationEvidence {H : Type} [AddCommGroup H] [Module ℂ H] [InnerProductSpace ℂ H] (D : DilationPackage H) where
  isIsometryClosed : D.isIsometry
  commutesWithProjectionClosed : D.commutesWithProjection

def DilationClosed {H : Type} [AddCommGroup H] [Module ℂ H] [InnerProductSpace ℂ H] (D : DilationPackage H) : Prop :=
  D.isIsometry ∧ D.commutesWithProjection

theorem dilation_closed_from_evidence
    {H : Type} [AddCommGroup H] [Module ℂ H] [InnerProductSpace ℂ H]
    (D : DilationPackage H) (E : DilationEvidence D) : DilationClosed D := by
  exact And.intro E.isIsometryClosed E.commutesWithProjectionClosed

end DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean
end HautevilleHouse
