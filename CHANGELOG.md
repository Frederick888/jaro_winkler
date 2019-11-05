# [1.5.4](https://github.com/tonytonyjan/jaro_winkler/compare/v1.5.3...v1.5.4) (2019-11-05)

* Add license file to gem package.

## [1.5.3](https://github.com/tonytonyjan/jaro_winkler/compare/v1.5.2...v1.5.3) (2019-06-18)


* Fall back to pure ruby implementation on LoadError ([49f811e](https://github.com/tonytonyjan/jaro_winkler/commit/49f811e))
* Rename Rake tasks for test ([42e0a36](https://github.com/tonytonyjan/jaro_winkler/commit/42e0a36))


## [1.5.2](https://github.com/tonytonyjan/jaro_winkler/compare/v1.5.1...v1.5.2) (2019-01-04)


### Bug Fixes

* raises TypeError when input type is not string ([c146491](https://github.com/tonytonyjan/jaro_winkler/commit/c146491)), closes [#24](https://github.com/tonytonyjan/jaro_winkler/issues/24)
* **memory:** make sure codepoints will be allocated/freed after rb_raise to prevent memory leak ([fe9d784](https://github.com/tonytonyjan/jaro_winkler/commit/fe9d784)), closes [#20](https://github.com/tonytonyjan/jaro_winkler/issues/20)



## [1.5.1](https://github.com/tonytonyjan/jaro_winkler/compare/v1.5.0...v1.5.1) (2018-06-06)



# [1.5.0](https://github.com/tonytonyjan/jaro_winkler/compare/v1.4.0...v1.5.0) (2017-10-02)


### Bug Fixes

* free codepoints before returning to prevent memory leak ([8babd4f](https://github.com/tonytonyjan/jaro_winkler/commit/8babd4f))
* remove module functions from JaroWinkler ([af249d5](https://github.com/tonytonyjan/jaro_winkler/commit/af249d5))


### Features

* support encodings other than utf-8 ([fe72ab4](https://github.com/tonytonyjan/jaro_winkler/commit/fe72ab4)), closes [#7](https://github.com/tonytonyjan/jaro_winkler/issues/7)
* support rubinius ([27090ff](https://github.com/tonytonyjan/jaro_winkler/commit/27090ff))


### Performance Improvements

The C implementation is 25% faster than that of v1.4.0.

* optimize single byte codepoints computation ([e0cdd51](https://github.com/tonytonyjan/jaro_winkler/commit/e0cdd51))


### BREAKING CHANGES

* JaroWinkler no longer supports mixin, use class methods instead, ex.
`JaroWinkler.distance`



<a name="1.4.0"></a>
# [1.4.0](https://github.com/tonytonyjan/jaro_winkler/compare/v1.3.7...v1.4.0) (2015-12-12)

* The pure Ruby version is about 2.5 times faster compared to 1.3.7
* Add `JaroWinkler.jaro_distance` for anyone who want to use jaro distance instead of jaro-winkler distance.
* Unify algorithms between C extensions and pure Ruby, especially, rewrote the pure Ruby version.
