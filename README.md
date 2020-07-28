# Bioinformatics_Warm-up
In the notebook called Warm_up several functions are realised to solve 5 problems:Finding a Motif in DNA, Genome Assembly with Perfect Coverage, Bellman-Ford Algorithm, Finding Connected Components and Quick Sorting Algorithm. In this file you will find an explicit explanation of applications foer each functionalists  use in the notebook.

### Function: output(out)
#### Input : 
Gets either a string or an array.
#### Output :
Whether a string is an input function will just print it out, whether an array comes as an input, function will print it out by elements with a space separation.

## Problem #1 - Finding a Motif in DNA

### Function: motif_finder(seq, sub)
#### Input : 
Gets a string and a substring that is going to be found in the string.
#### Output :
An array with positions of the beginning of substring found in the main string.
#### Description :
This function uses a brut force algorithm of searching a substring, that is note efficient in solving real problems of DNA motif finding.

### Function: z_func(s)
#### Input : 
Gets a string for which Z-function will be counted.
#### Output :
Returns an array z, where z[i] is the maximum joint prefix of string s with its' ith suffix.
#### Description :
Counts Z-function of string s which will be then used in Knuth–Morris–Pratt algorithm of finding a substring.

### Function: KMP(s,t)
#### Input : 
Gets a string t and a substring s.
#### Output :
An array with positions of the beginning of substring found in the main string.
#### Description :
This function is an implementation of Knuth–Morris–Pratt algorithm which searches for occurrences of a "word" s within a main "text string" t by employing the observation that when a mismatch occurs, the word itself embodies sufficient information to determine where the next match could begin, thus bypassing re-examination of previously matched characters.

### Example of working:
As an input main string the hole genome of E.coli was used. As the input substring a fragment of the genome from the 522 nucleotide was used. The length of substring was 1263 nucleotides.
As an output we've got a single position of the beginning of a substring (522). The running time of both algorithms has been measured: 1min 52s for the brut force algorithm and 2.17 s for the KMP algorithm.

For more details consult the Jupyter Notebook


## Problem #2 - Genome Assembly with Perfect Coverage

### Function: wrap_around(genome)
#### Input : 
Gets a string genome.
#### Output :
An array with all the possible linearized variants of a circular chromosome.
#### Description :
Due to the absence of the beginning and the end of a circular chromosome it can be presented by several linearized versions. This function is created to find out all these variants.
#### Sample input and output:
Input: 'ACGTAC'
Output: ['CGTACA', 'GTACAC', 'TACACG', 'ACACGT', 'CACGTA', 'ACGTAC']

### Function: SymbolToNumber(sym)
#### Input : 
Gets a symbol of one of four nucleotides.
#### Output :
A number which defines this symbol.
#### Description :
As numrers are more familiar for us and especially for the computer it sounds logical to convert each symbol in the number interpretation. In this function 0 stands for A, 1 for C, 2 for G and 3 for T

### Function: PatternToNumber(text)
#### Input : 
Gets a string text.
#### Output :
An integer that if copding thios text.
#### Description :
As numrers are more familiar for us and especially for the computer it sounds logical to convert a string in the number. All strings are sorted lexicographically
#### Sample input and output:
Input: 'ACGTAC'
Output: ['CGTACA', 'GTACAC', 'TACACG', 'ACACGT', 'CACGTA', 'ACGTAC']
