Return-Path: <linux-man+bounces-4326-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EB1C87AAA
	for <lists+linux-man@lfdr.de>; Wed, 26 Nov 2025 02:16:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5EDB84E42D0
	for <lists+linux-man@lfdr.de>; Wed, 26 Nov 2025 01:16:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBC172F7443;
	Wed, 26 Nov 2025 01:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dUJvWP5D"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-dy1-f170.google.com (mail-dy1-f170.google.com [74.125.82.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C9E2F6911
	for <linux-man@vger.kernel.org>; Wed, 26 Nov 2025 01:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764119760; cv=none; b=GvSQEt7mg24/Xk8xdeZXDU+xrHwMQEMt0x7X46ABUchJQswSrx37S16RjvRsuEGfq4ijz4rg4CluNwWHmtgoxtyQnaD9Toy+gEReLXKUw7r2z85glZeUDqf+Q6UMduAKGawzQBjZAlY94/JkTOTDS0IUfeJsHK5MZ5lMfrCK5UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764119760; c=relaxed/simple;
	bh=YW3WGfMR1kcPtsNLBy1hVPQNbHFQCC3c3741DGtOSt4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Hb1cMNo2kSw7Fup0gSA961S3zzdK8tXWQOWB3+iJl8BF2PTAItvTPYktMOxC2iyhMfoOf9eeAtM80IPA39qgG1Pr6S+61v0Bz6xyva+aig+5/vp4Sa2vYPz0PxQxzDkbnLGFR74JzupXZHHYx22B/LKfDhVkesJbITUfbbzPxSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dUJvWP5D; arc=none smtp.client-ip=74.125.82.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f170.google.com with SMTP id 5a478bee46e88-2a45877bd5eso561085eec.0
        for <linux-man@vger.kernel.org>; Tue, 25 Nov 2025 17:15:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764119758; x=1764724558; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Kg5N9A0LwTrDY0gMne5xgBV653fZ6QdHsdefKTBd5AU=;
        b=dUJvWP5D+827VNp3qV1zAItNK8nku2ajYZEzBCneGaPLUKkvH2k8x2jKrkhbZ9oMHE
         9ghTEdCpTuE2ygwp2ijQne7y7sfwtF3CIsJ/fddkt02YlDpDm/7+dm6WSN+Q3S9L0Not
         5PwF1VPmis47Qk8qzBGosTLychiqKvxABUX4lptlhq8YtDvaEj1t6jvjWQV560XsjFjK
         TxvFezr29lD243rTVxuSr+57Lq470PczsF9b4AkH8ewvubuLZSh7befEGfoWWuN8Exsa
         FD+h6iT1LE6h9femycPw8zn9XrA/p7Lx6Z2ClmuiFk7+gQlTvk4rRh7/bODWGBYPrAJO
         MwFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764119758; x=1764724558;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kg5N9A0LwTrDY0gMne5xgBV653fZ6QdHsdefKTBd5AU=;
        b=WzbuxfXTHUo08wC8IXX9gks7BG05OdwvsJ8fKksJ5zvDoawI0BDCMMBRDLpFWGGvUV
         CRv0BylbbzxCc+pV9hTUIbqNt5jgSX/g3+DjippFypRPuB79XlvGvFcXyCQADKFecIJh
         BvaPuyX/B9FqTyaeCG370Vzx40wIdH2hBgoIRgUM3Tfu5pyHOZ0+O5IxcaSDxemZyHV7
         3LwRSg03cLj/H2RPUd+srIcbEWtfOBNmJAb4WzDbvy5EBjA9cVbMX+wGYmmtF8Bl0fA5
         iEVQAXopJ9Gc+2Ppz8V6nLDc7C5GB6Dp17wqzlGbzYD8gEwJ2u3LsLNAyQzg0OqkqX0P
         iCNg==
X-Forwarded-Encrypted: i=1; AJvYcCU2IJcCwq8vJj3JkGnQFBBDN403SJcIcjER8me1A9w/P5Fv9qNNjqvt8rU2iNiV5L7yrfHybZzAK5s=@vger.kernel.org
X-Gm-Message-State: AOJu0YzeZty+6B4Mcf0LjWsbG/dHQWFLT0PDXMleItGtg3Y2PQ0fCYeU
	P1Ja4/YhqOfk0P1GuBgPieydfrd2Zs44+E081nuB0IFuIEQshYb9YAiF
X-Gm-Gg: ASbGncsYJFdz/KKdLMkyG1lLenFSlcfQOLxgFHPhN5fCgqMIGsMsuseki2aSp76UN/P
	Y+3ObG0A28HDG3aOGm/cdaFr8NSdc6BaqthWdlGU2/ROY1zxNh3nLKfasRycA1rLfYpxzcCMD8Q
	N0DQAN9+T0EvrmVNRCTrSGxNcYqFNYpzECOt/T9Sf1gGs/YRN+ciTLHBO68nj7j63HillECJ6eR
	EcIdsjZfM4v1lhajj6rRz0CZPsTA/2GcJN0rJZOSUCE2nrSPcCdN5OQI03br/VRz1d3IDE3XwQf
	5aVUsVAnjQF3UBGkcColvvGb4A3ydoydMhm5Sl0/vF6HU5EBGNP+X3XLfB/kbQoD2n9oL3ATiKW
	RILZX5D3rfOOjvLlmWWs7nj26yrhoAwF7USk2AGiBkvs3YOjex/TmqTcWxD/eWGpkYk7bB4V1N8
	TuhSZ5ZfXZoM8eBIYwTE119TLTmiSFEkbJQfPUcsTl
X-Google-Smtp-Source: AGHT+IFf7hjNm9ikIbdQBR75BeOa61LLpjamafYeOpbIXFNLi9hgtLHPLealAQiNlVwk1uMUOlmDKg==
X-Received: by 2002:a05:7301:9f16:b0:2a4:3593:ccba with SMTP id 5a478bee46e88-2a718576048mr11408548eec.1.1764119758168;
        Tue, 25 Nov 2025 17:15:58 -0800 (PST)
Received: from fedora (c-73-93-224-2.hsd1.ca.comcast.net. [73.93.224.2])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a6fc3d0bb6sm95905935eec.2.2025.11.25.17.15.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 17:15:57 -0800 (PST)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Collin Funk <collin.funk1@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH] man/man3/getopt.3: Restore angle brackets.
Date: Tue, 25 Nov 2025 17:15:39 -0800
Message-ID: <a719bf4893291d95db164329b2c6add4e4a0e3e7.1764119717.git.collin.funk1@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

While looking at 'man -S 3 getopt' the underlining under PID looked
strange to me.  These angle brackets were replaced with spaces in commit
bc34639b160d8bd3d3daf748e8a54bc1df429901 for some reason.

Signed-off-by: Collin Funk <collin.funk1@gmail.com>
---
 man/man3/getopt.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/getopt.3 b/man/man3/getopt.3
index 8495719af..1e4f697c0 100644
--- a/man/man3/getopt.3
+++ b/man/man3/getopt.3
@@ -415,7 +415,7 @@ .SH HISTORY
 .P
 Very old versions of glibc were affected by a
 .UR https://\:sourceware.org/\:git/\:?p=glibc.git;a=commitdiff;h=bf079e19f50d64aa5e05
-.BI _ PID _GNU_nonoption_argv_flags_
+.BI _<PID>_GNU_nonoption_argv_flags_
 environment variable
 .UE .
 .SH NOTES
-- 
2.52.0


