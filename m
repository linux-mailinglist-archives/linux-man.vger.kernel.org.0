Return-Path: <linux-man+bounces-1376-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A5992AE13
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 04:14:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B1161C223C6
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 02:14:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67ECD433CE;
	Tue,  9 Jul 2024 02:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BdJEuDV3"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A240442078
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 02:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720491230; cv=none; b=r4u6l3Ta0CsKqHINE9ULQu8Yh9xEhmPUU7SUvUE2nDC5pBPdaoSSQ/SSPjjLaMvWMFGElCLikFOP83a7/JTjFdPXw0JtT3sq89g5haGe4Hq/s+Zef1KItxPc8g+27QJ/RMh4SwjeEahvRVYbZUnz/LYBiUIXk4XCFoLltHSKPU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720491230; c=relaxed/simple;
	bh=D03zzyy0J0EfgIHfQhIrH0pEXi8ygoRFxn8KjpOMMEU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lCg0lnQgGu1WMHQZQb5Y41VgRD8oLArROc8w60zIb8F2lIoiJ985BrORPqjX1TLRjBo/LzWFCe25Z/N3I7qQDtTuXbR7vNVUOdcceWqKWAy0i3RygGRTEAlHkYjwPfT97GtbR7bzx3l7bmoHl3+w6MNg0s0y392C9061OgFbYpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BdJEuDV3; arc=none smtp.client-ip=209.85.222.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-79f02fe11aeso178517285a.2
        for <linux-man@vger.kernel.org>; Mon, 08 Jul 2024 19:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720491227; x=1721096027; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i6Teb7JQ963H8yI/YwlnD8RE5jYPzXbv+yrPWi7uWNI=;
        b=BdJEuDV34665w14r/bSHfdyIX+NdwlQl4zr3JG/yoYWIASUj6mIJ72Lvc9ijcpXX+Z
         lBZYv1gHolN8ZI9Vnvc3ixqJ9jbZbwakpMnoQWxOcA2nsFdEwvb74aqZJ3NsAFkVNIYT
         /VS47yBCEauZw6Dv3QN0AbpkgZXgbGfAXiOGP8clACgJP6AN819vrrqWWGE0w+DP+ZcF
         5zFa6bTOXcw9OO5Vv/aGsr3mEqq/yz7vz1lViZ05hmevDy8BkXljTIZzlfKBgjY3Ui30
         QalN56cKxPfNWNelz4mBgH6u7NDfu1EHKCdXO0KWkpmxjAJu+OHudyzHWD5EM+OtNa3x
         XfJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720491227; x=1721096027;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i6Teb7JQ963H8yI/YwlnD8RE5jYPzXbv+yrPWi7uWNI=;
        b=VWv7oHyyU49R0ZJpgUKb0OuukjhIpVDHtjJoBx1MXgjuTtHP/iLpkcPigRP4kZR637
         ssOV+6y3dtozwfBKdx7s8Nej+qtHrweOc8pO0p0NNqvePUjRWMg0NC3mB4nI5PauTdel
         po40S1eJc1qhxCHi5D48S4cyB9pjpeGwZwoLfHW+JTWTzqZ95f8mviOldOf2nbpRjrwY
         JRMC8HsRWGDeKFSO4G8+nwZ5ks80/DCTV/ZTLJagjYIm+nvPJtOagM6nc1HOGVU+ZPYw
         VEPF3kckXaa1pvDJBUL4pxqmRXB2ufKhsQapEkWWurW+kR4wdaIa+JyTb0HAW9uIil2f
         aJhQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVA680nZLynxrzRccmKGMDhsu++JcX5xIlHpkcKtxy5IgrRToZ4OaE4tmRNZiPWY1BxRY11ZOkkKA3uWHpdlXsT86IJHDlRfks
X-Gm-Message-State: AOJu0YxNC9C2uLHwOSEScDOM6Ll+0hHjHZWLelw2etL4U/nYE0HzzOzy
	stIl8zw8Aw8i+3xeyVkgsAQq1IxofwDilc47fACtCddbZGJDAh4G
