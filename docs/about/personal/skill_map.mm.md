# COYANG's Skill Map


## Agile

- Extreme Programming
- Scrum
- DevOps
  - Version Control
    - Git
  - CI / CD
  - Tools
    - Jenkins
    - Gitlab CI
    - Github action
- Lean
- Kanban

## Development

### Programming Languages

- C / C++
- Golang
- Python
- Shell

## Basic knowledge

### Operating System

- Linux

### Data structure and Algorithm

- Data structure
- Algorithm

### RegExp

### Makefile

- [Automake](https://www.gnu.org/software/automake/)
- [Spec-packaging](https://docs.fedoraproject.org/en-US/packaging-guidelines/#_spec_files)

### Container

- [Docker](https://www.docker.com/)
- [LXC](https://linuxcontainers.org/)
- [RunC](https://github.com/opencontainers/runc)
- [Podman](https://podman.io/)

#### Container basic

- Linux Process Management
- Cgroups
- Linux Namespaces
- Rootfs & Container Image
- Image Registry

### Network

- TCP/IP
- VLANs
- DNS/CDN
- HTTP/HTTPS

### Storage

- Network Storage
  - Glusterfs
  - AWS EBS
  - NFS v4
  - Ceph
  - Apache CloudStack

- Object Storage
  - AWS S3
  - OpenStack Swift
  - Ceph

- Block Storage
  - SAN
  - AWS EBS
  - RAID

- File System
  - ext4
  - XFS
  - NFS
  - Glusterfs
  - Cephfs
  - cdafs
  - ldapfs

- IO schedule
  - deadline
  - noop
  - cfq

- The Linux  I/O Stack Diagram

### DB

- LDAP
- Vault
- Redis
- MySQL

## Infrastructure

### OpenStack

- Nova
- Neutron
- Cinder
- Glance
- Swift
- Keystone

### Kubernetes

#### Helm

- Helm chart development
- Chart UT
- kube-linter

#### Kubernetes architecture

##### Node

##### Kubelet

- Runtime
  - CRI (Container Runtime Interface)
  - Runtime shims
    - Cri-containerd (containerd)
    - Dockershim (Docker)
    - Cri-o (runC)
    - Rktlet (rkt)
    - Frakti (KataContainers)
  - RuntimeClass
- Networking
  - CNI (Container Network Interface)
  - Linux Network Namespace
  - Network plugins
    - Flannel
    - Calico
    - OVS
    - SR-IOV
    - macvlan/ipvlan
    - Opencontrail
    - Weave
    - Cilium
- Storage
  - CSI  (Container Storage Interface)
  - Persistent Volume & Persistent Volume Claim
  - Volume plugins
    - NFS
    - Cinder
    - GlusterFS
    - Ceph
    - Local path
  - Volume extension
    - Rook.io
- Kube-proxy
  - Iptables
  - IPVS

#### Kubernetes workloads

- Pod
- ReplicaSet
- Deployment
  - Rolling update
  - Pause/resume
  - Canary deploy
  - Rollback
- DaemonSet
- StatefulSet
  - Topology State
  - Storage State
- Job
- CronJob

#### Kubernetes applications management

- Service
  - Publish service
  - Nginx/HAproxy service
  - External Load Balancer
- ConfigMap
- Ingress
- Secret
- Headless Service
- External Load Balancer

## Testing

- Unit testing
  - TDD
- Integration testing
- Contract Testing
- Robot
  - Robot Framework
  - Robotidy

## Clean code

### Quality

- Code format
  - clang-format
  - gofmt
  - shfmt
  - autopep8
  - ...

- Static analysis
  - coverity
  - clang-tidy
  - scan build
  - pylint
  - golangci-lint
  - rpm lint

## Troubleshooting and Issue Resolution

- Log analysis
- Error tracking
- Performance problem tuning

## Documentation

- Markdown
- Restructext
- AsciiDoc
- PlantUML

## HW

- HW Basic
  - CPU
  - Memory
  - Hard Disk

## DTV

### HW

- Chip

### SW

- Standard
  - DVB-C
  - DVB-B
  - ISDT-B
- Feature
  - Audio
  - Video
  - Subtitle
  - EPG
