Return-Path: <linux-man+bounces-3814-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DA91FB3EBFD
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 18:12:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 882F01894829
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 16:12:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E82A62FB625;
	Mon,  1 Sep 2025 16:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="geTNsA+1"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084652EFDA0;
	Mon,  1 Sep 2025 16:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756743042; cv=none; b=GGxhL/wjJg91zFX/BZoOJKi6M+3dNZADJNPRIvBeYisJQMZLWXTRU6kSFdwZuG9e9Hdgxyk14qPdHO+YD1ym9AMvRXit/mDO7pp8raSLu9uQeF5uk13cytRLPyDHUrcPmOCcscKSppHmbC1U0G1r4EqllS8PNnq6YzgG7CxgmIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756743042; c=relaxed/simple;
	bh=7K6o2zszYWNiRVKlGv3YzgED9jhr4TnD0NyMid5UR8Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=D0f5E+mp61PH+iHuyxowBKTmGVKJ69QbLytQLDk5Piqy+uJC52PF9HUVys4nFURCqDSlkc9UuDtWU93AQ+RYlkVPGy12vmzvWeAzx1wBxrTAvHvNJANXL464Nc+K9nJzzFMW4csxk7lq8N+HqIUrxZro/xKHHp50fGdIepjMnxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=geTNsA+1; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7f777836c94so403041685a.2;
        Mon, 01 Sep 2025 09:10:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756743040; x=1757347840; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m2nodLcNRZplFTeJWN+CFsT+xl+niXAxoWKtGPtFk90=;
        b=geTNsA+10NyqX6bcBqHQ5yir0QdTVqLvIXUkBZ4boXqGEV20kl24uiXJz5O5vrSGOk
         7xiYnylswcX3neJf51JNiPA8j3qjyDZUHsP4/jStBU4cd15Aq4fCha327cg9V+dbR7Qv
         kevXg1o8FVIJCq8UXjLzQ7XwpyxM1RXWgbHu2ty26ZJC1RGXvhYX9zMkwOo8+WXreL9N
         lfPZGFelVv/R9FRZTkPChiUIwKs5fAzEREFgcAHxrJr2HZyNXnCURn6XqOKwtOEznwlu
         X6qTYGRxkYNBG8e6NTrulYH1UFhJj/CDTsd+7IUfDP+7RHQi02KJfkovuGtZgWQyoBUi
         On9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756743040; x=1757347840;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m2nodLcNRZplFTeJWN+CFsT+xl+niXAxoWKtGPtFk90=;
        b=gM1J63UCMYwzV2xFtv734UCm8Wv4YQN38F4Zn2o7lt4c45B5eWVGRClx47q89wuz/u
         hLsZNPFUg+whHEjibFouAALQwvcdvbMgLOGalm1espzCFVvlR03sLyxFdW6u7PPsK2y7
         WKIYma3pamocqG8IN8hetb4S/yGSj8LeP1tKGL8Ssd3xCCofIA9vElhQeahoqPF8pi5Z
         beKoWNr9bHSieVm5Sm4gyEStMiaW+oDBmr0WAT6Q0i6XzIZ4Y0zJpyjPvfbUCxZJLa09
         VxZuCOusgLeZQJrihzqIkC+ykIlcjMOmjWAWknfeGy8QWnnOlFt5hMs622wwzPg83uJW
         F1Hg==
X-Forwarded-Encrypted: i=1; AJvYcCWdb0XDcAP3y4ewmQqGTqbIu3lAmc3zz4aCNMV/h9y9h1EGFMto5bp9IJt5Y/6lg65lR9rxNNw4rVTd5HM=@vger.kernel.org
X-Gm-Message-State: AOJu0YzHCHVKG8CytYbCiLc/DrChrPWTkGd+eSu/gaRJLLXWSQzskEmI
	U9yMNEWUUEZU1bJnDU3CPhonYkvzMJg3kWmMCRIUWT1gh3aWILmwl/nb
