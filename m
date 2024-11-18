Return-Path: <linux-man+bounces-2042-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 523839D18DA
	for <lists+linux-man@lfdr.de>; Mon, 18 Nov 2024 20:26:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CF3791F22336
	for <lists+linux-man@lfdr.de>; Mon, 18 Nov 2024 19:26:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ED071E47DA;
	Mon, 18 Nov 2024 19:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=juszkiewicz.com.pl header.i=@juszkiewicz.com.pl header.b="tbxdbluW";
	dkim=pass (2048-bit key) header.d=juszkiewicz.com.pl header.i=@juszkiewicz.com.pl header.b="JJ4McGNJ"
X-Original-To: linux-man@vger.kernel.org
Received: from haruka.juszkiewicz.com.pl (haruka.juszkiewicz.com.pl [185.243.53.191])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AC11E0DFC
	for <linux-man@vger.kernel.org>; Mon, 18 Nov 2024 19:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.243.53.191
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731957988; cv=none; b=XlSz+11KAp+RCaBtxSWN2kH/ZoJXw2lMjJdSALb9htxbbX9pTYc0GmGSLwm6RbnMxNKMjk551GNgYyGUd5uf9rFOUlVNFinje3PMX3z/fiTa7Poj1lm/oJsd6DV+8AIB51RoHehTBaCW0YCPHVqjH3IeBFDXrOeY7gRCMEdhPLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731957988; c=relaxed/simple;
	bh=BeS4F7p6MGQkCpBO8/NzHiURDbXbyyoJPR6wns0JF1o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SoLBjq7aCsTEr8lIgVf9bufzv1upcm4igYax57OmIXy8HAz/ucl+wBPlpxvig1JmLLBVxMMWbNSpDhjCWqOCQu3/dBhyE8wU+QVbSF2XZtW/7+pASQbWh7/ZkISGrTWfJ3eJnV0GIlOxYE2zHCN9OLC8Th+Z4kt1+kDkkdqFSbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=juszkiewicz.com.pl; spf=pass smtp.mailfrom=juszkiewicz.com.pl; dkim=pass (2048-bit key) header.d=juszkiewicz.com.pl header.i=@juszkiewicz.com.pl header.b=tbxdbluW; dkim=pass (2048-bit key) header.d=juszkiewicz.com.pl header.i=@juszkiewicz.com.pl header.b=JJ4McGNJ; arc=none smtp.client-ip=185.243.53.191
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=juszkiewicz.com.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=juszkiewicz.com.pl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=juszkiewicz.com.pl;
	s=mail; t=1731957405;
	bh=BeS4F7p6MGQkCpBO8/NzHiURDbXbyyoJPR6wns0JF1o=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=tbxdbluWSX2Sou2DSbjUbFxbXk7OEsa7q79unhcccajOa7T9bt7uI5Qg7raKdL64e
	 kK/gcpZUo0VELD1wRMPkLk2QH23e6thYAUhJ3lD0vijRkfrE2M5nVp8fpad6Cu70IG
	 AvYf/bJPoxMfifuzzhw4tio9LBqLnJ35jeDqDENQ9LT+4oaLfwQC54uBcAPqhBPsdx
	 Pb3Y0HS6ytC+cfcretgRw+uEHI+skl6hx7VBSpmJ4EyawDph/ySsOwgZYFMI35ANgU
	 5jcLsoB/V/8JdMLs5+UkbLcIsaMmpllwuC5tvGiyLNt135oMW5xmpkPeJPrXeM7X6H
	 xwZhtTB7JHqAQ==
Received: from utena.juszkiewicz.com.pl (utena.juszkiewicz.com.pl [158.101.208.177])
	by haruka.juszkiewicz.com.pl (Postfix) with ESMTPSA id E56E12297D;
	Mon, 18 Nov 2024 20:16:44 +0100 (CET)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id BC4894132E;
	Mon, 18 Nov 2024 20:16:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=juszkiewicz.com.pl;
	s=mail; t=1731957404;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+enKxBz/xm6/v6mIO6J3NrTKOnD2ABEIG47+bHSsVOo=;
	b=JJ4McGNJhhlH6vMib62ZVzc/RH6Ntiok4azdK5aGCsp9zPB5d71+aCSr72cck2RMbZs1Pi
	d0lLH+m7XgtC5T0NM9wvKOHd+iOdinfXZTUtfYI5WmjNPVbXaW1c+u1Y3BM3phnXg+dFIr
	JkiEtYsMjRELTdS06je1GhuxriHRM2ytatICVnlB5hDnpxHCCapVwiN1F8tg+uZi3Z82ty
	UnN5JXb1Q5Bv/73pmG9zzl07z6BUeSiw93R+K1y7p4xpIJTAyiriusOUyurRpFGfbQ+kAd
	1YLxgwxKxlqjxylhWf5JRyVCVbPBleZ0zbuRKafJ9SAfp9LN6Oq+J2pbbE9LEg==
