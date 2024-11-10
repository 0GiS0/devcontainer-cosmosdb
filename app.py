from azure.cosmos import CosmosClient, PartitionKey
import urllib3

urllib3.disable_warnings()

client = CosmosClient(
    "https://cosmosdb:8081",    
    "C2y6yDjf5/R+ob0N8A7Cgv30VRDJIWEHLM+4QDU5DE2nQ9nDuVTqobD4b8mGGyPMbIZnqyMsEcaGQy67XIw/Jw=="
    ),


database = client.create_database_if_not_exists(
    id="cosmicworks",
    offer_throughput=400,
)

container = database.create_container_if_not_exists(
    id="products",
    partition_key=PartitionKey(
        path="/id",
    ),
)

item = {"id": "68719518371", "name": "Kiama classic surfboard"}

container.upsert_item(item)