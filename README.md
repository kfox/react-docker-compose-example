# React Docker Compose Example

This repo demonstrates a React application development environment running within a [Docker](https://docs.docker.com/get-docker/) container (via [Docker Compose](https://docs.docker.com/compose/)) using a [local bind mount](https://docs.docker.com/storage/bind-mounts/) for the source code. The `node_modules` folder only exists as a [named volume](https://docs.docker.com/storage/volumes/) within the Docker container itself, i.e. no local `node_modules` folder is used or copied to the Docker container.

This example only shows how the React app would be handled with `docker-compose`, but in a more complex (and more realistic) app you would also have API, database, and other services defined in the [`docker-compose.yml`](docker-compose.yml) file.

## Quick Start

To start the development environment, make sure you have Docker installed and then run:

```bash
docker-compose up
```

or just:

```bash
yarn dev
```

When the development server starts up, it will watch the local filesystem and reload the server inside the Docker container when it detects changes in the source code.

## asdf and Docker

There are also a few files to simplify use with [asdf](https://asdf-vm.com) and Docker:

- [`.tool-versions`](.tool-versions) - Can serve as a single "source of truth" for tool versioning for all developers working on this project.
- [`.envrc`](.envrc) - If you have the [asdf-direnv](https://github.com/asdf-community/asdf-direnv) plugin installed, the presence of this file automatically activates the "tools" defined in the `.tool-versions` file if you have the appropriate plugins installed, e.g. run `asdf install nodejs` once in the project root.
- [`.env`](.env) - Local environment variables are defined here. If this file is present, `docker-compose` will automatically load the variables defined in it. In a "real" project, you might also have a helper script that would create the variable assignments in this file based on the contents of your `.tool-versions` file.

Note that you wouldn't normally commit the `.env` file (and maybe not even the `.envrc` file) to the repository, but I left them in to show how they might look as part of the overall project.

## Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app) via:

```bash
yarn create react-app react-docker-compose-example --template typescript
```

## Available Scripts

In the project directory, you can run:

### `yarn dev`

Runs the application via `docker-compose`.

### `yarn start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.\
You will also see any lint errors in the console.

### `yarn test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `yarn build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `yarn eject`

**Note: this is a one-way operation. Once you `eject`, you can’t go back!**

If you aren’t satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you’re on your own.

You don’t have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn’t feel obligated to use this feature. However we understand that this tool wouldn’t be useful if you couldn’t customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).