From: Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>
To: Alejandro Colomar <alx@kernel.org>
Cc: Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>,
	linux-man@vger.kernel.org
Subject: [PATCH] add time64 copies of system calls
Date: Mon, 18 Nov 2024 20:16:24 +0100
Message-ID: <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>
References: <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

During work on y2038 problem several time related system calls got "64"
or "_time64" copies. It happened only on 32-bit architectures as there
was no problem on 64-bit ones.

Signed-off-by: Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>
---
 man/man2/clock_adjtime64.2              | 1 +
 man/man2/clock_getres64.2               | 1 +
 man/man2/clock_gettime64.2              | 1 +
 man/man2/clock_nanosleep_time64.2       | 1 +
 man/man2/clock_settime64.2              | 1 +
 man/man2/futex_time64.2                 | 1 +
 man/man2/mq_timedreceive_time64.2       | 2 ++
 man/man2/mq_timedsend_time64.2          | 2 ++
 man/man2/ppoll_time64.2                 | 1 +
 man/man2/pselect6_time64.2              | 1 +
 man/man2/recvmmsg_time64.2              | 1 +
 man/man2/rt_sigtimedwait_time64.2       | 1 +
 man/man2/sched_rr_get_interval_time64.2 | 1 +
 man/man2/semtimedop_time64.2            | 1 +
 man/man2/timer_gettime64.2              | 1 +
 man/man2/timer_settime64.2              | 1 +
 man/man2/timerfd_gettime64.2            | 1 +
 man/man2/timerfd_settime64.2            | 1 +
 man/man2/utimensat_time64.2             | 1 +
 19 files changed, 21 insertions(+)
 create mode 100644 man/man2/clock_adjtime64.2
 create mode 100644 man/man2/clock_getres64.2
 create mode 100644 man/man2/clock_gettime64.2
 create mode 100644 man/man2/clock_nanosleep_time64.2
 create mode 100644 man/man2/clock_settime64.2
 create mode 100644 man/man2/futex_time64.2
 create mode 100644 man/man2/mq_timedreceive_time64.2
 create mode 100644 man/man2/mq_timedsend_time64.2
 create mode 100644 man/man2/ppoll_time64.2
 create mode 100644 man/man2/pselect6_time64.2
 create mode 100644 man/man2/recvmmsg_time64.2
 create mode 100644 man/man2/rt_sigtimedwait_time64.2
 create mode 100644 man/man2/sched_rr_get_interval_time64.2
 create mode 100644 man/man2/semtimedop_time64.2
 create mode 100644 man/man2/timer_gettime64.2
 create mode 100644 man/man2/timer_settime64.2
 create mode 100644 man/man2/timerfd_gettime64.2
 create mode 100644 man/man2/timerfd_settime64.2
 create mode 100644 man/man2/utimensat_time64.2

