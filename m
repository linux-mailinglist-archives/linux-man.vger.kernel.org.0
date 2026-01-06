Return-Path: <linux-man+bounces-4656-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 73737CF6F99
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 08:10:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DF56B300384B
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 07:10:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F00729E110;
	Tue,  6 Jan 2026 07:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kO/XNk0W"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com [209.85.210.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD7C4309DCC
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 07:10:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767683409; cv=none; b=T/4AdqXIWuY2jB8D70BjWNiYw0BWVVsF48P6MpRNzFBHk389ubcANODdEV/y3sJgxDvjw2cVY0W0VefplkZDvdAa625yGBuljyTCec6kyWU1r6KInJaSBXFFwuo2tG3PHffmU5it1w+Q0xA7faVjRKUqy7yB6B+NxOM2IwyWtCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767683409; c=relaxed/simple;
	bh=9avNBv9y8aI/UVI04dxSJ6CkFIEKuBkeRpVjM7HQGWo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=rXRhznTjuyPF1mZlVlH204oefqirDRdC0scrrs1fdChXJoxiqETsg4ztqyOYXCFMQekVxoslfU2CTK6Ma5KxsBSJBNDKe5le/vAHfDdbhtUxinOYOd+hv/gR6sb1hr+EIOIO+ODxF6Wzo1jBkvC2YZOdZUvKzCTYm+Z401CsDVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kO/XNk0W; arc=none smtp.client-ip=209.85.210.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f195.google.com with SMTP id d2e1a72fcca58-7d26a7e5639so797405b3a.1
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 23:10:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767683406; x=1768288206; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RD0jNawzisypEnabT32/NBb+BTqdOi593Lh5mODOmb0=;
        b=kO/XNk0W1AIPPeHAeOpl9vyqHY7q+YhD7mQ1g/CtnvjBKQqRlPSdUCMir1aichHt51
         sY5WnPr9e+w7ID9p761QrO7M9eSFCOBzFn4ljuhkmAEh1OpEZFwQreSZVaNbw1366Umy
         cJCh3ImuNmSCSpYw6nY4QLpLJxgzn42RaRhW0bcY9NbM5+lh54XC+at4xOGBxq7PFczs
         hBYhyx0FHmCp0yna70lSIdjiZZGUyQQ2eHom7kiSFYpE9aa5UhBff9hnXt8AXk0LCfkn
         N504cmpjv2wneVpltWbp0opoOcbrjKt69xJs9/KSMKWiMJQ3hicl1LWzuHGQJjJjXD+3
         jfjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767683406; x=1768288206;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RD0jNawzisypEnabT32/NBb+BTqdOi593Lh5mODOmb0=;
        b=FIH9CzUV2ZViABJbL1c5b3aTCvrLTrDZGa9qdpghtiWuCZJaAUEm/b2qlySCTnGC5Z
         XrZ9tsOWl3zlSvDUrq8zjQuwdvhzuVddYak69EsnsidQq3HuSZBBj66Qe1OmcyrW8EOw
         siTngvzSjtoMgSDYJHn5qz6hRZ774cNhddes78sFu5TNhGrMsEp3cFellrZAmJjfiIdn
         n4UX5goSkq10gT81G7/xVgnp3x9BTI3xu4aeCmMM2Lc8N99TMCyQJcJV8fmBc+DoQSlu
         MVj1MQ6oFrUhSJ0MpnWpSrcGegifhLxqwCVCdPDJ6aQE/nxL9UibvmOynVo4zl3aNaCO
         pEkQ==
X-Forwarded-Encrypted: i=1; AJvYcCVuAtFp+2xQcxdEG1VRKBvrqKr7wEbdW4k0ftqXmWXhwN1HtSEYd/f3YsWqSW+T53mcg0hKuQ13jHI=@vger.kernel.org
X-Gm-Message-State: AOJu0Yweyy5gssoxWh/yPz/331lw31W9mn1HIHQ2gb37ehPOFDIVm8LM
	fzQHJaWdUhomIdfswfNjjjdxgnyNX4s10FG9C9Bao6NjAEALlrbK7bUv
