Return-Path: <linux-man+bounces-4078-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8638BC3245
	for <lists+linux-man@lfdr.de>; Wed, 08 Oct 2025 04:00:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E40E3B8442
	for <lists+linux-man@lfdr.de>; Wed,  8 Oct 2025 02:00:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5F57221FBB;
	Wed,  8 Oct 2025 02:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WcXi6gSY"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0794F34BA44
	for <linux-man@vger.kernel.org>; Wed,  8 Oct 2025 02:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759888856; cv=none; b=GTEsQQDMLkf1JcB4XuxIzit5cuSoivpIDm9mgyyLXtgtmCVcUY2UaLDCc94X5jkoTZE3fa6VuAGoFpIti3l3CevfihSlEC3h4BiuU+qi9GQYRBEK4cdCet9EErsaswGe59ApDOrtbx+YjRndKsq81PUv7geFotEjFXvI8eQDAs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759888856; c=relaxed/simple;
	bh=TEc+jfKMyOk/VLGb2A/IxhpIlMcF61PaMOFdmHXSTO4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=otMaoBzVO62E+gXAq0QvIIDHHJcphba/0h5LHszfLWvXZ7l4iC87GVDTug9/zoEkeFhApgyLeQC6fcWppXzb/uHZcbOiKx6RI/39YMZ20nWfprc/Db/fwu7X47gnmWlzchVvp4JLnUWMS/fXIT3rduuzXm89jnm4iV4UxYdETjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WcXi6gSY; arc=none smtp.client-ip=209.85.222.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-87808473c3bso896659685a.1
        for <linux-man@vger.kernel.org>; Tue, 07 Oct 2025 19:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759888854; x=1760493654; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2PedvBaCZfhhcmyTL0xXcsOBSNNwuRIv8kmYCQV4QIs=;
        b=WcXi6gSYcRHZJNUzRYLeE0WNuR7ifecq+sNtjDohkagpSPE3/pQmAsZ3yKIW3DfF07
         GqyjKB4/f+R4IfH8ywCUg7tMscc/IaMVekQfDr4CUhMkSfnnl8KzlyDpf524sLHbVZhT
         3qfpjWuwZ3SjDjsrVb9JLsfqLc4dkSJ+FNq+QClqBS7zAGMtXNnmygLEPvHheMnZW26E
         fJJUxbmN1jp7wwNTTgCDxLoR6lVbBiycp7njla8CwYP2IlVlJzaZgfIi+ApAyWnqCgeB
         hcoBPajZvgQvTZPc5wFB9hV7snAnwxaDrCYJ+S5rmUsiLq3uOe3r2Xu/n4KHoFY3/pj6
         ghpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759888854; x=1760493654;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2PedvBaCZfhhcmyTL0xXcsOBSNNwuRIv8kmYCQV4QIs=;
        b=DLReyQPzvko6lctfpULY6VO9EDioKBJejWE/InUptKByUWed4ynxv7dezYbsd3aT3G
         CuKlBWej3BKo1nxLb6pIv3/g41LdiyjanR7dvjIUg3yaxJOVZMEupbnjjt+r+XrJo6mn
         T5135MjowPhcK/U2nn1QDb5ylZWX77XJUZy8dXNLtwJdSsvMbqJ9XPp9avxo++x8ZK3b
         iM2wMLLuUMr/MBEnQaIIcZjwyXYMrzrKyk+OFalbL1EinX607VjVEnQhN3Doifr/YIEX
         tsI4KX8wnq/HBnGFY5PXctOaRCqItexn1Kmk1fFdauvQ34wA43a6vgCqaQmMsWLjBVm7
         tuCw==
X-Forwarded-Encrypted: i=1; AJvYcCXT9yUA1QbheRZ2Ldk//3Tdwmaj6HSJO38W5mAHMnOSoGytmypZsEM/7X1Su3itY9axVUI74t95uO8=@vger.kernel.org
X-Gm-Message-State: AOJu0YwieEbouAo1d0wsD0KLyAa0ikxphXxSSRRuTMK/b6YcpssBQa2Q
	lgNr4S2VdL5x2GkXKY/3tmf3YBJzc1tPRY27gJMv2EzbTCFYUMAZiLZT
X-Gm-Gg: ASbGncs+FSI9LqVlh1dXnI2Ao3/MOXFAEpMIw7AS7/JG79ztG6DMoznMo3++K0I3YW0
	mwS/hZDrO+m4TM3v4oADq8pYG5hfyVhKUq2m8O9uBuqlJeSsTh+MSl0CKndf1UN2guDcYitaHBl
	NEtAE0NmjMTWp0RBIcveJI7J3IFdSWM7eQlW3Ee5GqadjZnaJZZhYjg2l8SAXWJsAOjLWuXv3ru
	Vh3fapugK4Carg7PF3DxuOKAYLwWOApKJaZnkgFXDLAd1p9Mt8O3NZuvHq81ZECb8R2dV+5pQGw
	z8pYhO5uUeMZC44SWt/BmCtTmQwZTjQ4h2Y7QMpK9jADXbXKYUvEZk41L9riGX9RGfSN6Q/lVBn
	ozmE/B1t7VkwpCABKcDqplXaIoc/kVaxJCOJL63I6qI1LyI0mTD0Xc7Km9P+w4pTdySSSMDSt86
	F4bMoKoCPGsxCGMyWApw==
X-Google-Smtp-Source: AGHT+IEkcuPwFzbcvbpj/TlTEtiOiEO/rYKtGIDhSojrco530kQr+nF1Shvd3xwKOU1SejJXp1y+6w==
X-Received: by 2002:a05:620a:7116:b0:7fe:a9cf:7c1a with SMTP id af79cd13be357-883523d6db7mr302894485a.20.1759888853554;
        Tue, 07 Oct 2025 19:00:53 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-98-203-182-20.hsd1.wa.comcast.net. [98.203.182.20])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-87771129f41sm1621920085a.3.2025.10.07.19.00.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 19:00:53 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org,
	Christian Brauner <brauner@kernel.org>,
	Oleg Nesterov <oleg@redhat.com>
Subject: [PATCH v2 2/3] pidfd_open.2: add PIDFD_THREAD
Date: Tue,  7 Oct 2025 19:00:29 -0700
Message-ID: <20251008020031.1215030-3-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251008020031.1215030-1-kolyshkin@gmail.com>
References: <20251008020031.1215030-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

PIDFD_THREAD flag for pidfd_open(2) was added in Linux 6.9 (see [1]).
EPOLLHUP was added in Linux 6.9 (see [2]).

This adds description of both, mostly taken from kernel commit
messages and previous discussions in linux-man (see [3]).

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=64bef697d33b
[2]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=43f0df54c96f
[3]: https://lore.kernel.org/linux-man/20240709021335.158849-3-kolyshkin@gmail.com/

Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/pidfd_open.2 | 35 +++++++++++++++++++++++++++++------
 1 file changed, 29 insertions(+), 6 deletions(-)

diff --git a/man/man2/pidfd_open.2 b/man/man2/pidfd_open.2
index 3c7c568c2..e8b61ec3e 100644
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
 .RI ( libc ,\~ \-lc )
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
+.BR PIDFD_THREAD " (since Linux 6.9)"
+.\" commit 64bef697d33b75fc06c5789b3f8108680271529f
+Create a file descriptor that refers to a specific thread, rather than a process
+(thread-group leader). If this flag is not set,
+.I pid
+must refer to a process.
+.P
 .SH RETURN VALUE
 On success,
 .BR pidfd_open ()
@@ -155,13 +163,28 @@ .SS Use cases for PID file descriptors
 .BR select (2),
 and
 .BR epoll (7).
-When the process that it refers to terminates,
-these interfaces indicate the file descriptor as readable.
+When the task that it refers to terminates and becomes a zombie,
+these interfaces indicate the file descriptor as readable
+.RB ( EPOLLIN ).
+When the task is reaped, these interfaces produce a hangup event
+.\" commit 43f0df54c96f
+.RB ( EPOLLHUP ).
 Note, however, that in the current implementation,
 nothing can be read from the file descriptor
 .RB ( read (2)
 on the file descriptor fails with the error
 .BR EINVAL ).
+The polling behavior depends on whether
+.B PIDFD_THREAD
+flag was used when obtaining the file descriptor:
+.RS
+.IP \[bu] 3
+With \fBPIDFD_THREAD\fR, the file descriptor becomes readable when the task
+exits and becomes a zombie, even if the thread-group is not empty.
+.IP \[bu] 3
+Without \fBPIDFD_THREAD\fR, the file descriptor becomes readable only when
+the last thread in the thread group exits.
+.RE
 .IP \[bu]
 If the PID file descriptor refers to a child of the calling process,
 then it can be waited on using
-- 
2.51.0


