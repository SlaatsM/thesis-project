(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-93, 67860] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b000000000100110000) (= i1 #b000000000110100111) (= i1 #b000000000111101100) (= i1 #b000000001000001111) (= i1 #b000000001101100110)))

; Formula constraint
(assert (=> (and (and (bvsge #b000000000000101101 i1) (= #b111111111111010010 #b111111111111011001)) (not (= (bvmul #b000000000001001110 i1) (bvadd #b111111111111010110 i1)))) (and (bvsle #b111111111110100011 #b000000000001001110) (=> (bvsle (bvmul #b000000000000101110 i1) i1) (= (bvadd i1 i1) (bvmul #b000000000000101110 i1))))))

(check-sat)