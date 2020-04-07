struct Wax
  module Alias
    alias HSB = Hash(String, Bool)
    alias HSF = Hash(String, Float64)
    alias HSI = Hash(String, Int32)
    alias HS2 = Hash(String, String)
    alias TransformHash = Hash(String, String |
                                       HSB | HSF | HSI | HS2 |
                                       Array(String | HSB | HSF | HSI | HS2))
    alias VariablesHash = Hash(String, TransformHash)
  end
end
