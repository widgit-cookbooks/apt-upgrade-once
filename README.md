# apt-upgrade-once-cookbook

Runs apt-get upgrade once, and never runs it again.

This allows you to upgrade your new instance to the latest versions of all core
packages (and their respective security updates), without having to perform
an unattended upgrade later on which may cause versioning conflicts on config
files.

This should be placed as early as possible in your node's run list.

## Supported Platforms

Ubuntu, Debian

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['apt-upgrade-once']['statusfile']</tt></td>
    <td>String</td>
    <td>Location of the status file that records whether the system has been upgraded</td>
    <td><tt>/etc/.apt-upgrade-run</tt></td>
  </tr>
</table>

## Usage

### apt-upgrade-once::default

Include `apt-upgrade-once` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[apt-upgrade-once::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Simon Detheridge (simon@widgit.com)
