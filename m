Return-Path: <linux-man+bounces-4659-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA4ECF7D11
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 11:37:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C3C5730245FF
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 10:36:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D30353385BC;
	Tue,  6 Jan 2026 10:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YqZf0aH2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8446C338934
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 10:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767695204; cv=none; b=umg/RLaV7Cb3+oR6krMcdHlHRLyw1KhXFXiVtHvQ+no1+EEjqsNs7a000PRzjr1nUplREkJK+OLBet08DEzdefbUzErTFVCopr0u3ge6yqixMaA8mjIId670fMQWSD67Opo2G+5nBFsEijtQvqB4/EObLdgaWiDLxiQG5lyIcjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767695204; c=relaxed/simple;
	bh=QZ6AQU34CPNvglWRcu/DhxEOfwQ+LEYCGUx8y4oDp9M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=u0VVKOF95gMXOkIxHjuY3F61GfaTQ7OHbV3MSxd4N2x6FZWhwPAgLq8skRCF2hlWEpnfsuXTstv/Xa6eUvFtvKY1ms6zV82FzFhRgFbKrt+tRLWz/IycojRVZ63YJuWxe9FjreR4v4BFj+1katFG7XwK5HnCQvK5zLGhLGfkjEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YqZf0aH2; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-477563e28a3so5540525e9.1
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 02:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767695201; x=1768300001; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3iq5kO/BbDIqm3w+hoXJzkL1wdvcl8qWj0VAWGB132s=;
        b=YqZf0aH2qZtVQyOXhGzmLY1dL3D9H0ODCDgQLVyRxOdMGEE3G7FflR2nsOCvENatR7
         Q66gdZWxnoWzb34lmF4W1I8fJdlVTajPSsxyNi6Li+4kWraMhDf7xlZEyiVNwfwDvo1z
         GEzfSmb4Km4tBJOH/cmpusY47PJgVy26OkmH5AB/tcfFVWrCAUy7O7wBs8rKYEMhWvh3
         3vgx+kgKnNWcl/TQ34DnYphyoL2uQmE8AoRmoml1VKO5g77YtppomlPgKHU4Nno/W8og
         RLgbMcOTCkQrEBiCPzGd/QcHhogUZ5vlrUK93vy1GJzJAzse2Dyv0RIjtb3O0kCR96Zd
         9UVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767695201; x=1768300001;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3iq5kO/BbDIqm3w+hoXJzkL1wdvcl8qWj0VAWGB132s=;
        b=hOFIZDRc7Zkxq2Lw3JUeuG/zUOqBtHUaB6kt/jmfqvLAs8fIhljz/PC9YoV8N01gtY
         p5Id8ARc3CT5e8FjzW6qhW8cvx9q7eJzutwN3b87ajVA3AgHLyAruLiue/Sk+xJIRSwk
         PC9fNDc0iDGWOOswXTUqO1kHXAEWeQ76EbcDUqEXXvyfNc+tYuSTFT4oUwSMyQ0sD/Q7
         gc7oM1icJp+1qOmDJyhgmYpUO4PC2MBgYTFVm84NdabMvhI+1wqTXHmuBtKRNLFxLpH1
         FMa9Efj8vGDqBFznOpxn2r40yLl2nVkybrN/sbl+3AuLRpvhUWm0hP3fw0M1GaKI8lTZ
         yIcA==
X-Gm-Message-State: AOJu0YyxN2kTM5FqdNoCBlA/uBEL1aQCJAoZnvgGxUjcB7rUtK8b7cPx
	n+LerErm7SBe3yQ1Tps2NToQIr0K2b7PIypA/Tk8nsvYkJ4r5vCekNZikl2NqCx3
