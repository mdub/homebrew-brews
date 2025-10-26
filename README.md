# Homebrew Tap for SWA

This is a [Homebrew](https://brew.sh) tap for [swa](https://github.com/mdub/swa), an alternative CLI for AWS.

## Installation

```bash
brew tap mdub/swa
brew install swa
```

## Upgrading

```bash
brew update
brew upgrade swa
```

## About SWA

SWA is AWS, backwards. It's an alternative CLI for AWS that puts verbs at the end:

```bash
$ swa ec2 instance i-9336f049 terminate
```

rather than the front:

```bash
$ aws ec2 terminate-instances --instance-ids i-9336f049
```

For more information, see the [main repository](https://github.com/mdub/swa).
