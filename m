Return-Path: <linux-man+bounces-4749-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DBFD076AC
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:43:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7BABF300348B
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DD7C2DC787;
	Fri,  9 Jan 2026 06:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BEkfrURK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com [209.85.215.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE5C2DC79B
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767940981; cv=none; b=tmrxAPG6Ih6WV41LNQ+9GuRxJSsbXPkVyDpfUxCcca8ili9tNFWHg4kZksFmDgaRJmXJZ1Biji6ScnL9NfDoFeLZMjsyYQnaswZgD/8Bv7/cVYo8w+CZSx28JLGuhm4vxvKBaPI4JBX+HDVldx8lK6Sv2Uha6p+r5jioVcbHAho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767940981; c=relaxed/simple;
	bh=2n4Ln3pe/5R+cwEZ5IySUZLTuf0xHr63AhZCxz48a2U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=c5z2ZQXmGFACuFQAbdn28KbpBQT3DhsAoBi5TJcFSvggBzqwQa2Baj+zO4IGaEXMI43I+zhgbhuhWYrn0UxAZAmpdoETv/2zljtZnVjAGD4lkerPvKRBYdifXVr5HyDNsL/keDUiVTatrhxUjChuIhl5xIfUFPDAMgOK1CgRiZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BEkfrURK; arc=none smtp.client-ip=209.85.215.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f194.google.com with SMTP id 41be03b00d2f7-c2a9a9b43b1so2629896a12.2
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:42:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767940979; x=1768545779; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yWqkW9jvdmtW4rifL20SQG0JQdOEfmF16KXGvoiECyw=;
        b=BEkfrURKM8lTTbHHy0xeGIPI7pGibSfWUaRmroVFFJlRcbg32HCOq5U6699TDVrDIR
         HMS5fPbVjl3o0A3vcCnoaT1tqYql6e6GfMnoCXtdmnaqHOmha47dtO8RpElujOv1eSmX
         X1fHF+F6BmidPWy1zHJBDd93JK6BJ4o1ut2jCaS2d4ui5K/WNTJ4Vmr5+5WrDbrHpUm6
         svAT4UFku/XK86JE8IbSGJwWxQtJ818OJQ98CfmzNok2U9kYVGB3QC8PQH4qIW+BxZrj
         o48o/UnAYwGUDoB7G0P7p2OWcQH4NQrU8DgN3HAkPJHl+lqYcdmUUlFKrBs7dbwR88Nj
         bx3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767940979; x=1768545779;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yWqkW9jvdmtW4rifL20SQG0JQdOEfmF16KXGvoiECyw=;
        b=GAi81qtTJdm6x89BA+EMcXZF3Woj1rVvsrgnuUWQwTgOUk4ilB+ZTj0ZZ8tkXm/V7l
         Ugh0TCxG6qt9wfMC0BtXRq4uuIOkL39VBtZ/DDaz1ZvYtNSeqdBCm08M9mx1TySlxFnp
         SymAX/FtqnGJVlfvB2icbS/ElHLF32R7osEbjmRtdb8fK3avao4pHZ2T7ePy9b0ZMA2u
         656jkDzYz/LOMyXDm1ECyZtiWemC8GGpAU+qQ/E1WXKSi5CvDa5QYFaXEnMNtA3EJ7NX
         EHXYfcAMR5OPwo8F6cs2aCeaI8f+1B/RK4t43PwUOzAKeq/xzpFiyUu62cYoWrjpUKWR
         KuZg==
X-Forwarded-Encrypted: i=1; AJvYcCWZFdBPtubiDVuStZBlccbkENInx7ClgOTA/OlKrYoOVCS7kolEjTou+AEKc/zG6Pp/hRjyIGLRfKc=@vger.kernel.org
X-Gm-Message-State: AOJu0YyOd4yR6NA/iRVsWwaoWglbi0AthWb8FZIyzbejPx4cu1kr9yQE
	YoISRSzxPATynZX6kOPepGTmSFcGJ3IMjTLQeFuvj5bdqDqhHk2qhxBy
X-Gm-Gg: AY/fxX4kMKxwPkl6cmdRYZ9HCls+RZeKj2aQr+ZjDkwvXqv2IpQAyL67xHl2dEU8CCt
	P14wDM54JsfHgHkLzEMVFU2DgmR1LEg/LlAyTYocxOLJoQY6aXCP8llxoffj+yUvzvWXrPo57c0
	RvDGv/4sBVPpIJbCHfKw1447p2u5PV01+uNod9d8tvYHlHc99dwmX3rs9L+RlVY3Oz1mJexCZyC
	UPY0xRsuAhGwZI3Jr0r2y1ay+D7ALUqHWhEEN4+4fHqoEqVdH76OqRhfeHhJnn/i1EUUu8Da6wv
	iw92/EMv97iqCxevvVtiVxyqwi22EHyr3p0nkHm0QZwidqVoh6WD6t0mBBBqaKg6Dr0pFzCuXCm
	bsfzqNFrn1c8ficlc5HB79BMxRxJGT7hNA0OveMHzN3TxZUk9iFXjJPop+vpRd38FHVkeDVlkdL
	pO0pOQLQljQu+N1ozeThKrnJ7+UE53X7qqYb3i0xe2xPPD/FeV74IARSb7zvQXDi68kCfStPLel
	cnIZhZctmQJCzNk
X-Google-Smtp-Source: AGHT+IGLYpKJpXvzUqmNnLBPML0oQ5XcTousQ4yyorfpjKA6CPlOHP6Y8Sm9Ks4GR4FPmY6Nv5h85A==
X-Received: by 2002:a17:90b:2d50:b0:341:8ac7:39b7 with SMTP id 98e67ed59e1d1-34f68d22d92mr7864070a91.25.1767940979217;
        Thu, 08 Jan 2026 22:42:59 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.42.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:42:58 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 03/25] man/man3type/intptr_t.3type: HISTORY: Split types and macros
Date: Fri,  9 Jan 2026 16:40:21 +1000
Message-ID: <3a8217dd15084949ec78561c6de36b831307dd5a.1767939178.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767939178.git.sethmcmail@pm.me>
References: <cover.1767939178.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/intptr_t.3type | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/man/man3type/intptr_t.3type b/man/man3type/intptr_t.3type
index 3201e8af3fb3..05caa0a057a4 100644
--- a/man/man3type/intptr_t.3type
+++ b/man/man3type/intptr_t.3type
@@ -96,6 +96,18 @@ .SH DESCRIPTION
 .SH STANDARDS
 C11, POSIX.1-2024.
 .SH HISTORY
+.TP
+.RI [ u ] intptr_t
+C99,
+POSIX.1-2001.
+.TP
+.RB [ U ] INTPTR_MAX
+.TQ
+.B INTPTR_MIN
+C99,
+POSIX.1-2001.
+.TP
+.RB [ U ] INTPTR_WIDTH
 C99, POSIX.1-2001.
 .SH NOTES
 The following header also provides these types:
-- 
2.47.3


