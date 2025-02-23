Return-Path: <linux-man+bounces-2503-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 62DB4A40D93
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2025 10:14:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E7AE2188FA82
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2025 09:14:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 786A31FF7D2;
	Sun, 23 Feb 2025 09:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YxMb3bxu"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F461F8EEC
	for <linux-man@vger.kernel.org>; Sun, 23 Feb 2025 09:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740302036; cv=none; b=URsCI3RSBviE9f6dqAtU9rlu+UUptWzSJ4G24prFkh0j+46juuOkSvOz7fnDWHarB6iToka3p8wwcbWeQSTaW3nduOOlk/geg6X4/9qWOw8cLNnsK5VCYiEwrgY5CKT+pMiXYALzOooLsEz/KUpGanZ2xMKxmUofhoiTdUw1fiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740302036; c=relaxed/simple;
	bh=n/Y115gRUXqmYzL3evjJCVSzn7U1tSye3rnk8qlE/tM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=E9DxQqx650j7gBJN1Xwwq7nX2Jj4PX0YEAYD+Tqfw+M9jNgE0mpCBEwzYJ4diYaV27DesQZO2QYWn3oNjlw+ngoZrKvtWQI82ClwbUsTUBTpxDLx38QcHVT1q4wA8KGxq+yhRs6xR0vuWJFdRxTf5kmE+rizQml5sQMG2KFSiUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YxMb3bxu; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-38f2b7ce319so2914273f8f.2
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2025 01:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740302033; x=1740906833; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lJX0vqhPBVz1mAFwVWkpc51O0GrfRIS+h/gjW/fVk98=;
        b=YxMb3bxuBUR/fmOBrh11unO3emVISLdylBdTGFrGVL6SzH4dd+oYVafU6vDeHFeYqC
         4W3r3klwYXewEAe+M+sckGD0uwPm9Hy/2P2cznq4aCrstpUujMCWL9mW7FKZBmPywhoh
         IFT8wQseRF15jM+dis+tt0f21UyigugxuwHJHBAfHUKNju+MH/DDkr8C3gZKcsV2DuTM
         lBXA2XKczXQPkfC/RT17+Os+6gefVmzLHafnBCJ0Wp1VwTc4b4xjI28ALFBucyR+1sg2
         FUnjjD4jwQ9RNjpB69Q6vaQku1dDzV/4Y4BYAX4mRl6ktgSgfN2rC7sMgpLvTdBEGXKm
         H6Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740302033; x=1740906833;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lJX0vqhPBVz1mAFwVWkpc51O0GrfRIS+h/gjW/fVk98=;
        b=fKAFgPRpByWUSCPxIgSb0WYkvsekPdh3MPrhEzmUfQ8MrEauVyRds3Ekj07recVDsH
         y/rXrmkLJAjaUvGWypyq+7GWraKMATk2zdyuCIn4nfGDRdhYef+oX3YOBrsJgISo2oCY
         ULoR4gFASyTUQc3WVFxKVpzrd2BIBmtWpKbjuQeMQSGD7evzwNRYMwxlP12Ky2/JIroP
         1j5huqJpk8i3MMjrhJ2IQFdXpYRf4o7yKFvaI1RoNA74OXp9dItq5KxA0XXNYIqWPwvt
         YAZg4qpGu/fbW2b81BhyGTLiCS87JTmFYtCqe04k/VXYnbrsAqHFP07wTCcq2NVxhNYU
         BYig==
X-Gm-Message-State: AOJu0Yzc6GU4P46Y+Np4LQ19efMrbSQvUblVIsvzu/+v1HDOSmjDn+H7
	EFy1+Q4FALD431YoWYL5+JxFuIVvnTEzJjTINLo2nnqiA0h3fvs3Xws+W6V3
X-Gm-Gg: ASbGncvzygH7cefyInRXGnRazMu0JwLaQ/7il1YZpk7pHZ0ylaTiuV/3441sy7zVQQI
	NmpRyqazYEADzjxSSfkHDGCtbv6vWeEwLe/68P0L9VuZQ233ZTbWbmLkf3ioCu/nSfczY2NudDH
	p841BmWYwT7z9dfYBgFpdlVldQQYta5ntZZHqqx+xotAQyOGH86uCwAcJNiiBInbEPZtj2R1tBn
	w/s7I8QMgHYGA/CfVz7gtKTwVUvYlXVzS5Tb77DMBo4W2U0xb723qSMQo8i3LzAppPwrhIQ18CX
	bE5+pnqcZe78YUWWEZGrjkk=
