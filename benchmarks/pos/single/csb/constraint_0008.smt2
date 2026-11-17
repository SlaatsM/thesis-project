(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-727, 70746] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b000000000000001001) (= i1 #b000000000001000101) (= i1 #b000000000011100001) (= i1 #b000000001101110110) (= i1 #b000000001110001011)))

; Formula constraint
(assert (=> (=> (and (bvsle #b000000000000101101 #b000000000000110111) (bvsgt #b000000000000011111 i1)) (bvsge i1 (bvadd (bvadd #b111111111110110010 #b000000000001001100) #b000000000000001111))) (and (and (bvslt (bvadd #b000000000001011001 (bvsub (bvmul #b000000000000010100 i1) i1)) (bvmul #b000000000001001110 i1)) (bvsge #b111111111110111001 i1)) (= #b000000000000011010 #b000000000001100011))))

(check-sat)