X-Gm-Gg: AY/fxX6SeK4GCrxnjn3apI863MORs6kKUbqgTCgySDBTn1hhnhOH2AZM5mFXa8HwkWh
	A6B2oK+b8RTqjnTnfedeCeoCZbd0C6mx1MXDxALqENqwS7woQ9PFwPzYu1C4t9bfIQCdfaqjH29
	tuVUkmj7fdW9RD69oxidbFBpyQNrHFGt+H8UdbJT6zvgc8XiNL8yxODXmPaHskT7KHHuIdcYmeE
	NjxHVt1UhODc7OVTQreMf/PcRwF9/Y09bAl5qdopcsB7akMhNlFvW6Oouscs2eZ48R+nFipSxeo
	CV5Ss9voXsUZWg5RzM+OK3o71HSixddW8zZBgGl8f4EJrjdVuY8SakAHAUJ2D7dhxHhPeFsTA6k
	2xn4uhxbedflPa5fpeyNlImPrfECjLRhYve3Ovuyp/k45BgWwSf+RDb9x2fThlkPKlTKI/b+dFt
	FTYWWtQxFwPP1nagvW916PMFnvOqQe9aaCil/y4HvTp6xRNjzaP0ybYCa1AZnPIjD4k6yJMKTLx
	nBRwR2KrKQDSCOfaqQi+5lQcgw=
X-Google-Smtp-Source: AGHT+IF7r0b5Rg3/29EPXzQwhC34l8u3Q+yiPi07AAqFlsto9RysfMLT8ANVlHA09iCyRPFmcNHHVg==
X-Received: by 2002:a05:6a00:ac86:b0:7ab:63fe:d7d5 with SMTP id d2e1a72fcca58-81880b6c3d6mr1944970b3a.20.1767683406004;
        Mon, 05 Jan 2026 23:10:06 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-f6ca-7558-daf0-e28d.ip6.aussiebb.net. [2403:580b:5de8:0:f6ca:7558:daf0:e28d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52fd904sm1133688b3a.33.2026.01.05.23.10.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 23:10:05 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 15/15] man/man3type/intN_t.3type: HISTORY: Update first SUS appearance of [u]intN_t(3type)
Date: Tue,  6 Jan 2026 17:08:04 +1000
Message-ID: <43f013547fbef4530f3338e0f7cb2806fe6507cf.1767675322.git.sethmcmail@pm.me>
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
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The [u]intN_t(3type) types, for N ∈ {8,16,32,64}, first appeared in
SUSv2 under the <inttypes.h> header.[1]

[1] CAE Specification, System Interfaces and Headers, Issue 5, Chapter 4
"Headers", p. 1089.
<https://pubs.opengroup.org/onlinepubs/7908799/xsh/inttypes.h.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/intN_t.3type | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/man/man3type/intN_t.3type b/man/man3type/intN_t.3type
index 5078d0040cfd..8f13bef4f905 100644
--- a/man/man3type/intN_t.3type
+++ b/man/man3type/intN_t.3type
@@ -159,6 +159,7 @@ .SH HISTORY
 .TP
 .RI [ u ] int N _t
 C99,
+SUSv2,
 POSIX.1-2001.
 .TP
 .RB [ U ] INT \f[I]N\f[] _MAX
@@ -171,6 +172,15 @@ .SH HISTORY
 The
 .RB [ U ] INT \f[I]N\f[] _WIDTH
 macros were added in C23.
+.P
+Initially, SUSv2 did not include
+.I <stdint.h>
+as a standard header.
+The
+.RI [ u ] int N _t
+types were instead defined in
+.IR <inttypes.h> .
+This was remedied in POSIX.1-2001.
 .SH NOTES
 The following header also provides these types:
 .IR <inttypes.h> .
-- 
2.47.3


