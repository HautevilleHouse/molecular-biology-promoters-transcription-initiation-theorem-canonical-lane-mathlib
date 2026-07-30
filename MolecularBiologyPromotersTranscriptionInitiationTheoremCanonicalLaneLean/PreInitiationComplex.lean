import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure PreInitiationComplex where
  rnaPolymeraseII : Type u
  generalTranscriptionFactors : List String
  promoterDNA : Type v
  complexAssemblyOrder : List String
  transcriptionBubbleFormed : Prop

structure PreInitiationComplexEvidence (P : PreInitiationComplex) where
  rnaPolymeraseIIPresent : Nonempty P.rnaPolymeraseII
  generalTranscriptionFactorsClosed : P.generalTranscriptionFactors.length ≥ 5
  complexAssemblyOrderClosed : P.complexAssemblyOrder ≠ []
  transcriptionBubbleFormedClosed : P.transcriptionBubbleFormed

def PreInitiationComplexClosed (P : PreInitiationComplex) : Prop :=
  Nonempty P.rnaPolymeraseII ∧ P.generalTranscriptionFactors.length ≥ 5 ∧
  P.complexAssemblyOrder ≠ [] ∧ P.transcriptionBubbleFormed

theorem pre_initiation_complex_closed_from_evidence (P : PreInitiationComplex)
    (E : PreInitiationComplexEvidence P) : PreInitiationComplexClosed P := by
  exact And.intro E.rnaPolymeraseIIPresent (And.intro E.generalTranscriptionFactorsClosed
    (And.intro E.complexAssemblyOrderClosed E.transcriptionBubbleFormedClosed))

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse