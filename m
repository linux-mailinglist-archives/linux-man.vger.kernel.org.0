Return-Path: <linux-man+bounces-4752-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9F1D076CA
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:43:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 021DA303B7D1
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E2132DEA9D;
	Fri,  9 Jan 2026 06:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EYCCf/gX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com [209.85.216.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 896F82DCF55
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767940990; cv=none; b=NB4Mh4iU/4/cuqLiDGo3O6ft5bs5reaEVHJwAsVXJqcLlwrHFReeKe6Y+Bttf72WLkSoCbpVSqrKpylpI0gaIGwZ8Rz92OfCKo+01yCJgs2nzXQBrV6s9hrlI/1v9qDH/BpPsgS7NKv6nM2BOyy8KpXaU8zpG/kaJRikUvUlXqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767940990; c=relaxed/simple;
	bh=eTXq2Tdksgdp9PVUjStUFt5khwevx0lMDzcoC6LEoIA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jyayjZmq3y4sufBtFU1e+8cF7m7S07Mot018NWBqdRD9fTNev5wnLCznVMFs8fohD5qddTiEof6sOnWYhXCv/GPA7x6jSzo/Hy3TnVBPie9RbyVKOPfOwOzd8hUe048mq+BtZV1yhsinOhsG1+gs8egVcz1pejMrhHmkYQzdXCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EYCCf/gX; arc=none smtp.client-ip=209.85.216.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f66.google.com with SMTP id 98e67ed59e1d1-34c1d84781bso2366907a91.2
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767940986; x=1768545786; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sfYzM3n0pJlzg1QQ2hS9jntz1vchCRx4qY2vy9+5/2A=;
        b=EYCCf/gXP4dF/ANzxF1V9RglVZwk3vM9L56uign320HPN5xuO8At7i9ppJl1g8VsSP
         cI+ol7AN3beDHzd/uYNpH2kRuE+ZRMYJ9P8wG6CVxIWa8Ui7fNHj5bSz/0UZBL3YM5Tp
         hPF6MrjmxpV2tUEo3kXEv1fpRYioJK9ua4X6hNGdEHjoFPOJ0MSpSeaGVCiOtuZHtDsE
         6ejeML683TqrJFeeHgEGknuruN1pt/c0mTldw6R47Zdl2TzA6t56QSaajy/CMGyaCNcp
         XA63rmfH38dcNDIk1xZvdUBaNmxbdsprSsvVbP74ytwinXDDqTWKq34GMBEjxhbgDdRi
         500Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767940986; x=1768545786;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sfYzM3n0pJlzg1QQ2hS9jntz1vchCRx4qY2vy9+5/2A=;
        b=KzqBYyCG1drcxOTdRYP2DF1aGqvmTI9GfIUEQjbupD2wKQpW8qElOxzr9InJgTH5n3
         0iJtbcPtwSOwSFMEQhWmgBO1PhdNXFGWRFlwxgZe5f42Jto38n+TFIaZ0zkVq/IagoOq
         VyHo+8NiB01fkLDEWN2DwOOsRvARDe9FL45ekIy8ekVxN6ba/V0RoyoSbV9lWQH+B1J0
         +L3PrgdEngo7D0IiI3qyFLV4qMI5hM8KtxO3dgac6NqCyYmeUdWL1mcY75rVujc2PaSL
         aCdzii9Qrla1iwPfd0m+L5+xSKaPndLaXI1fLJTQu6WZPrwg3fmAD6ag4cHAEmH0TS/b
         McVQ==
X-Forwarded-Encrypted: i=1; AJvYcCWXJjwSCAYnhgQL6b55wxo7cFXypvDw0MDfc2T94mor4sygp71MN2Dk9aM30aZg+wcmVL8OsqAgyTY=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywa7zGfv5cKRZsAbstLb0gqg8YFfe7LsmTvJjVmgxB747BOmyLL
	K4/Xz7BwcywMxgi01NsB35S4Z8BrY1lG15QIZ/pVAIw7cYhNUvB9aXvA
X-Gm-Gg: AY/fxX46nfgoyImE1UuXTDTHDtUxKfbu8ajeqYOO/Nqcl4z5uEhkTXPgGLF3RL40mfn
	mvKvj71jypXopKJYRukVqpAOHfI2zfpAotx+JKYRAhAm4ezH7uxS2vU3fB+TWA7pweLNfZ7i51L
	j15gfEgl2STFdeFACRxPiFMuVngeolz9TZwSlBS6SrnpFChwVv+a6DKuxIfWt1to3JCLkD6/6mt
	278O96RPqPArX1mknkjoRapOJwEHsIbCfOAVFdPlP/fwjVTsC5WYR+1vSSWcmyfcrNj6Lr3CNxj
	gYP+u9TuaL7Qpb0egISPIBZ2ohHCMrKhX7a37fU7HTiemkXGqn/lMlQUJUhLZ9HyKTSSbBXcd2d
	IcYbCxS1vwDDubxdtXg4t7KYvwwppder/wNcDwJNZE1tfjs8L/0QZJBq7/e1HXVh3ehyU5BEr4h
	rn7xIzS1NOT3Xl+DSrD9on0F9CW9lzxUUBy0iHSCuylx1jseFuJK9gtifm7kfpKhSGxRGTb33Cn
	t7RY+77nbWYcM71
X-Google-Smtp-Source: AGHT+IEl1D1+HCJg3XUjbpe48lR6UCmoFvU4ujGVqNRfON9qmaynaNpbF55JelcPQhVgoas/1pWG1g==
X-Received: by 2002:a17:90b:560f:b0:341:d265:1e82 with SMTP id 98e67ed59e1d1-34f68cb94ffmr8163436a91.29.1767940985767;
        Thu, 08 Jan 2026 22:43:05 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.43.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:05 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 06/25] man/man3type/intptr_t.3type: HISTORY: [U]INTPTR_WIDTH is not in POSIX.
Date: Fri,  9 Jan 2026 16:40:24 +1000
Message-ID: <26e1b48d4721e7357dc02d5c7d57b3d0f41706fc.1767939178.git.sethmcmail@pm.me>
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
 man/man3type/intptr_t.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/intptr_t.3type b/man/man3type/intptr_t.3type
index 0e433914521e..452e760e610b 100644
--- a/man/man3type/intptr_t.3type
+++ b/man/man3type/intptr_t.3type
@@ -109,7 +109,7 @@ .SH HISTORY
 POSIX.1-2001 XSI.
 .TP
 .RB [ U ] INTPTR_WIDTH
-C99, POSIX.1-2001.
+C99.
 .SH NOTES
 The following header also provides these types:
 .IR <inttypes.h> .
-- 
2.47.3


