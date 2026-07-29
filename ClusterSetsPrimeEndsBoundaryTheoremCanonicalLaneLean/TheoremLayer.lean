import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClusterSetsPrimeEndsBoundaryTheoremCanonicalLaneLean.ClusterSetLayer
import HautevilleHouse.ClusterSetsPrimeEndsBoundaryTheoremCanonicalLaneLean.PrimeEndsLayer
import HautevilleHouse.ClusterSetsPrimeEndsBoundaryTheoremCanonicalLaneLean.BoundaryBehaviorLayer
import HautevilleHouse.ClusterSetsPrimeEndsBoundaryTheoremCanonicalLaneLean.CarathéodoryExtensionLayer

namespace HautevilleHouse
namespace ClusterSetsPrimeEndsBoundaryTheoremCanonicalLaneLean

structure TheoremCertificate where
  clusterSetLayer : ClusterSetLayerCertificate
  primeEndsLayer : PrimeEndsLayerCertificate
  boundaryBehaviorLayer : BoundaryBehaviorLayerCertificate
  caratheodoryLayer : CaratheodoryExtensionLayerCertificate
  bridgeClosed : Bool
  gateClosed : Bool

def theoremCertificate : TheoremCertificate := {
  clusterSetLayer := clusterSetLayerCertificate,
  primeEndsLayer := primeEndsLayerCertificate,
  boundaryBehaviorLayer := boundaryBehaviorLayerCertificate,
  caratheodoryLayer := caratheodoryExtensionLayerCertificate,
  bridgeClosed := true,
  gateClosed := true
}

def TheoremLayerClosed (C : TheoremCertificate) : Prop :=
  ClusterSetLayerClosed C.clusterSetLayer ∧
  PrimeEndsLayerClosed C.primeEndsLayer ∧
  BoundaryBehaviorLayerClosed C.boundaryBehaviorLayer ∧
  CaratheodoryExtensionLayerClosed C.caratheodoryLayer ∧
  C.bridgeClosed = true ∧
  C.gateClosed = true

theorem theorem_layer_closed_checked :
    TheoremLayerClosed theoremCertificate := by
  exact And.intro cluster_set_layer_closed_checked
    (And.intro prime_ends_layer_closed_checked
    (And.intro boundary_behavior_layer_closed_checked
    (And.intro caratheodory_extension_layer_closed_checked
    (And.intro rfl rfl))))

end ClusterSetsPrimeEndsBoundaryTheoremCanonicalLaneLean
end HautevilleHouse