(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-619, 71653] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 18))
(declare-const a1_1 (_ BitVec 18))
(declare-const a1_2 (_ BitVec 18))

; Domain constraints
(assert (or (= a1_0 #b000000000100100000) (= a1_0 #b000000001001100010) (= a1_0 #b000000001110001011)))
(assert (or (= a1_1 #b000000000100100000) (= a1_1 #b000000001001100010) (= a1_1 #b000000001110001011)))
(assert (or (= a1_2 #b000000000100100000) (= a1_2 #b000000001001100010) (= a1_2 #b000000001110001011)))

; Formula constraint
(assert (and (not (= #b111111111111011101 (bvmul #b000000000001001111 a1_0))) (or (not (bvslt (bvsub a1_1 a1_0) (bvadd a1_0 a1_2))) (= (bvmul #b000000000000001001 a1_2) a1_1))))

(check-sat)