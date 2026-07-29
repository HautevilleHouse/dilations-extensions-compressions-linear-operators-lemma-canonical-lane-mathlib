import DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure OperatorSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure OperatorAdmittedObject where
  space : OperatorSpace
  boundedLinearOperator : Prop
  admitsDilation : Prop
  admitsExtension : Prop
  admitsCompression : Prop
  conclusion : admitsDilation ∧ admitsExtension ∧ admitsCompression

structure OperatorEndgameState where
  object : OperatorAdmittedObject

def OperatorWitnessClosed (O : OperatorAdmittedObject) : Prop :=
  O.admitsDilation ∧ O.admitsExtension ∧ O.admitsCompression

end DilationsExtensionsCompressionsLinearOperatorsLemmaCanonicalLaneLean
end HautevilleHouse