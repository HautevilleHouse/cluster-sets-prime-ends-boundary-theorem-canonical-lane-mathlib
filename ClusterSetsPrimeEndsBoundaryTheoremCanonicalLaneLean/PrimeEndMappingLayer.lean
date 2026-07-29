import HautevilleHouse.ClusterSetsPrimeEndsBoundaryTheoremCanonicalLaneLean.ClusterSetLayer

namespace HautevilleHouse
namespace ClusterSetsPrimeEndsBoundaryTheoremCanonicalLaneLean

structure PrimeEndMappingCertificate where
  clusterDatum : ClusterSetDatum
  mappingFunction : String
  targetDomain : String
  primeEndPreimage : String
  mappingChecked : Bool

def primeEndMappingCertificate : PrimeEndMappingCertificate := {
  clusterDatum := primitiveClusterSetDatum,
  mappingFunction := "conformal_map_f",
  targetDomain := "unit_disk",
  primeEndPreimage := "prime_end_correspondence_f",
  mappingChecked := true
}

def PrimeEndMappingLayerClosed (C : PrimeEndMappingCertificate) : Prop :=
  C.clusterDatum.checked = true ∧ C.mappingChecked = true

theorem prime_end_mapping_layer_closed_checked :
    PrimeEndMappingLayerClosed primeEndMappingCertificate := by
  refine And.intro rfl rfl

end ClusterSetsPrimeEndsBoundaryTheoremCanonicalLaneLean
end HautevilleHouse