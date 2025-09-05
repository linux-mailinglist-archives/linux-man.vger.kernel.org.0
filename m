Return-Path: <linux-man+bounces-3834-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C03B5B458F9
	for <lists+linux-man@lfdr.de>; Fri,  5 Sep 2025 15:29:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 70D6EA62FCF
	for <lists+linux-man@lfdr.de>; Fri,  5 Sep 2025 13:27:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8139028DF0B;
	Fri,  5 Sep 2025 13:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HAXKGkRr"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91F4A352FC9;
	Fri,  5 Sep 2025 13:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757078744; cv=none; b=AAXDGdmPDUKZPVG73h4mq/084QMIKsYXNO85kUQe1l3yt6IpqkVOHn80dMrEBb2pXdN+vxNAKY7jF6jJrxgxzYgEmId+Vn88+TS38t91oFzMqBKNdjnK4Nn5s6zl1Vm/8Og34pk0W83YAGP4fmpeKDZ+VyAAgHrDQgydjkc3Vnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757078744; c=relaxed/simple;
	bh=L4BAOHTwl0ipTwrFZMhJzeSd7efJ8slcz7WfQ3nADVw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EydN5ANbzuHsMuGDMibJ2/RiDjTcUkI3zFztPF2GDHkVUoj/UE/rdKZc27kQD4DFryc1IFtHGGgEklyHgtPpIohF5gkoqdsTzSpB34nNDNNDZVu54eDsBrQkbPNT9z6bsF+zhxAYzC0BcYgfKCvp05zROamdQXHRzZgv1ohGk6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HAXKGkRr; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-722e079fa1aso22625796d6.3;
        Fri, 05 Sep 2025 06:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757078741; x=1757683541; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zJ0T6U/T6UQ1qYc/4ZVKsxkWn4SoWZtNQkL/xv1llDQ=;
        b=HAXKGkRrmJYmJ6NNoEpunwfA97xgZ6DFitAIg3uetWjnR2QWJ45iIKUtg2qFinAkrC
         KQvErDtct5hxF804CaEbtfPDzA56aG7WZAzwfeyhXu1ffbv5xEk9OwQxtawV6Y6CPjIv
         iGph5K2DhugIV3L1TrkN0JbTqYdS9xeFlUzu+MPpTcKwWiHd8MXJlAipkJYiXgDBjfct
         UQ+mjyKlkgbnzFAmDyF5eo16NW7CqTlKmuxPKVPj+ftuu2QlwI6Dmut1mX0fZv8ZsCnx
         29ICsSXIxgo/PZ+AEjlBucytMsfOUFL3okrzaeszECCNtatlrlObOsiRCAaPvJe9frU0
         x2xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757078741; x=1757683541;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zJ0T6U/T6UQ1qYc/4ZVKsxkWn4SoWZtNQkL/xv1llDQ=;
        b=lQPRLMLiSfNE/THX+GHdM6RDhTJKxblmXB3/AaJtVyBqh2zGXwUrKRSWAAzv8Bb6Kr
         PLrlyuO8x802rdQyUduijv08U0RwnMh+ofRWbsa1YZuQWxRSpzf0X6LbIUwGnu5F4wPL
         0JG/OKmkT89Y1WR3UjiabSr5fHe1biu8AXgqZME5MztI12TUOSDOg+70lw516nzIkgQu
         FMlSp0BetMUhHI7YTcW27R5V8o5e6Ozzc5xuqDVMbigmgukXsQaZ3y9tgkjksnRE55ZG
         BmvMtier8M2fvo1xwb5fTmERAxelRbOoWjW5UsHyhlw2ETbTqse6sFstpbUI8YyB8jr0
         6szg==
X-Forwarded-Encrypted: i=1; AJvYcCW2CBVJEGTD3SZnL3CJ7dyJuBsxpR4LzBnT2bDMqotSfB1VrDuI2RL7vYaDccyuVnEqBIldym6t8YEbc/s=@vger.kernel.org
X-Gm-Message-State: AOJu0YzzhCMEc9TsbMPGBl2YBlI7meT9YTX0MF7XdWqNVL6k3aAHRdKz
	iYnep4A89lDUb4G4xxzZGl5DS6AJnP+k74lXTCyyfecP2ZeWhJuUcdNo
X-Gm-Gg: ASbGnct0BpiPFn6eChR4HJcuMNijPgtc2Du5jf1qz32t9xhNIkrVdIYE/gNAXJZlSJZ
	yx3EHG75YlxXNgeBhR0iqs/Ax3/rtQBNlA+Yv9ABIgqboiFFJFeAMYZzHNrxK0QChAyxgblQk+u
	ntOlv6cLkw+MOgQzFmZmxXqWzWcFb2x0hsKcK92iQkK8N2QOuSvGeJSvUxQGD+8ZC9fvH94jJ/z
	cC/SF73tpaKxxOalf3wClfNfKBj2+D07W+wrmZAdpQPUc7xlhTti6HXwvuAsoJeJWGGnBQaJq63
	uKJODHODfN/Qz6oSSRpmGF7JWG3SNLljDn+CjE1s/GxDXOWQtdHLwZquAmjiF5OrHOupUE3HJym
	8RSphEVhd2VAEic/PTtvPCa4RjjtRyPA=
