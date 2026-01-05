Return-Path: <linux-man+bounces-4626-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 59697CF2B96
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 10:25:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8B8103041540
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 09:20:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B0FC330315;
	Mon,  5 Jan 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X1OSK2wI"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03E532FA32
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 09:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767604834; cv=none; b=oBoZpwwKFKQKeJUhJ5/K1ZzjF+amwhJ5qL9LQSwChN4QfoD9MImzkIHZ2PoekjhFCzxswzAVvysWBG7DYyL6wzpRDPszOGdZKY7IiU3jfWD/kMUWIJ9uxiz4cTuRTLVGUvHd58d+ZDWcmV4HLpmzrCNRaf9shofXmybJIwMB7ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767604834; c=relaxed/simple;
	bh=0itCfDDcQvlbzuzKNCfGY65z6T9J3TSl7ht0Ei8kPoQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kEuUG+LXw1tEM2PGAao5gAhgH5UtTPtHptZtj8G96LiEjRsk+xZsUH3H2pvFPIm892CWfY8E3tw7zvTMCQxkzt/RLyoCY5HfN+Z3MqnhAsEkketmpeGyr98LnA1t502vN04H/yUJAdF5QsK7ioeqU49SqotGki6iht34yGga1fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X1OSK2wI; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-29f102b013fso173218125ad.2
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 01:20:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767604832; x=1768209632; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DHxVbhgdLAhxpado36bqHTN7zjNM9TRs3jOUXl8fb50=;
        b=X1OSK2wIs8rKiDbVrDZdd6JqcaO7AiVHTEvb7knEmjIEbfnTwyjGAX2jh4dQBCq3uB
         5TKsupOyMmQRQpcbfMD1MIiXVeyQFpNXS4M4/uwQOVplArCKq4V3w4sA64zcl3g7nAN/
         yTZpmdPRDDImT8oEtDJID3JFAKgh9yfgnUCbmbIn91iXaSCHEVMLKT6APLUW18HqOZAH
         HjYgGOxEsfxOzE+Hg6h50x5RYPR6ymywW0gLch4UadLPyRaZp+kv1aM1mVHm7yrLYBix
         ZShYv/6NKLb+5EVvnSGyfZbTK9NPczjnKzyxaI9GBkobDs58QwlLYGKa2GwelIeLhf0H
         s4Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767604832; x=1768209632;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DHxVbhgdLAhxpado36bqHTN7zjNM9TRs3jOUXl8fb50=;
        b=SWzQ7FdiAEIHaIsZXKvDt7dM7C9ibQowTVbSSI7sPNcdVEiG/JhojB37fYyFzuYI5y
         xBOBY2Ee9ZOjWVoLxB2YjdcvUBQ6fzpPM8YU5VfTIJjlMS41PFisUxQG2wKDjgQr5ogK
         +zbYiBOROCshl56FjM2ZVT235Sn/4poGT/Vnd1Ackc3Uov4mwMXvSvHcQrQAJvzQsgPI
         aOjyOKBasu/MEtY2K6smyyGbp3RkrBdYZibUrJ3yA8ryJUKUpnUlkXssyGnzGf9pv6G9
         L70iqOjCePf0OymLCZhseLHNltWKfGFLDlKVN+9/Y6EcKovIDD+mDSVyIGUmfBw3MrB4
         l+OA==
X-Forwarded-Encrypted: i=1; AJvYcCX9x2v8pc4EhCBODLW0p+3ptcn+iGrQkM1H/egydGSYZs+p+f92lwCL6axeFRKymsNC90wt1ugZokM=@vger.kernel.org
X-Gm-Message-State: AOJu0YxC6DiIMCveDpchBMl/rtb+vkru76C+VhrEWsc+PzjinaUqQptD
	Q/bqGEwxiNdngkQcJjhYS/I4vJlfZtlLs9yr9kDgv731ZAXlKZwG+eVk
X-Gm-Gg: AY/fxX7d+s2ysTfNlgPwLx+OeumO/X3aqPGUSW4CSrbg2JYYyVmF/71FbUm8OJD48eE
	1s88F0r2zH/An1BBfjmtVTZKqxBNySE0ZWK8ZaKMy+bZYCrv79WPfYf8LrWnX8v+ewG97MWAshs
	F4ZaKZbZhtF1NS3cAs5PY/bQiqRkmFd0SL8BiAQU0dVtPvW/YHkkxzgPeTGn/f6cdOrN1HE6WrX
	UNrRj9VSoQHqHEN2F1OERt/cMnRuAaktFeRzhuUhNuS3J0UAP/LWFR6sa/txCtsmbG+3OoAFvLY
	R2Ol7SUeTa7rGKQ6VFUrhcoH6XBGQOneE2LqLOY7V+pjGSh1SCurvNTt/Zat4s3Rknd6k7AM9Zb
	9GRmaHtOnkBDx3YkdynwaW5LTkafSsxbbWZuV3pz3uHQqCVqnzM98Sh+olfhA6fEToKEwHcGWwp
	OxccN4UQ3v9ou+ial0wD8P5h8e1iIwaTA9qxgNXeOz9ITAwvn9XFF2wHTRENyKxjrLWdAUMjZke
	0dlFn9TakMmbGFU
X-Google-Smtp-Source: AGHT+IFVVd3Le0IcH9DQN+LfDRZLF43OGJXRhVWb6f+W4uC6GXqs+kSTREoUC2ZvUUC3YKFkLG8xyQ==
X-Received: by 2002:a17:902:e945:b0:2a0:9081:8a6 with SMTP id d9443c01a7336-2a2f232c8a5mr501692715ad.20.1767604832268;
        Mon, 05 Jan 2026 01:20:32 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-a8d1-55e9-3280-2b25.ip6.aussiebb.net. [2403:580b:5de8:0:a8d1:55e9:3280:2b25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d776b2sm446173565ad.98.2026.01.05.01.20.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:20:32 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 10/12] man/man3const/EXIT_SUCCESS.3const: HISTORY: Update first POSIX appearance of EXIT_SUCCESS(3const)
Date: Mon,  5 Jan 2026 19:18:46 +1000
Message-ID: <0b59f68ab057f2a5eb8f34b653c9ec8c3a7f0037.1767599119.git.sethmcmail@pm.me>
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

EXIT_SUCCESS(3const) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 8.1 "Referenced C Language Routines".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3const/EXIT_SUCCESS.3const | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3const/EXIT_SUCCESS.3const b/man/man3const/EXIT_SUCCESS.3const
index a88422e7d910..4e0918963f87 100644
--- a/man/man3const/EXIT_SUCCESS.3const
+++ b/man/man3const/EXIT_SUCCESS.3const
@@ -30,7 +30,7 @@ .SH HISTORY
 .TP
 .B EXIT_SUCCESS
 C89,
-POSIX.1-2001.
+POSIX.1-1988.
 .TP
 .B EXIT_FAILURE
 C89,
-- 
2.47.3


