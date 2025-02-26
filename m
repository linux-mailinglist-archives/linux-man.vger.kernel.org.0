Return-Path: <linux-man+bounces-2521-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9339BA46D70
	for <lists+linux-man@lfdr.de>; Wed, 26 Feb 2025 22:29:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1E311188A3FB
	for <lists+linux-man@lfdr.de>; Wed, 26 Feb 2025 21:29:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38B1925A327;
	Wed, 26 Feb 2025 21:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="js0PpPeO"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f73.google.com (mail-ed1-f73.google.com [209.85.208.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45105258CEA
	for <linux-man@vger.kernel.org>; Wed, 26 Feb 2025 21:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740605372; cv=none; b=PQdaImIMxJvqpLIcvxWvGPiVwsXX+7mGVaQTfBXIIsxWiAmIM0igwsa4oTNzMlL9vVqKvw34ucNSba8d8v/LNfhjpQpxuhLvHjkd7K1y2HbLNd1A+oPFJ4lqfYKXFKFikawNnrejKgSo1RpZJkYj97wzB8l9Nz+iJlvZtmb/NWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740605372; c=relaxed/simple;
	bh=dy2LKUz/GxpxiCCDBHlVEmbv1QTK7+/AxNjG8sKT0ZM=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=MCbR34ZZl/uTVDT81AcRR3ymVculkpP0FeHcFLIMQZ+HhwDTWd8+Nj2HorNLorTkns1eRGC30RpFjw0szpWIjaIYWrpnnLzpcJHTMn+VhnwuwaE7oRoowImrJPz8u68VbLAXOVVz8hgavifWlOqX+7GY9WI72F6xTjiSD6GZkCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=js0PpPeO; arc=none smtp.client-ip=209.85.208.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ed1-f73.google.com with SMTP id 4fb4d7f45d1cf-5e067bbd3baso130962a12.3
        for <linux-man@vger.kernel.org>; Wed, 26 Feb 2025 13:29:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1740605368; x=1741210168; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BdSfiiQ1rm6J5OqRayCRokLGR7zPXC5FGXMW8iNKpAk=;
        b=js0PpPeO6oQTr/EBPkwFwD91FjKNqyf7ZvQ/BEpZ5HMZgXjd0nEOOb0C+Bphl7ErEw
         DFbK9ViuunnuUO15ULugNgdbKVErZQ+58++umP8HbLGYIcgzGtF9tOXicWs9b8x4Ct+q
         KjDlqYMGLIz42S6pa9ngIMWsIe6hgc7W7i1Yhw3KrAo/kjDcyy34Lk/I8NL4XPudI5GM
         jXihFMG7XqsNq9HgyF031jn6P27be2PMT3L2+j8QtDkAIj9/0TZicqbCYan+eYL09DRv
         v2K9ZDrnDKUVNDdMITcqPx4Uu33GFkThBr5US/F9uDHou/VafNG7JMC1/KKWQrMK5xJD
         2DGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740605368; x=1741210168;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BdSfiiQ1rm6J5OqRayCRokLGR7zPXC5FGXMW8iNKpAk=;
        b=Mzl0XTN5KVdI8jkVRfjF5D4Hlp5eqdhomDKIcuNX0WEyL7GMJiGeU3HiGbQ1UZo7uc
         +3P0wxAZd4Qwt0ilAMfKzJoHh7df00t+JwpeFqCFU9xOi/w/DovNF8JGlmNPWXv3r4Xe
         3qgJum0QppAOky0839BxH/SgDKqDmrJJq7mlrdya5tQugtyOIPIE/mYMZV+rWCTrgU0W
         ZAfdW/TbWA75O5hhvhV5munRZ7RSQqu5JhlLxFQeRrbn0Qh8y6iwen703TXsw4bxa0fc
         Je83Qe3mSN0Q5D2tDSoUiJ/yBKf72iENPUtojNiQeSTruGqNcJL+B5W33amx2TwIgIfu
         2tWQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4LMf/nfs89JcsBgnxpB+N6aPa5xdnYc6ZGJ1ziXxRwuJnmWxlY+fMu1N5INxF6GiGfo67bfW4viM=@vger.kernel.org
X-Gm-Message-State: AOJu0YyF2/tRukmp4dzUUYcobiNw0KVzA4EPmwSWCbWM3jLln0Kj5BN1
	uSGo6KNqEM+dFW5bh/qST+b1iDIMoTURGeRhSRFsi01O2JrPA2cV+WYyo1e6OOTFA4Ci68hGS9y
	h5A==
X-Google-Smtp-Source: AGHT+IGyYmfSNl2oe2Ir5W73U5eZqbZctDfv7S5RlHdB8m5KMvbjvfPGovW3/KAElEiWC7NaVDZXy/tfL6k=
X-Received: from edrl1.prod.google.com ([2002:aa7:c3c1:0:b0:5dc:d090:1b21])
 (user=gnoack job=prod-delivery.src-stubby-dispatcher) by 2002:a05:6402:518f:b0:5e4:9edc:a779
 with SMTP id 4fb4d7f45d1cf-5e4a0d71cadmr6145630a12.13.1740605368782; Wed, 26
 Feb 2025 13:29:28 -0800 (PST)
Date: Wed, 26 Feb 2025 22:29:11 +0100
In-Reply-To: <20250226211814.31420-2-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250226211814.31420-2-gnoack@google.com>
X-Mailer: git-send-email 2.48.1.711.g2feabab25a-goog
Message-ID: <20250226212911.34502-3-gnoack@google.com>
Subject: [PATCH v2 2/3] landlock.7: Move over documentation for ABI version 6
From: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>, 
	"=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?=" <mic@digikod.net>, Tahera Fahimi <fahimitahera@gmail.com>
Cc: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>, Tanya Agarwal <tanyaagarwal25699@gmail.com>, 
	linux-security-module@vger.kernel.org, linux-man@vger.kernel.org, 
	Daniel Burgener <dburgener@linux.microsoft.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

With this ABI version, Landlock can restrict outgoing interactions with
higher-privileged Landlock domains through Abstract Unix Domain sockets and
signals.

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
2.48.1.711.g2feabab25a-goog


