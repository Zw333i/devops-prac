job "hello-devops" {
  datacenters = ["dc1"]
  type = "service"

  group "app" {
    task "hello-task" {
      driver = "docker"

      config {
        image = "devops-hello:latest"
        command = "python"
        args    = ["hello.py"]
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}