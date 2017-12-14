FROM openfl/openfl_js
# https://github.com/mastef/openfl-js

COPY . /opt/openfl-js/samples/haxe/example
WORKDIR /opt/openfl-js/samples/haxe/example
RUN npm link openfl
RUN npm install -s

RUN npm run build
RUN npm run webpack
EXPOSE 3000
CMD npm run test -s