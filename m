Return-Path: <linux-man+bounces-2341-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 03986A25EC2
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 16:31:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 32E471882B71
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 15:31:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 154B4433A4;
	Mon,  3 Feb 2025 15:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b="dO0y/lk4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtpbgeu1.qq.com (smtpbgeu1.qq.com [52.59.177.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E73209F5F
	for <linux-man@vger.kernel.org>; Mon,  3 Feb 2025 15:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=52.59.177.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738596685; cv=none; b=O+8wT3HRpzh3xIA71VUkJkLmVuSPbFBQjK9XZjPJK6PjIQBnrMYIGuNJRE/4sFcYkVMdFhBrpLej5cxaOFnpttgX2D5xhZp50E7+U2ITUd7+2UKOKyvhg6QhWvAjFlHwWXezh7WwDQ0sLdCsMqEZUNMobMWSzgaK+QYs1iD0e4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738596685; c=relaxed/simple;
	bh=gPm87tYPKY3hHvWbJ1H3u5V97lpjMLc9oNRW/XIbfAg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dvkH8hU82E5MjasHs88MM2+sSgYlzSNBvJvEh4+nG2up7ha8jjPH7U2OvHWtpjCJOtK5/bbQU09xcNTbp6n+S1CIf2NIMdBvVMZ9IiwN+nMD2rqEw3dZmStQKSKsqifsxZHqWSZtrYN0fllkapHZ9uOKFvuLqGRVSK9+P9KKUH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com; spf=pass smtp.mailfrom=uniontech.com; dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b=dO0y/lk4; arc=none smtp.client-ip=52.59.177.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=uniontech.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uniontech.com;
	s=onoh2408; t=1738596657;
	bh=iMLEiw0G3XA9JZuPTRmj3HhCkwgu34ULbXZhVrVHOFw=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=dO0y/lk4vTrdNjxU4h4e9RPfHhFS3RWctZBy9obQweUOZl4bDZ+FSyZqN6Pe/6OEi
	 AKWzrMe+EU3gb/wGNsc2/c3azFykbfJ7f/3xjubxi5irgTBOY36kC20MhzQgQd+c7G
	 DEZD7qTVviPA4nHd9z/EzArkYzYp+2rox5HqLbjY=
X-QQ-mid: bizesmtp85t1738596652t7ime7wz
X-QQ-Originating-IP: nuf+s+8o1IJ9eplHRjn8zQcyWPBeYV3z11qe7Gz4IA8=
Received: from localhost.localdomain ( [220.250.46.165])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 03 Feb 2025 23:30:51 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 9131855832084950591
From: Chen Linxuan <chenlinxuan@uniontech.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Chen Linxuan <chenlinxuan@uniontech.com>,
	"Eric W . Biederman" <ebiederm@xmission.com>
Subject: [PATCH v2] man/man2/clone.2: Use munmap() to free child stack
Date: Mon,  3 Feb 2025 23:30:05 +0800
Message-ID: <A6B3C875B683B1DD+20250203153004.70234-2-chenlinxuan@uniontech.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybglogicsvrgz:qybglogicsvrgz5a-1
X-QQ-XMAILINFO: NpkqIJajMatoN7tSyxBDAR27KdXMJONEaHgBg9G6yrTxt7C5NGajbJg/
	ks8FT6AGZbHwnpNuyYsRIGB28Ek4vZpA1SeAw449jVe0j9oIMYpJKkdqH3/6uongEpdFYgX
	SQci3luGi0n0MARhWSo+FgC8BCsVNEjZg8tawPPRPMW7V3rSV856m83w7967kW8Mf7ijh1F
	330RsLZjhmKzUhgWg6XRGX6B4JhZLg/QqSD5MyBXuxJ9QcjF4yl0VSRXjPRFhVE7Alyy1U8
	q25WCCkMchL4M072INebPrGS+7H/lwebRwkJ8kAT0jQieuFe3WkPiIwe9syofrGh6R8ORZY
	5VhX6aZqIAGyO3KlrCe5XiB0TRTa9AT1OEgfxcHwQAkX+wyHOp26Sh2UPA+nsp/MZBjYceZ
	dh5IgKjrqAmSqV707xNi3Znd3J/0Wbj33mseCZWn0bz6ZIbMAMFNqAzSXmTEiXMa04mtB5y
	1r08Q+7lUwsuUXILCauGD4tL2wRCMcqv+U1+CuHguRCnf9GuJSXjLu9Nk2rg58v//P9gq51
	Vj3/DNlYLGnrD9LOUTa1Vv6lP9mZAp6S9P61AE0YfV0eNXXNxCK+Szb9JN/EbHbR8FkNtQN
	mAPL6VeHtDPHwb8Mcr45OJ+EHnuRAVf0ilQjJn7VMJYsFjU3jetNQ9iF14ZVQgZ2sF8S+xJ
	DaubG8NxkjGlRIAvoccrYQqpCRksM0POuJ6J5U7cH20GxP9XNtghUbu+fOX9CuJm/0+f1+q
	0gTdSpagw2hcxxoIP8eCKlB1EIZGbBQC8Riee8550n7IZGrY0bDhjyKO4ssz9w5E+GAKksM
	+IydT1vojvzGPeJJ2biiZPk3Qdb0scqkaDVre+gv6UUiAgc7/BhIp325xOVntlNKOHVVIqL
	np1uu2BcgMG42l4UsmU28/NNI4USY+cHFd1tSfNxNqPTFi69e7M4Y09RJEj9w1JS5U407kS
	ZxxuF0wY+TK141S1/EUob9Ia8NMxbwdqX8LUtr2GOWz90CbjF2uvKJ9HyhAf1PLaSgzGm51
	yt1nCT7ETTA4z2+Wv4xr8zXGcpRLc=
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0

While reading the help manual for clone.2, I notice that the parent
process in the example code does not release the stack of the child
process.

This is not a problem for the example program, but it is somewhat
misleading.

Signed-off-by: Chen Linxuan <chenlinxuan@uniontech.com>
---
 man/man2/clone.2 | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/man/man2/clone.2 b/man/man2/clone.2
index 3ffe8e7b8..cd63fe0b1 100644
--- a/man/man2/clone.2
+++ b/man/man2/clone.2
@@ -1891,6 +1891,7 @@ main(int argc, char *argv[])
     char            *stackTop;      /* End of stack buffer */
     pid_t           pid;
     struct utsname  uts;
+    int savedErrno;
 \&
     if (argc < 2) {
         fprintf(stderr, "Usage: %s <child\-hostname>\[rs]n", argv[0]);
@@ -1910,8 +1911,18 @@ main(int argc, char *argv[])
        child commences execution in childFunc(). */
 \&
     pid = clone(childFunc, stackTop, CLONE_NEWUTS | SIGCHLD, argv[1]);
-    if (pid == \-1)
+\&
+    /* Free child stack, as it is not used by the parent. */
+\&
+    savedErrno = errno;
+    if (munmap(stack, STACK_SIZE)) {
+        warn("munmap");
+    }
+    errno = savedErrno;
+\&
+    if (pid == \-1) {
         err(EXIT_FAILURE, "clone");
+    }
     printf("clone() returned %jd\[rs]n", (intmax_t) pid);
 \&
     /* Parent falls through to here */
-- 
2.43.0


