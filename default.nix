{ androidenv }:

androidenv.buildApp {
  name = "HelloWorld";
  src = ./HelloWorld;
  platformVersions = [ "8" ];
  useGoogleAPIs = true;

  release = false;
  # keyStore = /home/user/keystore;
  # keyAlias = "user";
  # keyStorePassword = "foobar";
  # keyAliasPassword = "foobar";
}
