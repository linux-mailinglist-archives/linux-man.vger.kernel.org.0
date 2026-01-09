Return-Path: <linux-man+bounces-4756-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AF95FD076BC
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:43:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BFAF2300872E
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3C2A2DE717;
	Fri,  9 Jan 2026 06:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QpQ4itGB"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com [209.85.215.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A10D2DCF6B
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767941002; cv=none; b=QJHO8v4A9tYa/ctH2M/fpE2805ZHDdLOrMwVM/B9DMjvC9A8No4jX8Hd2XwPbnuHDLUSV+6GJK5tyOTVmvLAHmq9oMap38/90wAOrqxYh4NjI0k6zBplrCMpe4R9OGnGH1nsWDM267jM57ZvLALi8t/Qq3UAgvMyVqrQ5Mq8Ckc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767941002; c=relaxed/simple;
	bh=B4IFsKEMwK/4xLTRc5V7PSC2FD1CuCSFvXb1j0uSXD8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cvcYsrYeLpy2tnHUr83QWKjfNmv02jUTSmPKLtECfqD9eFk2p+NfsjfYAB5jXt8NC1lCngLZMTf29ufMe1KLy3ijg7vLGDmTRCiYxaCw4s3lf5Oh3BTo1J+2ZX+P9wUAQZML8EmOhqriNMYdym9a34C+DCQT3Gb5e48/2snq/wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QpQ4itGB; arc=none smtp.client-ip=209.85.215.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f194.google.com with SMTP id 41be03b00d2f7-c46d68f2b4eso2417056a12.2
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767940994; x=1768545794; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9rBxot6bipIIS5OQTOg9BAyZvtPzE+awMBWNskBFHUA=;
        b=QpQ4itGB+MJ7Yr04CRqKRCzbQakZAgdSIynNeFTtG+Bzghn16szLPOvZlAPeSJq0bR
         VzNVWQxsfTuxJwR0OcIIkcqfdCPT0uOqXCfyqTj12lURquZ609EednUtooSkp3QJLDDJ
         jgzxfijeWJNdah+idHhHs2WuNx/iqxDauWnnk+3T+QWZN+ZZbPNjj64eoMj3DVzsod/4
         CajcQ2F4CS2C+H6YO8AU7Tgf0QjFSckz9ObhyO5eAqisE3jxCneHcZNJ9b5alPq97St/
         mNjkzQzZq3lrLI8MDq2ZhqGJfOKoQdWCzu1bhN+zNd/Cf/UDCuQdQ2WV67u4sZBbJrBZ
         /qyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767940994; x=1768545794;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9rBxot6bipIIS5OQTOg9BAyZvtPzE+awMBWNskBFHUA=;
        b=lGVGGcDekGFi9CWvZ2vDkb/sT9mItLdyjkf63/uZvG4YdtPJw4Ya8/xng/m3nly3VA
         /unBuIL+AQqE1USdwTB7vqGaethE/eCex+v+fFYSgUFNti3+N8k2ibEFdMc3o6Rw+deu
         LCTqi8G/e7HMMzENs5u4su19c6J1qW29ExmMG1qiZfdFqdOVsCIkFa27lM/8JfaV2HkY
         dwaYeDKeJGLx+tgqNNo5CfSluj6sa26fasKooY17qSsxPod1likmEXb//WRdXanEN1GG
         ntBY4QlMN9kFEAMq7aQqoArkBHJcyK483g0imk0bb11M/hTOerHa7vLs2swv3oCSJdUW
         Xv9g==
X-Forwarded-Encrypted: i=1; AJvYcCXzk9QfgWlBgjS8HqYcsc8ckI0eoN3JYrUks9VPWimiF9FEiPe7RjK7874cHopfIP62mPbTU07JBdI=@vger.kernel.org
X-Gm-Message-State: AOJu0YwZa0kA/XXwK9UnGNPJ4L1O88uqmyIL9CxeDNhC4gV9KXnuufSX
	XoGlaPLev8Im6idgxjMCxK9VeIUndVOty3TYoQN3CXur5Z8ts/rkQDS6
X-Gm-Gg: AY/fxX4Bb5pGvUt8mQViIYhDH6+6ATETQe4ooJd+jno0SokM2pnuPyL7M5eVZ3K9XOr
	ny42cIfNWTOmUqeLRGsaEID3gu5q0CslLw39QHIFGGh2fb0jDfTwG8OHAQfzwMpKQswlm8QpjGX
	D6wkuNmwP9QcqA5RFYnW/834M6npYW0+uUd/z4iGzG0M4mAg2WswiVklJxjWtGyje3XCCLnoGrI
	8aVQAFIfyvIYapqASKXWj92hwVsn+10gVaSgmaKYlyME+S1kQDvnEUlqD+asUNeuPlbAz78O0xR
	+ia2d1VBiMd5/kivcZjFhGtIajzUI7oOnd+TYyOuDkCKy8/KYITFjQ/icGxpRuN4xTfHbv5q/au
	Pw3mfJTvuAJ2EAKEDOVNbibd39a+Rs7ple5akhz4ShM1m2u0IKVW42I0Gmzkb95MKbhXtNaWonb
	vQtkVOfTlFo4Xf5EpThWtwTsjvWzidLrA+vOss9vpbTOntMpe8vaO375Bl4sHW+EUUHbctFIfEB
	uPsfhXMjtB8Jb9n
X-Google-Smtp-Source: AGHT+IFW/uvW0oJoHCXKYHE4csnGRmrnhkG5s+ECXSEUF63M99VOUg7/o9sh82UIGyrlxvmQfD3wqw==
X-Received: by 2002:a17:90b:524c:b0:341:8ae5:fde5 with SMTP id 98e67ed59e1d1-34f68c4d71cmr8661347a91.18.1767940994479;
        Thu, 08 Jan 2026 22:43:14 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.43.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:14 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 10/25] man/man3type/lconv.3type: HISTORY: Update first SUS appearance of lconv(3type)
Date: Fri,  9 Jan 2026 16:40:28 +1000
Message-ID: <ca58744440b06b6e7dac8599c69613454f619ffa.1767939178.git.sethmcmail@pm.me>
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

lconv(3type) first appeared in SUSv1, but without the six members
int_[pn]_{cs_precedes,sep_by_space,sign_posn}.[1]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 4 "Headers", p. 778.

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/lconv.3type | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man/man3type/lconv.3type b/man/man3type/lconv.3type
index b76f06a93e1b..291e9121b954 100644
--- a/man/man3type/lconv.3type
+++ b/man/man3type/lconv.3type
@@ -48,6 +48,7 @@ .SH STANDARDS
 .SH HISTORY
 .TP
 .I lconv
+SUSv1,
 POSIX.1-2001.
 .TP
 .I .int_p_cs_precedes
-- 
2.47.3


