Return-Path: <linux-man+bounces-2293-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7FAA1BAA6
	for <lists+linux-man@lfdr.de>; Fri, 24 Jan 2025 17:38:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 422E27A1B60
	for <lists+linux-man@lfdr.de>; Fri, 24 Jan 2025 16:38:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 029D21ADC94;
	Fri, 24 Jan 2025 16:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="sFqdgpHM"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f74.google.com (mail-ej1-f74.google.com [209.85.218.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E241A239C
	for <linux-man@vger.kernel.org>; Fri, 24 Jan 2025 16:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737736675; cv=none; b=np0GH8nIkcZOE046mfx8R7p6ReSaXxokdbF/RvMDx+aHflfTeQwCaN6A5hvuRlHvujpla/pi0FDRTuK4IRfmhF/w/NqwSVHO6Ku6HsQQiTQbn6+pOOIjG6YH78g0vYZ2sVxZ3e79zpIpdw3aEUiCcYj3fYChCqAO14lPdml+wSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737736675; c=relaxed/simple;
	bh=81S+OhuqYT30WiAVYnENDrxgWLWc09gjEhhp1CheJmY=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=RvB2kixlrIFfqSSPrvc1+A0ddet9D23xNzTLfI+FXY7nGFDWvs8F0s4jjXwofsatyMqXYPJNCQJQhLxPm9Omj/ds7W6rQzrvnxowtqeenga+cKRrIeCDunRrx5gRCzb+bGLe13+Ey0ELCiO3KmUuhDrT9GuB3rQ79Ek3ewST5f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=sFqdgpHM; arc=none smtp.client-ip=209.85.218.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ej1-f74.google.com with SMTP id a640c23a62f3a-aa6a87f324cso239313466b.1
        for <linux-man@vger.kernel.org>; Fri, 24 Jan 2025 08:37:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1737736672; x=1738341472; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=81S+OhuqYT30WiAVYnENDrxgWLWc09gjEhhp1CheJmY=;
        b=sFqdgpHMzOsCIh5aooQdmkY/GZO03B+C2pyHip0tdAktgXayGIttk6UzjlvL9NMUb9
         BKWt6SWAHgdE7XLgqiwQA7b5jjFwHBRfpVmbQLnyoZdNHvd5ifHyZ2Pomw/dShN+iz/9
         43giOi2aRXQF8xRzorT6sSBBo0Jo4QHco40lq0dXZPC1H2P52QdqFZt5ijYmLHgMdUwt
         cdZjLfv0Vs813m81NIKpbrZ47KATPQaVDchNY+Rlv49UYRQ2jtT5999oveyVTZspsX+z
         SAD3GwGIG9OVICmf7O2Vzr/t+naJ0Ek+w2Db1HB8E5aDQvgq7TdqCC9wrAy74W+rhsPD
         SILw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737736672; x=1738341472;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=81S+OhuqYT30WiAVYnENDrxgWLWc09gjEhhp1CheJmY=;
        b=Q+IowdhIF4UOd3S1P0jpLKebRAuDrlB7EfoID4jD+XyFfxCDVjvFkAz0p/tZCljaUQ
         1VZOJMfy4EsLpYaZjsO1aH3vp+wyf7e6huQ7PWS7HlNoPNpRjZKi0ro4LtqjA1ih12/1
         GwWvYvlJR0iOaLGPtHyMCfgGFpNR02DoxwGExhEC7ccRrQuEe6xGmUyaJaF3rNQn6tla
         KKghlcje2qOgTbXwYIf8nAAg86NfsR7nYyEBFvOaC3iTep0/CqG/RgZYyMBIa6Uhm3to
         UbqLTziq2CQKG+o9Y9NbXi8gO8QrWsJ/odZzythYf0utwLu4xTjiRrjDM1xpurK/9qsD
         58TA==
X-Gm-Message-State: AOJu0Yw4id1SI5KV1+sxOOLNGQrnnAUnLx7FJxWo9JX5dlDfgSqXjX7b
	aIjZJaHE+xRODrJI8R/wscVtvcAu5oLNiPzTi6pztMO5lbQeO0MtwvAKN8EvlnAoKLIM+NFa7L4
	3Lg==
X-Google-Smtp-Source: AGHT+IHrozronjuM0lUY9xcl9cjutyhwVawle0xUuHs8b3sYu0CI9pM0pGP5uhEvOqCoeshxgbHGXlXxzXk=
X-Received: from ejpi22.prod.google.com ([2002:a17:906:4456:b0:aab:bda8:ba9f])
 (user=gnoack job=prod-delivery.src-stubby-dispatcher) by 2002:a17:907:3f90:b0:aa6:6f92:74b1
 with SMTP id a640c23a62f3a-ab38b231a83mr2958969566b.13.1737736672390; Fri, 24
 Jan 2025 08:37:52 -0800 (PST)
Date: Fri, 24 Jan 2025 16:37:10 +0000
In-Reply-To: <20250124154445.162841-1-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250124154445.162841-1-gnoack@google.com>
X-Mailer: git-send-email 2.48.1.262.g85cc9f2d1e-goog
Message-ID: <20250124163709.168805-4-gnoack@google.com>
Subject: [PATCH man 3/3] landlock.7: Update wording in line with kernel side proposal
From: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, linux-security-module@vger.kernel.org, 
	"=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>, 
	"=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?=" <mic@digikod.net>, Tahera Fahimi <fahimitahera@gmail.com>, 
	Tanya Agarwal <tanyaagarwal25699@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Cc: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
Cc: Tahera Fahimi <fahimitahera@gmail.com>
Cc: Tanya Agarwal <tanyaagarwal25699@gmail.com>
Link: https://lore.kernel.org/linux-security-module/20250124154445.162841-2=
-gnoack@google.com/
Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
---
 man/man7/landlock.7 | 75 ++++++++++++++++++++++-----------------------
 1 file changed, 37 insertions(+), 38 deletions(-)

diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
index 30dbac73d..749b4a3fa 100644
--- a/man/man7/landlock.7
+++ b/man/man7/landlock.7
@@ -357,46 +357,45 @@ which means the tracee must be in a sub-domain of the=
 tracer.
 Similar to the implicit
 .BR "Ptrace restrictions" ,
 we may want to further restrict interactions between sandboxes.
-Each Landlock domain can be explicitly scoped for a set of actions
-by specifying it on a ruleset.
-For example, if a sandboxed process should not be able to
-.BR connect (2)
-to a non-sandboxed process through abstract
+Therefore, at ruleset creation time,
+each Landlock domain can restrict the scope for certain operations,
+so that these operations can only reach out to processes
+within the same Landlock domain or in a nested Landlock domain (the "scope=
").
+.P
+The operations which can be scoped are:
+.P
+.TP
+.B LANDLOCK_SCOPE_SIGNAL
+When set,
+this limits the sending of signals to target processes
+which run within the same or a nested Landlock domain.
+.TP
+.B LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET
+When set, this limits the set of abstract
 .BR unix (7)
-sockets,
-we can specify such a restriction with
-.BR LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET .
-Moreover, if a sandboxed process should not be able
-to send a signal to a non-sandboxed process,
-we can specify this restriction with
-.BR LANDLOCK_SCOPE_SIGNAL .
-.P
-A sandboxed process can connect to a non-sandboxed process
-when its domain is not scoped.
-If a process's domain is scoped,
-it can only connect to sockets created by processes in the same scope.
-Moreover,
-If a process is scoped to send signal to a non-scoped process,
-it can only send signals to processes in the same scope.
-.P
-A connected datagram socket behaves like a stream socket
-when its domain is scoped,
-meaning if the domain is scoped after the socket is connected,
-it can still
+sockets we can
+.BR connect (2)
+to
+to socket addresses which were created
+by a process in the same or a nested Landlock domain.
+.IP
+A
+.BR send (2)
+on a non-connected datagram socket is treated like an implicit
+.BR connect (2)
+and will be blocked when the remote end does not stem
+from the same or a nested Landlock domain.
+.IP
+A
 .BR send (2)
-data just like a stream socket.
-However, in the same scenario,
-a non-connected datagram socket cannot send data (with
-.BR sendto (2))
-outside its scope.
-.P
-A process with a scoped domain can inherit a socket
-created by a non-scoped process.
-The process cannot connect to this socket since it has a scoped domain.
-.P
-IPC scoping does not support exceptions, so if a domain is scoped,
-no rules can be added to allow access to resources or processes
-outside of the scope.
+on a socket which was previously connected will work.
+This works for both datagram and stream sockets.
+.P
+IPC scoping does not support exceptions via
+.BR landlock_add_rule (2).
+If an operation is scoped within a domain,
+no rules can be added to allow access
+to resources or processes outside of the scope.
 .\"
 .SS Truncating files
 The operations covered by
--=20
2.48.1.262.g85cc9f2d1e-goog


