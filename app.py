from azure.cosmos import CosmosClient, PartitionKey

client = CosmosClient(
    url="https://cosmosdb:8081",
    credential=(
        "C2y6yDjf5/R+ob0N8A7Cgv30VRDJIWEHLM+4QDU5DE2nQ9nDuVTqobD4b8mGG"
        "yPMbIZnqyMsEcaGQy67XIw/Jw=="
    ),
)