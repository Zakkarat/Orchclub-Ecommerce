module.exports = {
  env: {
    browser: true,
    commonjs: true,
    es6: true,
    node: true,
    mocha: true,
  },
  extends: ["eslint:recommended", "plugin:chai-friendly/recommended"],
  plugins: ["mocha", "chai-friendly"],
  globals: {
    Atomics: "readonly",
    SharedArrayBuffer: "readonly",
  },
  parserOptions: {
    ecmaVersion: 2018,
  },
  rules: {},
  overrides: [
    {
      files: ["**/*.test.js"],
      env: {
        browser: true,
        es6: true,
        mocha: true,
      },
      plugins: ["mocha"],
      rules: {
        "mocha/no-exclusive-tests": "error",
        "mocha/no-pending-tests": "error",
      },
    },
  ],
};
