# drone-kubectl

This [Drone](https://drone.io/) plugin allows you to use `kubectl` and `gettext` without messing around with the authentication

## Usage

```yaml
# drone 1.0 syntax
kind: pipeline
name: deploy

steps:
  - name: kubernetes-deploy
    image: tainanfidelis/drone-kubectl
    environment:
      KUBECONFIG:
        from_secret: k8s_kubeconfig
      APP_PREFIX:
        from_secret: app_prefix
    commands:
      - envsubst < application-deployment.yaml.example > application-deployment.yaml
      - kubectl --kubeconfig=$KUBECONFIG get deployments

```

### Special thanks

To my mom.
