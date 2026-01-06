Return-Path: <linux-man+bounces-4650-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BE6CF6F81
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 08:09:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 930EB30161CE
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 07:09:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36201309EE2;
	Tue,  6 Jan 2026 07:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SiMF3riP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A93432C11E4
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 07:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767683394; cv=none; b=hrmZHtkL94u3cmsYOZ26QTHuH+E6XcHaEQXg/LBGRmIG97PIH9yQnDxSPk2f4pN+C9aGP7VzYn7uoKFillp02Mg5Z1BHHeu0ZQ9CjeImGYDzikefiO5Kn/W/i0oTMB530Yud70631JI5LwwN7Uu1fxaAkIHTL+HMOAB3Fw4muVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767683394; c=relaxed/simple;
	bh=0RSCSPp2tP3gdOgzRychtdY+bErXUdjYlF3U6VSoy+c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AIYlhi0cQRWeA88KfIJEtALMS6EXqAxyt2bMkvdOriMYCcmYej+4eHCSG5UWU0R4gCBDH5wxiAskJjCpe7QPEz9MRY7BNOzLy+a9CXW5OwbKF3BDtnCQH5xJOofPzEcnTM3kXuM519HAZ1IIAQrAGMZBoVeWk1AxxsaBoEcEUPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SiMF3riP; arc=none smtp.client-ip=209.85.210.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f194.google.com with SMTP id d2e1a72fcca58-803474aaa8bso374869b3a.0
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 23:09:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767683392; x=1768288192; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LCZ8ngyc6fhjgCEVwRgwGRXyCE9bNY8E3Rji2jmuIIc=;
        b=SiMF3riPdRJKaHNx/2WaIgBw0jQAiMJblqbAek4cVKAm0y8p9gtw36RQtA47EuoKNM
         EBsAdOTrOCULpsArTDF48Rv1t1xaLsXPPyvxA8mZ3Z8hqDTspfhVKcvK020l/5xW9/eZ
         Us4hwG3xrAIuISbbJJ73W3IF3pZ/WRwWlvNo7pNQdPWk3dN2X4YbuH2AAHwPkiKYUqRh
         jgXbQ0wj8/kZtxjxEu+rJQjSQLpmj0arLrdYLrss15cB6nycv6B0E9F1SEEjrIVVbPPC
         QxWCxje2XXnrsIaf9KZluq4iGF57uztAn5V8Xbnlhf06BJyOd+2mSwK7C8tmBN1HkI5P
         X8nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767683392; x=1768288192;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LCZ8ngyc6fhjgCEVwRgwGRXyCE9bNY8E3Rji2jmuIIc=;
        b=NwXLZ/GDtbLJnTAsAucXiPThAi+5aa6bsfoDeFusuthA95bFr07cx5bZEJert+ugsw
         nVYnFqFxqCORYdIvr9fQ5xlpSvLw+IPUCfkm3hWMsc1M5ep6k+xmuhlGiEZ1p9jxIlLq
         x4kNXvxC4bV9tOemjyzx/WG8/f11vxghuOm+CJp8fAeThR2bwj8EEnwNsfWY05eX5WBa
         58XqlZr+491zp4MdP277SEc8gpf/3Snm4FTQEF+EBFdXBR/TJ09Sq6saZ1+kxco7Qn0u
         hF+zU7hlnm2Jy95FwX+0jaiutbR98IgoSKZAuenva3lLlTbPzI6B7tNxdTKHIncN3Zrg
         G/iw==
X-Forwarded-Encrypted: i=1; AJvYcCUzz8DyfM1AnsMPLLbFV3yvE43M6J8MILClw+Sy/8uKJnMsEZDkIKJEH6TRrIhrNzcFME5VY2zajwA=@vger.kernel.org
X-Gm-Message-State: AOJu0YxyLToXqI8gPVQvAezRuqnRQ3K7K4O4aUhbzPsjPUuXWST8Vxg+
	ZBPdIoWSXShC2H/B5YKLlov95bl//c7uPBbldN0xWPMYNUznLIpgpMn0Ja3x2GLK
X-Gm-Gg: AY/fxX71rKGX8MWJL3R96/fYFPBFA+Ls4+48aw8c6Ovk+p/ulR2id9Una2v2OMuttJL
	N3BCMDwp570waHX7UD77bYrdiarH6I+VKjkgk/l+scdGJ3apPTRLMXzVfs4LsDiCe1QuQX1EHL0
	+aKxYkKDgDHKaO2twfXycaMFMQfNM93pEu8+aJ4/82cH4hDzrxn2PQAFg9F3/N6RuO58PqzFJ3N
	gqDcn6ly+CUkgGAd5MtNmehXVugrwBGciTb0HqRFPe1h0zVJ5DmqEoD1dTbGQgI3RfDgMcuOPFp
	IGaBZQ26wjDx/b5IbvKCJKA+6TYDKBU3iBRT4imSYDuVTv7K23sDhfjiEu+fc1CJ11Gq3LWkYdn
	EwUvlX2IkyWlvfVbR/43NRwmjeMLndy4/qO8IlMoLqEdu3xcjHGUjaK3mwKf32K5LEZKoV4sVk5
	HyYgGYDwWs6v5mDJyxdSozRXOihIArupPzNGXlohoORC8J6F8xtlTsTdmebuKhCSwubMM+LYt4F
	Ylb2S5mSuz54+1S
X-Google-Smtp-Source: AGHT+IEtsNZnte9PNy7yl0qp2AAhfyZmrnfff/av7/gMKABvgALA3zSMqe6OzNI1M24dPcG93zF2pA==
X-Received: by 2002:a05:6a00:2992:b0:7a2:7058:ab89 with SMTP id d2e1a72fcca58-819439e4db7mr1445655b3a.7.1767683392161;
        Mon, 05 Jan 2026 23:09:52 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-f6ca-7558-daf0-e28d.ip6.aussiebb.net. [2403:580b:5de8:0:f6ca:7558:daf0:e28d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52fd904sm1133688b3a.33.2026.01.05.23.09.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 23:09:51 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 09/15] man/man3type/FILE.3type: HISTORY: Update first POSIX appearance of FILE(3type)
Date: Tue,  6 Jan 2026 17:07:58 +1000
Message-ID: <77b4c360910f3cf058402095c99cb7c9c9e4f230.1767675322.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767675322.git.sethmcmail@pm.me>
References: <cover.1767675322.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

FILE(3type) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 8.2 "FILE-Type C Language Functions".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/FILE.3type | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man3type/FILE.3type b/man/man3type/FILE.3type
index 3adc5f4bc2aa..0c568898333d 100644
--- a/man/man3type/FILE.3type
+++ b/man/man3type/FILE.3type
@@ -19,7 +19,8 @@ .SH DESCRIPTION
 .SH STANDARDS
 C11, POSIX.1-2024.
 .SH HISTORY
-C89, POSIX.1-2001.
+C89,
+POSIX.1-1988.
 .SH NOTES
 The following header also provides this type:
 .IR <wchar.h> .
-- 
2.47.3


