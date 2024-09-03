# C# + Mono

On Ubuntu, you can install the C# compiler and Mono runtime with

```sh
apt-get install -y mono-mcs mono-runtime
```

## Build

```sh
mcs -recurse:'*.cs'
```

## Run

```sh
mono hey.exe
mono hey.exe Jay Jo
```
