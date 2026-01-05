Return-Path: <linux-man+bounces-4622-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3DC0CF2B8D
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 10:25:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F4F7303DD3B
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 09:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 092C131353D;
	Mon,  5 Jan 2026 09:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DEOeZU1B"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E92831353E
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 09:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767604825; cv=none; b=Pg5LsDLCgQDUSlhguhDPvIM39/6gqW7fH60AWWS/tbFwIIMdQUDeKo31Rafsx2sUfjKFzh1hi5Ez+JrzxVFhOxhfe1A7Ex/4b0nmiqnuL6Se2DYPOWycl6U0S18fIQ/Lra+7Vn8Yxk2diBtsw3u0x7JkBQLJ8xNgbXMVAQFkNyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767604825; c=relaxed/simple;
	bh=eNdBu8FzyHJpS9KdKDdcCZF2IrswAjYkBNDoY1yfV2E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qg3SF3NsT51UZQx+lzdY8TTYgqOdQGE9cKLoKPhC0xlYa3Ju2LMTZs+pf9PKkeUPjzAxpWFV1fR8kh9y/IKhJUYMXIYROzVLxkYOgoNmPyHbbI6VaEm/s6Vjx3QR7zKRl60CTkbmEPBug9MAg6GPRZpCgTHMgn4da9Z0VrEKTcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DEOeZU1B; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-2a0fe77d141so159387015ad.1
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 01:20:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767604824; x=1768209624; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hDqE0wEU6L+rJkkBgtGbR6mGgRnE1kXUaAClFBqFttI=;
        b=DEOeZU1BLxhthGldYsgnzJY71Jfgb+u3C6l3jqs7RYTJJmJv5B5wNYAZt65U7Ipu8m
         GOs73BsjL0NTSZUFluJG1V5emCLTclnk+8grmLIHixz8GmaNI92eyo9ruPc7z3ola4vX
         th93Pu34CPJPoJ5EzTAbQrCWcxg2//sDiKnQA5QLojeiFPrar6XjvM9ocerdc15caiCM
         XcoCZfECQX+iayZREtUWfDog88ayfhssaJZdaxVN6TtLy0eghAcZDvHqm7dAKXt+WZH+
         LfUV9ILOqFHF86qvCmRd0QtHhEdS9ptwYMh3kea4k+E0RSD0dJZZsQmvsDRzHQufAN7B
         9BnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767604824; x=1768209624;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hDqE0wEU6L+rJkkBgtGbR6mGgRnE1kXUaAClFBqFttI=;
        b=gNG6lDSsU0uwBp5YcU8WB5XOFSBsgURaJ69f4nSjCMCDeTj4aQTRMLPfxjUzIiCguQ
         lvA2hXlwitlFkkjeW5GTWZIgIVpSLFlQlOlqOTj14eUQrOI1v+Tt0k79xoVi0BoYlQVB
         1Z6DcNsw25SNsGo81g+YpZDh+EE2xOHvdZvp3p6LE+ivjpbKo0WBwBJyD3aE/Da7fh+h
         t2Lm9VqCrcVIVrbaq4nh21zDBEHI30r9ceXR1bCtOoIbUJMOVKmzOLsfGLtH0zphR/WW
         FVJlwZ/lEO6yHiLXvZ5FTmsxEINSrKv/iYDH15nkdyVh5dojf+uaEOPJlQnGS5pNqkjy
         73MQ==
X-Forwarded-Encrypted: i=1; AJvYcCU73wuOGjZkewvHrZ7cC3uDkb0YMYnv2E48Utd5SGCosD1KIZ5AP12oPMGm/eU0o9ULswb6+R6YO0w=@vger.kernel.org
X-Gm-Message-State: AOJu0YzOt/cD1AN8Bx4JZNYyaMyhTZKi+naFmN053IXzduNwLBSeonBn
	akr8WwnBkc9/70iDGfp8eYmkZkuQcCEbgh3EXICbHNEG9Xz8g5TO/924
X-Gm-Gg: AY/fxX6xFHxwcHVMfKdQQP+dw9P/IM6QrDurCl3/jnDBBOzsNKqIs9umihY+EUo/sCd
	fas3TwPwYbbojFlAoNnPYla3io9hcs7aYzQCSsEtuTZyYfDRdYKXUrXO0Nueqh05Jz08sHKuBhd
	NLXpUAbLqnwcNVNucyfF24C0YvinUB1SykCEh9UmcPlfb4TEHVGYZSfQR6gWGAx8jhHJv3f9m9p
	sN/+MiTt06v8mGgY/LQO96JFV3w6f2remdvofhIxt1arg9WSCTyELaveHN0DI/ZG1wKgENSOz9+
	1LBZD/q1FytgScUek14UHzWM6GrHv/eF6EUVS7Csp2BPR0yzKgXoRxM9t9/fpRr+CeoPgi7lewx
	2Webh5P/AxzpIe5jMkrG5beLYvVQXsYhIiGVl8QCm3kokKCZQET8qQQm1BKErzokjVejKGNoO0F
	YB8Zox52esOKO7zghnVpg70vx7qO/Xitvv+FIWTB3fk6n1QVBjzkqJnB+j7b8OM5d9n8ChtQcpE
	OU9nyR7tPs7nJS8KDRxGd8dBF8=
X-Google-Smtp-Source: AGHT+IGu9ptJsyzC/j6s+YZEFE4l9qkV4DdxKKiVB/iOYHAhd9WVinxPnry929Xe+wpPzVu1p5VPxA==
X-Received: by 2002:a17:903:384f:b0:297:c04b:3a3c with SMTP id d9443c01a7336-2a2f221267cmr410946225ad.9.1767604823731;
        Mon, 05 Jan 2026 01:20:23 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-a8d1-55e9-3280-2b25.ip6.aussiebb.net. [2403:580b:5de8:0:a8d1:55e9:3280:2b25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d776b2sm446173565ad.98.2026.01.05.01.20.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:20:23 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 06/12] man/man2const/IPV6_UNICAST_HOPS.2const: HISTORY: Add section
Date: Mon,  5 Jan 2026 19:18:42 +1000
Message-ID: <daf65319f3b8d4f9f87810d3c6ce196ed9eee145.1767599119.git.sethmcmail@pm.me>
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

IPV6_UNICAST_HOPS(2const) first appeared in POSIX.1-2001.[1]

[1] IEEE Std 1003.1-2001, Volume 1, Chapter 13 "Headers", p. 281.
<https://pubs.opengroup.org/onlinepubs/009604499/basedefs/netinet/in.h.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2const/IPV6_UNICAST_HOPS.2const | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man/man2const/IPV6_UNICAST_HOPS.2const b/man/man2const/IPV6_UNICAST_HOPS.2const
index 073f2b6cc9d3..b56854d6587c 100644
--- a/man/man2const/IPV6_UNICAST_HOPS.2const
+++ b/man/man2const/IPV6_UNICAST_HOPS.2const
@@ -34,6 +34,10 @@ .SH ERRORS
 .BR setsockopt (2).
 See
 .BR ipv6 (7).
+.SH HISTORY
+.TP
+.B IPV6_UNICAST_HOPS
+POSIX.1-2001.
 .SH SEE ALSO
 .BR IPPROTO_IPV6 (2const),
 .BR setsockopt (2),
-- 
2.47.3


