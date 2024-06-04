Return-Path: <linux-man+bounces-1030-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D7D8FBB6F
	for <lists+linux-man@lfdr.de>; Tue,  4 Jun 2024 20:19:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8CC772819D6
	for <lists+linux-man@lfdr.de>; Tue,  4 Jun 2024 18:19:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EED314A4CC;
	Tue,  4 Jun 2024 18:19:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="TqXRnrJN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A0014A612
	for <linux-man@vger.kernel.org>; Tue,  4 Jun 2024 18:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717525151; cv=none; b=q7BCpU4LzNCybniGsm1m/wquA+kBQbpPIu9j69hEmwgq8Ce1BDhvLUh/eulyeIhREpECKS6RWE67Lhdpted8R3UvSld3mGyx9GMnYWYxwZrXDB/r3LytejYg8O/sOrKR5xtIlil3LkPc7/KRX4fXtEPsXNbXrXAgfFkU3Pjkpfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717525151; c=relaxed/simple;
	bh=HKvG0DuFifieBoGhydCYDgh7c9p1hMpByLECwgakdQM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NOh0ft6ylxMeODkAi8/1DTM0tiOZaQo+CRlhXrGL4JJwiCv2wdNgz2FNHc2B0z1oFHDTBtdk7QV5z/2/T+Fwye9AZMSRjte+9pJvPY0fFbLbOktYv1qC3IdP9VE17uCO2aZN8nl5g+JwxCMeRTnfV6xNaie1EKwMygEWfM2s2wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=TqXRnrJN; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7024426c75dso3982944b3a.1
        for <linux-man@vger.kernel.org>; Tue, 04 Jun 2024 11:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1717525149; x=1718129949; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+QAQ6IBvqgRMWpQaCm+8wqXc7eR4T/mskHvGQbmJ2sM=;
        b=TqXRnrJNkTxZPUZMpXnK3YY79KRzEDDo6YYfyWCa00xBB/qXb2njx/VQCjEXACROX4
         cNjFwxABjIP0Vncu4BzFe+Tmgwq90ZLylydUCuBro/nEhdQ8Jjwsc3qMtXt2JcPhXpoN
         10ggnbAyk2Vw50HDO6JWz73as1Pv12+gGKyC0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717525149; x=1718129949;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+QAQ6IBvqgRMWpQaCm+8wqXc7eR4T/mskHvGQbmJ2sM=;
        b=WK1+R29Vc2Dp9F0VcRl91lXxkFurWSDDZiCYOeOunQgSfjkuTuodoNyFw4zGbbOcPS
         ZQRltkcOh3hISdoRIhF5NdISR2HZfhFl7QT86D7bwmg8hCV7f1OppxK7SDu16ZqE20LV
         aT3toXRLhS/Qg9skoS3ULGpHDCAbxJ189Z9mg9S3r26BdbHzoNC+8wcdQrslHYifkTWM
         dfnIJv2enQ8M7Tn7s8RrxZ0MWdwMtVtQCFx1cxPm+WxLf0jQwYhOW6X/DLZiYSer03VE
         ffXAhG2kXtynYftffod4vvO97l2ut47GVDhMWQM1FB0IF4wpXUSRBRfVUhLMN0LkMNw5
         rNAg==
X-Gm-Message-State: AOJu0Yw95rQtOBbQzkMS/yYzIvFGlZratysmxGnQA30o0Eh/uJjLvS7j
	j2PiVDZ257jrOk5JCtB0j/HempvYYPMpoJ4P8+l0Q9xrOJWfWl6NnR5ZJlTERwvIYhdyuCKAl3e
	P
X-Google-Smtp-Source: AGHT+IEGKMcxQIGi0VsIbe5/mUJgObViIHjx8nu2H+VrViXjUs//r1JhJBg9qjR0qY7VRVDJufBprg==
X-Received: by 2002:a05:6a20:1590:b0:1af:dc40:bb34 with SMTP id adf61e73a8af0-1b2b6ebace9mr512932637.18.1717525149364;
        Tue, 04 Jun 2024 11:19:09 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70242b13550sm7314604b3a.182.2024.06.04.11.19.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 11:19:08 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Joe Damato <jdamato@fastly.com>
