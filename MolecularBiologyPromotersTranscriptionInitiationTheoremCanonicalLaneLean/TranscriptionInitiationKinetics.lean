import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure KineticParameter where
  rateConstant : ℝ
  equilibriumConstant : ℝ
  activationEnergy : ℝ

structure InitiationKinetics where
  closedComplexFormationRate : KineticParameter
  openComplexFormationRate : KineticParameter
  promoterClearanceRate : KineticParameter
  abortiveInitiationRate : KineticParameter
  promoterEscapeEfficiency : Prop
  abortiveInitiationEfficiency : Prop
  kineticsClosed : Prop
  kineticsClosedTerm : kineticsClosed

structure TranscriptionInitiationKineticsPackage where
  promoterBindingKinetics : InitiationKinetics
  isomerizationKinetics : InitiationKinetics
  promoterEscapeKinetics : InitiationKinetics
  abortiveInitiationKinetics : InitiationKinetics
  overallRateDeterminingStep : Prop
  kineticsPackageClosed : Prop
  kineticsPackageClosedTerm : kineticsPackageClosed

structure TranscriptionInitiationKineticsEvidence (K : TranscriptionInitiationKineticsPackage) where
  promoterBindingKineticsClosed : K.promoterBindingKinetics.kineticsClosed
  isomerizationKineticsClosed : K.isomerizationKinetics.kineticsClosed
  promoterEscapeKineticsClosed : K.promoterEscapeKinetics.kineticsClosed

def TranscriptionInitiationKineticsClosed (K : TranscriptionInitiationKineticsPackage) : Prop :=
  K.promoterBindingKinetics.kineticsClosed ∧
  K.isomerizationKinetics.kineticsClosed ∧
  K.promoterEscapeKinetics.kineticsClosed

theorem transcription_initiation_kinetics_closed_from_evidence
    (K : TranscriptionInitiationKineticsPackage)
    (E : TranscriptionInitiationKineticsEvidence K) :
    TranscriptionInitiationKineticsClosed K := by
  exact And.intro E.promoterBindingKineticsClosed
    (And.intro E.isomerizationKineticsClosed E.promoterEscapeKineticsClosed)

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse