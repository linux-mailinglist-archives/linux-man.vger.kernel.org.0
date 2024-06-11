Return-Path: <linux-man+bounces-1130-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BEA904449
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 21:14:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 873CEB20F03
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 19:14:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4797F38FA1;
	Tue, 11 Jun 2024 19:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="HbEDUhfE"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 742697D3FA
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 19:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718133256; cv=none; b=jOouINzBm3I38cgdNzgQK2C8jxy/pPsvACcRh0GJF75jlPUDtJmogMxrcIXwT4UlM61hrixnNE3J3nJywp83BwItDC7q9iic3ytc0O9zDMm01yjUrH/KIAwM3q78hSeTjtcXTg10817HJHV1MK9f058MLjamfjMchNVCa+FxPU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718133256; c=relaxed/simple;
	bh=nQVZwH9SCQ5Hj8OYDnvc6t4x90SwElczSgr0XlSfH0k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gbMbdntF1nRzwg5OgjnxdRyKDzZF4wgJTWjgX5WDXSkG0zFkWyJF1nQnHfHJOvsFKZoSgg9Q3CiiWSejhgF84hgF1+yt3P2Ky8OZAQ/jX6WlN3TuqZ5jNeJ3DO1j+LDOCNMK1RUPe6zUHZ8phi/JncS8GOv/NGQcsB9Mv6Eqn4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=HbEDUhfE; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-2c2e0ca8f90so2879445a91.0
        for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 12:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1718133254; x=1718738054; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eV9u9MZxIzmZFryF1YpChipB2/EGjMO2Fst/LGjlqAI=;
        b=HbEDUhfESDHJDqdbbZUDl6Od/mT7UN4ugYdOyAQyHvIGeHwbVR46z4rSbf136ySbce
         XtCRxC0D93XdDvLr4UQGnMdwiT+TZcXcDM6h0YugLccQVxLkwdC7HBKPt2Me53LrSeeD
         JurbUjkhysSzuuYEVLKwagq7rsC1Iw00De+9A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718133254; x=1718738054;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eV9u9MZxIzmZFryF1YpChipB2/EGjMO2Fst/LGjlqAI=;
        b=EjtH5k9nIaF4aH9E46JQPfo4z2Skz/n38m66nq3rNKMy/TlF+e6ODj2LlHVsWG8ROs
         rTD0ql90ZmcZObc0/twiDCzk8i4mJC0WTP343XJRleuDOC9v7UKeLP6U04q/AVglFfSt
         tDxuscfInt/g6itsE86G3RIXlSIuEjQvdtIuGRkegqxDEetul5kMXQzfaha4VzDBiYWs
         a4hcfnA9HOFE6ppZTKzS19EfxXYmvYxqyrM8klcZAKhUU+mNgv03eobjqGLfzxzde4Qi
         vSHQbPi3CAJVTTaf0Tsr3s9+kXxFH+1s5OvSeU4WDZGmEW1NHrR8lpOnj7SZBUWwA0f3
         9aJQ==
X-Gm-Message-State: AOJu0Yzg3lRVSa91AkUFUXedVxc5Z7qF1SbHHlhvsl3cBp94ii86utzQ
	HpO/8MkXVOU4+zlsDZmIF/Z9L0h0SEmyPD7+uUKjGV/a4H6YNEhxHnjogzy+u52NnhdeobM6HX4
	e
X-Google-Smtp-Source: AGHT+IEAcsVv8Pg5NjonGNsV3rKMlTVuhGKOabvlAms973qSvAPqZ/cKiBFXhxGUwrRIhyXZzwmtXA==
X-Received: by 2002:a17:90a:df8d:b0:2c2:e9e5:2d33 with SMTP id 98e67ed59e1d1-2c2e9e52ef4mr9051618a91.9.1718133253686;
        Tue, 11 Jun 2024 12:14:13 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c2ece959f2sm6602303a91.23.2024.06.11.12.14.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 12:14:13 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Joe Damato <jdamato@fastly.com>
Subject: [PATCH v3 1/1] ioctl_eventpoll.2: New page describing epoll ioctl(2)
Date: Tue, 11 Jun 2024 19:12:57 +0000
Message-Id: <20240611191257.1790908-2-jdamato@fastly.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240611191257.1790908-1-jdamato@fastly.com>
References: <20240611191257.1790908-1-jdamato@fastly.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

A new page is added which describes epoll fd ioctls: EPIOCSPARAMS and
EPIOCGPARAMS which allow the user to control epoll-based busy polling.

Also add link pages for EPIOCSPARAMS and EPIOCGPARAMS.

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
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

diff --git a/man/man2/epoll_create.2 b/man/man2/epoll_create.2
index f0327e8ba..013f81b64 100644
--- a/man/man2/epoll_create.2
+++ b/man/man2/epoll_create.2
@@ -141,4 +141,5 @@ on overrun.
 .BR close (2),
 .BR epoll_ctl (2),
 .BR epoll_wait (2),
+.BR ioctl_eventpoll (2),
 .BR epoll (7)
diff --git a/man/man2/epoll_ctl.2 b/man/man2/epoll_ctl.2
index 6d5bc032e..29a6da375 100644
--- a/man/man2/epoll_ctl.2
+++ b/man/man2/epoll_ctl.2
@@ -425,5 +425,6 @@ flag.
 .SH SEE ALSO
 .BR epoll_create (2),
 .BR epoll_wait (2),
+.BR ioctl_eventpoll (2),
 .BR poll (2),
 .BR epoll (7)
diff --git a/man/man2/ioctl.2 b/man/man2/ioctl.2
index 5b8c28a9c..6f7725904 100644
--- a/man/man2/ioctl.2
+++ b/man/man2/ioctl.2
@@ -225,6 +225,7 @@ for the various architectures.
 .BR ioctl_ns (2),
 .BR ioctl_tty (2),
 .BR ioctl_userfaultfd (2),
+.BR ioctl_eventpoll (2),
 .BR open (2),
 .\" .BR mt (4),
 .BR sd (4),
