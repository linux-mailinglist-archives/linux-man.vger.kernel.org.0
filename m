Return-Path: <linux-man+bounces-4781-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E388ED0D07F
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 07:16:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 419CF302AFFC
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 06:16:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 161AB24E4C3;
	Sat, 10 Jan 2026 06:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FW3C1Q2u"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF4B5205E26
	for <linux-man@vger.kernel.org>; Sat, 10 Jan 2026 06:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768025760; cv=none; b=Eil6BTPypZQxr/UxqYYzykCz5u+72+dNX49oyi7Z4nUUXPcBibshHxgyGNPQJ7OBKs/X11VP2WTBcqzH2ADRPi3sC1JIawEX5h1N4iLhoYRgoPtLeTGqk40gx9Jnrq7YTCUZJAglhmC5Dbd8C8kUvG6V+JhoJgomR3rSZ5gs0gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768025760; c=relaxed/simple;
	bh=DcBQXTps0FW0YbfTh5/e1FpJotwkr7HjcbPAV0L3rPg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QzNkEPmmgVB4z5OQ0QHSVFd+sgysqqQ5/llUC/q2NSV99XP1CaCnkve3xU0Wchzo8pHJZ+WBaCqKKUe5dJ7go6c9iVJ9HBZGfg5ZK673/9c1oHVzyIQEHRKWmgbYajQ0ZHBxuZQJShmeQ1/i5C0hQSXHSzXnZkTznLIdEfYjsRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FW3C1Q2u; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-2a07f8dd9cdso36000805ad.1
        for <linux-man@vger.kernel.org>; Fri, 09 Jan 2026 22:15:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768025759; x=1768630559; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=p+CUgQ+Ida49VU8TjqU2s+i5uGy7IhHZMWPNL0YfwFk=;
        b=FW3C1Q2ubKSIpQJ0Ceucw9kz0IDsgclpN4c5x46MOjqZDmCpS0FIG+hiTizZLZzhul
         FqRnUK0nkWPKHZaZ8kjglCu1paCPEDXTM11+7hVpwmoEozQiKV07pNtzSyvye71tBEYC
         LR23habPrCKChDv8iBR8NeResAefnF4iY/+7EmuwkQUkbvKKyZmWTbfQn/sRUq2n52pY
         8D2XU2Nk2BZD8xX+M/TC6Qopg4QWskL4+EqKWFBHCfs419GPQvbP4fxjwk41Ro0CRqxD
         F8N29qSkK2wMc7VTqoSE9yRAoGS5uanB4i0sv5DG8szme7H0AQ+NDEXyMDGC6weicQQE
         RuDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768025759; x=1768630559;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p+CUgQ+Ida49VU8TjqU2s+i5uGy7IhHZMWPNL0YfwFk=;
        b=nsbY68juSQ+B6ujMG4SpJ4ScNL4Bnk97uPUNdZtC9bLDNOpQ1D3UyBrVX7ro5O1178
         c1UksLgboak/6wu4cbjqOLkgaDvQ3WYW+8rAoVBq9kT2WMuEYNKsD5EjLP/OAWaiQwNT
         AANeJ9uQ8PzMt1+UQ5baKRyrwGvTkpCAEzlQqzs5woDscHyUch/n7KcSfjO1XwKjf5q3
         znQ+d0DrhTKSronhNCB7b8/4vqGYcvDXa6a30+vfmuVwbbM6WZMKlvRNDOroQ1X3lT1A
         B0J/nn9YH4BuYTE0XX6J866JgXWuCQ/ElBR9dpBvicUbPhE09+9PhgLJUJLWlUB8RSj5
         WSuQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJPvhoOfr0WdNW0s8cHmhWDIDxejeTJVjzGO8/x7DXrNDsm3uIw5ifmAjFSrBYnDoEqemTn15a17I=@vger.kernel.org
X-Gm-Message-State: AOJu0YwphDnjSu/GAKNt19KW5cOsXwXW11LEkdbPq15XyK/Nt0697cjn
	nl7jy5L6Fu38Q52ahhh+qkUM3XCSOdT+ky60jAJVCX4/HLG2inxlgw1C
X-Gm-Gg: AY/fxX7kP7uWs+0LWPMXNGBE/7je7lUTBBc583COz/MB/8gTZzXZMSZAsxzoTKe0lL2
	Rvlkw03fCj33XiyESw0dIlYg3DgQ7CuqbOyi1Jq1vlGI+jTRQX7Tp785H36cHbm/zs7R2afVKy+
	otnfrn8/lr5TkO6sVS8CfapVNLDH9sLq5QUD95c9wPCorsWGCXH3FUw7/rb9TuNnNw2JPwrQ4x7
	38l2stXOINuSWBIVF5rI9ht4VB8pq7FQx18toY9rLT/A5cb9QE9zuZCtBR1VhW/k4ziCAucWicX
	KMVRnaFqdi4Ey3b1J+Tv1+fR63qEkJUP9gtChX5XHW+KEGwg2Q86w9nLuE/L2vd71wwSPszqXER
	XMGSf5+VqvIKjk42RhDcZwWZhwP9wznXf+WifYC+NvkPED8/MD1gC3CVKyQGNNb5SeenETJeVrn
	b30X5/l755FW2IoS45ElsJxhPTjMGk5F4AItZVr8mDVzpSeSRWfV8NtYj7FrJ3Zyq9Rj9sWiY+b
	P2f3ZhFfPceyalNcKrpBc7hV/w3
X-Google-Smtp-Source: AGHT+IEU7ZrD4y5OB5kganVT2ygcA2+//mHrRI13CwsAW1dW52UBMskA/RamzFGFhSy547vCdS5p2g==
X-Received: by 2002:a17:903:32c9:b0:296:2aed:4fab with SMTP id d9443c01a7336-2a3ee43595bmr111967945ad.23.1768025758839;
        Fri, 09 Jan 2026 22:15:58 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-ce8d-7313-a81a-a88c.ip6.aussiebb.net. [2403:580b:5de8:0:ce8d:7313:a81a:a88c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc8ddfsm119807885ad.74.2026.01.09.22.15.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 22:15:58 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v3 3/3] man/man3type/stat.3type: HISTORY: Specify initial datatypes of st_{blksize,blocks}
Date: Sat, 10 Jan 2026 16:15:20 +1000
Message-ID: <5f6bf068bb5fa226d4933f2faa25a738ce098cc8.1768025095.git.sethmcmail@pm.me>
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
 man/man3type/stat.3type | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man/man3type/stat.3type b/man/man3type/stat.3type
index 55294599638a..ad366bdeb35d 100644
--- a/man/man3type/stat.3type
+++ b/man/man3type/stat.3type
@@ -147,6 +147,14 @@ .SH HISTORY
 SUSv1,
 POSIX.1-2001 XSI.
 .P
+Initially, SUSv1 specified
+.I .st_blksize
+and
+.I .st_blocks
+with type
+.IR long .
+This was remedied in SUSv2.
+.P
 Old kernels and old standards did not support nanosecond timestamp fields.
 Instead, there were three timestamp fields
 .RI \[em] .st_atime ,
-- 
2.47.3


