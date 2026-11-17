(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-46360, 72200] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 18))
(declare-const a1_1 (_ BitVec 18))

; Domain constraints
(assert (or (= a1_0 #b000000001000111000) (= a1_0 #b000000001011111000)))
(assert (or (= a1_1 #b000000001000111000) (= a1_1 #b000000001011111000)))

; Formula constraint
(assert (and (or (and (bvsge #b000000000000100110 (bvadd a1_0 #b111111111110100100)) (bvsle a1_1 a1_0)) (bvsle #b111111111110011100 (bvadd (bvadd a1_1 a1_1) a1_1))) (=> (and (= (bvadd a1_0 #b111111111111001101) a1_1) (bvsle (bvmul #b000000000001011111 a1_0) (bvmul #b111111111111000011 a1_1))) (=> (bvsle #b111111111110011111 #b000000000000100010) (not (= a1_0 a1_0))))))

(check-sat)