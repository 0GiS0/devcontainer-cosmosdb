# Using CosmosDB Emulator with Python on Dev Container

This is a simple example of how to run the CosmosDB Emulator on a Dev Container.

## Test the configuration

In order to test the configuration you can run this python script:

```bash
python3 app.py
```

## Accessing the CosmosDB Emulator Data Explorer

To access the CosmosDB Emulator Data Explorer, you can use the following URL:

If you are using a local Dev Container, you can use the following command to get the URL:

```
echo "https://localhost:8081/_explorer/index.html"
```

If you are using GitHub Codespaces, you can use the following command to get the URL:

```
echo "https://$CODESPACE_NAME-8081.app.github.dev/_explorer/index.html"
```

Happy coding! 🚀