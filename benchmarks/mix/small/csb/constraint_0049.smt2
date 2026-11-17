(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-83812, 85284] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b111111110001110001) (= i1 #b111111111001001001) (= i1 #b000000000000010001) (= i1 #b000000001011100010) (= i1 #b000000001110011111)))

; Formula constraint
(assert (=> (=> (not (= #b111111111111100001 #b111111111111000000)) (and (bvsle (bvmul #b000000000001011100 i1) #b000000000000101100) (not (= (bvsub (bvmul #b000000000000110011 i1) #b000000000001010000) #b000000000000000001)))) (not (not (= #b000000000001011100 i1)))))

(check-sat)