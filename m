Return-Path: <linux-man+bounces-4116-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D5573BD5E41
	for <lists+linux-man@lfdr.de>; Mon, 13 Oct 2025 21:12:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 755DC4EA7E3
	for <lists+linux-man@lfdr.de>; Mon, 13 Oct 2025 19:12:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 167CE2D8767;
	Mon, 13 Oct 2025 19:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ngXyMKk9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612152D7DCC
	for <linux-man@vger.kernel.org>; Mon, 13 Oct 2025 19:12:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760382722; cv=none; b=AjJkHvErihk42v8fvY+hI75zJqRrMSQ1hAa5nBt02Q/p7bMdHiHw0a474MFLnqSRvGNn+hDetxVWwKCL+LkltwfM9IQ6enLs4Jt7F8aSm4CBju9HXXOJNKzoKBS8brRJFhVZjzxNJippbha9Zyo/EKparpUJKOr1KF4u6Y9Hwn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760382722; c=relaxed/simple;
	bh=o8Nsb2zog4oO4R1R64WhhVhD8sECLixYXnLrUJu/61Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=U4cH4unJemBrEUw1RI0tWW4jiWXVbFQmNjGnv2oGpR0oMhNnuzSLP2YY4iepDldDXdGTIrCSN7GcrMcK0USQn7cozHGbEbiYrfe5lQazBLzW3mN3hk4P6wODBBHre49LdeKFq5EpDn9tGEvai3BZMy2UenVd4YYb2v7Nlw74jKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ngXyMKk9; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-3324fdfd54cso4904225a91.0
        for <linux-man@vger.kernel.org>; Mon, 13 Oct 2025 12:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760382721; x=1760987521; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8+9mN1Ts8I7gBuqetVJU5FdfI57OIdWabtLCTB4yfeo=;
        b=ngXyMKk94RlC9b3oMqUQZaCLJgT3yEOZRNl3SdLJwixkcorpi0wjNkpt0yMHD8N3y1
         FtjNkGDWickkrL6AD717xIL6RvI3DWy9XimPJy3pUcsIzmlWo0XJ+NDjcIa1hOAGyI7g
         Ci8vhyYLjQ0gK/tVrNiKlOoYOXis9pmHz9VEXW5hGI1BGmVBVNqDSSGVOuCBBJO2koSE
         Lrjs82G5EBuocX+iVJVCJAqidPHlWVV2bqTQK66y9Rn6+6h/odM2dsewJaWrJUvuDpCd
         qIYTMMru7GCg292uHX3BQRh1EqNckKVrQhhxLVuHhH/hDLZDQzk9u55xzWC3OD2/HfOJ
         uLrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760382721; x=1760987521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8+9mN1Ts8I7gBuqetVJU5FdfI57OIdWabtLCTB4yfeo=;
        b=bq+nS8ZD1omEXBTagxmtMbck+l6HqSvNd30xSFdsUQIdPJ/F40zEjBP5hanydmzEfQ
         XKOPScVB/odkcuP9ke0mKa1RbUFtUmlLYz0XM0tkq1a3GG+3RZd7JHTO0OJCq5G5+Pv1
         2YpcphDDy9WvhuJlHDdRBIE/l9MGdca/Krep2kbNehDZ63tbk8421rVZgXpJROamAU8c
         GQQatTnrQS1jR9+EcbXJExf181az/0U4AN45LuW5T3Ell1VE7kRXJykAWyhUHduF9s3t
         GonJ9YtyUrhCPc7U9ASyYh/Mv4DqSobiDGzDz1UFvIg0XfjXegVtWIvTVXARGrx/oBIx
         3Kkw==
X-Forwarded-Encrypted: i=1; AJvYcCXM/4VC70MZlFEqqd6ylCfKrkKAT1bQ6LGgyEwXSPTz+sNC3dg2ZOmBQJ5O+uh2V9Zfjudq3UDscy4=@vger.kernel.org
X-Gm-Message-State: AOJu0YyY46gQuhOdlBsb+2DYxXkJJUDE9CiW38D4MNlKZsEQfz6bNb+b
	kfkx1VpRaswX97PVPTr9wBS3kNWz09YRRymg7RcMjOfCcNaB3VUrCQXq
X-Gm-Gg: ASbGncsvwCJy99hfNyLtEz+UJ/JGKmFAbJnaInmv294GCUFfJb2HOqsG+iBGps8pzG2
	Q1KlHUDVVQ4ofXR6xSrIEdwtGThzKUa9Hxh58llEOF1ldC1TpDYTeFKpZwv9XpiFG0IbFHScdw2
	jzfXguOIu41NFQJ7d9ufJHmUzT+sHnzXhL7Kdt8im3i7bu8tV7uj51lcpY49XYi1/trUMMtH99G
	jTg+/kx2ogHnvuTjak1ONsl2VXN4b1tIRnEy4LBu4nyOlDvnzeJtjkeZC6rjWwF+KWrzHWBAvTw
	KZmOoOGRkxNOmw2Yb0pW/EA6MxUaVtPx7FwtZ9ihDkcBfXejhBLi55Wwk+hhEpKn822z7+/mObR
	6lNNEK+5a3o44uNuChEXwKhQn75GKv1cZHz8GUG0qki6xNnNf+eKUt71QywdblpzOCPiZtEGjnS
	HB38y0SWfu8O/9og==
X-Google-Smtp-Source: AGHT+IHQWw1qXh7y4nm20haStqpiSP2FYxI/cMrCyUWc4dEg9RlyuA/luLTx9WdI4l4D/qZ+hXN/mg==
X-Received: by 2002:a17:90b:1b4c:b0:327:9e88:7714 with SMTP id 98e67ed59e1d1-33b513ebf89mr31678160a91.37.1760382720476;
        Mon, 13 Oct 2025 12:12:00 -0700 (PDT)
Received: from kir-tp1.lan (c-98-203-182-20.hsd1.wa.comcast.net. [98.203.182.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b626bb72dsm12883705a91.14.2025.10.13.12.11.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 12:11:59 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org,
	Christian Brauner <brauner@kernel.org>,
	Oleg Nesterov <oleg@redhat.com>
Subject: [PATCH v3 2/3] pidfd_open.2: add PIDFD_THREAD
Date: Mon, 13 Oct 2025 12:10:48 -0700
Message-ID: <20251013191049.193375-2-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <7vb3ed5qttoe6n5ozzjwqtzw5iupifozplkkhd3jjvbhy5efqy@d4ksex445ixl>
References: <7vb3ed5qttoe6n5ozzjwqtzw5iupifozplkkhd3jjvbhy5efqy@d4ksex445ixl>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

PIDFD_THREAD flag for pidfd_open(2) was added in Linux 6.9 (see [1]).

Add a TODO to describe the nuances of using poll/epoll/select
with a pidfd referring to a process vs a thread.

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=64bef697d33b

Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/pidfd_open.2 | 35 +++++++++++++++++++++++++++++------
 1 file changed, 29 insertions(+), 6 deletions(-)

diff --git a/man/man2/pidfd_open.2 b/man/man2/pidfd_open.2
index 3c7c568c2..60cac6fdd 100644
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
+the task referenced by
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


