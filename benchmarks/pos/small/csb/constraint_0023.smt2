(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-83134, 90300] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b000000000010101111) (= i1 #b000000000011100111) (= i1 #b000000000100100101) (= i1 #b000000000111111101) (= i1 #b000000001110000111)))

; Formula constraint
(assert (=> (= #b000000000000011111 #b111111111110100010) (=> (=> (= i1 i1) (not (= i1 (bvmul #b000000000001100100 i1)))) (bvsge (bvadd #b111111111111000110 (bvmul #b111111111110100100 i1)) (bvmul #b111111111110110100 i1)))))

(check-sat)