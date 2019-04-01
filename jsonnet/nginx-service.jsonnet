local Kube = import "../kube.libsonnet";

## Usage - jsonnet jsonnet/nginx-service.jsonnet --tla-code-file env=env/prod.json 

function(env){
   "service.json": Kube.v1.Service(env.service),
   "repcontroller.json": Kube.v1.ReplicationController(env.replicationController),
}
