### Add empty mason project

```bash
mason add neo_empty_project --git-url https://github.com/xander9112/neo_skeleton --git-path neo_empty_project
```
### Add mason feature

```bash
mason add neo_feature --git-url https://github.com/xander9112/neo_skeleton --git-path neo_feature
```

### Создадим дефолтную структуру

```bash
mason make neo_empty_project --on-conflict overwrite
```
