Return-Path: <linux-man+bounces-1069-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 769B1902C5B
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 01:14:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C8636B24485
	for <lists+linux-man@lfdr.de>; Mon, 10 Jun 2024 23:14:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98555152189;
	Mon, 10 Jun 2024 23:13:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="Rrn9IG4e"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BABC5152178
	for <linux-man@vger.kernel.org>; Mon, 10 Jun 2024 23:13:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718061198; cv=none; b=GEltJZGQOZ+9AmdNF6QwxQQICCFrXB2+q734IlAlkJo9hfu/4/w9sZvCONLnbIjKDic+20iH3VnfTWP9cfi31lrWfdJhLn7DNXziv9HHul8iMyJ2LsyO4LHSjXO3UIy46dYXr6ESVEZKjkcw2u7OkXHR5vZzpcLQ6KzTzH3R7B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718061198; c=relaxed/simple;
	bh=jzGmeh1ixSJROCW3E/T4iNQmplbkyK/KxjFubpya2lc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=faA3T4RsC9+Lr3GmGW7SOJ8vAoHK8Ls4Emt+iYGvnAj8ZxCAOXP2VT6qEdGFMId7YjOM7qmp54x0bCDGvnfvpcB3rv3OTCOY9W63RXfkjsixJ/Ji/HgKMd0GJ7C75nnVPGEKqzEmJIfuoi/bTXwKM4vqq76xPTCkBZymaHHTg9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=Rrn9IG4e; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1f44b45d6abso40871605ad.0
        for <linux-man@vger.kernel.org>; Mon, 10 Jun 2024 16:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1718061196; x=1718665996; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=80Xh+Vh3yh9xgeTxhbIUUzrNknmvID5bS5+p3HsnN0o=;
        b=Rrn9IG4exN+A1jeXdnB1NdQP3vpZenCOKRBb5oLN7iI2Jdc1qPjmpTAibRLyNfTkQG
         ZcsC8MY/h0IHoJMV53JmYbfOeQz4J8BOHVSd7gmy4C6SKRmmPpDNnTukiQWa0ZZKag6N
         XGqBJXn2mJQ0tYRoiOklQ0Dypf/e7G2Nh71ds=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718061196; x=1718665996;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=80Xh+Vh3yh9xgeTxhbIUUzrNknmvID5bS5+p3HsnN0o=;
        b=YnVrdAtx5dO/gRuLOkFp4P2ixGZCk8Yhdppy/2jN+BkPY0Ez5yjTWhNJI4fZDChavF
         ggraR2TY/ykX2qV4ChuDA7gNQtGwrUBnUX4gZHbJkTUNEEV9aKO586O1XrKO++uHwMfl
         g0RR2gtAAonxTDTvbOGRlyLVFMaZ5d1sfYICfr6EvVxL7ug4lpZsf0c5mikvZ4TYJgs4
         wFTezkAPQU7FhxK4HAYG6CKp1Bhyl7CUu6frZVl00WbgOwmYg/kwYZ80osuPyBobfXYo
         pPkXFH1/W1P717i5ueqwa7yXp1Q7fXTvPvxPMIqRMGhad3xSWQmj8cYH9ZTS32fk8a12
         Sr5Q==
X-Gm-Message-State: AOJu0Ywis1O9sM1Cc3v3nYrvzwhO9vZzKc/QtpxBheKMYOcqxRd1hc6T
	zDGbzNQnhKMkhBx/UlVYMpTzDIkmzs28/gRlEE6eoEJOp4RjIR+E1OXy7YW5u6A+5rHZOpJtg7J
	a
X-Google-Smtp-Source: AGHT+IFRVScfdRMWqL0Y1e6lVdxXyVfqVhaAsbQd5OBJpcnBNPSUIUlJWBMZroBCiBJo380SG1rV+g==
X-Received: by 2002:a17:902:e810:b0:1f7:175a:699b with SMTP id d9443c01a7336-1f7175a6b9fmr35232035ad.3.1718061195875;
        Mon, 10 Jun 2024 16:13:15 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f6ff937456sm39378615ad.243.2024.06.10.16.13.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 16:13:15 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Joe Damato <jdamato@fastly.com>
Subject: [PATCH v2 1/1] ioctl_epoll.2: New page describing epoll ioctl(2)
Date: Mon, 10 Jun 2024 23:12:06 +0000
Message-Id: <20240610231206.1788738-2-jdamato@fastly.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240610231206.1788738-1-jdamato@fastly.com>
References: <20240610231206.1788738-1-jdamato@fastly.com>
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
 man/man2/ioctl_epoll.2            | 171 ++++++++++++++++++++++++++++++
 man/man2const/EPIOCGPARAMS.2const |   1 +
 man/man2const/EPIOCSPARAMS.2const |   1 +
 man/man7/epoll.7                  |   1 +
 7 files changed, 177 insertions(+)
 create mode 100644 man/man2/ioctl_epoll.2
 create mode 100644 man/man2const/EPIOCGPARAMS.2const
 create mode 100644 man/man2const/EPIOCSPARAMS.2const

diff --git a/man/man2/epoll_create.2 b/man/man2/epoll_create.2
index f0327e8ba..2aa1745f5 100644
--- a/man/man2/epoll_create.2
+++ b/man/man2/epoll_create.2
@@ -141,4 +141,5 @@ on overrun.
 .BR close (2),
 .BR epoll_ctl (2),
 .BR epoll_wait (2),
+.BR ioctl_epoll (2),
 .BR epoll (7)
