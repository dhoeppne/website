<h1 align="center">
  davidhoeppner.ca
</h1>
<p align="center">
  The repo of <a href="davidhoeppner.ca" target="_blank">davidhoeppner.ca</a> built with <a href="https://www.gatsbyjs.org/" target="_blank">Gatsby</a> and hosted with <a href="https://www.netlify.com/" target="_blank">Kubernetes on DigitalOcean.</a> Based off of the V4 template from <a href="https://github.com/bchiang7/v4" target="_blank">bchiang7</a>. You can find her at <a href="brittanychiang.com">https://brittanychiang.com</a>
</p>

[![Publish to Docker and k8s](https://github.com/dhoeppne/website/actions/workflows/publish-latest.yaml/badge.svg)](https://github.com/dhoeppne/website/actions/workflows/publish-latest.yaml)

## 🛠 Installation & Set Up

1. Install the Gatsby CLI

```sh
npm install -g gatsby-cli
```

2. Install and use the correct version of Node using [NVM](https://github.com/nvm-sh/nvm)

```sh
nvm install
```

3. Install dependencies

```sh
yarn
```

4. Start the development server

```sh
npm start
```

## 🚀 Building and Running for Production

All of this is handled via Github Actions on merges to main and develop. But, if you wish to do so locally you can follow the below.

1. Generate the docker image

```sh
docker build . --file Dockerfile --tag dhoeppner/website:<tag>
```

1. Push the image to Docker Hub

```sh
docker push dhoeppner/website:<tag>
```

1. Deploy to Kubernetes (assuming you are connected to a running cluster)

```sh
kubectl apply -f k8s/
```

## 🎨 Color Reference

| Color          | Hex                                                                |
| -------------- | ------------------------------------------------------------------ |
| Navy           | ![#0a192f](https://via.placeholder.com/10/0a192f?text=+) `#0a192f` |
| Light Navy     | ![#112240](https://via.placeholder.com/10/0a192f?text=+) `#112240` |
| Lightest Navy  | ![#233554](https://via.placeholder.com/10/303C55?text=+) `#233554` |
| Slate          | ![#8892b0](https://via.placeholder.com/10/8892b0?text=+) `#8892b0` |
| Light Slate    | ![#a8b2d1](https://via.placeholder.com/10/a8b2d1?text=+) `#a8b2d1` |
| Lightest Slate | ![#ccd6f6](https://via.placeholder.com/10/ccd6f6?text=+) `#ccd6f6` |
| White          | ![#e6f1ff](https://via.placeholder.com/10/e6f1ff?text=+) `#e6f1ff` |
| Green          | ![#64ffda](https://via.placeholder.com/10/64ffda?text=+) `#64ffda` |
