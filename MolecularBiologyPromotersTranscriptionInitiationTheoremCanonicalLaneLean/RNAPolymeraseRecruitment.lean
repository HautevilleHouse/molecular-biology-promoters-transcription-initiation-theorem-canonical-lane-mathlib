import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure RNAPolymeraseRecruitmentPackage where
  polymeraseType : Type u
  recruitmentFactors : Type v
  preInitiationComplexFormation : Prop
  promoterOpening : Prop
  initiationCompetence : Prop

structure RNAPolymeraseRecruitmentEvidence (R : RNAPolymeraseRecruitmentPackage) where
  preInitiationComplexFormationClosed : R.preInitiationComplexFormation
  promoterOpeningClosed : R.promoterOpening
  initiationCompetenceClosed : R.initiationCompetence

def RNAPolymeraseRecruitmentClosed (R : RNAPolymeraseRecruitmentPackage) : Prop :=
  R.preInitiationComplexFormation ∧ R.promoterOpening ∧ R.initiationCompetence

theorem rna_polymerase_recruitment_closed_from_evidence (R : RNAPolymeraseRecruitmentPackage) (E : RNAPolymeraseRecruitmentEvidence R) :
    RNAPolymeraseRecruitmentClosed R := by
  exact And.intro E.preInitiationComplexFormationClosed
    (And.intro E.promoterOpeningClosed E.initiationCompetenceClosed)

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse