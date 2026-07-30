import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure PromoterEscape where
  abortiveInitiation : ℕ
  productiveInitiation : ℕ
  escapeProbability : ℚ
  promoterClearanceRate : ℚ

def PromoterEscapeClosed (E : PromoterEscape) : Prop :=
  E.abortiveInitiation ≥ 0 ∧ E.productiveInitiation > 0 ∧
  E.escapeProbability > 0 ∧ E.escapeProbability ≤ 1 ∧
  E.promoterClearanceRate > 0

structure PromoterEscapeEvidence (E : PromoterEscape) where
  abortiveInitiationNonneg : E.abortiveInitiation ≥ 0
  productiveInitiationPos : E.productiveInitiation > 0
  escapeProbabilityPos : E.escapeProbability > 0
  escapeProbabilityMax : E.escapeProbability ≤ 1
  promoterClearanceRatePos : E.promoterClearanceRate > 0

theorem promoter_escape_closed_from_evidence (E : PromoterEscape) (Ev : PromoterEscapeEvidence E) :
    PromoterEscapeClosed E := by
  exact And.intro Ev.abortiveInitiationNonneg (And.intro Ev.productiveInitiationPos
    (And.intro Ev.escapeProbabilityPos (And.intro Ev.escapeProbabilityMax Ev.promoterClearanceRatePos)))

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse