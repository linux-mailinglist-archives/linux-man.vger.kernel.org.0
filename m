Return-Path: <linux-man+bounces-1137-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B73A904618
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 23:10:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 427C61C2347C
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 21:10:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07EEE15250F;
	Tue, 11 Jun 2024 21:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="CuJJPnnJ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5A1763F2
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 21:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718140253; cv=none; b=IbSu0Hfn14w2LQKtXWG86en7sPISztF4ZT8dMUPqmpgKgZ0tERV58hIyRzyoFKrWNAXQYLuMvdT25UX8wBBphmGlLcnNSMangGS2QDSnJQCOv3rxvVMEuzODFK9NCLFBxB+LSuDjcY+quEs2Yezut694G7RarkM+rWaF6gI/nwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718140253; c=relaxed/simple;
	bh=hNskhAvY2ZNoLMzkCfzk01WfEM1/HHwhmjayWYlNtQQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iDou7ZiWK2ZmEg1LKNQHyRtb1ayDN/LgbPboajDzvDLeox40G0sVP6wWwTA6Z9oiPgBsDIBJWkM0xylXh2W2dpzV+ASpQ2ym1IJRZNfi7L9NrINbKIqRcMe1mFz+/4kVuXMK0GDhCkGVPVzmrGwXO9ZZ2sDeXzz+64Vdvvi5DLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=CuJJPnnJ; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7023b6d810bso4839863b3a.3
        for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 14:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1718140251; x=1718745051; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jT/0qE7zIPbhyr3/ZNAcjIleWxD7DGJtAS1jntrycI4=;
        b=CuJJPnnJwHWwbMCzzdkH00MAaawBzcuHsn2w5lkwjEStoDODNNZqTheHjFH83KMdVP
         /GibiAhhS5v8Bm/3kcPolECjI71RBPX8oAEmMmyVON0hetfSokiyosrE0B8O14oEbq8Y
         3PJ3BZ4+f+MlCpTZ6Uc5jgBnPHmvgHIf9PI4o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718140251; x=1718745051;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jT/0qE7zIPbhyr3/ZNAcjIleWxD7DGJtAS1jntrycI4=;
        b=L1uc294Y9F+UNIqvVahKSMkShFES6Oy0umNRHdy7Wb8X5aRF7VdOOD84Fd1E97b6Lb
         bDaGpyufvcFLP6kzas+IHALABeJna1ISAnPUDn7sqe9aLlElsW5m+QgaO/q4o5DcDuHX
         Gfgd/fMkAGxL7lRJJ9fBmSaJYV3AK8v/BqYhAQ9m1VuUvrnLPB66dKOpOcBcFsR3Xdnh
         FFEHipOl4rR6Qf4xq2O4NoP11tR4vVLsNr0Y8qbx8khk3BzQ/PCttpQ56ut/ao7PjFQ/
         964z/vVKWy/b85YrMkO1xhoAlHgwTVCbABRoN7omdOzZawmZrwuAnB5z+A2uQlhpxzuM
         ZcOQ==
X-Gm-Message-State: AOJu0YymPjZYx6VxOGA2FqP7mcErptygH5Av2KeU7H3ztVS/wHGm9P8p
	djbI497YngVrqU5vOfbdpzWX2M/vDzMebtEDPFLgrdaMlL4a9WqdiSRmWfe09s4dbCwVXbfrjvg
	W
X-Google-Smtp-Source: AGHT+IEEBpx5cC7lAyd0u+535mLwYkGVtahft9c1lQ0cuvTX7+g+195Ry8tIVrBHTfBs2ihndaJDZQ==
X-Received: by 2002:a05:6a00:cd4:b0:705:a600:31da with SMTP id d2e1a72fcca58-705bceac2camr84697b3a.23.1718140251401;
        Tue, 11 Jun 2024 14:10:51 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70427eb9f16sm6108726b3a.163.2024.06.11.14.10.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 14:10:51 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Joe Damato <jdamato@fastly.com>
Subject: [PATCH v4 1/1] ioctl_eventpoll.2, EPIOC[GS]PARAMS.2const: New page describing epoll ioctl(2)
Date: Tue, 11 Jun 2024 21:09:41 +0000
Message-Id: <20240611210941.1791446-2-jdamato@fastly.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240611210941.1791446-1-jdamato@fastly.com>
References: <20240611210941.1791446-1-jdamato@fastly.com>
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
 man/man2/ioctl_eventpoll.2        | 175 ++++++++++++++++++++++++++++++
 man/man2const/EPIOCGPARAMS.2const |   1 +
 man/man2const/EPIOCSPARAMS.2const |   1 +
 man/man7/epoll.7                  |   1 +
 7 files changed, 181 insertions(+)
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
index 000000000..6bbbef2d5
--- /dev/null
+++ b/man/man2/ioctl_eventpoll.2
@@ -0,0 +1,175 @@
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
+.nf
+.BR "#include <sys/epoll.h>" "  /* Definition of " EPIOC* " constants */"
+.B "#include <sys/ioctl.h>"
+.P
+.BI "int ioctl(int " fd ", EPIOCSPARAMS, const struct epoll_params *" argp );
+.BI "int ioctl(int " fd ", EPIOCGPARAMS, struct epoll_params *" argp );
+.P
+.B "#include <sys/epoll.h>"
+.P
+.EX
+.B struct epoll_params {
+.BR "  uint32_t busy_poll_usecs;" "   /* Number of usecs to busy poll */"
+.BR "  uint16_t busy_poll_budget;" "  /* Max packets per poll */"
+.BR "  uint8_t  prefer_busy_poll;" "  /* Boolean preference  */"
+\&
+.BR " " "/* pad the struct to a multiple of 64bits */"
+.BR "  uint8_t  __pad;" "  /* Must be zero */"
+.B };
+.EE
+.fi
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
+.SS The epoll_params structure
+.I argp.busy_poll_usecs
+denotes the number of microseconds that the network stack will busy poll.
+During this time period,
+the network device will be polled repeatedly for packets.
+This value cannot exceed
+.BR INT_MAX .
+.in
+.P
+.I argp.busy_poll_budget
+the maximum number of packets that the network stack will retrieve
+on each poll attempt.
+This value cannot exceed
+.B NAPI_POLL_WEIGHT
+(which is 64 as of Linux 6.9), unless the process is run with
+.BR CAP_NET_ADMIN .
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
+.BR INT_MAX .
+.TP
+.B EINVAL
+.I argp.prefer_busy_poll
+is not 0 or 1.
+.TP
+.B EPERM
+The process is being run without
+.B CAP_NET_ADMIN
+and the specified
+.I argp.busy_poll_budget
+exceeds
+.BR NAPI_POLL_WEIGHT .
+.TP
+.B EFAULT
+.I argp
+does not point to a valid memory address.
+.SH STANDARDS
+Linux.
+.SH HISTORY
+.\" linux.git commit 18e2bf0edf4dd88d9656ec92395aa47392e85b61
+.\" glibc.git commit 92c270d32caf3f8d5a02b8e46c7ec5d9d0315158
+Linux 6.9.
+glibc 2.40.
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


