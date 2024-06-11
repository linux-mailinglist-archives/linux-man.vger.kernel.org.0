Return-Path: <linux-man+bounces-1129-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99348904448
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 21:14:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 54A47289007
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 19:14:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E4697E78B;
	Tue, 11 Jun 2024 19:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="l/YaXVTk"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740F838FA1
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 19:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718133255; cv=none; b=NrpqWdWlyUpZG6V7viCCEknI3kaqDTmkF5ki1fOv2yL/7Ggxu7FUUvBBL0jD3hh5D9an0bqF47cTCyNFE2KmWfr+wyDYW8Ldqmdq14EgEmcNke9TmgGgXQTiQx0EatIiWnjFxyw7hP+HBClU1wBJ8VgMqylDDg4jamCy8NXh+zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718133255; c=relaxed/simple;
	bh=6Wz00xFkc5qUNqiH+qWKXCYytYDaGfH4M2cSpq+18X0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=tmBKKJ4R1n6u9pNUYjGu8ySKXsh9tiNq3IcNvJMG0asg2LmEpc3VmdRdjGBsfzD9OOPwmPAl5sBKPEscfFhVvebSJEn/XN09/3rfXpjvdE4qgxue84VIZp/eWJN038tTAC7wS830d1IGQ6/zVW5mfPqtbwoMaHeiVAl+C5IohsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=l/YaXVTk; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-6e57506bb2dso1147786a12.0
        for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 12:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1718133253; x=1718738053; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OVAr4kEhI1XK3hpsSDzcXpv98LrTccQYZU9xzVVvdPY=;
        b=l/YaXVTkGG/SXsdHH2BwqnjVDA+JwYBaW1wi1kPwDUV18k02SGDWZ3GFurIP8cM6/8
         vN7U44Gju4tOgrRc22saGovDMHQ8GUFHS/ko/q/LPWRggsVbhyeAvj6pQjAFqgbrdN9v
         QGRsFVt73ciz3c+LeMlnv/u4Kp3OUi0O+y1UE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718133253; x=1718738053;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OVAr4kEhI1XK3hpsSDzcXpv98LrTccQYZU9xzVVvdPY=;
        b=xSsERDOVPaQTHQsB/B7Hj4GlU9IQ2GYQr9YzSCtLRqoVTtpKdGH+Bna1uFA22EG6hv
         86ghcb9fUMWGvXPXIpZwUJLFkGYWepQ3IpdbioZLQmr/zS450DdTLwApta9YzHeoj1fk
         B+Q8CgmL8vFlMLh5w3D6DwkbwL4kf71Qo9z1BHCSSM337PsZMGJryKjWk8hQRXTUv+6t
         EDkSocpHOF3gX2Kc2vIAn+YCJ8eEhG3ACv2sX1PpW8Zv1shJpPX9azesVAvMeI+I0CUq
         GxeHICAuMXGkCVo5Hna24EyGl6+NOF2y+NA7iRmJgmtRL1EC+UudewoUOD14TH565tXI
         DBBg==
X-Gm-Message-State: AOJu0YwKKGaxygSLQS8UQUNJFWSmPe4X7Rbq0w651rBI4cCYHdIWg5Tn
	jhO51FC3hyPh4XC/l7HNaA0JYZqeOvW6UoDQFh2KDDM2nG77tOKSXUF36/HbwPM=
X-Google-Smtp-Source: AGHT+IGygo0dw+BptZ8fm2spZdS1HL4Dt3ICtJz6xELK0Q3agrJKGVgDxIMwANxj3M09l/Pkt/HQMA==
X-Received: by 2002:a17:90a:bc9:b0:2c2:c670:8a4b with SMTP id 98e67ed59e1d1-2c2c6708b6amr11820970a91.26.1718133252533;
        Tue, 11 Jun 2024 12:14:12 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c2ece959f2sm6602303a91.23.2024.06.11.12.14.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 12:14:12 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Joe Damato <jdamato@fastly.com>
Subject: [PATCH v3 0/1] ioctl_eventpoll.2: Add eventpoll ioctl documentation
Date: Tue, 11 Jun 2024 19:12:56 +0000
Message-Id: <20240611191257.1790908-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Greetings:

Welcome to v3.

This revision includes several important changes:
  1. Renamed the file from man/man2/ioctl_epoll.2 to
     man/man2/ioctl_eventpoll.2.
  2. Attempts to use semantic newlines to shorten long lines.
  3. Replaces the include with <sys/epoll.h> instead of the kernel sources.
  4. Many style issues that Alejandro pointed out in v2.
  5. Using \[rs] instead of \e in the example code.
  6. Replace all instances of ioctl_epoll with ioctl_eventpoll

Many thanks for Alejandro for his unending patience and attention to
detail.

Thanks,
Joe

v2->v3:
  - Rename file from man/man2/ioctl_epoll.2 to man/man2/ioctl_eventpoll.2.
  - Attempt to use semantic newlines.
  - Replace includes with sys/epoll.h, since this code is in glibc.
  - Several style changes suggested by Alejandro.
  - Replacing \e with \[rs] in the sample code included.
  - Replacing all instances of ioctl_epoll with ioctl_eventpoll

v1->v2:
  - Add link pages for EPIOCSPARAMS and EPIOCGPARAMS.
  - Many edits to the main ioctl_epoll file to better describe the
    operations and document the interface.

Joe Damato (1):
  ioctl_eventpoll.2: New page describing epoll ioctl(2)

 man/man2/epoll_create.2           |   1 +
 man/man2/epoll_ctl.2              |   1 +
 man/man2/ioctl.2                  |   1 +
 man/man2/ioctl_eventpoll.2        | 173 ++++++++++++++++++++++++++++++
 man/man2const/EPIOCGPARAMS.2const |   1 +
 man/man2const/EPIOCSPARAMS.2const |   1 +
 man/man7/epoll.7                  |   1 +
 7 files changed, 179 insertions(+)
 create mode 100644 man/man2/ioctl_eventpoll.2
 create mode 100644 man/man2const/EPIOCGPARAMS.2const
 create mode 100644 man/man2const/EPIOCSPARAMS.2const

-- 
2.34.1


