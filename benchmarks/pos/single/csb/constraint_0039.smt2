(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-18036, 668] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 16))

; Domain constraints
(assert (and (bvsge i1 #b0000000000100100) (bvsle i1 #b0000000101001110)))

; Formula constraint
(assert (and (or (and (bvslt #b1111111110101101 i1) (= #b0000000000101110 i1)) (not (bvsle (bvadd #b0000000000001100 (bvmul #b1111111111001010 i1)) i1))) (=> (not (= i1 #b0000000001100010)) (bvsgt (bvmul #b0000000000000010 i1) (bvadd #b1111111111101110 #b0000000000110001)))))

(check-sat)