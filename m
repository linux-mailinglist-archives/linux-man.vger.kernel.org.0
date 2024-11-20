Return-Path: <linux-man+bounces-2052-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F0F9D32FE
	for <lists+linux-man@lfdr.de>; Wed, 20 Nov 2024 05:52:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 571FBB21C86
	for <lists+linux-man@lfdr.de>; Wed, 20 Nov 2024 04:52:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C57E915098B;
	Wed, 20 Nov 2024 04:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="B+LMrXcR"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149DE42AAB
	for <linux-man@vger.kernel.org>; Wed, 20 Nov 2024 04:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732078342; cv=none; b=WAul+X93ctrNTUnty1P260Bc9xg3S2DePYiGBOmc9qWQse4Oo3+pHohBZMnpOCNNYF7q1a8iMCtg80oZmwr6r80/q0r8ZYxn840ANcpLkyx7qDkRD7yb4y0G46ekkCxWcUwGAddPn8ltYSSI8p+6c1yw9wLRaEIDQIUROY1KoBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732078342; c=relaxed/simple;
	bh=TSgeic3SAL66L6Qplk3Sc+pCUMw4v13oea1vNSSm3fg=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=WOWxuD1HA3Q+x6dgCRvp5nCYmoVeIKQ3DMqxPlh74cCY8FrMagnm0To46aVrbbflym3bDijG1jg2SkcsWOqX6hhW3nj/dQ0M0lZ/6nMFDRPqbJEo6q2xkEr3OV5Frz4CAViTauzOysA5JVpV+ekoGZaMnyiDDLDOiwfWhf9o1rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--yuanchu.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=B+LMrXcR; arc=none smtp.client-ip=209.85.128.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--yuanchu.bounces.google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-6ee76304cb4so35405447b3.1
        for <linux-man@vger.kernel.org>; Tue, 19 Nov 2024 20:52:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1732078340; x=1732683140; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=eY4OsEf7kw/3tSpSaZliDx8CKgVdtQfIjDTrnXZU8bY=;
        b=B+LMrXcRA8wp99OuR10yZIq6c216dggwFvux3CqxkI4ffMB+rnRNJ6o/Y31xWGZTAg
         WEhGvEXOxeDLyaT36TCIyEqgR4k7/Ia3dqm9/qm8a5brUrdyym/4Ykdq++0AMJCmxooh
         tbQ63CX6ZnQnUf4qBSBENbR3EUIwIen3LbMLerP8953oxr4D5S8PlUidiSKUDbtE0L4Z
         xC1XIyTOFZC6WAGMdfOIduF+cusbQtDva4R2uto74wtNmhgxfTDLt62LuyyedGCUmF5d
         Aymlej4Q1GTMAo8qy+WXP78exhUQ9nwz9h0yJ6udfP767vmifDZxvMwyUSz1mjCN8Vng
         UN4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732078340; x=1732683140;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eY4OsEf7kw/3tSpSaZliDx8CKgVdtQfIjDTrnXZU8bY=;
        b=Z9/izAne8KqpwWJSw5EIG0cIVQd9hcPrNFWCrB3tP5BgC9W4POfuZHuJAkaH+tMDca
         KMhOUaOAPpAN93guyDyyUm3Tn8GrqyAut+LW/d882Gv7+k6hjOgbeWv4c1m84a1vHiq5
         It/z/5/+dJq8gUxO6ZEARRUnpmjosHAdQOUH0WI3vGkqe5euS0eQfXoOIZVwNSUDNZX5
         7HQ50DnzaH4lX0YFjid/4sEg6UYVN9Np8bBIP9a/eqYhMu6vp+LqQLJWoSJ0TAf2Bfq6
         vpk8Jxqf1ZvTaS6PF+EdsQuXTYL0CFITkOJh/lgjHMbXyYZuFtL+ZMixrsUn6MHT2bmZ
         adzw==
X-Forwarded-Encrypted: i=1; AJvYcCVirDwqlTrUreAT+irEq7pFcs9rdkB8Yg5EWxMWGCLEkIrsJ+B6qZY0W4Alg8dopaz0P98l/AcG+fU=@vger.kernel.org
X-Gm-Message-State: AOJu0YzovbgQQnE/pJAh1MrxHrm+rN1Pgya1wpGV+taEjOgPfPnL65mJ
	ZnQbI/lDkbW8wrEFbraK9FNBR0w/f7T+D4NNe/Iy83W7m+3VWFUApXON4H9X3NF5/Aw6ZpXkH8Z
	B7+ZKTg==
