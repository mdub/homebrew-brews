# mdub/brews

A [Homebrew](https://brew.sh) tap for miscellaneous tools.

## Usage

```bash
brew tap mdub/brews
brew install <formula>
```

## Available formula

### swa

An alternative CLI for AWS that puts verbs at the end:

```bash
$ swa ec2 instance i-9336f049 terminate
```

rather than the front:

```bash
$ aws ec2 terminate-instances --instance-ids i-9336f049
```

For more information, see the [swa repository](https://github.com/mdub/swa).

### dbq

A simple CLI for executing SQL queries against Databricks.

For more information, see the [dbq repository](https://github.com/mdub/dbq).
