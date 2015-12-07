# Nix Android HelloWorld

    $ mkdir nix-android-hello && cd nix-android-hello
    $ nix-shell -p androidenv.androidsdk_2_2
    $ android create project --target android-8 --name HelloWorld --path HelloWorld --activity MainActivity --package com.example.HelloWorld

Create `default.nix`:

```nix
{ androidenv }:

androidenv.buildApp {
  name = "HelloWorld";
  src = ./HelloWorld;
  platformVersions = [ "8" ];
  useGoogleAPIs = true;

  release = false;
}
```

    $ nix-build -E 'with import <nixpkgs> {}; callPackage ./default.nix {}'

Done!
