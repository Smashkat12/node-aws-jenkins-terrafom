resource "aws_key_pair" "mykeypair" {
  key_name   = "mykeypair"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCU9bvolFZBP+nLLcNruZjaSpoIE59ZkBEGR/LAf74oa26wOQtRvQjJzUHiLOvNzsr1ieXqHSwJNJ6y25utFtYTH0sVgB7zV6BJdW6nuupUjjVaHcFeoduPCu9My08xxs8Cu/Yx0GV3ftNGZZoOt2eTv5ZKwtgu+yKykCEnbqYQaEWLmL1D7FizUVqB92enufsnEVBSEuMchl5IbgKq6ByDMeCFgoXCh/2EN/+Q2n0u98lOUYsCh8wmP3hNfsg2FofsGFBsBbva0C1nmxkFPzSYzHko2J7523bsQpXm0tQyyANznFED1WPwRkF856a72PXxfESgy3J+KGcQCkydyd77"
  lifecycle {
    ignore_changes = [public_key]
  }
}