diff --git a/man/man2/ioctl_eventpoll.2 b/man/man2/ioctl_eventpoll.2
new file mode 100644
index 000000000..0fe03d6d4
--- /dev/null
+++ b/man/man2/ioctl_eventpoll.2
@@ -0,0 +1,173 @@
+.\" Copyright (c) 2024, Joe Damato
+.\" Copyright 2024, Joe Damato <jdamato@fastly.com>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH ioctl_eventpoll 2 (date) "Linux man-pages (unreleased)"
+.SH NAME
+ioctl_eventpoll,
+EPIOCSPARAMS,
+EPIOCGPARAMS
+\-
+ioctl() operations for epoll file descriptors
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " \-lc )
+.SH SYNOPSIS
+.EX
+.BR "#include <sys/epoll.h>" "  /* Definition of " EPIOC* " constants */"
+.B "#include <sys/ioctl.h>"
+.P
+.BI "int ioctl(int " fd ", EPIOCSPARAMS, const struct epoll_params *" argp );
+.BI "int ioctl(int " fd ", EPIOCGPARAMS, struct epoll_params *" argp );
+.P
+.B "#include <sys/epoll.h>"
+.P
+.B struct epoll_params {
+.BR "    uint32_t busy_poll_usecs;" "  /* Number of usecs to busy poll */"
+.BR "    uint16_t busy_poll_budget;" " /* Maximum number of packets to retrieve per poll */"
+.BR "    uint8_t prefer_busy_poll;" "  /* Boolean to enable or disable prefer busy poll  */"
+\&
+.BR " " "   /* pad the struct to a multiple of 64bits */"
+.BR "    uint8_t __pad;"            "  /* Must be zero */"
+.B };
+.EE
+.SH DESCRIPTION
+.TP
+.B EPIOCSPARAMS
+Set the
+.I epoll_params
+structure to configure the operation of epoll.
+Refer to the structure description below
+to learn what configuration is supported.
+.TP
+.B EPIOCGPARAMS
+Get the current
+.I epoll_params
+configuration settings.
+.P
+All operations documented above must be performed on an epoll file descriptor,
+which can be obtained with a call to
+.BR epoll_create (2)
+or
+.BR epoll_create1 (2).
+.\" linux.git commit 18e2bf0edf4dd88d9656ec92395aa47392e85b61
+.\" glibc.git commit 92c270d32caf3f8d5a02b8e46c7ec5d9d0315158
+.SS The epoll_params structure
+.I argp.busy_poll_usecs
+denotes the number of microseconds that the network stack will busy poll.
+During this time period,
+the network device will be polled repeatedly for packets.
+This value cannot exceed
+.B INT_MAX.
+.in
+.P
+.I argp.busy_poll_budget
+the maximum number of packets that the network stack will retrieve
+on each poll attempt.
+This value cannot exceed
+.B NAPI_POLL_WEIGHT
+(which is 64 as of Linux 6.9), unless the process is run with
+.B CAP_NET_ADMIN.
+.P
+.I argp.prefer_busy_poll
+is a boolean field and
+must be either 0 (disabled) or 1 (enabled).
+If enabled,
+this indicates to the network stack that
+busy poll is the preferred method of processing network data
+and the network stack should give the application the opportunity to busy poll.
+Without this option,
+very busy systems may continue to do network processing
+via the normal method of IRQs triggering softIRQ and NAPI.
+.P
+.I argp.__pad
+must be zero.
+.SH RETURN VALUE
+On success, 0 is returned.
+On failure, \-1 is returned, and
+.I errno
+is set to indicate the error.
+.SH ERRORS
+.TP
+.B EOPNOTSUPP
+The kernel was not compiled with busy poll support.
+.TP
+.B EINVAL
+.I fd
+is not a valid file descriptor.
+.TP
+.B EINVAL
+.I argp.__pad
+is not zero.
+.TP
+.B EINVAL
+.I argp.busy_poll_usecs
+exceeds
+.B INT_MAX .
+.TP
+.B EINVAL
+.I argp.prefer_busy_poll
+is not 0 or 1.
+.TP
+.B EPERM
+The process is being run without
+.I CAP_NET_ADMIN
+and the specified
+.I argp.busy_poll_budget
+exceeds
+.B NAPI_POLL_WEIGHT.
+.TP
+.B EFAULT
+.I argp
+does not point to a valid memory address.
+.SH EXAMPLES
+.EX
+/* Code to set the epoll params to enable busy polling */
+\&
+int epollfd = epoll_create1(0);
+struct epoll_params params;
+\&
+if (epollfd == \-1) {
+    perror("epoll_create1");
+    exit(EXIT_FAILURE);
+}
+\&
+memset(&params, 0, sizeof(struct epoll_params));
+\&
+params.busy_poll_usecs = 25;
+params.busy_poll_budget = 8;
+params.prefer_busy_poll = 1;
+\&
+if (ioctl(epollfd, EPIOCSPARAMS, &params) == \-1) {
+    perror("ioctl");
+    exit(EXIT_FAILURE);
+}
+\&
+/* Code to show how to retrieve the current settings */
+\&
+memset(&params, 0, sizeof(struct epoll_params));
+\&
+if (ioctl(epollfd, EPIOCGPARAMS, &params) == \-1) {
+    perror("ioctl");
+    exit(EXIT_FAILURE);
+}
+\&
+/* params struct now contains the current parameters */
+\&
+fprintf(stderr, "epoll usecs: %lu\[rs]n", params.busy_poll_usecs);
+fprintf(stderr, "epoll packet budget: %u\[rs]n", params.busy_poll_budget);
+fprintf(stderr, "epoll prefer busy poll: %u\[rs]n", params.prefer_busy_poll);
+\&
+.SH History
+Linux 6.9.
+glibc 2.40.
+.SH SEE ALSO
+.BR ioctl (2),
+.BR epoll_create (2),
+.BR epoll_create1 (2),
+.BR epoll (7)
+.P
+.I linux.git/Documentation/networking/napi.rst
+.P
+.I linux.git/Documentation/admin-guide/sysctl/net.rst
diff --git a/man/man2const/EPIOCGPARAMS.2const b/man/man2const/EPIOCGPARAMS.2const
new file mode 100644
index 000000000..b70a1a565
--- /dev/null
+++ b/man/man2const/EPIOCGPARAMS.2const
@@ -0,0 +1 @@
+.so man2/ioctl_eventpoll.2
diff --git a/man/man2const/EPIOCSPARAMS.2const b/man/man2const/EPIOCSPARAMS.2const
new file mode 100644
index 000000000..b70a1a565
--- /dev/null
+++ b/man/man2const/EPIOCSPARAMS.2const
@@ -0,0 +1 @@
+.so man2/ioctl_eventpoll.2
diff --git a/man/man7/epoll.7 b/man/man7/epoll.7
index e7892922e..951500131 100644
--- a/man/man7/epoll.7
+++ b/man/man7/epoll.7
@@ -606,5 +606,6 @@ is present in an epoll instance.
 .BR epoll_create1 (2),
 .BR epoll_ctl (2),
 .BR epoll_wait (2),
+.BR ioctl_eventpoll (2),
 .BR poll (2),
 .BR select (2)
-- 
2.34.1