X-Gm-Gg: AY/fxX7/M9zxFjN3xxNiFfOlQSBnOf0BML76Y8b/6sLNcYLvRphw00QzS/ELrBX1HLG
	D6mYDsDlzYbdgqt33ZamPVppTjxp3hMj1WAWxwWVwU3cbmGKemorpuxW4tetA7k0GCSW8AqjHPq
	i4HNv+1bAtKqjjNkqYQ9SpO64zo1LzEXUM32wJBfJzbNqfFK3m1umobvhmcakjexM9PFuejkgnk
	HPUJy2SNpT7AtH3URYW5rvbOuurHWeM19nTjX+5Vh9WcTe0EvIchrAl0LSm6HxQ+coPX2P3THwE
	SyM7OJS+Mk/25evz4WHx6wXOoXZcZIaWHXeEBM5dTWYn0W20SSmo9aJF5uxQ5uMhgTyQzZFdG7N
	iNGsrCdAltQfNQ7HR5irVwWpDfh3t2226MlKSCLaNFyKbjFCEEgjeI6iPQBH2yzyFLOXLSgfVL4
	8MMyCwK7W3cIH1+r82iQzQkc7bkxjHrgmQz2UqpVqX8z1amyk=
X-Google-Smtp-Source: AGHT+IGH6gNkHh4rj9opIUZHpZqNBcOMkwaFGLCTvPVA5+pEP/Jip5+6IZSb67/poBy88Bi45KoAmg==
X-Received: by 2002:a05:600c:3541:b0:479:1348:c63e with SMTP id 5b1f17b1804b1-47d7f41728amr27729915e9.9.1767695200373;
        Tue, 06 Jan 2026 02:26:40 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f410c86sm36389775e9.3.2026.01.06.02.26.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 02:26:39 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	debian@helgeth.de,
	champbreed1@gmail.com
Subject: [PATCH] man2, man2const: Fix spelling (British -> American)
Date: Tue,  6 Jan 2026 10:26:33 +0000
Message-ID: <20260106102633.25087-1-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Standardize spelling to American English 'behavior' across multiple man2 and man2const pages.

Reported-by: Helge Kreutzmann <debian@helgeth.de>
Signed-off-by: Simon Essien <champbreed1@gmail.com>
---
 man/man2/copy_file_range.2                    |  2 +-
 man/man2/epoll_ctl.2                          |  2 +-
 man/man2/fsconfig.2                           | 24 +++++++++----------
 man/man2/fsopen.2                             |  2 +-
 man/man2/fspick.2                             |  2 +-
 man/man2/futex.2                              |  2 +-
 man/man2/mount_setattr.2                      |  4 ++--
 man/man2/move_mount.2                         |  2 +-
 man/man2/open_tree.2                          |  4 ++--
 man/man2/sigaction.2                          |  2 +-
 man/man2/timerfd_create.2                     |  2 +-
 man/man2const/FUTEX_LOCK_PI.2const            |  2 +-
 .../KEYCTL_SET_REQKEY_KEYRING.2const          |  2 +-
 man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const  |  2 +-
 man/man2const/PR_GET_THP_DISABLE.2const       |  2 +-
 man/man2const/PR_SET_TAGGED_ADDR_CTRL.2const  |  2 +-
 16 files changed, 29 insertions(+), 29 deletions(-)

diff --git a/man/man2/copy_file_range.2 b/man/man2/copy_file_range.2
index 9da71660c..ca9584df1 100644
--- a/man/man2/copy_file_range.2
+++ b/man/man2/copy_file_range.2
@@ -197,7 +197,7 @@ when both filesystems are of the same type,
 and that filesystem implements support for it.
 See BUGS for behavior prior to Linux 5.19.
 .P
-Applications should target the behaviour and requirements of Linux 5.19,
+Applications should target the behavior and requirements of Linux 5.19,
 that was also backported to earlier stable kernels.
 .SH STANDARDS
 Linux, GNU.
diff --git a/man/man2/epoll_ctl.2 b/man/man2/epoll_ctl.2
index e1e8c86ed..b91fea239 100644
--- a/man/man2/epoll_ctl.2
+++ b/man/man2/epoll_ctl.2
@@ -81,7 +81,7 @@ member of the
 structure is a bit mask composed by ORing together zero or more event types,
 returned by
 .BR epoll_wait (2),
-and input flags, which affect its behaviour, but aren't returned.
+and input flags, which affect its behavior, but aren't returned.
 The available event types are:
 .TP
 .B EPOLLIN
diff --git a/man/man2/fsconfig.2 b/man/man2/fsconfig.2
index d0eb38929..463d7a60d 100644
--- a/man/man2/fsconfig.2
+++ b/man/man2/fsconfig.2
@@ -126,7 +126,7 @@ for an explanation of the need for
 You may also use
 .B \%FSCONFIG_SET_STRING
 for path parameters,
-the behaviour of which is equivalent to
+the behavior of which is equivalent to
 .B \%FSCONFIG_SET_PATH
 with
 .I aux
@@ -144,7 +144,7 @@ the file descriptor specified by
 is operated on directly
 and may be any type of file
 (not just a directory).
-This is equivalent to the behaviour of
+This is equivalent to the behavior of
 .B \%AT_EMPTY_PATH
 with most "*at()" system calls.
 If
@@ -215,10 +215,10 @@ the filesystem instance "created" by
 may, in fact, be a reference
 to an extant filesystem instance in the kernel.
 (For reference,
-this behaviour also applies to
+this behavior also applies to
 .BR mount (2).)
 .IP
-One side-effect of this behaviour is that
+One side-effect of this behavior is that
 if an extant filesystem instance is reused,
 .I all
 parameters configured
@@ -517,18 +517,18 @@ Each filesystem driver is responsible for
 parsing most parameters specified with
 .BR fsconfig (),
 meaning that individual filesystems
-may have very different behaviour
+may have very different behavior
 when encountering parameters with the same name.
 In general,
-you should not assume that the behaviour of
+you should not assume that the behavior of
 .BR fsconfig ()
 when specifying a parameter to one filesystem type
-will match the behaviour of the same parameter
+will match the behavior of the same parameter
 with a different filesystem type.
 .P
 However,
 the following generic parameters
-apply to all filesystems and have unified behaviour.
+apply to all filesystems and have unified behavior.
 They are set using the listed
 .BI \%FSCONFIG_SET_ *
 command.
@@ -586,7 +586,7 @@ Some filesystem parameters
 .BR mount (8)-style
 options)
 have a sibling mount attribute
-with superficially similar user-facing behaviour.
+with superficially similar user-facing behavior.
 .P
 For a description of the distinction between
 mount attributes and filesystem parameters,
@@ -599,7 +599,7 @@ each filesystem driver being responsible for
 parsing most parameters specified with
 .BR fsconfig (),
 some filesystem drivers
-may have unintuitive behaviour
+may have unintuitive behavior
 with regards to which
 .BI \%FSCONFIG_SET_ *
 commands are permitted
@@ -649,7 +649,7 @@ that the
 commands used to configure each parameter
 are supported by the corresponding filesystem driver.
 .\" Aleksa Sarai
-.\"   While this (quite confusing) inconsistency in behaviour is true today
+.\"   While this (quite confusing) inconsistency in behavior is true today
 .\"   (and has been true since this was merged), this appears to mostly be an
 .\"   unintended consequence of filesystem drivers hand-coding fsparam parsing.
 .\"   Path parameters are the most eggregious causes of confusion.
@@ -688,7 +688,7 @@ specifying the same parameter named by
 multiple times with
 .BR fsconfig ()
 causes the parameter value to be replaced.
-However, some filesystems may have unique behaviour:
+However, some filesystems may have unique behavior:
 .P
 .in +4n
 .EX
diff --git a/man/man2/fsopen.2 b/man/man2/fsopen.2
index 47bc15c06..f3522fb74 100644
--- a/man/man2/fsopen.2
+++ b/man/man2/fsopen.2
@@ -290,7 +290,7 @@ their buffers are sufficiently large
 to contain any reasonable message string,
 in order to avoid silently losing valuable diagnostic information.
 .\" Aleksa Sarai
