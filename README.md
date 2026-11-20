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

<img src="https://skillicons.dev/icons?i=kubernetes,terraform,gcp,docker,nix,argocd,githubactions,bash,linux" alt="Stack" />

**Things people hand me**

- Infra nobody dares to touch anymore. I bring it back under code, without the outage.
- A `terraform plan` full of changes nobody can explain. I make it say `No changes.`
- Over-provisioned infra and finops nightmares.
- The kube upgrade everyone keeps postponing.
- Dependency hell.

**Lately**

- Improving AI setup to keep track of what's happening in the space
- Reviewing new packages on [nixpkgs](https://github.com/NixOS/nixpkgs)

**Packages I maintain on nixpkgs**

<!-- nixpkgs:start -->
- [`radar`](https://search.nixos.org/packages?channel=unstable&show=radar&query=radar) 1.20.2: Local-first Kubernetes visibility: topology, event timeline, and service traffic
<!-- nixpkgs:end -->
