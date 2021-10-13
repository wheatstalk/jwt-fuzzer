# JSON Web Token Fuzzer

[jwt-fuzzer](https://github.com/andresriancho/jwt-fuzzer) is a simple command line tool that creates
multiple, potentially invalid, strings from an initial [JSON Web Token](https://jwt.io/).

# Usage

```shell
docker run --rm -v "$PWD:/output" wheatstalk/jwt-fuzzer --jwt={JSON Web Token} --output out.json
```

This will produce `out.json` containing JSON that looks like:

```
[
    {
        "jwt": "HEADER.PAYLOAD.SIGNATURE", 
        "fuzzing_function": null
    }, 
    {
        "jwt": "HEADER.PAYLOAD.SIGNATURE", 
        "fuzzing_function": "header_alg_empty-0"
    }, 
    {
        "jwt": "HEADER.PAYLOAD.SIGNATURE", 
        "fuzzing_function": "header_alg_remove-0"
    },
    ... 60-something variations  
]
```