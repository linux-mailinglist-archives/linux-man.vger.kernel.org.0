Return-Path: <linux-man+bounces-4771-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F88D07700
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:45:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B790830341FF
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 142D52DF142;
	Fri,  9 Jan 2026 06:43:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I9BlyWvj"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com [209.85.216.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7A5D2DB7BE
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767941028; cv=none; b=SNJBQSQtSMTEJEfJNzv8+4oDRUvpc81xB09+asC6ZPRx31bivOobNGIN+zidSn+YwDOJ4S89NSZ/4XrTFckAjfe6n2se4G+KCW5cAiFtZBR6Kd2dCTASZtecOwnq5vHYj88VEnFLtpxGcQSRfoiMUzFV1Pt9/CIuEwp7ilpzliw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767941028; c=relaxed/simple;
	bh=ccqwPJlmupoub5cI+J39pz0eMnHs4/6UI7EONLJyWb0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lRjYgF3sZqW7G1dWhnBn6cx9RuI/vQQFLqK+EjrwJAAo7kkJGL7O8zvc5R/k/mgt6WFhXgutrUXpG4s8vkzf/vv56UJ5MIAJLRcEKHM/YwXSlDHtZjeBkojcm28q9/gFnqz9w9moIKmzimWBxjWvKH2SggJhwRgdbdRYAktm+1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I9BlyWvj; arc=none smtp.client-ip=209.85.216.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f65.google.com with SMTP id 98e67ed59e1d1-34c84dc332cso2370045a91.0
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767941027; x=1768545827; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WabqzFypk38NYdAWJI84JSY05N6WCp8qGrwqxqEL4Ec=;
        b=I9BlyWvjZT6CwRg6viFyyKdE2jTU7PZchadcUXFXtRjQNJthzuNjyrbPADHNA1jXPe
         gXq8ZWMD0RS2ZvMNAouKj5vo3Wwa8OgTQHvuHXmUdjbccsZnb/OXTMgCDU4E+VcYGyvP
         ZlpVm8GSx73fGUPnowln4eUSiRleUTBSvOvss7v5wVeaIvzy0/lLQvJ567FQgk3/RMb/
         jA5h7gjSArkt1rco4U9fAYmCBkhJuUTQyKypNGFrBnX1M94tw4kyLVbF8O4qpRbNqKpD
         uUsmsXy7/33X4ZEg/J3Cvmr9DMBYjm6VoUx6OO97sELbpTjdnlYRZyYyEkcBBELGdVuj
         /vXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767941027; x=1768545827;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WabqzFypk38NYdAWJI84JSY05N6WCp8qGrwqxqEL4Ec=;
        b=PCueiqdzXTheXN29BdNvzzL3ND1MZYWmCN7Og6TBbv48OEVlXkYH50oXkuSPHXmXHf
         HtGdbg655vUDhMdGIDh271yugUTa8GUi9p4/ReenesjcOPqb1jg689WB73BeDblDaFeB
         V3UfnJ+snuapHx9NmvSHezsdtIMNMQW2W51EdqNlgzvjCwkwxV9qM+MUney6FeptqCA8
         tjbjCPWoI21MsbimWqJWwOH3HcNvYcWmPU78zi7QVN7QUgBesof++UTzdHjFmz9B/Kqi
         EF2EvwhJTmFaY+zqczz1s8gdZhMYyuugfVenNf54kwGfRCdRON3P74jCpxtyNPKKt6PF
         +77w==
X-Forwarded-Encrypted: i=1; AJvYcCV1w0thnZkIMCOQHje8FaolnVhvioDcb4aloWKso7ZGMREwMDeLtuMp6ZEUrCwErClzmIbBntYmjXg=@vger.kernel.org
X-Gm-Message-State: AOJu0YxX3LPJ3oajOv5Cu2CFAw4/ChRCsLa0NaVt+GtgEZ4ePWD7QDSk
	wzTrP+ef8n81BclZEfCbTqw+dLdilaV+fB2CJVk4tkSsqEc4AEl2+0Gp
X-Gm-Gg: AY/fxX6G4tlrV0bcJf1S7ukJSmrH5bYpLbsjQU6SvV759u+je8+4woUQok3l3IW0YRD
	+Ex34RxWqghOANSz3R8oPfPE4hG4wGBT1uWk9gIvhESvXOhcRhHkUEMq1oM2Nj5mRgGHRW2jRNt
	dn/ULSr0fBpOCd6S3J2KZWyrIKCkTpk9BmdKnyVlJ/3os+GsnIL5SE/kNdBt/O/VQBywDqRlWPS
	TqSSkcnJsTaBZuIoLGThFlqmK/AzwaKbxT45y9ET3iYO/h/ggqni8B44TL1m27vPKeAX974lknk
	f6OrYq5xbynbV/O6mAad98gioBN6greikfubDZOfPJ21skCIH82UnBbQ237OYXSsF3w9/Vw+Ep6
	eQYDc22c29daZy3xYn1e2b7EFJ1DMkFPGzkKuJNIbfbtDezgZR5yULt1iiSzg+KjTQNAb8UOyM+
	gIW3vovpI5MJwWBllQOqsh6Kk7G4BJWGDgjI8/aLBxCFuCzOemvQ9B0kNLCsGP0myKPM0PxnzpD
	bCKexAQiVmFFSB3
X-Google-Smtp-Source: AGHT+IFC6Iv7D1Cd+RAJ+FAlNBkhs0S2kh+ZKlCvB32OAzk0JROKH1kEwXcSmX8ja5vKVtBlfhygSg==
X-Received: by 2002:a17:90b:1b03:b0:343:e461:9022 with SMTP id 98e67ed59e1d1-34f68ca444bmr8665223a91.24.1767941027033;
        Thu, 08 Jan 2026 22:43:47 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.43.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:46 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 25/25] man/man3type/wint_t.3type: DESCRIPTION: ffix
Date: Fri,  9 Jan 2026 16:40:43 +1000
Message-ID: <694ea5baaddcc78597a8951ca58d115656386fec.1767939178.git.sethmcmail@pm.me>
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
 man/man3type/wint_t.3type | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/man/man3type/wint_t.3type b/man/man3type/wint_t.3type
index 5d51cf8d508d..b6016b160827 100644
--- a/man/man3type/wint_t.3type
+++ b/man/man3type/wint_t.3type
@@ -28,7 +28,10 @@ .SH SYNOPSIS
 .SH DESCRIPTION
 .I wint_t
 is a type used in functions that work with wide characters.
-It is capable of storing any valid wchar_t or WEOF.
+It is capable of storing any valid
+.IR wchar_t (3type)
+or
+.BR WEOF .
 It is an integer type.
 .P
 .B WEOF
-- 
2.47.3


