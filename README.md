# NPM Jail Docker
Test NPM packages or projects whether they can easily be ran in an isolated environment or not.

The Container will stop whenever it would need to access any URL which is not the configured registry.
> Keep in mind that there are packages which can be configured where should they obtain their dependencies, but not all of them!

## Supported ENV variables
- `WHITELIST_NAME` _(default: registry.npmjs.org)_
- `WHITELIST_PORT` _(default: `443`)_

## Examples

### Default setup utilizing the NPM central registry
```
docker run -it --rm --cap-add=NET_ADMIN -v $(pwd)/example/package.json:/opt/package.json npm-jail-docker:1.0.0
```

This will map a `package.json` file and run the install based on it.

> You can of course map `package-lock.json` or `.npmrc` files as well if needed!

### Define whitelisted domain name and/or port
```
docker run -it --rm --cap-add=NET_ADMIN -e WHITELIST_NAME=blabla.io -e WHITELIST_PORT=123 -v $(pwd)/example/package.json:/opt/package.json npm-jail-docker:1.0.0
```

## LICENSE
MIT
