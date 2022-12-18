## Contributing

Bug reports and pull requests are welcome on GitLab at [https://gitlab.com/rubocop-lts/rubocop-ruby3_0][🚎src-main]
. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to
the [code of conduct][conduct].

To submit a patch, please fork the project and create a patch with tests. Once you're happy with it send a pull request
and post a message to the [gitter chat][🏘chat].

## Release

To release a new version:

1. update the version number in `version.rb`
2. run `bundle exec rake build:checksum`
3. move the built gem to project root
4. run `bin/checksum` to create the missing SHA256 checksum
5. move the built gem back to `pkg/`
6. commit the changes
7. run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org][rubygems].

NOTE: You will need to have a public key in `certs/`, and list your cert in the
`gemspec`, in order to sign the new release.
See: [RubyGems Security Guide][rubygems-security-guide]

## Contributors

[![Contributors][🖐contributors-img]][🖐contributors]

[comment]: <> (Following links are used by README, CONTRIBUTING, Homepage)

[conduct]: https://gitlab.com/rubocop-lts/rubocop-ruby3_0/-/blob/main/CODE_OF_CONDUCT.md
[🖐contributors]: https://gitlab.com/rubocop-lts/rubocop-ruby3_0/-/graphs/main
[🖐contributors-img]: https://img.shields.io/github/contributors-anon/rubocop-lts/rubocop-ruby3_0
[🚎src-main]: https://gitlab.com/rubocop-lts/rubocop-ruby3_0/-/tree/main
[🏘chat]: https://gitter.im/rubocop-lts/community
[rubygems-security-guide]: https://guides.rubygems.org/security/#building-gems
[rubygems]: https://rubygems.org
