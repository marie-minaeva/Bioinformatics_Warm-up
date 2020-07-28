# Bioinformatics_Warm-up
In the notebook called Warm_up several functions are realised to solve 5 problems:Finding a Motif in DNA, Genome Assembly with Perfect Coverage, Bellman-Ford Algorithm, Finding Connected Components and Quick Sorting Algorithm. In this file you will find an explicit explanation of applications foer each functionalists  use in the notebook.

### Function: output(out)

**Input :** Gets either a string or an array.

**Output :** Whether a string is an input function will just print it out, whether an array comes as an input, function will print it out by elements with a space separation.

## Problem #1 - Finding a Motif in DNA

### Function: motif_finder(seq, sub)

**Input :** Gets a string and a substring that is going to be found in the string.

**Output :** An array with positions of the beginning of substring found in the main string.

**Description :**

This function uses a brut force algorithm of searching a substring, that is note efficient in solving real problems of DNA motif finding.

### Function: z_func(s)

**Input :** Gets a string for which Z-function will be counted.

**Output :** Returns an array z, where z[i] is the maximum joint prefix of string s with its' ith suffix.

**Description :**

Counts Z-function of string s which will be then used in Knuth–Morris–Pratt algorithm of finding a substring.

### Function: KMP(s,t)

**Input :** Gets a string t and a substring s.

**Output :** An array with positions of the beginning of substring found in the main string.

**Description :**

This function is an implementation of Knuth–Morris–Pratt algorithm which searches for occurrences of a "word" s within a main "text string" t by employing the observation that when a mismatch occurs, the word itself embodies sufficient information to determine where the next match could begin, thus bypassing re-examination of previously matched characters.

**Example of working:**

As an input main string the hole genome of E.coli was used. As the input substring a fragment of the genome from the 522 nucleotide was used. The length of substring was 1263 nucleotides.
As an output we've got a single position of the beginning of a substring (522). The running time of both algorithms has been measured: 1min 52s for the brut force algorithm and 2.17 s for the KMP algorithm.

For more details consult the Jupyter Notebook.


## Problem #2 - Genome Assembly with Perfect Coverage

### Function: wrap_around(genome)

**Input :** Gets a string genome.

**Output :** An array with all the possible linearized variants of a circular chromosome.

**Description :**

Due to the absence of the beginning and the end of a circular chromosome it can be presented by several linearized versions. This function is created to find out all these variants.

**Sample input and output:**

```
Input: 'ACGTAC'
Output: ['CGTACA', 'GTACAC', 'TACACG', 'ACACGT', 'CACGTA', 'ACGTAC']
```

### Function: SymbolToNumber(sym)

**Input :** Gets a symbol of one of four nucleotides.

**Output :** A number which defines this symbol.

**Description :**

As numrers are more familiar for us and especially for the computer it sounds logical to convert each symbol in the number interpretation. In this function 0 stands for A, 1 for C, 2 for G and 3 for T

### Function: PatternToNumber(text)

**Input :** Gets a string text.

**Output :** An integer that if copding thios text.

**Description :**

As numrers are more familiar for us and especially for the computer it sounds logical to convert a string in the number. All strings are sorted in lexicographical order.

### Function: prefix_suffix(reads)
**Input :** Gets an array reads of strings.

**Output :** An array of tuples where tuple[0] is a prefix of read i and tuple[1] is a suffix of thi read.

**Description :**

This function creates a set of all prefixes and suffixes that are present in the reads.


### Function: graf_const(reads)

**Input :**  Gets an array reads of strings.

**Output :** Two arrays nodes and edges where nodes is an array of nodes in de Bruijn graph and edges is a list of edges in de Bruijn graph.

**Description :**

This function constructs a de Bruijn graph from a list of reads.

### Function: adj_row(reads)

**Input :** Gets an array reads of strings.

**Output :** A list of tuples where tuple[0] is a numerical interpretation of a prefix of the read i, tuple[1] is a numerical interpretation of a suffix of the read i, tuple[2] is a prefix of the read i and tuple[3] is a suffix of the read i.

**Description :**

This function constructs a kind of an adjacent array of the reads.

### Function: finding(reads)

**Input :** Gets an array reads of strings.

**Output :** A  string which contains a fully assembled genome.

**Description :**

This function gets a list of reads, applies all the functions described above and returns a fully constructed genome.