Subject: [PATCH 1/1] ioctl_epoll.2: New page describing ioctl(2) operations for epoll fds
Date: Tue,  4 Jun 2024 18:17:40 +0000
Message-Id: <20240604181740.1741860-2-jdamato@fastly.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240604181740.1741860-1-jdamato@fastly.com>
References: <20240604181740.1741860-1-jdamato@fastly.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 man/man2/epoll_create.2 |   1 +
 man/man2/epoll_ctl.2    |   1 +
 man/man2/ioctl_epoll.2  | 203 ++++++++++++++++++++++++++++++++++++++++
 man/man7/epoll.7        |   1 +
 4 files changed, 206 insertions(+)
 create mode 100644 man/man2/ioctl_epoll.2

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
diff --git a/man/man2/ioctl_epoll.2 b/man/man2/ioctl_epoll.2
new file mode 100644
index 000000000..1d53f458e
--- /dev/null
+++ b/man/man2/ioctl_epoll.2
@@ -0,0 +1,203 @@
+.\" Copyright (c) 2024, Joe Damato
+.\" Written by Joe Damato <jdamato@fastly.com>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.\"
+.TH ioctl_epoll 2 (date) "Linux man-pages (unreleased)"
+.SH NAME
+ioctl_epoll \- ioctl() operations for epoll file descriptors
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " \-lc )
+.SH SYNOPSIS
+.nf
+.BR "#include <linux/eventpoll.h>" "  /* Definition of " EPIOC* " constants and struct epoll_params */"
+.B "#include <sys/ioctl.h>"
+.P
+.BI "int ioctl(int " fd ", int " op ", void " *argp ");"
+.fi
+.SH DESCRIPTION
+Various
+.BR ioctl (2)
+operations can be performed on an epoll file descriptor (created by a call
+to
+.BR epoll_create (2))
+(since Linux 6.9 and glibc 2.40) using calls of the form:
+.\" commit 18e2bf0edf4dd88d9656ec92395aa47392e85b61
+.\" glibc commit 92c270d32caf3f8d5a02b8e46c7ec5d9d0315158
+.P
+.in +4n
+.EX
+ioctl(fd, op, argp);
+.EE
+.in
+.P
+In the above,
+.I fd
+is a file descriptor referring to an epoll file descriptor obtained with a
+call to
+.BR epoll_create (2).
+.I op
+is one of the operations listed below, and
+.I argp
+is a pointer to the data structure described below.
+.\"
+.P
+All supported
+.I op
+values (described below) use an
+.I argp
+argument which is a pointer to a
+.I epoll_params
+structure, defined as:
+.P
+.in +4n
+.EX
+struct epoll_params {
+    uint32_t busy_poll_usecs;   /* Number of usecs to busy poll */
+    uint16_t busy_poll_budget;  /* Maximum number of packets to retrieve per poll */
+    uint8_t prefer_busy_poll;   /* Boolean to enable or disable prefer busy poll  */
+
+    /* pad the struct to a multiple of 64bits */
+    uint8_t __pad;              /* Must be zero */
+};
+.EE
+.in
+.P
+The
+.I busy_poll_usecs
+field denotes the number of microseconds that the network stack will busy
+poll. During this time period, the network device will be polled
+repeatedly. This value cannot exceed
+.B INT_MAX .
+.in
+.P
+The
+.I busy_poll_budget
+field denotes the maximum number of packets that the network stack will
+be retrieved on each poll attempt. This value cannot exceed
+.B NAPI_POLL_WEIGHT
+which, as of Linux 6.9, is 64, unless the process is run with
+.B CAP_NET_ADMIN .
+.P
+The
+.I prefer_busy_poll
+field is a boolean field and must be either 0 (disabled) or 1 (enabled). If
+enabled, this indicates to the network stack that busy poll is the
+preferred method of processing network data and the network stack should
+give the application the opportunity to busy poll. Without this option,
+very busy systems may continue to do network processing via the normal
+method of IRQs triggering softIRQ and NAPI.
+.P
+The supported
+.I op
+values:
+.TP
+.B EPIOCSPARAMS
+This operation allows the caller to specify an
+.I epoll_params
+structure to configure the operation of epoll. Refer to the structure
+description of the structure above to learn what configuration is
+supported.
+.TP
+.B EPIOCGPARAMS
+This operation allows the caller to retrieve the current
+.I epoll_params
+structure. This can be used to determine what the current settings are.
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
+.B ENOIOCTLCMD
+The specified
+.I op
+is invalid.
+.TP
+.B EINVAL
+The
+.I fd
+specified is not an epoll file descriptor, or the
+.I op
+specified is invalid, or the
+.I __pad
+was not initialized to zero, or
+.I busy_poll_usecs
+exceeds
+.B INT_MAX ,
+or
+.I prefer_busy_poll
+is not 0 or 1.
+.TP
+.B EPERM
+The process is being run without
+.I CAP_NET_ADMIN
+and the specified
+.I busy_poll_budget
+exceeds
+.I NAPI_POLL_WEIGHT
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
+Linux 6.9.
+glibc 2.40.
+.SH SEE ALSO
+.BR ioctl (2),
+.BR epoll_create (2),
+.BR epoll_create1 (2),
+.BR epoll (7)
+.P
+.I Documentation/networking/napi.rst
+.P
+and
+.P
+.I Documentation/admin-guide/sysctl/net.rst
+.P
+in the Linux kernel source tree
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


