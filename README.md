# windowstimezone Cookbook

Cookbook to set Windows time zone

## Requirements

Only runs on Windows

### Platforms

- Windows

### Chef

- Chef 12.0 or later

### Cookbooks

## Attributes

TODO: List your cookbook attributes here.

e.g.
### windowstimezone::default

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['windowstimezone']['timezoneid']</tt></td>
    <td>String</td>
    <td>The time zone to set. To see a list of time zones run:  %windir%\system32\tzutil /l</td>
    <td><tt>GMT Standard Time</tt></td>
  </tr>
</table>

## Usage

### windowstimezone::default

e.g.
Just include `windowstimezone` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[windowstimezone]"
  ]
}
```

## Contributing

TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

## License and Authors

Authors: Taliesin Sisson