X-Gm-Gg: ASbGncuaqiJ/XHVrHkOmD/gQq+swRPOekPlugf5KSMym7PqJeWfp8+thUnxGqc0NTCN
	Cv1Gr2rl3nPRHxVYJeaV5lieq/JRWVn+nfeezoYqQzWv2mU9rL4eFgoptMiJWncCGwsYGXWk298
	b8iKqbGV67pvkE6nG0eY6H3sQSTU9vJtWpjBq6RNQI1iDl3sxY2FU3m1wqCTuhNq/8Q60dimVh2
	OD/P8dr6m6wCZvI4pU6pSLBysA3yce5ilKnZxNKfIjSUO6nTRbTs37QDG1+YhCO4inJPMooK9dl
	HreK4N72b1AkN61InClrq24RLrgVe1sgoOYpohtwW4SaAdrY2gy73YhXm0XUAOT2/JZCcy+JeeJ
	iik3v0B0TVkLYxpdt/Uo=
X-Google-Smtp-Source: AGHT+IFPhlHihAARuGxCffUXp7rORQs4i4fLcxmCgsymcnF6anq3dMMvQwgBAKmCpT1c7kxCAEIHzg==
X-Received: by 2002:a05:620a:1a16:b0:7e6:9961:fd27 with SMTP id af79cd13be357-7ff2b97c498mr1088378885a.65.1756743039576;
        Mon, 01 Sep 2025 09:10:39 -0700 (PDT)
Received: from localhost ([2a03:2880:20ff:2::])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7fc16341017sm683721285a.63.2025.09.01.09.10.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 09:10:38 -0700 (PDT)
From: Usama Arif <usamaarif642@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	david@redhat.com,
	lorenzo.stoakes@oracle.com,
	hannes@cmpxchg.org,
	baohua@kernel.org,
	shakeel.butt@linux.dev,
	ziy@nvidia.com,
	laoar.shao@gmail.com,
	baolin.wang@linux.alibaba.com,
	Liam.Howlett@oracle.com,
	linux-kernel@vger.kernel.org,
	kernel-team@meta.com,
	Usama Arif <usamaarif642@gmail.com>
Subject: [PATCH] PR_*ET_THP_DISABLE.2const: document addition of PR_THP_DISABLE_EXCEPT_ADVISED
Date: Mon,  1 Sep 2025 17:09:03 +0100
Message-ID: <20250901160903.2801339-1-usamaarif642@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

PR_THP_DISABLE_EXCEPT_ADVISED extended PR_SET_THP_DISABLE to only provide
THPs when advised. IOW, it allows individual processes to opt-out of THP =
"always" into THP = "madvise", without affecting other workloads on the
system. The series has been merged in [1].

This patch documents the changes introduced due to the addition of
PR_THP_DISABLE_EXCEPT_ADVISED flag:
- PR_GET_THP_DISABLE returns a value whose bits indicate how THP-disable
  is configured for the calling thread (with or without
  PR_THP_DISABLE_EXCEPT_ADVISED).
- PR_SET_THP_DISABLE now uses arg3 to specify whether to disable THP
  completely for the process, or disable except madvise
  (PR_THP_DISABLE_EXCEPT_ADVISED).

[1] https://lore.kernel.org/all/20250815135549.130506-1-usamaarif642@gmail.com/

Signed-off-by: Usama Arif <usamaarif642@gmail.com>
---
 man/man2/madvise.2                      |  4 +-
 man/man2const/PR_GET_THP_DISABLE.2const | 18 ++++++---
 man/man2const/PR_SET_THP_DISABLE.2const | 52 +++++++++++++++++++++----
 3 files changed, 61 insertions(+), 13 deletions(-)

diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
index 10cc21fa4..6a5290f67 100644
--- a/man/man2/madvise.2
+++ b/man/man2/madvise.2
@@ -373,7 +373,9 @@ nor can it be stack memory or backed by a DAX-enabled device
 (unless the DAX device is hot-plugged as System RAM).
 The process must also not have
 .B PR_SET_THP_DISABLE
