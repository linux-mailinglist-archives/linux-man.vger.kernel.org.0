Return-Path: <linux-man+bounces-4779-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 723D9D0D079
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 07:16:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A58A1301AE09
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 06:15:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AEFB23817E;
	Sat, 10 Jan 2026 06:15:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XdVbkazK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9C2205E26
	for <linux-man@vger.kernel.org>; Sat, 10 Jan 2026 06:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768025756; cv=none; b=qYG/lsR0OnenkyZAyt42vK4p/eHfFK671ZkHunEgrp/SRZVI/Gk+IpWwQGf7CxKDN8mJf2fxrUyycFN7B+ceu9kPdjy+GeVzg0CnJFq8SQ08JcgrwwWAXV23OajUBn0CJvC9YG16cTeVz4lXCwiwXVR6deyqEdYWS0G5UnFhAOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768025756; c=relaxed/simple;
	bh=2WTvYKAP5ewzMl0d0fTnLbw+6wdEa/VHyGmeIMLZi5k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NxwoN5t5LvAN7s8VIaK1XBPM/CwP+B2UZukv7gbv7yqeKWW8nHnEXRJ1hf6ngAVEbkv9vygdffMt/GaQx1JZSQEa5ZU9aYLIVg50aOVufZqdKBPVY+XP3ii/F9ksxAPIpUt5vqfRh6akL80TiNf/r+PWVVlEpZZdSsp3JFS2syA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XdVbkazK; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2a2ea96930cso34060575ad.2
        for <linux-man@vger.kernel.org>; Fri, 09 Jan 2026 22:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768025754; x=1768630554; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XWCvFmGETsP5hJVgRdT+zmeTX7qK7dUAc5/dVU9judA=;
        b=XdVbkazKR2NhgcAA127KYn3tg2AO8yIoGEkdXyPcLWAxXlF3u+xvFM8FY65m596b4Y
         ErRc2r96zNuTkMcPTHKoqMKCMC2w2UI59y8dDYqmIasZjJt5V/tq3IFmtj7TUULSYm4f
         sNxugncI6fZGuZo32KAujDin4IkLau/bBJbP+zCN6uHX+K1knlMGDRbNKNii6gLrW3Fz
         taNeMShYUBsF3p4wXP//tZDs3ILUYpFsU9lNTBpsq3mnKcRlZqxbNWvsvV9tt+2WGXtY
         mXwBDdncNlAdgDR060ZryUXj6TfOG5npUdZct8uXRZ2KpSbK9awiiCMKydaX8jYAgh6q
         YPoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768025754; x=1768630554;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XWCvFmGETsP5hJVgRdT+zmeTX7qK7dUAc5/dVU9judA=;
        b=dMvtlYI1IDhe3nT7YKBJRywz1R2vXR29dO/fD1mSuC2/gHxFxlpZYeUIA+GTgNaZ87
         0bpMiV8/VQ6/0PpXCaGhg0h7QE+hpeelALQ17ER7+5I3STn9jZYY3EPfs4ZH6jogZDM/
         wKHnIfuhWKwzAsPm38oYxeqbU9z91h4g9pt/f3OAQ9UyEC3zq8mcuEFRLJ0Jbr2FENb+
         /m0GL5YPVRUKyf1pEQ76Rw/n4KvFAqu828oWE4F11u8l/iQkURstVjHM4YlhLU3kUZAH
         cjdX+ELaHf4CNDjcMqNcM4BTIAOfGtjYamNn9pP6MjKD+E48fUfbxwb0JniIzptmztMy
         1OcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUC2U9A4rnB8zUV3dVxFA0sssG3npAF/Yr897iOFjplUfy1UmMxJmuJxxpLwaY1XUADZTVFPoIVVC0=@vger.kernel.org
X-Gm-Message-State: AOJu0YwsCR57DVkI0BTfIkZNrrxu4YWpw3KKDbFdLPzMq+8IG6l0Czxu
	RT7Fwi/+UOLL5jRmOoH9vzLDDovY1QEPyM2sd8RjsuBfphuyeD+D/kuSFaU5/1Zw
X-Gm-Gg: AY/fxX7DRqSkaApdecUTh5Zg4vDRi6jhKOoD2VujX4jHyelwKE5kM6YRk++8Dv8Dkhp
	U690s62tXIWshS3KSThrPksuMFOvSN7QsD+d+VS52FtV9RLdEMDMSQrI8DfPHmHg7tNqhqoXkQq
	UVJf0arATW+ZkFIUZ76yyv4VnglC5j/CLg3XhPYc0K8+v8VUspKAP/0m/i9SSPJ3qgh7zP0wFsv
	5a8y3LoS2qQAl5/OKF1nm/W0jGeiGGu0hNKyNS2xiky0UOqcQjeJKjoCEJUTDEyhKCqBCnimE3a
	qK97vNu0OytJB67cw4QR6DrAEcSni0fvoPKWRyo2vEFoW74TZ74aEalyW+ePfy6eQyEywZRxge9
	Y+oCHIiXppJWzoMXXiP5jHZPnOoDipythQvEZJbaJh/1l4GfITDTocp/KkIqJyQ65hCom6t1Ks0
	xVTLAAcNMQZLtc2k+hjMAcUewkCY7uC6Pi6DX9SozxSjv5fmP0tdeE+yxYSjMYXOc1cjeuIuKWv
	Zh5kWGABQtwqc1jJw==
X-Google-Smtp-Source: AGHT+IGD0jefyFwqLIVSBqOL+u5ergBPXNb2ZPcZIK0ZiiQ73kJJ53FASjJ7VSn9ZeyHwHbLRzto7Q==
X-Received: by 2002:a17:902:ef46:b0:27e:ec72:f67 with SMTP id d9443c01a7336-2a3ee468629mr122383305ad.6.1768025754290;
        Fri, 09 Jan 2026 22:15:54 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-ce8d-7313-a81a-a88c.ip6.aussiebb.net. [2403:580b:5de8:0:ce8d:7313:a81a:a88c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc8ddfsm119807885ad.74.2026.01.09.22.15.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 22:15:53 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v3 1/3] man/man3type/stat.3type: HISTORY: Split stat(3type) from st_{rdev,blksize,blocks}
Date: Sat, 10 Jan 2026 16:15:18 +1000
Message-ID: <f09dc86eb3958f8a21b2e41cf1a7916bafc96ac8.1768025095.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768025095.git.sethmcmail@pm.me>
References: <cover.1767931376.git.sethmcmail@pm.me> <cover.1768025095.git.sethmcmail@pm.me>
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
 man/man3type/stat.3type | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man/man3type/stat.3type b/man/man3type/stat.3type
index 44d45b4a52b4..21610f7ea723 100644
--- a/man/man3type/stat.3type
+++ b/man/man3type/stat.3type
@@ -135,6 +135,15 @@ .SH DESCRIPTION
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
+.TP
+.I stat
+POSIX.1-1988.
+.TP
+.I .st_rdev
+.TQ
+.I .st_blksize
+.TQ
+.I .st_blocks
 POSIX.1-1988.
 .P
 Old kernels and old standards did not support nanosecond timestamp fields.
-- 
2.47.3


