(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-38070, 83340] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b111111111001011001) (= i1 #b000000001001000101) (= i1 #b000000001001001101) (= i1 #b000000001100011101) (= i1 #b000000001110011110)))

; Formula constraint
(assert (and (bvsgt (bvmul #b000000000001011010 i1) (bvsub i1 (bvadd (bvmul #b111111111111111001 i1) i1))) (or (=> (bvsgt (bvsub #b000000000000001000 i1) i1) (bvsle (bvadd #b000000000000100000 #b111111111111001101) (bvmul #b000000000000110001 i1))) (bvsle i1 #b111111111111111011))))

(check-sat)