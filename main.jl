using LinearAlgebra

"""
    Q, R = gram_schmidt(A)

O processo de Gram-Schmidt foi estudado em Álgebra Linear, e consiste em ortogonalizar ou ortonormalizar vetores.
Aqui iremos ortonormalizar cada coluna da matriz A, e armazenar os coeficientes utilizados para isso.

Notação:
- aⱼ é a j-ésima coluna da matriz j.
- m é o número de linhas
- n é o número de colunas

Primeiro, fazemos a ortogonalização:

    v₁ = a₁
    v₂ = a₂ - α₁₂ v₁
    v₃ = a₃ - α₁₃ v₁ - α₂₃ v₂
    ...

onde

    αᵢⱼ = dot(vᵢ, aⱼ) / dot(vᵢ, vᵢ),    1 ≤ i < j ≤ n

Depois, normalizamos cada vetor.

    qᵢ = vᵢ / ‖vᵢ‖

onde qᵢ é a i-ésima coluna da matriz Q m×n.

A matriz R n×n é quadrada triangular superior com cada elemento dada por

    rᵢⱼ = αᵢⱼ × ‖vᵢ‖,   1 ≤ i ≤ j ≤ n
"""
function gram_schmidt(A)
  m, n = size(A)
  ### AQUI
  return Q, R
end