-set (see
+set without the
+.B PR_THP_DISABLE_EXCEPT_ADVISED
+flag (see
 .BR prctl (2)).
 .IP
 The
diff --git a/man/man2const/PR_GET_THP_DISABLE.2const b/man/man2const/PR_GET_THP_DISABLE.2const
index 38ff3b370..df239700f 100644
--- a/man/man2const/PR_GET_THP_DISABLE.2const
+++ b/man/man2const/PR_GET_THP_DISABLE.2const
@@ -6,7 +6,7 @@
 .SH NAME
 PR_GET_THP_DISABLE
 \-
-get the state of the "THP disable" flag for the calling thread
+get the state of the "THP disable" flags for the calling thread
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
@@ -18,13 +18,21 @@ Standard C library
 .B int prctl(PR_GET_THP_DISABLE, 0L, 0L, 0L, 0L);
 .fi
 .SH DESCRIPTION
-Return the current setting of
-the "THP disable" flag for the calling thread:
-either 1, if the flag is set, or 0, if it is not.
+Returns a value whose bits indicate how THP-disable is configured
+for the calling thread.
+The returned value is interpreted as follows:
+.P
+.nf
+.B "Bits"
+.B " 1 0  Value  Description"
+ 0 0    0    No THP-disable behaviour specified.
+ 0 1    1    THP is entirely disabled for this process.
+ 1 1    3    THP-except-advised mode is set for this process.
+.fi
 .SH RETURN VALUE
 On success,
 .BR PR_GET_THP_DISABLE ,
-returns the boolean value described above.
+returns the value described above.
 On error, \-1 is returned, and
 .I errno
 is set to indicate the error.
diff --git a/man/man2const/PR_SET_THP_DISABLE.2const b/man/man2const/PR_SET_THP_DISABLE.2const
index 564e005d4..9f0f17702 100644
--- a/man/man2const/PR_SET_THP_DISABLE.2const
+++ b/man/man2const/PR_SET_THP_DISABLE.2const
@@ -6,7 +6,7 @@
 .SH NAME
 PR_SET_THP_DISABLE
 \-
-set the state of the "THP disable" flag for the calling thread
+set the state of the "THP disable" flags for the calling thread
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
@@ -15,24 +15,62 @@ Standard C library
 .BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants */"
 .B #include <sys/prctl.h>
 .P
-.BI "int prctl(PR_SET_THP_DISABLE, long " flag ", 0L, 0L, 0L);"
+.BI "int prctl(PR_SET_THP_DISABLE, long " thp_disable ", unsigned long " flags ", 0L, 0L);"
 .fi
 .SH DESCRIPTION
-Set the state of the "THP disable" flag for the calling thread.
+Set the state of the "THP disable" flags for the calling thread.
 If
-.I flag
-has a nonzero value, the flag is set, otherwise it is cleared.
+.I thp_disable
+has a nonzero value, the THP disable flag is set according to the value of
+.I flags,
+otherwise it is cleared.
 .P
-Setting this flag provides a method
+This
+.BR prctl (2)
+provides a method
 for disabling transparent huge pages
 for jobs where the code cannot be modified,
 and using a malloc hook with
 .BR madvise (2)
 is not an option (i.e., statically allocated data).
-The setting of the "THP disable" flag is inherited by a child created via
+The setting of the "THP disable" flags is inherited by a child created via
 .BR fork (2)
 and is preserved across
 .BR execve (2).
+.P
+The behavior depends on the value of
+.IR flags:
+.TP
+.B 0
+The
+.BR prctl (2)
+call will disable THPs completely for the process,
+irrespective of global THP controls or
+.BR MADV_COLLAPSE .
+.TP
+.B PR_THP_DISABLE_EXCEPT_ADVISED
+The
+.BR prctl (2)
+call will disable THPs for the process except when the usage of THPs is
+advised.
+Consequently, THPs will only be used when:
+.RS
+.IP \[bu] 2
+Global THP controls are set to "always" or "madvise" and
+.BR madvise (...,
+.BR MADV_HUGEPAGE )
+or
+.BR madvise (...,
+.BR MADV_COLLAPSE )
+is used.
+.IP \[bu]
+Global THP controls are set to "never" and
+.BR madvise (...,
+.BR MADV_COLLAPSE )
+is used.
+This is the same behavior as if THPs would not be disabled on
+a process level.
+.RE
 .SH RETURN VALUE
 On success,
 0 is returned.
-- 
2.47.3


