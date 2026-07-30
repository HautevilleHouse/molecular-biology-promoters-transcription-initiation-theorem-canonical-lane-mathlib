import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure TranscriptionInitiationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TranscriptionInitiationAdmittedObject where
  space : TranscriptionInitiationSpace
  promoterRegionIdentified : Prop
  transcriptionStartSiteMapped : Prop
  rnaPolymeraseBindConfirmed : Prop
  initiationComplexFormed : Prop
  conclusion : initiationComplexFormed

structure TranscriptionInitiationEndgameState where
  object : TranscriptionInitiationAdmittedObject

def TranscriptionInitiationWitnessClosed (O : TranscriptionInitiationAdmittedObject) : Prop :=
  O.initiationComplexFormed

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse