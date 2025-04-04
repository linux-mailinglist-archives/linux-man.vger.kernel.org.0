Return-Path: <linux-man+bounces-2742-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B61D4A7BB2A
	for <lists+linux-man@lfdr.de>; Fri,  4 Apr 2025 12:47:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22EF9189BBDC
	for <lists+linux-man@lfdr.de>; Fri,  4 Apr 2025 10:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ADB61A8403;
	Fri,  4 Apr 2025 10:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k+CNpUba"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E01F4315C
	for <linux-man@vger.kernel.org>; Fri,  4 Apr 2025 10:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743763654; cv=none; b=mUhty30jDyjv3dwaw+uIg5rorHGkRFaCM/FQGpYvnHM7GGe2C7s7mo7XSNYTEeWrQo/3qkAh9SxXzZyTYm4SWijhKTWl8SNCPSa47BexLojXcj1aUTrJdVJJtBC1NXoFxpQajSQ29IFAaXlQVGVKTJDAduThOZ/obzTSEfzSyG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743763654; c=relaxed/simple;
	bh=yITk8e8sju1wWq0D7CiW2oSUbbrCQbjOh8QnFCWvKtE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MvuWabYVIJ02sTP3p+fS5biqQkjqlZFDpbFMa2MJ6TKmW1fxMOktHgzTKX9laszO/QxSrZ9tvO4pWnjWVgNxDDUZ5Rg3JKF4ob+BLjLw2jklCZiJePe1bF3Lz+BuBbnSTbK+fg3H4abJ4ruZxtPiG1R7dQT7u+Qng5/Xw0vMqO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k+CNpUba; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5e5e63162a0so3021504a12.3
        for <linux-man@vger.kernel.org>; Fri, 04 Apr 2025 03:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743763650; x=1744368450; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1G8poufHZUfSxum5VMyDIgtcVoddGHO0/jQCP9y8X7g=;
        b=k+CNpUbagt4aBbSgmKgKNUQ8rUQG2WQQLaiXAnvre5+N4M9R8ZhoeE7CE+p/Ud1Co7
         Rq8lZX4f3XUCjLc8nKuxvGCHBknp/WRyBbmffS4OAQFdkarNRjGNZ7FqcZ76o2yZ3bFG
         8ppcaUBQ+4VEegAoZ+kmpnaBWYrzgqRSEjVV8OQ9VvdAErFbFr1mDhK6ucWa18csDqI/
         vzXWqEMYpmpUMOS1Dqcl1Nh/d30qhSSAezZyqXIevHshv1snMz/N3Dq2ssmm8SvZ5z5T
         NoSxDoBSB0YwxknJampgOHb1xmafYpols4XwdF2tXijZqcMlsMKbor2EaOfv5j8WcdVY
         HxFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743763650; x=1744368450;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1G8poufHZUfSxum5VMyDIgtcVoddGHO0/jQCP9y8X7g=;
        b=Y7T8d5oSL0CpKkIgeb893OEWuADG6NnlCcfId28OfO2DPLVp/RRKZllcGtQlVYNAzM
         tFNG6/R0sRgxJyEASFVfX3mr1HzkGaelsGbcQHwEAyA313wEl+vUL4reZ3QBj5siTJ0O
         q2xK7Rcf1L5kh7IEFM9JBtHF4QLdNYDscRDLbcfVa0fpZLK5ETOUaHQJECeZpRG0IZjs
         TrmvvqLArUIPqt2HoDSWD08tk1uUzITXlOjHn8leJ0FHIzukVQYt3FdxaYz63W7SPAjo
         9vcZRBnSAHTbDehObLOSDut8E1YznJS2xEtxp/EyvNhfZWnQSG/DuQPrXrGoPNTFK6v0
         vlNg==
X-Forwarded-Encrypted: i=1; AJvYcCUkUYCYmgTRrQErxwg2VN+nfl3EuXa0U0vbnSa695Q1Fsc64Xra+tjEtyzS4XSguXY7bF5QSxc8Biw=@vger.kernel.org
X-Gm-Message-State: AOJu0YyeH/wx3f87briWKWAdwo0I5buFHbQiDtTz4sbsdOmLNjsQ0/UN
	PBnDD2ShlKE6cO5wiSFuT+85ULNaYLBU8sTiBVepXKgnafaOCEhD/iTVCGTC
X-Gm-Gg: ASbGncteyQ7B8j97N65EiR/YkUQl6yaaVpTyLmWLc7nB7TLKXq+ejSkXglAH+C6mOBT
	9gejIqi+gXHta21TMWD5Om2mgxm19qN6GDne0yLfwaMSLMUxlVJWSjDJwWImERXyij9Ug2ZVUUZ
	h+vk6PfD/amWVBkRIXSY9RwTQ+9Sb2jG54O0EC1HsPH78vLS+u9suQ5q1P01mb3jpXX3YXUqSiN
	c5kkSQy710n0Zg1oEjxHQZhUbi00GeO3dhIBZSzroyc9s/YoUGLvLXunUP+KO+VQx0p2s8YH46x
	dlOW5LgN+5+ug5n4Cr+W+/QEA9X6RBbs8n7lj0VDVi2fdUKrNz5utYP1oQgajoXc+YE+NKkJT8m
	oL9Dhcdqoph99jRf6F1NwAWBs9QKI6DeJRrYem/pQHz8Uve2st3tz
X-Google-Smtp-Source: AGHT+IFXKwFQkycZpINf0OJMrVIfaha++/MWUtg731C3oyjdNfPWCwmyfhKCCqD5Jxqr/jXdpPlwbw==
X-Received: by 2002:a05:6402:524b:b0:5ed:3228:d005 with SMTP id 4fb4d7f45d1cf-5f0b3b5ff34mr1823935a12.6.1743763650151;
        Fri, 04 Apr 2025 03:47:30 -0700 (PDT)
