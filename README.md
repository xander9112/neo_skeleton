### Add empty mason project

```bash
mason add neo_empty_project --git-url https://github.com/xander9112/neo_skeleton --git-path neo_empty_project
```
```bash
mason add neo_empty_project_go_router --git-url https://github.com/xander9112/neo_skeleton --git-path neo_empty_project_go_router
```

### Add mason feature

```bash
mason add neo_feature --git-url https://github.com/xander9112/neo_skeleton --git-path neo_feature
```
```bash
mason add neo_feature_go_router --git-url https://github.com/xander9112/neo_skeleton --git-path neo_feature_go_router
```

### Создадим дефолтную структуру

```bash
mason make neo_empty_project --on-conflict overwrite
```
