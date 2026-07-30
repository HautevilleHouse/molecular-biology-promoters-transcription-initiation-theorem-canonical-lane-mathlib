import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure DNABindingSite where
  sequence : String
  location : Nat
  strand : String
  bindingAffinity : ℝ
  bindingAffinityNonnegative : bindingAffinity ≥ 0

structure DNABindingSiteEvidence (D : DNABindingSite) where
  sequenceValid : D.sequence.length ≥ 6
  locationValid : D.location > 0
  strandValid : D.strand = "+" ∨ D.strand = "-"
  bindingAffinityPositive : D.bindingAffinity > 0

def DNABindingSiteClosed (D : DNABindingSite) : Prop :=
  D.bindingAffinity ≥ 0 ∧ D.sequence.length ≥ 6 ∧ D.location > 0 ∧ (D.strand = "+" ∨ D.strand = "-")

theorem dna_binding_site_closed_from_evidence (D : DNABindingSite) (E : DNABindingSiteEvidence D) :
    DNABindingSiteClosed D := by
  exact And.intro E.bindingAffinityPositive (And.intro E.sequenceValid (And.intro E.locationValid E.strandValid))

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse