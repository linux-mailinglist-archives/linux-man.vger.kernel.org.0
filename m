Return-Path: <linux-man+bounces-4722-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A410DD00C4F
	for <lists+linux-man@lfdr.de>; Thu, 08 Jan 2026 04:04:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 101BB301635B
	for <lists+linux-man@lfdr.de>; Thu,  8 Jan 2026 03:04:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D60B3227BB5;
	Thu,  8 Jan 2026 03:04:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TzX3Ndwu"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F4C20F09C
	for <linux-man@vger.kernel.org>; Thu,  8 Jan 2026 03:04:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767841455; cv=none; b=eGo7v5uTQDoegQnq+GzoU0LTqakU066KRa04++Iyybl0irf8JSNbGeYFSz310lxu396dAJ8ovlLBLDK4Qg5XWEGRjqGX16Y4MxBTdYGvgFerpY0v3pwgcTY9x+5aIyh6y6qe+suPOCGbU14PeSlP4T2siE/v0zHFjeCFERDtn2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767841455; c=relaxed/simple;
	bh=CigvikmGyPQ9pcH41rfipf2EKEL1RleBlQbdbGYB78g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sgGWYedbvBlA4aje7ox6G071u0c3koIi2Mif4g3uf6rTCUIxniUpY20a/qkncDIs3Ws6YUSPUqqVA9kN9ysTnMjlPhAkVCrQqn+BSl61fS0PvZZByDiMZvCOV0UaTKlqDTME03sJ6Ou3AeLHZTVDdbiZoXiQAkmL/RWVt+emu1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TzX3Ndwu; arc=none smtp.client-ip=209.85.210.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f196.google.com with SMTP id d2e1a72fcca58-7b22ffa2a88so1658590b3a.1
        for <linux-man@vger.kernel.org>; Wed, 07 Jan 2026 19:04:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767841453; x=1768446253; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Wlw8gavUOVPdYkmxoiPFWJ4NIcGITrJGA18S7X3Uti0=;
        b=TzX3NdwuyzSqNUg7Vr/N3UptmBAHuGY/DR0LREtNnB3QWV3WrKq3seKH5AhDeTWdLO
         fWJeh1hzlcOpFSfJfo6KQbNL9baTmXXQeZqHyg406rjhRjcBTI8T1qcsluHXzmoxI5i0
         H3xxQzkH0aVTALnRh4VX4bd7QIf8xdXTgTLK2O72eB2GGf4sPuGmJ8VDWFflEYPTvjqq
         FMIY4+z7a2TzOAfhl1Dx9S3Q4XSYtYaHG0JJQvWIn/DvulkLcXTLSbTs1l09wHIwe2DU
         2lAcuMBf0Y+15uVD31ltYIe1CA/VlmeQul/3mugVlPiwMcBSopdeqsurY4Q6FPQn3Jyv
         hZPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767841453; x=1768446253;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wlw8gavUOVPdYkmxoiPFWJ4NIcGITrJGA18S7X3Uti0=;
        b=gO9D7mR0jPwAOWcK14TF+enzXSKIpqIamzTTIbkSvU5R1NSGEYXcwIC7znJKlL6gJT
         riWH75q06p3qHBVaKl1JGZbm9CHRorUErPx35Gww/6N9f5kK6mZ+EJNV8M8wp//vpaDV
         /Vp3bb9orNwXgevIFu97ld6BBUEKbOmlc4fXZvZ/jHSeGb88AIZqxMS14Y2WGOzcj5FB
         NNnQIFlLN6dzi7yWtxUXWtpEH2D8Cbk5/lmuDwF/0VIbDaFbVbEpq8IwUjGhg3eUuP8t
         GoETuRtVyaD2j83zYXOgLqVvFx63PUj0wzAzUwPQRpkt7e2Z1/9hxv7+ML+AQLZYH/G0
         caRg==
X-Forwarded-Encrypted: i=1; AJvYcCXctYJ0HawinB+SD+MD7j+DygeUPc0XgjGR7+xLw21sYP29kGKPbxHpf0CanXvQbYFKSvCjrKWHgPQ=@vger.kernel.org
X-Gm-Message-State: AOJu0YwmLP7A92EnGe54x94Mx3brR3ATgu1eOJ6qrYs7sHvKh0X0Hxgb
	N9so7gc7vuehEy66q2gOH8cjBiitcx//9gJUVGG0uv2YXyHl/Pru5n+w
X-Gm-Gg: AY/fxX7rCVfIwAZpMlQKL4gy2z+rrYb6qHNVc8Epetpx4tneBhR2AVpdj0qkblVBW5O
	zgshTX/4gGPM6CIbJhjN/6YU5bWWtntK1okh0BOddlZY9FQCCuzSuGPYSlgKZF48T1cDQ4pwp0E
	FLl4vkBy9XnS2Fc3of+RKPaJU+sk5bXunMIKOYjjktNLFP34GoW5qQ2p1GWuPfZxX6gNpxDk3Qu
	SijXnUZJ7L5Vrxu9R0lxikv3MTJn04KTWfkAM7Cat8JJGfUuhxwTcarRRhJ0n5cr+UC1FiQ6iEF
	B4bZtiurypdDfeeDc2fNT07IrD83e8xc0s050hGGZbMmCZKn4VJYdfTTGadxVKtqMMJWZZ2R559
	Xno1nvXPUs7jCo77YMS3bEMKf9uYTjlI9c91uM0bzao1TTOuo530eECPdtxfZTxInPp8+IFFzoc
	zgdhCxswj3tGwInRX1p8xcBjHvVs/KjnxNslJfJJTSqGU2ikdhcikNqNXRItOxaO8LtzBTRUkW4
	Bcei5DVFzom5iI=
X-Google-Smtp-Source: AGHT+IEuKv2LY8zLmkmAgUxPQKAvq1wDSpsuKU4/qhymtXtpB8CkQVSlXWol27gT6Yq/nCxZ6YHs2A==
X-Received: by 2002:a05:6a00:328f:b0:7a4:460e:f86a with SMTP id d2e1a72fcca58-81b7dc62dcfmr3732371b3a.25.1767841453385;
        Wed, 07 Jan 2026 19:04:13 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-ce7d-5796-70e-21eb.ip6.aussiebb.net. [2403:580b:5de8:0:ce7d:5796:70e:21eb])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb4c85bfsm6120312b3a.30.2026.01.07.19.04.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 19:04:13 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 09/11] man/man3type/stat.3type: HISTORY: Specify initial datatypes of st_{blksize,blocks}
Date: Thu,  8 Jan 2026 13:03:15 +1000
Message-ID: <e13690db2fb6c6e08cc488dd5c197464762dc08a.1767840410.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767840410.git.sethmcmail@pm.me>
References: <cover.1767840410.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

The st_blksize and st_blocks fields of the stat(3type) structure were
both specified as 'long' integers in SUSv1.[1]  SUSv2 then changed them
to blksize_t(3type) and blkcnt_t(3type), respectively.[2]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 4 "Headers", p. 830.
[2] CAE Specification, System Interfaces and Headers, Issue 5, Chapter 4
"Headers", p. 1169.
<https://pubs.opengroup.org/onlinepubs/7908799/xsh/sysstat.h.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/stat.3type | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man/man3type/stat.3type b/man/man3type/stat.3type
index 83f6e881a5ae..82f0dd6e778d 100644
--- a/man/man3type/stat.3type
+++ b/man/man3type/stat.3type
@@ -144,6 +144,13 @@ .SH HISTORY
 .I .st_blocks
 fields first appeared in SUSv1
 before being added to POSIX.1-2001 XSI.
+Initially, SUSv1 specified
+.I .st_blksize
+and
+.I .st_blocks
+with type
+.IR long .
+This was remedied in SUSv2.
 .P
 Old kernels and old standards did not support nanosecond timestamp fields.
 Instead, there were three timestamp fields
-- 
2.47.3


