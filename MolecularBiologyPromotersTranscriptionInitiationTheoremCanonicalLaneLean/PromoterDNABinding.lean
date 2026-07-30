import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure PromoterDNASequence where
  sequence : String
  bindingAffinity : Prop
  conservedElements : Prop
  specificityDeterminants : Prop
  sequenceLengthAtLeast : Nat -> Prop

structure PromoterDNABindingPackage where
  promoter : PromoterDNASequence
  rnaPolymeraseHoloenzyme : Type
  closedComplexFormation : Prop
  openComplexFormation : Prop
  footprintRegion : Prop
  promoterRecognitionClosed : Prop
  promoterRecognitionClosedTerm : promoterRecognitionClosed

structure PromoterDNABindingEvidence (P : PromoterDNABindingPackage) where
  closedComplexFormationClosed : P.closedComplexFormation
  openComplexFormationClosed : P.openComplexFormation
  footprintRegionClosed : P.footprintRegion

def PromoterDNABindingClosed (P : PromoterDNABindingPackage) : Prop :=
  P.closedComplexFormation ∧ P.openComplexFormation ∧ P.footprintRegion

theorem promoter_dna_binding_closed_from_evidence (P : PromoterDNABindingPackage)
    (E : PromoterDNABindingEvidence P) : PromoterDNABindingClosed P := by
  exact And.intro E.closedComplexFormationClosed
    (And.intro E.openComplexFormationClosed E.footprintRegionClosed)

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse