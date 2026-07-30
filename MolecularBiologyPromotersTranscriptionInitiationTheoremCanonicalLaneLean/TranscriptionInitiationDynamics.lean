import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

def TranscriptionInitiationRate (P : PromoterDNAStructure) (T : TranscriptionFactorBinding) : ℚ :=
  (T.bindingAffinity * T.cooperativity) / (List.length P.corePromoterElements : ℚ)

structure TranscriptionInitiationDynamics where
  promoter : PromoterDNAStructure
  tfBinding : TranscriptionFactorBinding
  pic : PreInitiationComplex
  escape : PromoterEscape
  overallRate : ℚ
  rateFormula : overallRate = TranscriptionInitiationRate promoter tfBinding
  picAssemblyComplete : PreInitiationComplexClosed pic
  escapeComplete : PromoterEscapeClosed escape

def TranscriptionInitiationDynamicsClosed (D : TranscriptionInitiationDynamics) : Prop :=
  D.rateFormula ∧ D.picAssemblyComplete ∧ D.escapeComplete

structure TranscriptionInitiationDynamicsEvidence (D : TranscriptionInitiationDynamics) where
  rateFormulaClosed : D.rateFormula
  picAssemblyCompleteClosed : D.picAssemblyComplete
  escapeCompleteClosed : D.escapeComplete

theorem transcription_initiation_dynamics_closed_from_evidence (D : TranscriptionInitiationDynamics)
    (E : TranscriptionInitiationDynamicsEvidence D) : TranscriptionInitiationDynamicsClosed D := by
  exact And.intro E.rateFormulaClosed (And.intro E.picAssemblyCompleteClosed E.escapeCompleteClosed)

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse