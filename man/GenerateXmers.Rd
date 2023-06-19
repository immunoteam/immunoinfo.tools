## GenerateXmers ##
## Description ##
GenerateXmers is a function that generates all possible subsequences (x-mers) of a given length from a provided sequence.

## Usage ##
GenerateXmers(sq, merslngth)

## Arguments ##
- sq: A character vector or string representing the input sequence.
- merslngth: An integer indicating the length of the desired subsequences (x-mers).

## Details ##
The function takes an input sequence (sq) and generates all possible subsequences (x-mers) of length merslngth. Only subsequences with a length equal to merslngth are returned.

## Value ##
A character vector containing all the generated subsequences (x-mers) of length merslngth.

## Examples ##
# Example 1:
sq <- "ATCG"
merslngth <- 2
GenerateXmers(sq, merslngth)
# Output: "AT" "TC" "CG"

# Example 2:
sq <- "GATTACA"
merslngth <- 3
GenerateXmers(sq, merslngth)
# Output: "GAT" "ATT" "TTA" "TAC" "ACA"

## Note ##
The input sequence (sq) should be a character vector or a string. The merslngth parameter should be a positive integer.
