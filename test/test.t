#!/usr/bin/env testml

*json.load.yaml == *yaml

=== Simple Mapping
--- json: {"a":1,"b":2}
--- yaml
a: 1
b: 2

=== Empty Mapping
--- json
{}
--- yaml
{}

=== One Pair Mapping
--- json
{"alphabet": "city"}
--- yaml
alphabet: city

=== Simple Sequence
--- json
[ "a", 2, true ]
--- yaml
- a
- 2
- 1

=== Empty Sequence
--- json
[]
--- yaml
[]

=== One Elem Sequence
--- json
["foo"]
--- yaml
- foo

=== Seq in Map
--- json
{
    "xyz": [1,2,3]
}
--- yaml
xyz:
- 1
- 2
- 3

=== Map in Seq
--- json
[
{"xyz": [1,2,3]}
]
--- yaml
- xyz:
  - 1
  - 2
  - 3

=== Leading and Trailing Whitespace
--- json
       [
{  "xyz"  : [  1  ,  2  ,  3  ]  }  
]      
--- yaml
- xyz:
  - 1
  - 2
  - 3

=== False Values
--- json
[0, "", false, null]
--- yaml
- 0
- ''
- 0
- null

=== Numbers
--- json
[
    0, -0,
    1, -1,
    22, -22,
    3.3, -3.3,
    44.4, -44.4,
    5.55, -5.55,
    66.66, -66.66
]
--- yaml
- 0
- 0
- 1
- -1
- 22
- -22
- 3.3
- -3.3
- 44.4
- -44.4
- 5.55
- -5.55
- 66.66
- -66.66

=== Top Level String
--- json
"JSON Value"
--- yaml
JSON Value

=== Top Level Number
--- json
42
--- yaml
42

# boolean::true morphs to 1 internally
=== Top Level Boolean
--- json
true
--- yaml
1

=== Top Level null
--- json
null
--- yaml
null

