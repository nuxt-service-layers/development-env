# Nuxt Service Layers Dev Container

This is an enviroment strictly for working on the Service Layers stack.

## The Layer Stack

###### Entry Point

The folder `app-template` is the main entry point for the project. This is a normal nuxt app.

###### Service Layers

This layer will include all the services required by the user, for example: `user` ,
`notifications`, `analytics` and so on. These will be added when needed by the user in the
`nuxt.config.ts` file in the `extends` array.

###### Service Dependencies

Each service will point to dependency layers. At the moment this is just a database interface layer
but I imagine more will be needed.

###### Database

This is an interface layer used by any service layer that uses a database. This has been made as an
attempt to make the services work with any database. This layer will take the selected database from
the `services.config.ts` in the top most root folder and extend the required database connection
layer.

###### Database Connection Layers

At this point in time there are four database connection layers which are only added to ones project
when it is selected. The four to choose from are:

`firestore` `mongo` `sqlite` `postgres`

###### Base Layer

The base layer extends of every service layer. This is used to provide things that are needed
globally.