X-Google-Smtp-Source: AGHT+IGEW5HH1l9cDiAN523W1dhqg0PghJovG7OwZuNXX/82e5lclhQQWm0Glat+o9SM4eOw+8ecXQ==
X-Received: by 2002:a05:6214:acc:b0:725:f1c3:2ab with SMTP id 6a1803df08f44-725f1c30539mr110841746d6.43.1757078741100;
        Fri, 05 Sep 2025 06:25:41 -0700 (PDT)
Received: from localhost ([2a03:2880:20ff:74::])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-73377c2acb1sm3375646d6.72.2025.09.05.06.25.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 06:25:40 -0700 (PDT)
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
Date: Fri,  5 Sep 2025 14:25:36 +0100
Message-ID: <20250905132536.1998767-1-usamaarif642@gmail.com>
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
system. The series has been merged in [1]. Before [1], the following 2
calls were allowed with PR_SET_THP_DISABLE:

prctl(PR_SET_THP_DISABLE, 0, 0, 0, 0); // to reset THP setting.
prctl(PR_SET_THP_DISABLE, 1, 0, 0, 0); // to disable THPs completely.

Now in addition to the 2 calls above, you can do:

prctl(PR_SET_THP_DISABLE, 1, PR_THP_DISABLE_EXCEPT_ADVISED, 0, 0); // to
disable THPs except madvise.

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
v1 -> v2 (Alejandro Colomar):
- Fixed diuble negation on when MADV_HUGEPAGE will succeed
- Turn return values of PR_GET_THP_DISABLE into a table
- Turn madvise calls into full italics
- Use semantic newlines
---
 man/man2/madvise.2                      |  6 ++-
 man/man2const/PR_GET_THP_DISABLE.2const | 20 +++++++---
 man/man2const/PR_SET_THP_DISABLE.2const | 52 +++++++++++++++++++++----
 3 files changed, 64 insertions(+), 14 deletions(-)

diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
index 10cc21fa4..847e7aea6 100644
--- a/man/man2/madvise.2
+++ b/man/man2/madvise.2
@@ -371,9 +371,11 @@ or
 .BR VM_PFNMAP ,
 nor can it be stack memory or backed by a DAX-enabled device
 (unless the DAX device is hot-plugged as System RAM).
-The process must also not have
+The process can have
 .B PR_SET_THP_DISABLE
-set (see
+set only if
+.B PR_THP_DISABLE_EXCEPT_ADVISED
+flag is set (see
 .BR prctl (2)).
 .IP
 The
diff --git a/man/man2const/PR_GET_THP_DISABLE.2const b/man/man2const/PR_GET_THP_DISABLE.2const
index 38ff3b370..d63cff21c 100644
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
@@ -18,13 +18,23 @@ Standard C library
 .B int prctl(PR_GET_THP_DISABLE, 0L, 0L, 0L, 0L);
 .fi
 .SH DESCRIPTION
-Return the current setting of
-the "THP disable" flag for the calling thread:
-either 1, if the flag is set, or 0, if it is not.
+Return a value whose bits indicate how THP-disable is configured
+for the calling thread.
+The returned value is interpreted as follows:
+.P
+.TS
+allbox;
+cb cb cb l
+c c c l.
+Bit 1	Bit 0	Value	Description
+0	0	0	No THP-disable behaviour specified.
+0	1	1	THP is entirely disabled for this process.
+1	1	3	THP-except-advised mode is set for this process.
+.TE
 .SH RETURN VALUE
 On success,
 .BR PR_GET_THP_DISABLE ,
-returns the boolean value described above.
+returns the value described above.
 On error, \-1 is returned, and
 .I errno
 is set to indicate the error.
diff --git a/man/man2const/PR_SET_THP_DISABLE.2const b/man/man2const/PR_SET_THP_DISABLE.2const
index 564e005d4..82e694724 100644
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
+has a nonzero value,
+the THP disable flag is set according to the value of
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
+call will disable THPs for the process
+except when the usage of THPs is
+advised.
+Consequently, THPs will only be used when:
+.RS
+.IP \[bu] 3
+Global THP controls are set to "always" or "madvise" and
+.I \%madvise(...,\~MADV_HUGEPAGE)
+or
+.I \%madvise(...,\~MADV_COLLAPSE)
+is used.
+.IP \[bu]
+Global THP controls are set to "never" and
+.I \%madvise(...,\~MADV_COLLAPSE)
+is used.
+This is the same behavior
+as if THPs would not be disabled on
+a process level.
+.RE
 .SH RETURN VALUE
 On success,
 0 is returned.
-- 
2.47.3


