Return-Path: <linux-man+bounces-4665-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 004EBCF7EB2
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 11:58:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 32D5C30321ED
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 10:54:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DDA3327797;
	Tue,  6 Jan 2026 10:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F8ajgJPh"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A87F932721D
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 10:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767696850; cv=none; b=sxjOY6N++2uSYNKnknS0eF67poMk2Lm6ay2rMWcAnObk7HhKCGfLjw8aIDZ9qpyALSTKJHeUVyoSCyQH96z8OfAa4hRNy95EG7Bx4tIgoZB4u3eG4navyXFdpopLzdJtdDPog8MswJahkLblStmSZ6PfhotfCH047Jun9VjhFa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767696850; c=relaxed/simple;
	bh=8f7LxaZPLn/p8tK+quNqIuhm2GoB6/q145fKRnt4Zzk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=evq2bFdzcsofTHO13mqU/BheM0Zb+JXFleq+uO5WTsd7BSqFBg5fyIOS4q023IuH6DpdzRid5R1BaAZ+4o+LUN5Aa0qTXWnkfQd8LVDP6VPjLI9cPSwha/2f8dhOAWzBxpDtXhkRUIYHO+yZ6kj/sfOnyRa+Lo8ATSapEnLzx9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F8ajgJPh; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-47aa03d3326so6936935e9.3
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 02:54:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767696846; x=1768301646; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2mAgl6YLeuiXG+TMiylLr5yean6tJHyR6XoufJTlfk0=;
        b=F8ajgJPhJNWLf8RY0RNOdYw9cpIybOos6z4c7RqS5X8ltuTPKgQB3k2fnP2YHHQePL
         om4n7+Fv4RxrUzLw3IlAF2+9BPu/qnQpZ7+3FbmKL3WOsyZsoSmNVjbSf9FEzn4k5IHh
         AYRGcdrCIye9CN4Ys45S8afLEFz5X0mQ7xZVp2JgtVT+5mtfq7i8vO6zCFGeoQ+76ntr
         1acOJi93YeYA07p9Qq2GxJoVv2GK5MBMe4OS+sdJnoMCL7dxUNH5zb/axnsDrp3hw1Hr
         pgvTXMBITghLGhl4HL1jR6e097efW24tymapGrRkgbTS3yBSnLz66ZuihMTuBqy7pON2
         BPAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767696846; x=1768301646;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2mAgl6YLeuiXG+TMiylLr5yean6tJHyR6XoufJTlfk0=;
        b=L5zMX/7JPhz5izZ3o0uKt09fMk0zf/okqY4ftTUeJRpW5VFnChNxy4Bpn7H0VCI9NB
         mXMcteql0FhsKyM9TqSAExzeHxXmJPwruNOXgUuPy9ODS1xUFGXL8oF0Sm7qKyDQVlNX
         ho7KJscgnx02gRZ8AAAlxjAIER2f+t6+7i2td4Su9+RPmL4ZwUJpyPC5ToV/dblJuNUB
         I+4pUHCeGc1RasRDn02sbPB/a2YHZTWzO7LoKxLgF+dt31kSXq7cqA7T9cNUaCHGDSY4
         Ii1AaJNR/B3S2UtoQJqOWL8saGrMoUi/WmD6kgwqQ5qkba7iXR5iJXSbchmqXREyrKM/
         D2Mw==
X-Gm-Message-State: AOJu0YyukRNqC4CBQUf8+4C3CkZvMHT0hKpoiuMeeMhayKeRDXqJJrzF
	6aOlc/iUcc0N3a6dwg0LUN7gy8vG67rs7eyBd4FBcI12g0Kew3RNnxF9
X-Gm-Gg: AY/fxX6sgoihybhb1ztifs7KngJnSXyg5b/jSvMjnj5ZBQutVghGiB7uKBryR96q7CR
	/QH3I3qoWPNF0IwCa5ViTQwCKtxsmbmphk1ul0O/E70I4QOVkNfDw4O5TPZc/U+VdVMmyc+A8sI
	jo0bq+5wjhH8cJB+7McG0vwqb+tdUZy159p+EjP6jgCbmtXScS57Scsn1fDc1oT0oRFNcPVWICv
	lcUH8d/C06tmeZSKG6dIJsItL3Ego99yzFHAaGP04wfwSucQ78A/AoLHYk70a6wgIols3Hn1zlq
	DSJTGhxaPw+pK2KL8htK2r4zOL9zNh9RLRALirzPzO++7UeTG06V4n+not0D9i/97BNn57PjZx7
	My6SJyG3ZLqOukXeafzpjrlF30oxbpn/zHqVEEeprVMNYISknBK0mrU7LltybPEXkR3jrLXG+J5
	mmkV3uJirbOSTuY7tAiPxI02u59SeNXftstxZC
X-Google-Smtp-Source: AGHT+IF8WSh/e4GuF1I+iHBvCV7Tfan9lH0dyMflVoGkOUdNV3B+3ICJLztdChV7DgEhGWiGKJjuSg==
X-Received: by 2002:a05:600c:4509:b0:477:7768:8da4 with SMTP id 5b1f17b1804b1-47d7f063343mr25402545e9.7.1767696845793;
        Tue, 06 Jan 2026 02:54:05 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.223])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f68f4ddsm38062995e9.2.2026.01.06.02.54.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 02:54:05 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	champbreed1@gmail.com
Subject: [PATCH] man3/creal.3, man3/cimag.3: Standardize style and history
Date: Tue,  6 Jan 2026 10:53:57 +0000
Message-ID: <20260106105357.52010-1-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Consolidated VERSIONS and HISTORY sections to match project standards.
Moved GNU extension notes for __real__ and __imag__ to a clearer
format within VERSIONS.

Signed-off-by: Simon Essien <champbreed1@gmail.com>
---
 man/man3/cimag.3 |  7 ++++---
 man/man3/creal.3 | 11 ++++-------
 2 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/man/man3/cimag.3 b/man/man3/cimag.3
index 39eeb1007..f204445e3 100644
--- a/man/man3/cimag.3
+++ b/man/man3/cimag.3
@@ -45,12 +45,13 @@ T{
 T}	Thread safety	MT-Safe
 .TE
 .SH VERSIONS
-GCC also supports __imag__.
-That is a GNU extension.
+Available since glibc 2.1.
+GCC also supports
+.BR __imag__ ,
+which is a GNU extension.
 .SH STANDARDS
 C11, POSIX.1-2008.
 .SH HISTORY
-glibc 2.1.
 C99, POSIX.1-2001.
 .SH SEE ALSO
 .BR cabs (3),
diff --git a/man/man3/creal.3 b/man/man3/creal.3
index be07d8273..0f9629e4b 100644
--- a/man/man3/creal.3
+++ b/man/man3/creal.3
@@ -43,14 +43,11 @@ T{
 T}	Thread safety	MT-Safe
 .TE
 .SH VERSIONS
-GCC supports also __real__.
-That is a GNU extension.
+Available since glibc 2.1.
+GCC also supports
+.BR __real__ ,
+which is a GNU extension.
 .SH STANDARDS
 C11, POSIX.1-2008.
 .SH HISTORY
-glibc 2.1.
 C99, POSIX.1-2001.
-.SH SEE ALSO
-.BR cabs (3),
-.BR cimag (3),
-.BR complex (7)
-- 
2.51.0