Received: from amir-ThinkPad-T480.arnhem.chello.nl (92-109-99-123.cable.dynamic.v4.ziggo.nl. [92.109.99.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f087714df0sm2119530a12.14.2025.04.04.03.47.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 03:47:29 -0700 (PDT)
From: Amir Goldstein <amir73il@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jan Kara <jack@suse.cz>,
	linux-man@vger.kernel.org
Subject: [RESEND PATCH v3 2/2] fanotify: Document mount namespace events
Date: Fri,  4 Apr 2025 12:47:23 +0200
Message-Id: <20250404104723.1709188-2-amir73il@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250404104723.1709188-1-amir73il@gmail.com>
References: <20250404104723.1709188-1-amir73il@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Used to subscribe for notifications for when mounts
are attached/detached from a mount namespace.

Reviewed-by: Jan Kara <jack@suse.cz>
Reviewed-by: Miklos Szeredi <mszeredi@redhat.com>
Reviewed-by: Christian Brauner <brauner@kernel.org>
Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---
 man/man2/fanotify_init.2 | 20 ++++++++++++++++++
 man/man2/fanotify_mark.2 | 37 ++++++++++++++++++++++++++++++++-
 man/man7/fanotify.7      | 45 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 101 insertions(+), 1 deletion(-)

diff --git a/man/man2/fanotify_init.2 b/man/man2/fanotify_init.2
index b90e91707..93887b875 100644
--- a/man/man2/fanotify_init.2
+++ b/man/man2/fanotify_init.2
@@ -331,6 +331,26 @@ that the directory entry is referring to.
 This is a synonym for
 .RB ( FAN_REPORT_DFID_NAME | FAN_REPORT_FID | FAN_REPORT_TARGET_FID ).
 .TP
+.BR FAN_REPORT_MNT " (since Linux 6.14)"
+.\" commit 0f46d81f2bce970b1c562aa3c944a271bbec2729
+This value allows the receipt of events which contain additional information
+about the underlying mount correlated to an event.
+An additional record of type
+.B FAN_EVENT_INFO_TYPE_MNT
+encapsulates the information about the mount and is included alongside the
+generic event metadata structure.
+The use of
+.BR FAN_CLASS_CONTENT ,
+.BR FAN_CLASS_PRE_CONTENT,
+or any of the
+.B FAN_REPORT_DFID_NAME_TARGET
+flags along with this flag is not permitted
+and will result in the error
+.BR EINVAL .
+See
+.BR fanotify (7)
+for additional details.
+.TP
 .BR FAN_REPORT_PIDFD " (since Linux 5.15 and 5.10.220)"
 .\" commit af579beb666aefb17e9a335c12c788c92932baf1
 Events for fanotify groups initialized with this flag will contain
diff --git a/man/man2/fanotify_mark.2 b/man/man2/fanotify_mark.2
index a6d80ad68..2c9d6e9b9 100644
--- a/man/man2/fanotify_mark.2
+++ b/man/man2/fanotify_mark.2
@@ -67,7 +67,8 @@ contains
 all marks for filesystems are removed from the group.
 Otherwise, all marks for directories and files are removed.
 No flag other than, and at most one of, the flags
-.B FAN_MARK_MOUNT
+.BR FAN_MARK_MNTNS ,
+.BR FAN_MARK_MOUNT ,
 or
 .B FAN_MARK_FILESYSTEM
 can be used in conjunction with
@@ -99,6 +100,20 @@ If the filesystem object to be marked is not a directory, the error
 .B ENOTDIR
 shall be raised.
 .TP
+.BR FAN_MARK_MNTNS " (since Linux 6.14)"
+.\" commit 0f46d81f2bce970b1c562aa3c944a271bbec2729
+Mark the mount namespace specified by
+.IR pathname .
+If the
+.I pathname
+is not a path that represents a mount namespace (e.g.
+.IR /proc/ pid /ns/mnt ),
+the call fails with the error
+.BR EINVAL .
+An fanotify group that was initialized with flag
+.B FAN_REPORT_MNT
+is required.
+.TP
 .B FAN_MARK_MOUNT
 Mark the mount specified by
 .IR path .
@@ -395,6 +410,26 @@ Create an event when a marked file or directory itself has been moved.
 An fanotify group that identifies filesystem objects by file handles
 is required.
 .TP
+.B FAN_MNT_ATTACH
+.TQ
+.BR FAN_MNT_DETACH " (both since Linux 6.14)"
+.\" commit 0f46d81f2bce970b1c562aa3c944a271bbec2729
+Create an event when a mount was attached to or detached from a marked mount namespace, respectively.
+An attempt to set this flag on an inode, mount, or filesystem mark
+will result in the error
+.BR EINVAL .
+An fanotify group that was initialized with flag
+.B FAN_REPORT_MNT
+and the mark flag
+.B FAN_MARK_MNTNS
+are required.
+An additional information record of type
+.B FAN_EVENT_INFO_TYPE_MNT
+is returned with the event.
+See
+.BR fanotify (7)
+for additional details.
+.TP
 .BR FAN_FS_ERROR " (since Linux 5.16, 5.15.154, and 5.10.220)"
 .\" commit 9709bd548f11a092d124698118013f66e1740f9b
 Create an event when a filesystem error
diff --git a/man/man7/fanotify.7 b/man/man7/fanotify.7
index 68e930930..de0ea8e55 100644
--- a/man/man7/fanotify.7
+++ b/man/man7/fanotify.7
@@ -228,6 +228,23 @@ struct fanotify_event_info_pidfd {
 .EE
 .in
 .P
+In cases where an fanotify group is initialized with
+.BR FAN_REPORT_MNT ,
+event listeners should expect to receive the below
+information record object alongside the generic
+.I fanotify_event_metadata
+structure within the read buffer.
+This structure is defined as follows:
+.P
+.in +4n
+.EX
+struct fanotify_event_info_mnt {
+    struct fanotify_event_info_header hdr;
+    __u64 mnt_id;
+};
+.EE
+.in
+.P
 In case of a
 .B FAN_FS_ERROR
 event,
@@ -442,6 +459,12 @@ A file or directory that was opened read-only
 .RB ( O_RDONLY )
 was closed.
 .TP
+.BR FAN_MNT_ATTACH
+A mount was attached to mount namespace.
+.TP
+.BR FAN_MNT_DETACH
+A mount was detached from mount namespace.
+.TP
 .B FAN_FS_ERROR
 A filesystem error was detected.
 .TP
@@ -540,6 +563,8 @@ The value of this field can be set to one of the following.
 .B FAN_EVENT_INFO_TYPE_ERROR
 .TQ
 .B FAN_EVENT_INFO_TYPE_RANGE
+.TQ
+.B FAN_EVENT_INFO_TYPE_MNT
 .RE
 .IP
 The value set for this field
@@ -725,6 +750,26 @@ in case of a terminated process, the value will be
 .BR \-ESRCH .
 .P
 The fields of the
+.I fanotify_event_info_mnt
+structure are as follows:
+.TP
+.I .hdr
+This is a structure of type
+.IR fanotify_event_info_header .
+The
+.I .info_type
+field is set to
+.BR FAN_EVENT_INFO_TYPE_MNT .
+.TP
+.I .mnt_id
+Identifies the mount associated with the event.
+It is a 64-bit unique mount id as the one returned by
+.BR statx (2)
+with the
+.B STATX_MNT_ID_UNIQUE
+flag.
+.P
+The fields of the
 .I fanotify_event_info_error
 structure are as follows:
 .TP
-- 
2.34.1