X-Google-Smtp-Source: AGHT+IFDlG9b0G/S3KGfI38ZkHyTZV+TCNQbAUWbWd/kImsAFxk921L012bQHFrVkCOIPPgijYd1jyiPOZbp
X-Received: from yuanchu.svl.corp.google.com ([2620:15c:2c5:11:2e16:f29c:e6ca:85f9])
 (user=yuanchu job=sendgmr) by 2002:a25:8811:0:b0:e25:6701:410b with SMTP id
 3f1490d57ef6-e38cb5f7069mr7946276.5.1732078340056; Tue, 19 Nov 2024 20:52:20
 -0800 (PST)
Date: Tue, 19 Nov 2024 20:52:14 -0800
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.46.0
Message-ID: <20241120045214.1294799-1-yuanchu@google.com>
Subject: [PATCH v6] posix_fadvise.2: POSIX_FADV_NOREUSE now supported.
From: Yuanchu Xie <yuanchu@google.com>
To: Alejandro Colomar <alx.manpages@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Yu Zhao <yuzhao@google.com>, 
	linux-man@vger.kernel.org, Yuanchu Xie <yuanchu@google.com>, 
	"T.J. Alumbaugh" <talumbau@google.com>
Content-Type: text/plain; charset="UTF-8"

POSIX_FADV_NOREUSE is now supported in Linux.
Update text regarding former no op behavior.  Indicate the readahead policy
and treatment of file pages read with this flag.

Link: <https://lore.kernel.org/linux-mm/20221230215252.2628425-2-yuzhao@google.com/>
Signed-off-by: T.J. Alumbaugh <talumbau@google.com>
Signed-off-by: Yuanchu Xie <yuanchu@google.com>
---
Changelog
v5 -> v6
- Fixed wordiness
- Clarified LRU to mean the kernel page replacement algorithm

v4 -> v5
- Remove unnecessary changes
- Use two space inter-sentence spacing
- Fix lines exceeding 80-column

v3 -> v4
- Use semantic newlines
- Format with macros like .B instead of inline \f

v3: https://lore.kernel.org/linux-man/20230320222057.1976956-1-talumbau@google.com/
v4: https://lore.kernel.org/linux-man/20241113031654.3964740-1-yuanchu@google.com/
v5: https://lore.kernel.org/linux-man/20241114012233.4152152-1-yuanchu@google.com/

 man/man2/posix_fadvise.2 | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/man/man2/posix_fadvise.2 b/man/man2/posix_fadvise.2
index ed40b0c0d..894a0762c 100644
--- a/man/man2/posix_fadvise.2
+++ b/man/man2/posix_fadvise.2
@@ -64,7 +64,13 @@ The specified data will be accessed only once.
 .IP
 Before Linux 2.6.18, \fBPOSIX_FADV_NOREUSE\fP had the
 same semantics as \fBPOSIX_FADV_WILLNEED\fP.
-This was probably a bug; since Linux 2.6.18, this flag is a no-op.
+This was probably a bug;
+from Linux 2.6.18 until Linux 6.2 this flag was a no-op.
+Since Linux 6.3,
+.B POSIX_FADV_NOREUSE
+signals that the kernel page replacement algorithm
+can ignore access to mapped page cache marked by this flag.
+This is useful, for example, while streaming large files.
 .TP
 .B POSIX_FADV_WILLNEED
 The specified data will be accessed in the near future.
@@ -130,6 +136,8 @@ in this case.)
 Under Linux, \fBPOSIX_FADV_NORMAL\fP sets the readahead window to the
 default size for the backing device; \fBPOSIX_FADV_SEQUENTIAL\fP doubles
 this size, and \fBPOSIX_FADV_RANDOM\fP disables file readahead entirely.
+.B POSIX_FADV_NOREUSE
+does not modify the readahead window size.
 These changes affect the entire file, not just the specified region
 (but other open file handles to the same file are unaffected).
 .SS C library/kernel differences
-- 
2.46.0


