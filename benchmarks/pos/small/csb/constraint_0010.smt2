(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-58, 30520] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 16))

; Domain constraints
(assert (or (= i1 #b0000000010110011) (= i1 #b0000000111011010) (= i1 #b0000001001111111) (= i1 #b0000001010001001) (= i1 #b0000001011111011)))

; Formula constraint
(assert (or (and (not (bvsgt #b0000000001001111 i1)) (=> (bvsge i1 #b1111111111000110) (not (= i1 (bvmul #b0000000000101000 i1))))) (bvsle i1 i1)))

(check-sat)