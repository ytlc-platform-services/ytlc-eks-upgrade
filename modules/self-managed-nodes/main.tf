resource "aws_instance" "eks_worker" {
  ami                    = var.worker_ami_id
  instance_type          = var.instance_type
  count                  = var.worker_count
  subnet_id              = element(var.subnet_ids, count.index)
  key_name               = var.key_name
  iam_instance_profile   = var.iam-instance-profile
  vpc_security_group_ids = var.worker_security_group_id

  user_data = <<EOF
#!/bin/bash
set -o xtrace

B64_CLUSTER_CA="${var.cluster_ca}"
API_SERVER_URL="${var.api_server_url}"

/etc/eks/bootstrap.sh ${var.cluster_name}
EOF

  root_block_device {
    volume_size = var.volume_size
    volume_type = "gp3"
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.cluster_name}-worker-${count.index}"
    }
  )
}
