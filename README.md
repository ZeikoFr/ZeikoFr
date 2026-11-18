### Hello there, I'm Gwendal

I keep other people's Kubernetes clusters alive.

```yaml
apiVersion: humans.k8s.local/v1
kind: CloudArchitect
metadata:
  name: gwendal
  labels:
    region: europe-west9 # France, approximately
spec:
  replicas: 1
  role: cloud architect @ MSP
  focus: [gke, ovh, scw, terraform/tofu, kubernetes, argocd, etc]
  runtime: nix
  languages: [fr, en]
status:
  conditions:
    - type: Ready
      status: "True"
      reason: PlanReviewed
```

**Things people hand me**

- Infra nobody dares to touch anymore. I bring it back under code, without the outage.
- A `terraform plan` full of changes nobody can explain. I make it say `No changes.`
- Over-provisioned infra and finops nightmares.
- The kube upgrade everyone keeps postponing.
- Dependency hell.

**Lately**

- Improving AI setup to keep track of what's happening in the space
- Reviewing new packages on [nixpkgs](https://github.com/NixOS/nixpkgs)

**Stack**

<img src="https://skillicons.dev/icons?i=kubernetes,terraform,gcp,docker,nix,argocd,githubactions,bash,linux" alt="Stack" />

<a href="https://github.com/NixOS/nixpkgs/pulls?q=is%3Apr+is%3Aclosed+author%3AZeikoFr"><img src="https://img.shields.io/github/issues-search?query=repo%3ANixOS%2Fnixpkgs%20is%3Apr%20is%3Aclosed%20author%3AZeikoFr&label=nixpkgs%20PRs%20closed&logo=nixos&color=5277C3" alt="nixpkgs PRs closed" /></a>
