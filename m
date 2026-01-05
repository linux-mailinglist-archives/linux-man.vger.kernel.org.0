Return-Path: <linux-man+bounces-4617-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B34CF2B87
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 10:25:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C2317303212D
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 09:20:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A6A031353E;
	Mon,  5 Jan 2026 09:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VHV2tHMq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C88428980A
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 09:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767604814; cv=none; b=kARxiiL8mqcjBA8Sh4xWoC9ofXhPgszF0xaLhOa9RFh0CqZ62XE9BGtzYIqobJPrbXl37pnGIPe47Ix49UiXe9GpwlcaSPVr2g7OpUfaE03dM4Gzl9jKqP93PymRV37V26ukoLVCMMq/DxM9Aoo+hmMYUMu6PP6P2Rxllb2UrYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767604814; c=relaxed/simple;
	bh=8Q984gAZnk86Z88lHUwBX5Z1rPuDNna9bqhX2YPi2kg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YtnkKCe//QbRJJYoLO0NplLg/7iUbOHsLmKlkyzlpJqNQyOE6HcEwhFUoMud3mAoCfnNl7sHrRCJWjGC0XQ3UDQ8W9SJdv7H7e/rf/XOMXddfNMGUnm5cD0nuZrtSf/vmpQuyonQgVpLsH9naN29E2HP4wE2dtsJXX0fPfXePzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VHV2tHMq; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-29f1bc40b35so248309115ad.2
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 01:20:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767604813; x=1768209613; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wC2vnScBoF8c/RPJ8sjEvZ/NzpxfdO4ldkbGPuEqPdU=;
        b=VHV2tHMqfEDdj1bYa1bUk7JpOBt9ry6TSrK7GvSH6D8uQaU4i0ZhEn13U9MvT0XYCu
         YnpoIBc8OGig+er2OwftSX/hB1S705Efh3/U6u8Ho9q+bNHsXiJVxmHi+Ivu8mB2nZEw
         /XAmZ3Xe5sS9kDtbrs42psLNA8giSeiRte/42tGLd+oROWA/W249cTUdVwyB1gGCANc4
         xHiffv8yPsYO+HyuG4kKqUINOAipXYAyhKz0sJTvU7wWRp11a86epD0N17d23SDF+ppT
         SRRjpO51ieSoKsoxuJNJebc+Qsy9aic7VAvHg1rCh6XHv1dJ124w4TCH6GtAp1Cr55JS
         nQuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767604813; x=1768209613;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wC2vnScBoF8c/RPJ8sjEvZ/NzpxfdO4ldkbGPuEqPdU=;
        b=jbXDcFrWsFCbw8FbWS4eKXxPGU7iNSuDEDCS30lYYjE+ZBEDPeBlzZwwIzhfu4eXml
         rP7Bm0EOEanQ3v/lM2gM6AU+e9EEolm4lZ1VOL9UHG+oFMYRlJB04EliDnHRAdwtxhV3
         GoPujTLOOMfho9WOwbkvzQm7s/ZRXjkx62SWjm1HqbcoYEQ1GKQi6Fw7f2BT6JNqgmJW
         CDUfyrzqLFFoECysvLO99Rt8S95olr93ZuStGhRvlYRBQBDA3EzrNHPCy3g0ghHDiNGN
         UTVAmh3NhX/ha9cWnKEr9BfroGo6yVwVZDkmDn4VnYYiI796AqjCJ2j6kKBonmiG5jI1
         bYaA==
X-Forwarded-Encrypted: i=1; AJvYcCUOoOg0oLqEoMKeFWgJ/521U8r9mYdxuUzgF71GsZooXU+tCs0JK+uhs5ggXNnqw7tuIKBZEHiMl28=@vger.kernel.org
X-Gm-Message-State: AOJu0YwgsQ1sjsGo78zwCVXzJ6fKlOk0+CsHsuuTqky7U2BctOxFdO6K
	gCuHbEC218d2R+n7bVMq/FjaH/xe9PlFEi9at8lZz7DIDUAi7ZCqusELRH4YJAFM
X-Gm-Gg: AY/fxX62phuf+hGhEvqs9p2xk1xm8t8KBRoZilyKP1Z97spwuPd6RWt8L8HjwuCJJy5
	yj6g8hTAuSYru/8JgJLt6xjHNLaMVeN9LM0Rv0I/bqeHZSNwFN48xcEt/ypHSPOb3TUy0SKRqo6
	cPjnCIfCq4XA/sHayFd4imBvqBr+9U8N0vi9gRbl7HbBBdPJsYMdALAhlwzzfiAm22a+hQIAGRF
	HGS1psHw/3WbXIIGBH+5Ltitj1efQ5i7gNzMdHcjTpl3P0l52h4S2R4JIITY3SrW7HyOHVOoEcM
	qqq2GUJWLwvBjG0Ep4Hmv+17D9MHuB2Ug/qazbUO2PssvaQ5v6Y081gxngXkzsYbFvuuuh0Ny8L
	0pK2JX+al1eOX/TNRgyX7xFsVkaN8OafFdGUPEeiwUqPl9moHuaQioBdLDdJVGo9F/0NRGX63Oa
	fDOZ7z2r8b7p3CLtvUTeoisXYKSu3sGLZuq+nofGjjsQ1WMqnHHt+bg/hS6eA2DGK5o/MtxqFIL
	yLRb693RQRBgSnR
X-Google-Smtp-Source: AGHT+IHU4GkEX/zeYDb2a3XnZV0YzweMXOfq20QK6WuUpzq0XRB+aGQ2cYQnW+Ui+WmbIm3n7zmnDQ==
X-Received: by 2002:a17:902:f54b:b0:2a1:3cd9:a737 with SMTP id d9443c01a7336-2a2f2738124mr478622195ad.36.1767604812712;
        Mon, 05 Jan 2026 01:20:12 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-a8d1-55e9-3280-2b25.ip6.aussiebb.net. [2403:580b:5de8:0:a8d1:55e9:3280:2b25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d776b2sm446173565ad.98.2026.01.05.01.20.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:20:12 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 01/12] man/man2const/F_DUPFD.2const: HISTORY: Update first POSIX appearance of F_DUPFD(2const)
Date: Mon,  5 Jan 2026 19:18:37 +1000
Message-ID: <24e850c16b1a16da197c3e86ec756a7f585ef732.1767599119.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767599119.git.sethmcmail@pm.me>
References: <cover.1767599119.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

F_DUPFD(2const) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Table 6-1 "cmd Values for fcntl()".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2const/F_DUPFD.2const | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2const/F_DUPFD.2const b/man/man2const/F_DUPFD.2const
index 907a1cb86403..420521a360f8 100644
--- a/man/man2const/F_DUPFD.2const
+++ b/man/man2const/F_DUPFD.2const
@@ -80,7 +80,9 @@ .SH STANDARDS
 .SH HISTORY
 .TP
 .B F_DUPFD
-SVr4, 4.3BSD, POSIX.1-2001.
+SVr4,
+4.3BSD,
+POSIX.1-1988.
 .TP
 .B F_DUPFD_CLOEXEC
 Linux 2.6.24.
-- 
2.47.3