-.\"   This unfortunate behaviour has existed since this feature was merged, but
+.\"   This unfortunate behavior has existed since this feature was merged, but
 .\"   I have sent a patchset which will finally fix it.
 .\"   <https://lore.kernel.org/r/20250807-fscontext-log-cleanups-v3-1-8d91d6242dc3@cyphar.com/>
 .SH EXAMPLES
diff --git a/man/man2/fspick.2 b/man/man2/fspick.2
index 345a6bd45..d6df726b4 100644
--- a/man/man2/fspick.2
+++ b/man/man2/fspick.2
@@ -52,7 +52,7 @@ with the
 .B \%FSCONFIG_CMD_RECONFIGURE
 command.
 In contrast to
-the behaviour of
+the behavior of
 .B MS_REMOUNT
 with
 .BR mount (2),
diff --git a/man/man2/futex.2 b/man/man2/futex.2
index e5ed61e59..f6030709c 100644
--- a/man/man2/futex.2
+++ b/man/man2/futex.2
@@ -151,7 +151,7 @@ The
 argument consists of two parts:
 a command that specifies the operation to be performed,
 bitwise ORed with zero or more options that
-modify the behaviour of the operation.
+modify the behavior of the operation.
 The options that may be included in
 .I op
 are as follows:
diff --git a/man/man2/mount_setattr.2 b/man/man2/mount_setattr.2
index efe22496b..e02c84f43 100644
--- a/man/man2/mount_setattr.2
+++ b/man/man2/mount_setattr.2
@@ -798,7 +798,7 @@ Some mount attributes
 .BR mount (8)-style
 options)
 have a sibling filesystem parameter
-with superficially similar user-facing behaviour.
+with superficially similar user-facing behavior.
 For example, the
 .I \-o\~ro
 option to
@@ -807,7 +807,7 @@ can refer to the
 "read-only" filesystem parameter,
 or the "read-only" mount attribute.
 Both of these result in mount objects becoming read-only,
-but they do have different behaviour.
+but they do have different behavior.
 .P
 The distinction between these two kinds of option is that
 mount object attributes are applied per-mount-object
diff --git a/man/man2/move_mount.2 b/man/man2/move_mount.2
index 13063ac1f..335f4ef54 100644
--- a/man/man2/move_mount.2
+++ b/man/man2/move_mount.2
@@ -189,7 +189,7 @@ If
 .I from_path
 references a symbolic link,
 then dereference it.
-The default behaviour for
+The default behavior for
 .BR move_mount ()
 is to
 .I not follow
diff --git a/man/man2/open_tree.2 b/man/man2/open_tree.2
index f6f2fbecd..ad23caf15 100644
--- a/man/man2/open_tree.2
+++ b/man/man2/open_tree.2
@@ -310,7 +310,7 @@ and
 all set to zero,
 then
 .BR open_tree_attr ()
-has identical behaviour to
+has identical behavior to
 .BR open_tree ().
 .P
 The application of
@@ -375,7 +375,7 @@ is called with
 .BR \%AT_RECURSIVE ).
 However, this applies in addition to the
 .BR open_tree ()-specific
-behaviour regarding
+behavior regarding
 .BR \%AT_RECURSIVE ,
 and thus
 .I flags
diff --git a/man/man2/sigaction.2 b/man/man2/sigaction.2
index 441725aec..17af7a095 100644
--- a/man/man2/sigaction.2
+++ b/man/man2/sigaction.2
@@ -1143,7 +1143,7 @@ POSIX only guarantees
 for signals created by
 .IR timer_create (2).
 Implementations are free to also provide it for other types of timers.
-The Linux behaviour matches NetBSD.
+The Linux behavior matches NetBSD.
 .\"
 .SS Undocumented
 Before the introduction of