X-Google-Smtp-Source: AGHT+IH7fS9eZWfnNrGeeaCza8CKHoRGrNC+sozSiWDlvKk/Q01RHGMQE3W5O8w46nrJKYl7f2lLIA==
X-Received: by 2002:a05:620a:4511:b0:79e:fcba:967e with SMTP id af79cd13be357-79f19a514c5mr156311485a.13.1720491227467;
        Mon, 08 Jul 2024 19:13:47 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-79f190a18a7sm48826185a.109.2024.07.08.19.13.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jul 2024 19:13:47 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org,
	Christian Brauner <brauner@kernel.org>,
	Oleg Nesterov <oleg@redhat.com>
Subject: [PATCH 2/3] pidfd_open.2: add PIDFD_THREAD and poll nuances
Date: Mon,  8 Jul 2024 19:13:33 -0700
Message-ID: <20240709021335.158849-3-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240709021335.158849-1-kolyshkin@gmail.com>
References: <20240709021335.158849-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

PIDFD_THREAD flag for pidfd_open(2) was added in Linux 6.9 (see [1]).
The nuances of using poll/epoll/select with a pidfd referring to a
process vs a thread are described in the merge commit [2].

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=64bef697d33b
[2]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b5683a37c881

Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/pidfd_open.2 | 36 ++++++++++++++++++++++++++++++------
 1 file changed, 30 insertions(+), 6 deletions(-)

diff --git a/man/man2/pidfd_open.2 b/man/man2/pidfd_open.2
index c027afe67..c0c0809f4 100644
--- a/man/man2/pidfd_open.2
+++ b/man/man2/pidfd_open.2
@@ -4,7 +4,7 @@
 .\"
 .TH pidfd_open 2 (date) "Linux man-pages (unreleased)"
 .SH NAME
-pidfd_open \- obtain a file descriptor that refers to a process
+pidfd_open \- obtain a file descriptor that refers to a task
 .SH LIBRARY
 Standard C library
 .RI ( libc ", " \-lc )
@@ -25,24 +25,32 @@ .SH DESCRIPTION
 The
 .BR pidfd_open ()
 system call creates a file descriptor that refers to
-the process whose PID is specified in
+the task whose PID is specified in
 .IR pid .
 The file descriptor is returned as the function result;
 the close-on-exec flag is set on the file descriptor.
 .P
 The
 .I flags
-argument either has the value 0, or contains the following flag:
+argument either has the value 0, or contains the following flags:
 .TP
 .BR PIDFD_NONBLOCK " (since Linux 5.10)"
 .\" commit 4da9af0014b51c8b015ed8c622440ef28912efe6
 Return a nonblocking file descriptor.
-If the process referred to by the file descriptor has not yet terminated,
+If the task referred to by the file descriptor has not yet terminated,
 then an attempt to wait on the file descriptor using
 .BR waitid (2)
 will immediately return the error
 .B EAGAIN
 rather than blocking.
+.TP
+.BR PIDFD_THREAD " (since Linux v6.9)"
+.\" commit 64bef697d33b75fc06c5789b3f8108680271529f
+Create a pidfd that refers to a specific thread, rather than a process
+(thread-group leader). If this flag is not set,
+.I pid
+must refer to a process.
+.P
 .SH RETURN VALUE
 On success,
 .BR pidfd_open ()
@@ -155,13 +163,29 @@ .SS Use cases for PID file descriptors
 .BR select (2),
 and
 .BR epoll (7).
-When the process that it refers to terminates,
-these interfaces indicate the file descriptor as readable.
+These interfaces indicate the PID file descriptor as readable
+when the task has exited.
 Note, however, that in the current implementation,
 nothing can be read from the file descriptor
 .RB ( read (2)
 on the file descriptor fails with the error
 .BR EINVAL ).
+.IP
+The behavior depends on whether the file descriptor refers
+to a process (thread-group leader) or a thread (see
+.B PIDFD_THREAD
+above):
+.RS
+.IP \[bu] 3
+For a thread-group leader, the polling task is woken if the
+thread-group is empty. In other words, if the thread-group
+leader task exits when there are still threads alive in its
+thread-group, the polling task will not be woken when the
+thread-group leader exits, but rather when the last thread in the
+thread-group exits.
+.IP \[bu]
+For a thread, the polling task is woken if the thread exits.
+.RE
 .IP \[bu]
 If the PID file descriptor refers to a child of the calling process,
 then it can be waited on using
-- 
2.45.2


