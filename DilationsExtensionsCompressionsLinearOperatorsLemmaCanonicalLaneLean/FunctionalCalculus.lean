import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean

structure FunctionalCalculusPackage (A : AdmissibleClass) where
  borelCalculus : Prop
  spectralMeasure : Prop
  continuousFunctionalCalculus : Prop
  operatorMonotoneFunctions : Prop

def FunctionalCalculusClosed (A : AdmissibleClass) (F : FunctionalCalculusPackage A) : Prop :=
  F.borelCalculus ∧ F.spectralMeasure ∧ F.continuousFunctionalCalculus ∧ F.operatorMonotoneFunctions

structure FunctionalCalculusEvidence (A : AdmissibleClass) (F : FunctionalCalculusPackage A) where
  borelCalculusClosed : F.borelCalculus
  spectralMeasureClosed : F.spectralMeasure
  continuousFunctionalCalculusClosed : F.continuousFunctionalCalculus
  operatorMonotoneFunctionsClosed : F.operatorMonotoneFunctions

theorem functional_calculus_closed_from_evidence (A : AdmissibleClass) (F : FunctionalCalculusPackage A) (Ev : FunctionalCalculusEvidence A F) :
    FunctionalCalculusClosed A F := by
  exact And.intro Ev.borelCalculusClosed (And.intro Ev.spectralMeasureClosed (And.intro Ev.continuousFunctionalCalculusClosed Ev.operatorMonotoneFunctionsClosed))

end DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean
end HautevilleHouse