drop table t_request;

CREATE TABLE IF NOT EXISTS `StopHurt`.`t_request` (
  `id` INT NOT NULL,
  `userId` INT NOT NULL COMMENT '用户请求id',
  `requestTime` TIMESTAMP NOT NULL COMMENT '请求时间',
  `address` INT NULL COMMENT '请求地址id',
  `finishTime` TIMESTAMP NULL COMMENT '营救完成时间',
  `status` INT NULL,
  `rescuerAddress` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `t_request_address_idx` (`address` ASC),
  INDEX `t_request_userId_idx` (`userId` ASC),
  INDEX `t_request_status_idx` (`status` ASC),
  INDEX `t_request_rescueraddress_idx` (`rescuerAddress` ASC),
  CONSTRAINT `t_request_address`
    FOREIGN KEY (`address`)
    REFERENCES `StopHurt`.`t_address` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `t_request_userId`
    FOREIGN KEY (`userId`)
    REFERENCES `StopHurt`.`t_user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `t_request_status`
    FOREIGN KEY (`status`)
    REFERENCES `StopHurt`.`t_status` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `t_request_rescueraddress`
    FOREIGN KEY (`rescuerAddress`)
    REFERENCES `StopHurt`.`t_address` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = '请求求救信息表'