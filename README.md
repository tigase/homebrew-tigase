<p align="center">
  <a href="https://tigase.net/">
    <img
      alt="Tigase: Highly optimized, extremely modular and very flexible XMPP/Jabber server"
      src="https://github.com/tigase/website-assets/blob/master/tigase/images/tigase-logo.png?raw=true"
      width="300"
    />
  </a>
</p>

# Tigase Homebrew repository

A collection of various formulae and casks intended to be installed using the [Homebrew][brew] macOS package manager.

## How do I install these formulae?

Add this tap by executing `brew tap tigase/tigase` and then install the desired formula or cask:

| App          | Channel | Source                    | Install command         |
|--------------|---------|---------------------------|-------------------------|
| [BeagleIM][] | Stable  | [GitHub][beagleim-source] | `brew install beagleim` |
| [BeagleIM][] | Beta    | [GitHub][beagleim-source] | `brew install beagleim-beta` |

**Note:** Beta releases may be unstable and by installing them you take full responsibility.

## Brew Documentation
`brew help`, `man brew`, or check [Homebrew's documentation][brew-docs].

[brew]: https://brew.sh
[brew-docs]: https://docs.brew.sh

[BeagleIM]: https://beagle.im
[beagleim-source]: https://github.com/tigase/beagle-im
