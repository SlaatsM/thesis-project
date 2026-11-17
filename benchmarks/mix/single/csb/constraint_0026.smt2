(set-logic QF_BV)

; Bit width chosen: 12 (covers range [-1402, 724] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 12))
(declare-const i2 (_ BitVec 12))

; Domain constraints
(assert (or (= i1 #b110001000011) (= i1 #b111000011110) (= i1 #b111100111101) (= i1 #b000100100011) (= i1 #b001001110110)))
(assert (and (bvsge i2 #b111001000011) (bvsle i2 #b111100010011)))

; Formula constraint
(assert (or (and (=> (bvsgt #b111111101100 i2) (bvsge (bvadd i1 i2) #b000001010011)) (bvsge i2 i1)) (not (not (= #b111111101111 (bvsub (bvadd #b111111100111 i2) (bvsub (bvmul #b000000000001 i1) #b111110100010)))))))

(check-sat)