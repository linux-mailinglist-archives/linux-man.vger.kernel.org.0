Return-Path: <linux-man+bounces-2292-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F095A1BAA3
	for <lists+linux-man@lfdr.de>; Fri, 24 Jan 2025 17:37:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8A57C7A1438
	for <lists+linux-man@lfdr.de>; Fri, 24 Jan 2025 16:37:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 708DC1991AF;
	Fri, 24 Jan 2025 16:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="obaZjFub"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f74.google.com (mail-ej1-f74.google.com [209.85.218.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6E11990C5
	for <linux-man@vger.kernel.org>; Fri, 24 Jan 2025 16:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737736672; cv=none; b=YhqEvFXmlGNQzipD8zst6sb4hQYAp5NUbOFlDThcbT/4kV7BsFdctlcCLeku6Vwdxxes04jat9NhJVFP/k3epQ+twN3EarNi/biDO99SZtSPsgV0co083JyzxlT2vYrhXzvzjoVQcOE8LmRRNEaFkUGDhcn2MLo3fGm9ByGqyzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737736672; c=relaxed/simple;
	bh=j6USTa6pm15px+wXhvEW4Bihhlh4P/An65yi+KMFLTo=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=ouJL0k/tHKY4JIQIBXjAtloniai2cwWVrJdyKlzuN8sE0fCnxsxeyhU0LD65ntZBmyIg0zLVg8b42m8SrFxD9XWs34iqifHmpKDV+FLIPb6Imz8Lm8NDu/pWFizWU4+pFqX1ZUNzEUCOXJS93WiG23abRFIOLwjv89j7yMZ+rmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=obaZjFub; arc=none smtp.client-ip=209.85.218.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ej1-f74.google.com with SMTP id a640c23a62f3a-aa67f03ca86so189369366b.2
        for <linux-man@vger.kernel.org>; Fri, 24 Jan 2025 08:37:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1737736669; x=1738341469; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mRSlSYjWIHgZvKVgeVYAoe/yruh6HvLc215c9xsjuX0=;
        b=obaZjFubj+ow8hbuG/cBXpXz0iPPsK5DQbTi72hlDo+T1lsNeUer0ya3edxSoZnCug
         H38ezupfXFShhxDx8LUCvghtGw11zxjQUj63njMK4oHikJ1Q+5OUr65CdMslWkZfddeB
         Gbq3dsRQMsnezFkxzo+fdTfSV8bSKphaSClkWr2bkPPpRpDfsSLJmDpjon2SFNDkUdDI
         t/4/Mt0QYLx9TuvTXDcBVgYxD9+ZypFkXxomi+KTZ89hYhE8bJYfdVutMi9hr3yRaC/D
         meVh8Nrlz37QS8CTnxu1SQEgqr+nar4M7BdLHgfDSpX17PlgcGhtc/leEUlnIgQnfY/L
         /7CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737736669; x=1738341469;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mRSlSYjWIHgZvKVgeVYAoe/yruh6HvLc215c9xsjuX0=;
        b=mgsiQ1EnZ6VwTKQZ9RFCa4MlXNgbmljySs/4fBlgYahBw7yHXIs9WA41v4F8ciiH3G
         KKibbgdnntz0dMI8jJZ3PXYbSJRrBkyQlSj6ylL1N1lkW1dky1lO2JQHPut0Wy8yQ6Oq
         Gs4Y2l4Em10pj7gH+F8QAlFhxpIIuEkeZvjdeujFktR4LUfnnZ3CvDBNoRURpiV3c77m
         q+vWqBCDlFmC6hvRlR33znIhbmYT5Aac4cABWj1u1H0Age0KOEjZtdDU3ukHZ85kL2Lq
         XkBnlgd5FbL5fduzR5gBTjzS5sKr1sol0JDVOkQQ6WGxcIU4Kg7Wr/pgLObqqZoUUgFH
         Suxg==
X-Gm-Message-State: AOJu0YysMprDHd30XfqQVFuGoROAV+1FO5XYwYhxBVdzErjZhGvdHN5w
	7S1vWZ7v9YjyV/6PsYDtU0g1sYh7wo0r1yiFCOMhifVR7hxLqw9wPXto71ZarcZgnRpF1ZC1fFV
	6xQ==
X-Google-Smtp-Source: AGHT+IEEC928SpjHB/WwoDmkptV3MMx0uk1XIs6iD2/VYfn4srfIx8ZY+zlS566BIzZ1ihuBgQkIX8IUtMk=
X-Received: from edbio6.prod.google.com ([2002:a05:6402:2186:b0:5d9:87fb:9151])
 (user=gnoack job=prod-delivery.src-stubby-dispatcher) by 2002:a05:6402:34ca:b0:5d0:81f5:a398
 with SMTP id 4fb4d7f45d1cf-5db7d2dc58bmr66839625a12.1.1737736668781; Fri, 24
 Jan 2025 08:37:48 -0800 (PST)
Date: Fri, 24 Jan 2025 16:37:09 +0000
In-Reply-To: <20250124154445.162841-1-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250124154445.162841-1-gnoack@google.com>
X-Mailer: git-send-email 2.48.1.262.g85cc9f2d1e-goog
Message-ID: <20250124163709.168805-3-gnoack@google.com>
Subject: [PATCH man 2/3] landlock.7: Move over documentation for ABI version 6
From: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, linux-security-module@vger.kernel.org, 
	"=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>, 
	"=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?=" <mic@digikod.net>, Tahera Fahimi <fahimitahera@gmail.com>, 
	Tanya Agarwal <tanyaagarwal25699@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

With this ABI version, Landlock can restrict outgoing interactions with
higher-privileged Landlock domains through Abstract Unix Domain sockets and
signals.

Cc: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
Cc: Tahera Fahimi <fahimitahera@gmail.com>
Cc: Tanya Agarwal <tanyaagarwal25699@gmail.com>
Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
---
 man/man7/landlock.7 | 69 ++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 68 insertions(+), 1 deletion(-)

diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
index 11f76b072..30dbac73d 100644
--- a/man/man7/landlock.7
+++ b/man/man7/landlock.7
@@ -248,7 +248,8 @@ This access right is available since the fifth version =
of the Landlock ABI.
 .SS Network flags
 These flags enable to restrict a sandboxed process
 to a set of network actions.
-This is supported since the Landlock ABI version 4.
+.P
+This is supported since Landlock ABI version 4.
 .P
 The following access rights apply to TCP port numbers:
 .TP
@@ -258,6 +259,24 @@ Bind a TCP socket to a local port.
 .B LANDLOCK_ACCESS_NET_CONNECT_TCP
 Connect an active TCP socket to a remote port.
 .\"
+.SS Scope flags
+These flags enable to isolate a sandboxed process from a set of IPC action=
s.
+Setting a flag for a ruleset will isolate the Landlock domain
+to forbid connections to resources outside the domain.
+.P
+This is supported since Landlock ABI version 6.
+.P
+The following scopes exist:
+.TP
+.B LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET
+Restrict a sandboxed process from connecting to an abstract UNIX socket
+created by a process outside the related Landlock domain
+(e.g., a parent domain or a non-sandboxed process).
+.TP
+.B LANDLOCK_SCOPE_SIGNAL
+Restrict a sandboxed process from sending a signal
+to another process outside the domain.
+.\"
 .SS Layers of file path access rights
 Each time a thread enforces a ruleset on itself,
 it updates its Landlock domain with a new layer of policy.
@@ -334,6 +353,51 @@ and related syscalls on a target process,
 a sandboxed process should have a subset of the target process rules,
 which means the tracee must be in a sub-domain of the tracer.
 .\"
+.SS IPC scoping
+Similar to the implicit
+.BR "Ptrace restrictions" ,
+we may want to further restrict interactions between sandboxes.
+Each Landlock domain can be explicitly scoped for a set of actions
+by specifying it on a ruleset.
+For example, if a sandboxed process should not be able to
+.BR connect (2)
+to a non-sandboxed process through abstract
+.BR unix (7)
+sockets,
+we can specify such a restriction with
+.BR LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET .
+Moreover, if a sandboxed process should not be able
+to send a signal to a non-sandboxed process,
+we can specify this restriction with
+.BR LANDLOCK_SCOPE_SIGNAL .
+.P
+A sandboxed process can connect to a non-sandboxed process
+when its domain is not scoped.
+If a process's domain is scoped,
+it can only connect to sockets created by processes in the same scope.
+Moreover,
+If a process is scoped to send signal to a non-scoped process,
+it can only send signals to processes in the same scope.
+.P
+A connected datagram socket behaves like a stream socket
+when its domain is scoped,
+meaning if the domain is scoped after the socket is connected,
+it can still
+.BR send (2)
+data just like a stream socket.
+However, in the same scenario,
+a non-connected datagram socket cannot send data (with
+.BR sendto (2))
+outside its scope.
+.P
+A process with a scoped domain can inherit a socket
+created by a non-scoped process.
+The process cannot connect to this socket since it has a scoped domain.
+.P
+IPC scoping does not support exceptions, so if a domain is scoped,
+no rules can be added to allow access to resources or processes
+outside of the scope.
+.\"
 .SS Truncating files
 The operations covered by
 .B LANDLOCK_ACCESS_FS_WRITE_FILE
@@ -413,6 +477,9 @@ _	_	_
 \^	\^	LANDLOCK_ACCESS_NET_CONNECT_TCP
 _	_	_
 5	6.10	LANDLOCK_ACCESS_FS_IOCTL_DEV
+_	_	_
+6	6.12	LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET
+\^	\^	LANDLOCK_SCOPE_SIGNAL
 .TE
 .P
 Users should use the Landlock ABI version rather than the kernel version
--=20
2.48.1.262.g85cc9f2d1e-goog


