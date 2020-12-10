using Test

include("main.jl")

@testset "Testes simples" begin
  A = [1.0 0.0; 0.0 1.0]
  Q, R = gram_schmidt(A)
  @test Q == A
  @test R == A

  A = [4.0 0.0; 0.0 3.0]
  Q, R = gram_schmidt(A)
  @test Q == [1.0 0.0; 0.0 1.0]
  @test R == A

  A = [1.0 1.0; -1.0 1.0]
  Q, R = gram_schmidt(A)
  @test Q ≈ A / sqrt(2)
  @test R ≈ [sqrt(2) 0.0; 0.0 sqrt(2)]

  A = [1.0 1.0; -1.0 0.0]
  Q, R = gram_schmidt(A)
  @test Q ≈ [1.0 1.0; -1.0 1.0] / sqrt(2)
  @test R ≈ [sqrt(2) sqrt(2) / 2; 0.0 sqrt(2) / 2]

  A = [1.0 1.0; 1.0 1.0; 0.0 1.0]
  Q, R = gram_schmidt(A)
  @test Q ≈ [√2 / 2  0.0;  √2 / 2  0.0; 0.0  1.0]
  @test R ≈ [√2  √2; 0.0 1.0]

  A = [1.0 1.0 1.0; 1.0 1.0 0.0]
  @test_throws ErrorException gram_schmidt(A)
end

@testset "Casos aleatórios" begin
  for n = [2, 5, 10, 50], m = [2, 5, 10, 50], t = 1:100
    n > m && continue
    A = rand(m, n)
    Q, R = gram_schmidt(A)
    @test norm(Q * R - A) < 1e-14 * cond(A)
    @test norm(Q' * Q - I) < 1e-14 * cond(A)
  end
end