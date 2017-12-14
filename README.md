## OpenFL-Modular-Webpack-Example

Test case to make an openFL project build with Webpack + separated bundles ( bundled hx files / packages )

### how to run :

#### With Docker
1. Clone openfl-js from https://github.com/mastef/openfl-js
2. Build that Dockerfile with `npm docker-build` or `docker build -t openfl/openfl_js .`
3. Clone this repo from https://github.com/mastef/openfl-modular-example
4. Build this Dockerfile with `docker build -t openfl/openfl_js_example .`
5. Run it with `docker run -d -p 3000:3000 openfl/openfl_js_example`
6. Open your browser at `localhost:3000`

#### Without Docker
See steps in the Dockerfiles : 
1. Build openfl-js ( see https://github.com/openfl/openfl-js/issues/2#issuecomment-350482602 or https://github.com/mastef/openfl-js/blob/master/Dockerfile )
2. Follow steps from https://github.com/mastef/openfl-modular-example/blob/master/Dockerfile