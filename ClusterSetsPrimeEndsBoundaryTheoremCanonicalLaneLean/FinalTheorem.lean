import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusterSetsPrimeEndsBoundaryTheoremCanonicalLaneLean

def ConstrainedClusterSetsPrimeEndsBoundaryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ ClassicalSourceBoundaryCarried

theorem constrained_cluster_sets_prime_ends_boundary_endgame (A : AdmissibleClass) :
    ConstrainedClusterSetsPrimeEndsBoundaryClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) classical_source_boundary_carried_checked)

theorem cluster_sets_prime_ends_boundary_admissible_closure (A : AdmissibleClass) : Prop :=
  ConstrainedClusterSetsPrimeEndsBoundaryClosure A

end ClusterSetsPrimeEndsBoundaryTheoremCanonicalLaneLean
end HautevilleHouse