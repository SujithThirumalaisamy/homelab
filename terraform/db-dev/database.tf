resource "docker_container" "mysql" {
  image = "mysql:latest"
  name  = "mysql"
  env = [
    "MYSQL_ROOT_PASSWORD=${data.hcp_vault_secrets_app.secret-manager.secrets.DB_MYSQL_LOCAL}"
  ]
  ports {
    internal = 3306
    external = 3306
  }
  restart = "always"
}

resource "docker_container" "postgres" {
  image = "postgres:latest"
  name  = "postgres"
  env = [
    "POSTGRES_PASSWORD=${data.hcp_vault_secrets_app.secret-manager.secrets.DB_POSTGRES_LOCAL}"
  ]
  ports {
    internal = 5432
    external = 5432
  }
  restart = "always"
  volumes {
    volume_name    = "postgres_data"
    container_path = "/var/lib/postgresql/data"
  }
}

resource "docker_container" "redis" {
  image = "redis:latest"
  name  = "redis"
  ports {
    internal = 6379
    external = 6379
  }
  restart = "always"
  command = [
    "redis-server",
    "--save", "20", "1",
    "--loglevel", "warning",
    "--requirepass", data.hcp_vault_secrets_app.secret-manager.secrets.DB_REDIS_LOCAL
  ]
  volumes {
    volume_name    = "cache"
    container_path = "/data"
  }
}

resource "docker_container" "redis-insight" {
  image   = "redis/redisinsight:latest"
  name    = "redis-insight"
  restart = "always"
  ports {
    internal = 5540
    external = 5540
  }
}

output "database_passwords" {
  value = {
    mysql    = data.hcp_vault_secrets_app.secret-manager.secrets.DB_MYSQL_LOCAL
    postgres = data.hcp_vault_secrets_app.secret-manager.secrets.DB_POSTGRES_LOCAL
    redis    = data.hcp_vault_secrets_app.secret-manager.secrets.DB_REDIS_LOCAL
  }
  sensitive = true
}