X-Google-Smtp-Source: AGHT+IEOdYI9GGF5iGwf09EZ05npBNUKrp1lnH7UkGNXzpfNeVmrs3T4zixxlW6629e98ELGFrlreg==
X-Received: by 2002:a5d:6c69:0:b0:38f:231a:635e with SMTP id ffacd0b85a97d-38f6eb6e4bamr8319371f8f.25.1740302032553;
        Sun, 23 Feb 2025 01:13:52 -0800 (PST)
Received: from localhost ([2a02:168:59f0:1:b0ab:dd5e:5c82:86b0])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-439b02e425esm71738425e9.17.2025.02.23.01.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 01:13:52 -0800 (PST)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx.manpages@gmail.com>
Cc: linux-man@vger.kernel.org,
	Jared Finder <jared@finder.org>,
	=?UTF-8?q?Hanno=20B=C3=B6ck?= <hanno@hboeck.de>,
	Jann Horn <jannh@google.com>,
	Jiri Slaby <jirislaby@kernel.org>,
	jwilk@jwilk.net,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH man 1/1] TIOCLINUX.2const: Document TIOCL_SETSEL selection modes
Date: Sun, 23 Feb 2025 10:13:42 +0100
Message-ID: <20250223091342.35523-2-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250223091342.35523-1-gnoack3000@gmail.com>
References: <20250223091342.35523-1-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

These previously undocumented selection modes for the Linux console
are implemented in drivers/tty/vt/selection.c.

Cc: Jared Finder <jared@finder.org>
Cc: Hanno Böck <hanno@hboeck.de>
Cc: Jann Horn <jannh@google.com>
Cc: Jiri Slaby <jirislaby@kernel.org>
Cc: jwilk@jwilk.net
Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man2const/TIOCLINUX.2const | 48 ++++++++++++++++++++++++++++++----
 1 file changed, 43 insertions(+), 5 deletions(-)

diff --git a/man/man2const/TIOCLINUX.2const b/man/man2const/TIOCLINUX.2const
index c0acdd0ea..27758584e 100644
--- a/man/man2const/TIOCLINUX.2const
+++ b/man/man2const/TIOCLINUX.2const
@@ -65,11 +65,49 @@ are the ending
 column and row.
 (Upper left corner is row=column=1.)
 .I sel_mode
-is 0 for character-by-character selection,
-1 for word-by-word selection,
-or 2 for line-by-line selection.
-The indicated screen characters are highlighted and saved
-in a kernel buffer.
+may be one of the following operations:
+.RS
+.TP
+.B TIOCL_SELCHAR
+Select character-by-character.
+The indicated screen characters are highlighted
+and saved in a kernel buffer.
+.TP
+.B TIOCL_SELWORD
+Select word-by-word.
+The indicated screen characters are highlighted
+and saved in a kernel buffer.
+.TP
+.B TIOCL_SELLINE
+Select line-by-line.
+The indicated screen characters are highlighted
+and saved in a kernel buffer.
+.TP
+.B TIOCL_SELPOINTER
+Show the pointer at position
+.RI ( xe ", " ye ).
+.TP
+.B TIOCL_SELCLEAR
+Remove the current selection highlight, if any,
+from the console holding the selection.
+.TP
+.B TIOCL_SELMOUSEREPORT
+Report
+.RI ( xs ", " ys )
+as the current mouse location.
+In this selection mode,
+the lower 4 bits of
+.I sel_mode
+.RB ( TIOCL_SELBUTTONMASK )
+may additionally be set to indicate the desired button press and
+modifier key information for the mouse event.
+.\" https://invisible-island.net/xterm/ctlseqs/ctlseqs.html#h3-Normal-tracking-mode
+.IP
+If mouse reporting is not enabled for the terminal,
+this operation yields an
+.B EINVAL
+error.
+.RE
 .IP
 Since Linux 6.7, using this subcode requires the
 .B CAP_SYS_ADMIN
-- 
2.48.1


