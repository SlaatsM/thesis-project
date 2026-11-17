(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-68970, 37752] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b000000000011010001) (= i1 #b000000001001110011) (= i1 #b000000001011010110)))

; Formula constraint
(assert (=> (and (=> (bvslt #b111111111111001000 #b000000000001100100) (not (= i1 i1))) (and (bvsle (bvadd (bvsub #b000000000000000111 (bvmul #b000000000000110100 i1)) #b111111111111011101) i1) (bvslt i1 (bvsub #b000000000001011010 #b000000000001001110)))) (and (bvsge i1 i1) (and (= i1 (bvsub (bvmul #b111111111110110011 i1) i1)) (bvsgt #b000000000000101101 (bvmul #b111111111110100001 i1))))))

(check-sat)