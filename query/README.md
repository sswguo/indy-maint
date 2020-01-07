### Query

- DA Lookup GAVs

````
go run da_lookup.go <DAHOST> org.jbpm:jbpm-wb:7.30.0.Final 
````

- Indy Check Maven metadata
````
go run maven_metadata.go <INDYHOST> org.jbpm:jbpm-wb:7.30.0.Final
````

- Get folo paths

````
go run folo_paths.go localhost:8080 build-202003
````
