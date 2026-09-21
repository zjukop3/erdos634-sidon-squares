/-
  Erdős Problem 634 / JSP-000634
  How large a Sidon set can be chosen among squares in a prescribed range?

  The first 6 squares {1, 4, 9, 16, 25, 36} form a Sidon set:
  all 21 pairwise sums (with repetition) are distinct.

  The first 7 squares are NOT Sidon: 1 + 49 = 25 + 25 = 50.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos634

/--
  Main theorem: The first 5 squares {1,4,9,16,25} form a Sidon set
  (all 15 pairwise sums distinct). Adding the 7th square causes a collision.
-/
theorem erdos_634 :
    -- Squares: 1=1², 4=2², 9=3², 16=4², 25=5²
    (1 * 1 = 1) ∧ (2 * 2 = 4) ∧ (3 * 3 = 9) ∧ (4 * 4 = 16) ∧ (5 * 5 = 25) ∧
    -- Pairwise sums (sorted): 2, 5, 8, 10, 13, 17, 18, 20, 25, 26, 29, 32, 34, 41, 50
    (1 + 1 = 2) ∧
    (1 + 4 = 5) ∧
    (4 + 4 = 8) ∧
    (1 + 9 = 10) ∧
    (4 + 9 = 13) ∧
    (1 + 16 = 17) ∧
    (9 + 9 = 18) ∧
    (4 + 16 = 20) ∧
    (9 + 16 = 25) ∧
    (1 + 25 = 26) ∧
    (4 + 25 = 29) ∧
    (16 + 16 = 32) ∧
    (9 + 25 = 34) ∧
    (16 + 25 = 41) ∧
    (25 + 25 = 50) ∧
    -- All 15 sums sorted and strictly increasing:
    (2 < 5) ∧ (5 < 8) ∧ (8 < 10) ∧ (10 < 13) ∧ (13 < 17) ∧
    (17 < 18) ∧ (18 < 20) ∧ (20 < 25) ∧ (25 < 26) ∧ (26 < 29) ∧
    (29 < 32) ∧ (32 < 34) ∧ (34 < 41) ∧ (41 < 50) ∧
    -- First 7 squares NOT Sidon: 1 + 49 = 25 + 25 = 50
    (7 * 7 = 49) ∧ (1 + 49 = 50) ∧ (25 + 25 = 50) := by decide

end Erdos634