diff --git a/man/man2/epoll_ctl.2 b/man/man2/epoll_ctl.2
index 6d5bc032e..24bbe7405 100644
--- a/man/man2/epoll_ctl.2
+++ b/man/man2/epoll_ctl.2
@@ -425,5 +425,6 @@ flag.
 .SH SEE ALSO
 .BR epoll_create (2),
 .BR epoll_wait (2),
+.BR ioctl_epoll (2),
 .BR poll (2),
 .BR epoll (7)
diff --git a/man/man2/ioctl.2 b/man/man2/ioctl.2
index 5b8c28a9c..d96777d1f 100644
--- a/man/man2/ioctl.2
+++ b/man/man2/ioctl.2
@@ -225,6 +225,7 @@ for the various architectures.
 .BR ioctl_ns (2),
 .BR ioctl_tty (2),
 .BR ioctl_userfaultfd (2),
+.BR ioctl_epoll (2),
 .BR open (2),
 .\" .BR mt (4),
 .BR sd (4),
diff --git a/man/man2/ioctl_epoll.2 b/man/man2/ioctl_epoll.2
new file mode 100644
index 000000000..458e72e9a
--- /dev/null
+++ b/man/man2/ioctl_epoll.2
@@ -0,0 +1,171 @@
+.\" Copyright (c) 2024, Joe Damato
+.\" Written by Joe Damato <jdamato@fastly.com>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH ioctl_epoll 2 (date) "Linux man-pages (unreleased)"
+.SH NAME
+ioctl_epoll \- ioctl() operations for epoll file descriptors
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " \-lc )
+.SH SYNOPSIS
+.EX
+.BR "#include <linux/eventpoll.h>" "  /* Definition of " EPIOC* " constants and struct epoll_params */"
+.B "#include <sys/ioctl.h>"
+.P
+.BI "int ioctl(int " fd ", EPIOCSPARAMS, const struct epoll_params *" argp );
+.BI "int ioctl(int " fd ", EPIOCGPARAMS, struct epoll_params *" argp );
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
+structure to configure the operation of epoll. Refer to the structure
+description below to learn what configuration is
+supported.
+.TP
+.B EPIOCGPARAMS
+Get the current
+.I epoll_params
+configuration settings.
+.TP
+All
+.BR ioctl (2)
+operations documented above must be performed on an epoll file descriptor,
+which can be created with a call to
+.BR epoll_create (2)
+or
+.BR epoll_create1 (2).
+.\" kernel commit 18e2bf0edf4dd88d9656ec92395aa47392e85b61
+.\" glibc commit 92c270d32caf3f8d5a02b8e46c7ec5d9d0315158
+.P
+.I argp.busy_poll_usecs
+field denotes the number of microseconds that the network stack will busy
+poll. During this time period, the network device will be polled
+repeatedly for packets. This value cannot exceed
+.B INT_MAX.
+.in
+.P
+.I argp.busy_poll_budget
+field denotes the maximum number of packets that the network stack will
+retrieve on each poll attempt. This value cannot exceed
+.B NAPI_POLL_WEIGHT
+which, as of Linux 6.9, is 64, unless the process is run with
+.B CAP_NET_ADMIN.
+.P
+.I argp.prefer_busy_poll
+field is a boolean field and must be either 0 (disabled) or 1 (enabled). If
+enabled, this indicates to the network stack that busy poll is the
+preferred method of processing network data and the network stack should
+give the application the opportunity to busy poll. Without this option,
+very busy systems may continue to do network processing via the normal
+method of IRQs triggering softIRQ and NAPI.
+.P
+.I argp.__pad
+must be zero.
+.P
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
+.I op
+specified is invalid.
+.TP
+.B EINVAL
+.I argp.__pad
+was not zero.
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
+.B NAPI_POLL_WEIGHT
+(which is 64 as of Linux 6.9).
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
+fprintf(stderr, "epoll usecs: %lu\\n", params.busy_poll_usecs);
+fprintf(stderr, "epoll packet budget: %u\\n", params.busy_poll_budget);
+fprintf(stderr, "epoll prefer busy poll: %u\\n", params.prefer_busy_poll);
+\&
+.SH History
+Linux 6.9, glibc 2.40.
+.SH SEE ALSO
+.BR ioctl (2),
+.BR epoll_create (2),
+.BR epoll_create1 (2),
+.BR epoll (7)
+.P
+.I linux.git/Documentation/networking/napi.rst
+.P
+and
+.P
+.I linux.git/Documentation/admin-guide/sysctl/net.rst
diff --git a/man/man2const/EPIOCGPARAMS.2const b/man/man2const/EPIOCGPARAMS.2const
new file mode 100644
index 000000000..6fbc5f0f8
--- /dev/null
+++ b/man/man2const/EPIOCGPARAMS.2const
@@ -0,0 +1 @@
+.so man2/ioctl_epoll.2
diff --git a/man/man2const/EPIOCSPARAMS.2const b/man/man2const/EPIOCSPARAMS.2const
new file mode 100644
index 000000000..6fbc5f0f8
--- /dev/null
+++ b/man/man2const/EPIOCSPARAMS.2const
@@ -0,0 +1 @@
+.so man2/ioctl_epoll.2
diff --git a/man/man7/epoll.7 b/man/man7/epoll.7
index e7892922e..4ad032bdd 100644
--- a/man/man7/epoll.7
+++ b/man/man7/epoll.7
@@ -606,5 +606,6 @@ is present in an epoll instance.
 .BR epoll_create1 (2),
 .BR epoll_ctl (2),
 .BR epoll_wait (2),
+.BR ioctl_epoll (2),
 .BR poll (2),
 .BR select (2)
-- 
2.34.1


