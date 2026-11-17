(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-12798, 78210] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b111111110000100010) (= i1 #b000000000010100010)))

; Formula constraint
(assert (=> (and (not (bvsle (bvsub #b111111111111001101 i1) i1)) (and (bvslt #b111111111111101000 #b000000000001010110) (= #b000000000000111101 #b000000000000101010))) (=> (=> (bvslt #b000000000001010101 i1) (not (= #b111111111110100100 (bvsub (bvmul #b111111111110110010 i1) i1)))) (= #b111111111111011110 #b000000000001010111))))

(check-sat)