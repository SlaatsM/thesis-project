(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-69200, 44288] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b000000000000000101) (= i1 #b000000000001000011) (and (bvsge i1 #b000000000010101110) (bvsle i1 #b000000001010110100))))

; Formula constraint
(assert (=> (=> (and (bvsle i1 (bvsub (bvmul #b111111111110011101 i1) i1)) (bvsle #b000000000001100010 (bvadd #b111111111111011011 #b111111111110111101))) (=> (= (bvadd #b111111111111111010 (bvmul #b000000000000010001 i1)) i1) (bvsgt #b111111111111111011 #b000000000000100011))) (and (and (bvsge #b000000000000001110 i1) (bvsge (bvmul #b000000000001000000 i1) #b111111111111000110)) (or (not (= #b000000000000110001 i1)) (bvsle (bvmul #b111111111111101011 i1) #b000000000001001011)))))

(check-sat)