**Example of working:**

As an input a set of 2000 reads is used, 50 nucleotides each read, taken from Rosalind.
As an output we've got an assembled genome that contains 2000 nucleotides. The running time of the algorithm has been measured: it took 580 ms to construct a genome.

For more details consult the Jupyter Notebook.

## Problem #3: Bellman-Ford Algorithm

### Function: reading_graphs(file)

**Input :** Gets a string containing the file name.

**Output :** Two lists vert and edges are returned. Vert contains all the nodes of the graph and edges - the edges of the graph with their weights.

**Description :**

This function constructs a weighted graph from a file.

### Function: Bellman_Ford(vert,edges,source)

**Input :** Gets two list vert and edges and an integer source. Vert contains all the vertees of a graph, edges - the edges of a graph and source represents a vertex from which we count all the distances.

**Output :** A list dist is returned. Dist contains all the distances from the vertex source to all other vertexes. If we cannot reach a vertex i from the source one then dist[i]='x'

**Description :**

This function implements the algorithm of Bellman-Ford that computes shortest paths from a single source vertex to all of the other vertices in a weighted graph.

**Example of working:**

As an input a file with a graph with 9 vertexes and 13 edges is used. First line contain the number of vertexes and edges of the graph.
As an output we've got all the distances from the vertex number 1 to all other vertexes. The running time of the algorithm has been measured: it took 895 𝜇s to count all the distances.

For more details consult the Jupyter Notebook.

## Problem #4: Searching for Connected Components

### Function: reading_graphs(file)

**Input :** Gets a string containing the file name.

**Output :** Two lists vert and edges are returned. Vert contains all the nodes of the graph and edges - the edges of the graph.

**Description :**

This function constructs an unweighted graph from a file.

### Function: explore(vert,edges,v)

**Input :** Gets two lists vert and edges, which contain vertexes and edges of the graph, and an integer v which represents the chosen vertex.

**Output :** Nothing is returned as explore is a recursive function, but a list visited is updated. visited[i]=True represents that the vertex i has already been visited. This list helps to avoid looping.

**Description :**

A recursive function that itterates along the graph, visits all the vertexes and decides where to go then.

### Function: DFS(vert,edges)

**Input :** Gets two lists vert and edges, which contain vertees and edges of the graph.

**Output :** Nothing is returned as fuction just calls function explore, which is a recursive function, as mentioned above.

**Description :**

A function that calls function explore for all vertexes in the graph.


### Function: previsit(v)

**Input :** Gets an integer v which represents the chosen vertex.

**Output :** Nothing is returned, but a list ccnum is updated. ccnum[i] represents that the vertex i is related to connected component ccnum[i].

**Description :**

A recursive function that decides to which connected component the vertex relates.

**Example of working:**
As an input a file with a graph with 12 vertexes and 13 edges is used. First line contain the number of vertexes and edges of the graph.
As an output we've got the number of a connected component to which the vertex i relates. The running time of the algorithm has been measured: it took 558 𝜇s to identify all the connected components.

For more details consult the Jupyter Notebook.

## Problem #5: Quick Sorting

### Function: input(file)

**Input :** Gets a string containing the file name.

**Output :** A list array, the first index of an array (here 0) and the last index of an array.

**Description :**

The fuction constructs a suitable input for the function quick_sort.

### Function: qiuck_sort(A, low, high)

**Input :** Gets a list A, which contain unsorted array, and an integer low which represents first index of an array A and an integer high which represents last index of an array A.

**Output :** Nothing is returned as quick_sort is a recursive function, but a list A is updated.

**Description :**

A recursive function that splits a list A into to parts and calls quick_sort for both parts.

### Function: partition(A, low, high)

**Input :** Gets a list A, which contain unsorted array, and an integer low which represents first index of an array A and an integer high which represents last index of an array A.

**Output :** Returns the first index of the array A and updates the list A according to the algorithm of quick sorting.

**Description :**

A function that swaps elementa in the list A and makes it look like that: all the elements that are lower than the pivot element stand to the left from it and all the elements that are higher than the pivot element stand to the right from it. Pivot element is chosen as A[high]

**Example of working:**

As an input a file with an array of 7 elements is used.
As an output we've got the sorted array. The running time of the algorithm has been measured: it took 1.17 ms to sort an array.

For more details consult the Jupyter Notebook.