diff --git a/man/man2/timerfd_create.2 b/man/man2/timerfd_create.2
index 1b155532d..727a48dc0 100644
--- a/man/man2/timerfd_create.2
+++ b/man/man2/timerfd_create.2
@@ -524,7 +524,7 @@ with the settings provided in the second
 .BR timerfd_settime ()
 call.
 (This was probably an implementation accident, but won't be fixed now,
-in case there are applications that depend on this behaviour.)
+in case there are applications that depend on this behavior.)
 .SH BUGS
 Currently,
 .\" 2.6.29
diff --git a/man/man2const/FUTEX_LOCK_PI.2const b/man/man2const/FUTEX_LOCK_PI.2const
index ecb33183e..127360147 100644
--- a/man/man2const/FUTEX_LOCK_PI.2const
+++ b/man/man2const/FUTEX_LOCK_PI.2const
@@ -214,7 +214,7 @@ clock.
 .\" > Yes, that's another weird inconsistency.
 .\"
 .\" The reason is that phtread_mutex_timedlock() uses absolute timeouts based on
-.\" CLOCK_REALTIME.  glibc folks asked to make that the default behaviour back
+.\" CLOCK_REALTIME.  glibc folks asked to make that the default behavior back
 .\" then when we added LOCK_PI.
 .\"
 .SH SEE ALSO
diff --git a/man/man2const/KEYCTL_SET_REQKEY_KEYRING.2const b/man/man2const/KEYCTL_SET_REQKEY_KEYRING.2const
index cd2bb73ac..0c213cf0f 100644
--- a/man/man2const/KEYCTL_SET_REQKEY_KEYRING.2const
+++ b/man/man2const/KEYCTL_SET_REQKEY_KEYRING.2const
@@ -46,7 +46,7 @@ This can be used to discover the current default keyring
 (without changing it).
 .TP
 .B KEY_REQKEY_DEFL_DEFAULT
-This selects the default behaviour,
+This selects the default behavior,
 which is to use the thread-specific keyring if there is one,
 otherwise the process-specific keyring if there is one,
 otherwise the session keyring if there is one,
diff --git a/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const b/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const
index 12c6e409a..fd4ce98a4 100644
--- a/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const
+++ b/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const
@@ -27,7 +27,7 @@ Specify the size of private hash to allocate.
 .TP
 .I 0
 Use the global hash.
-This is the behaviour used before Linux 6.17.
+This is the behavior used before Linux 6.17.
 .TP
 .I >0
 Specify the number of slots to allocate.
diff --git a/man/man2const/PR_GET_THP_DISABLE.2const b/man/man2const/PR_GET_THP_DISABLE.2const
index 84e493369..a9a966b14 100644
--- a/man/man2const/PR_GET_THP_DISABLE.2const
+++ b/man/man2const/PR_GET_THP_DISABLE.2const
@@ -23,7 +23,7 @@ for the calling thread.
 The returned value is interpreted as follows:
 .TP
 .B 0b00
-No THP-disable behaviour specified.
+No THP-disable behavior specified.
 .TP
 .B 0b01
 THP is entirely disabled for this process.
diff --git a/man/man2const/PR_SET_TAGGED_ADDR_CTRL.2const b/man/man2const/PR_SET_TAGGED_ADDR_CTRL.2const
index e2dbab6fc..9dd4ed4a6 100644
--- a/man/man2const/PR_SET_TAGGED_ADDR_CTRL.2const
+++ b/man/man2const/PR_SET_TAGGED_ADDR_CTRL.2const
@@ -59,7 +59,7 @@ argument of
 .BR mremap (2).
 .IP
 (Prior to Linux 5.6 these accepted tagged addresses,
-but the behaviour may not be what you expect.
+but the behavior may not be what you expect.
 Don't rely on it.)
 .IP \[bu]
 \[oq]polymorphic\[cq] interfaces
-- 
2.51.0


