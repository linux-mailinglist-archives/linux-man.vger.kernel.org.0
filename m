Return-Path: <linux-man+bounces-4658-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A263CF7BF4
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 11:19:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D74DD3078DA3
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 10:17:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1F49322C97;
	Tue,  6 Jan 2026 10:17:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ewqXz82t"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B619031D375
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 10:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767694619; cv=none; b=rLNPnA015B1bJqzDVydmAGSqCiBiqiYzJ4IhyDfAco8LmGL8fJBnbQgvdD2HL4OQFz8mXD/CdpizsNDVtP5K+948LTvZUI0cadYJhYRqm2EvlIeiK592/NRTmA3zCh9rh9ZYLRTjol3tLKZDaftwrI9LthtyuedYjxTfSTODPA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767694619; c=relaxed/simple;
	bh=Ei2T0+EhHebhl2BlqXH+7bFTHV8WHTlbn3CjtAOmtMs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uhV6lBKbN+6A5Gkymugbl0Zh5llRu1bzEEaJOcWPFNjYsHRdnkgnBM559wEE163KhcX4MxvKIypPLXjl8hPndwwm/VRZmramsOIR4hL61cYLU0FeCtkb2ukuUk+hBumABm/NuG/k1HjajsUi/ibUKOq1EdcGV0f6SVYd48DW9VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ewqXz82t; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-477619f8ae5so6312625e9.3
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 02:16:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767694614; x=1768299414; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a5bsh2+/grMM2xz6SH6Y1059uj7lIpMsLF1wKnFrXE4=;
        b=ewqXz82tX4KvM/S0S7tQo28M5sEG411Tho+tkVQvc9X/7dSKZFoy4iTG2IudAlClbn
         DM1DdK4Joxq0uRALWiSTQiPHb/yQSbJSBfR4WYzaaAfjLb9Fu2KdrsZ9SDzBc79pKSti
         zb4Wqp3mM46EXotzfPLCi7pV4RRYfyR0FYDUSnSmPaeW9o79GhgAISR3lLCMPqIdxfRx
         nUmoeVb+BvWHAh9D3eEi7D4/I2KuBzSl0N5RL1uazookk6ohrzjhzvDGL6SKRqf+ohec
         Lh+lcQ8xHgIv9hS3jfqaWRAgRKB5M0WODbZeSyICx/pgmb+kIbHnuqtjErximeFvpDTi
         VLoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767694614; x=1768299414;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a5bsh2+/grMM2xz6SH6Y1059uj7lIpMsLF1wKnFrXE4=;
        b=CAPwb86fouTnd9rQmgm4ybiTipkDZ9Es2xti9xzghEg6EsIAZUZ1jPHmxBA3NrhEVF
         3zd825XewcDlKv9NmKTAdUM5Ryp2su7jKy3eKC2yJw8pdU4VDB7gfqRTFJbSGyWCelU5
         1VMvdjsDFnFYLitQOyby2mIBWzf3JZtivQQjOAZRKvtDmYBIzkb9hAT2V29g3KQl4E6M
         kHmaw+qPLePUqp+Aa33fsaxIjK5b/r4aL2vNHYPzHYv43iDX9UqvunpO0uuVrPGJ6LVm
         POTNQXgaP09rQb9L7xd9yykAbBiB2Z6buOGBBiKRED6UnUHImv5nmveelkmnDwCgTios
         kazg==
X-Gm-Message-State: AOJu0Yx78J127a2Rx6jV7cWxmrbkiGvjHuDnyquGilrtJXNB2Md/mCsn
	iHXHS1gi0q4cao3ljsabhqhqgJapOIklhuro09657GCtXvWOC9zB+VvJ
X-Gm-Gg: AY/fxX43yV/7WUBL6j8oSNkYRhZ9x8OMl/y/NtYfLinkpHQtyfsNFyu4cyvFX+XjdrU
	6W+uFzgdMqr2wtr+7ByhJc02+YDciknU8wBKGYVIeDixt/JCW3xIgN+oHiw4KFUNx9iqssI/E2b
	+8cLhmZkmWAKaB5emZBBbtLe35lIBytgRRxoGjc6bcu/RDP7aIF3iE7A1QxDvXc1JdJpFOPeEvG
	fARn6ZDAvzepUo4EGeD/6QffdLnVYwX7P9D0n8BULP7G0IS9keGdM0c3uJ0LHdpvA6zjq2HvTJM
	CiIgku5VRg9AGHJpwAI8Z9M5f0srM35GL4+5OGqgUCPDewgnXOe5wNEvKYLfJPzVHxjxdhqt3rh
	YsJEz0E7/S3/rAnDYazhL9eADV+Yugcx/zNvCS4z55zf1nOQWmSFVFEg1jTIMparXMyLbCmP5Iq
	QL6XxBmcaNm7MczH2tDMtkpGcGrFv6AF6PB2h9YLCuQsDdoM0=
X-Google-Smtp-Source: AGHT+IETCqdPIGb/GU0CDTDExtV+ys2dWxD31UcEVrZJErCqHyv423qqAZ8S+FAM0gXTZfBWMI2HMA==
X-Received: by 2002:a05:600c:8886:b0:477:8ba7:fe0a with SMTP id 5b1f17b1804b1-47d7f099a6cmr23833045e9.24.1767694613752;
        Tue, 06 Jan 2026 02:16:53 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.188])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f65d9f0sm35059825e9.12.2026.01.06.02.16.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 02:16:53 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	debian@helgeth.de,
	champbreed1@gmail.com
Subject: [PATCH] man3/strftime.3: Fix spelling (British -> American)
Date: Tue,  6 Jan 2026 10:16:46 +0000
Message-ID: <20260106101646.15648-1-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The man-pages project uses American English. Change 'behaviour' to 'behavior'.

Reported-by: Helge Kreutzmann <debian@helgeth.de>
Signed-off-by: Simon Essien <champbreed1@gmail.com>
---
 man/man3/strftime.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/strftime.3 b/man/man3/strftime.3
index 0bd1aa581..fc6430d00 100644
--- a/man/man3/strftime.3
+++ b/man/man3/strftime.3
@@ -498,7 +498,7 @@ is equivalent to
 except it uses the specified
 .I locale
 instead of the current locale.
-The behaviour is undefined if
+The behavior is undefined if
 .I locale
 is invalid or
 .BR LC_GLOBAL_LOCALE .
-- 
2.51.0


