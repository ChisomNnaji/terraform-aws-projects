resource "aws_lb" "alb" {
  name               = "project4-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.target_sg_id]
  subnets            = var.public_subnets_ids
}

resource "aws_lb_target_group" "tg" {
  name     = "project4-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}

resource "aws_lb_listener" "listener" {
  load_balancer_arn = aws_lb.alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg.arn
  }
}

resource "aws_lb_target_group_attachment" "tg_attach" {
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = var.target_instance
  port             = 80
}