diff --git a/man/man2/clock_adjtime64.2 b/man/man2/clock_adjtime64.2
new file mode 100644
index 000000000..b08b9c801
--- /dev/null
+++ b/man/man2/clock_adjtime64.2
@@ -0,0 +1 @@
+.so man2/adjtimex.2
diff --git a/man/man2/clock_getres64.2 b/man/man2/clock_getres64.2
new file mode 100644
index 000000000..5a599b4b9
--- /dev/null
+++ b/man/man2/clock_getres64.2
@@ -0,0 +1 @@
+.so man2/clock_getres.2
diff --git a/man/man2/clock_gettime64.2 b/man/man2/clock_gettime64.2
new file mode 100644
index 000000000..5a599b4b9
--- /dev/null
+++ b/man/man2/clock_gettime64.2
@@ -0,0 +1 @@
+.so man2/clock_getres.2
diff --git a/man/man2/clock_nanosleep_time64.2 b/man/man2/clock_nanosleep_time64.2
new file mode 100644
index 000000000..b69e18aaa
--- /dev/null
+++ b/man/man2/clock_nanosleep_time64.2
@@ -0,0 +1 @@
+.so man2/clock_nanosleep.2
diff --git a/man/man2/clock_settime64.2 b/man/man2/clock_settime64.2
new file mode 100644
index 000000000..5a599b4b9
--- /dev/null
+++ b/man/man2/clock_settime64.2
@@ -0,0 +1 @@
+.so man2/clock_getres.2
diff --git a/man/man2/futex_time64.2 b/man/man2/futex_time64.2
new file mode 100644
index 000000000..5dbcdeae1
--- /dev/null
+++ b/man/man2/futex_time64.2
@@ -0,0 +1 @@
+.so man2/futex.2
diff --git a/man/man2/mq_timedreceive_time64.2 b/man/man2/mq_timedreceive_time64.2
new file mode 100644
index 000000000..b4184f8c2
--- /dev/null
+++ b/man/man2/mq_timedreceive_time64.2
@@ -0,0 +1,2 @@
+.so man3/mq_timedreceive.3
+.\" Because mq_timedreceive(3) is layered on a system call of the same name
diff --git a/man/man2/mq_timedsend_time64.2 b/man/man2/mq_timedsend_time64.2
new file mode 100644
index 000000000..db95863ad
--- /dev/null
+++ b/man/man2/mq_timedsend_time64.2
@@ -0,0 +1,2 @@
+.so man3/mq_timedsend.3
+.\" Because mq_timedsend(3) is layered on a system call of the same name
diff --git a/man/man2/ppoll_time64.2 b/man/man2/ppoll_time64.2
new file mode 100644
index 000000000..227cd0e47
--- /dev/null
+++ b/man/man2/ppoll_time64.2
@@ -0,0 +1 @@
+.so man2/poll.2
diff --git a/man/man2/pselect6_time64.2 b/man/man2/pselect6_time64.2
new file mode 100644
index 000000000..e17784318
--- /dev/null
+++ b/man/man2/pselect6_time64.2
@@ -0,0 +1 @@
+.so man2/select.2
diff --git a/man/man2/recvmmsg_time64.2 b/man/man2/recvmmsg_time64.2
new file mode 100644
index 000000000..8b9c14ff3
--- /dev/null
+++ b/man/man2/recvmmsg_time64.2
@@ -0,0 +1 @@
+.so man2/recvmmsg.2
diff --git a/man/man2/rt_sigtimedwait_time64.2 b/man/man2/rt_sigtimedwait_time64.2
new file mode 100644
index 000000000..ca098e5fc
--- /dev/null
+++ b/man/man2/rt_sigtimedwait_time64.2
@@ -0,0 +1 @@
+.so man2/sigtimedwait.2
diff --git a/man/man2/sched_rr_get_interval_time64.2 b/man/man2/sched_rr_get_interval_time64.2
new file mode 100644
index 000000000..27c946363
--- /dev/null
+++ b/man/man2/sched_rr_get_interval_time64.2
@@ -0,0 +1 @@
+.so man2/sched_rr_get_interval.2
diff --git a/man/man2/semtimedop_time64.2 b/man/man2/semtimedop_time64.2
new file mode 100644
index 000000000..8a4061874
--- /dev/null
+++ b/man/man2/semtimedop_time64.2
@@ -0,0 +1 @@
+.so man2/semop.2
diff --git a/man/man2/timer_gettime64.2 b/man/man2/timer_gettime64.2
new file mode 100644
index 000000000..42015ca6b
--- /dev/null
+++ b/man/man2/timer_gettime64.2
@@ -0,0 +1 @@
+.so man2/timer_settime.2
diff --git a/man/man2/timer_settime64.2 b/man/man2/timer_settime64.2
new file mode 100644
index 000000000..42015ca6b
--- /dev/null
+++ b/man/man2/timer_settime64.2
@@ -0,0 +1 @@
+.so man2/timer_settime.2
diff --git a/man/man2/timerfd_gettime64.2 b/man/man2/timerfd_gettime64.2
new file mode 100644
index 000000000..6d1294048
--- /dev/null
+++ b/man/man2/timerfd_gettime64.2
@@ -0,0 +1 @@
+.so man2/timerfd_create.2
diff --git a/man/man2/timerfd_settime64.2 b/man/man2/timerfd_settime64.2
new file mode 100644
index 000000000..6d1294048
--- /dev/null
+++ b/man/man2/timerfd_settime64.2
@@ -0,0 +1 @@
+.so man2/timerfd_create.2
diff --git a/man/man2/utimensat_time64.2 b/man/man2/utimensat_time64.2
new file mode 100644
index 000000000..a365c7b53
--- /dev/null
+++ b/man/man2/utimensat_time64.2
@@ -0,0 +1 @@
+.so man2/utimensat.2
-- 
2.47.0


