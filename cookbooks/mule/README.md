# mule-cookbook
[![Dependency Status](https://www.versioneye.com/user/projects/544621ea44a525278f000003/badge.svg?style=flat)](https://www.versioneye.com/user/projects/544621ea44a525278f000003)

Installs the Mule ESB application from a zip file from the [MuleSoft](http://www.mulesoft.org) repositories.

## Supported Platforms

- Ubuntu 12.04 LTS
- CentOS 6.5

Red Hat 6 is also assumed to work.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['mule']['version']</tt></td>
    <td>String</td>
    <td>Mule ESB version to install</td>
    <td><tt>3.5.0</tt></td>
  </tr>
  <tr>
    <td><tt>['mule']['java']['flavor']</tt></td>
    <td>String</td>
    <td>Java flavor to use. Valid options are `oracle` and `ibm`.</td>
    <td><tt>oracle</tt></td>
  </tr>
  <tr>
    <td><tt>['mule']['java']['version']</tt></td>
    <td>Integer</td>
    <td>Java version to install. Version can be `6` or `7`.</td>
    <td><tt>7</tt></td>
  </tr>
  <tr>
    <td><tt>['mule']['user']</tt></td>
    <td>String</td>
    <td>User that will own the Mule application and that will run the service.</td>
    <td><tt>mule</tt></td>
  </tr>
  <tr>
    <td><tt>['mule']['uid']</tt></td>
    <td>Integer</td>
    <td>UID for the `mule` user</td>
    <td><tt>4000</tt></td>
  </tr>
  <tr>
    <td><tt>['mule']['group']</tt></td>
    <td>String</td>
    <td>Group that the application user will be a member of.</td>
    <td><tt>mule</tt></td>
  </tr>
  <tr>
    <td><tt>['mule']['gid']</tt></td>
    <td>Integer</td>
    <td>GID for the `mule` group</td>
    <td><tt>4000</tt></td>
  </tr>
  <tr>
    <td><tt>['mule']['package']['base_url']</tt></td>
    <td>String</td>
    <td>URL from where to download the Mule ESB zip file.</td>
    <td><tt>https://repository.mulesoft.org/nexus/content/repositories/releases/org/mule/distributions/mule-standalone</tt></td>
  </tr>
  <tr>
    <td><tt>['mule']['package']['filename']</tt></td>
    <td>String</td>
    <td>Filename of the Mule ESB zip file.</td>
    <td><tt>mule-standalone-#{node['mule']['version']}.zip</tt></td>
  </tr>
  <tr>
    <td><tt>['mule']['package']['dir_prefix']</tt></td>
    <td>String</td>
    <td>Directory in which to install the Mule application.</td>
    <td><tt>/usr/local</tt></td>
  </tr>
</table>

## Usage

### mule::default

Include `mule` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[mule::default]"
  ]
}
```

or in a recipe:

```ruby
include_recipe 'mule'
```

## License and Authors

Author:: Dan van den Berg (<dan@shopkeep.com>)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
