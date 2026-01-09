Return-Path: <linux-man+bounces-4761-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C17D076E8
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:45:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 09B3F302D905
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 708742DEA9D;
	Fri,  9 Jan 2026 06:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ar5G6oRs"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com [209.85.216.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1BFB2DCF6B
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767941007; cv=none; b=JONpWBGv0SBElVgGsWbWlYMrVt+3llxTf8D6Q3sBHPnCTB1Um+LAOXK/k37cADjpTbGdWzxyi+QxC0BJVq+dFcDqLmkvVII9YtXDoF7AkvdWF+DbcHyPZAOYJ8IRSzbCuZ0PxXVZRmCl7rjMu1FakQKdzpXX+Ou1jdBSRAFbJAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767941007; c=relaxed/simple;
	bh=nNYmnChuZ4b/o3csq+nNi3+0enEyPy4z9TmmTnGsMEc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UwPHxcmvzdbMDt1UgCJ+Ds/XwyT78n6ZYla64tWeI8inqMvfAzcePV/diCViiwCjQqI0KkkAkHYwl/xXVnY+R1IH0m0Ln1VnPprUhyozcDCq+zEq21XtbnBf0rqems6Q/0ybpxrtbnFRrByDMy4tWbTxvaodT2KT4LKR3RUVqkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ar5G6oRs; arc=none smtp.client-ip=209.85.216.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f66.google.com with SMTP id 98e67ed59e1d1-34ccb7ad166so2330698a91.2
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767941005; x=1768545805; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GN3K7ZTANZ9dCz2wvpbfg04XO32Y9RiHWqaG8EsavVU=;
        b=ar5G6oRsNSZIcDdCoH/0lNi3eIGL4DH8x6sVjtTLSeE4CUuYtE3B/6ZZa9Gf5iIfh1
         SH8BsYUnYJ4gek/B1pUdkHmR1p9xCywFWD9kRAym+pyy1t3GriGAIm1MjZx9gy5e5L1I
         WAirEGEN5KgdkokG8gwYqsFnq5A2N+bIsLA2dVzASis7p6x3LCidbzalUfpcydINWp9l
         gmkTDuu5nMxEJjUGUZEqn8nuFf7rx7aWLlnAdP1hqr8Kcgm6JbbSAGmihFJDXncQmHne
         R0pACT5GGwKbGRaWqh9GcOMX7ixnB3re3ZJVQj/YUAslpjoSHiP54BDhBHPOdFLVB71L
         lfTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767941005; x=1768545805;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GN3K7ZTANZ9dCz2wvpbfg04XO32Y9RiHWqaG8EsavVU=;
        b=YMxqXVLJk26Ab9G+B/zUq8kMWpcYx5jvSyJblOoxtWwWsnSlXq4gbSwLLvyjJuA90a
         xX+aACjlBjHJwdvo317AeTjwbIzdu32QyE7/UC7Xgb6/1tIbTU4Lp1I0i07rU370ZWsD
         IbNDgYXhiJr3iz6/dieph511EcrcQzeG5YIwTRJrkVx86RBq3HNwLk3JORZiJeM3/aSi
         7SRs6tuY0R1t7+5LcdOVBAJ3Gz5le6x2isSHKNbqggdXZj9TrYrWyF7dBmTNQcE7yiwh
         dMATrO+4pToPri94OSY1+zrGKK47jcr8HDsuVJGw2I3BuS7Sr2e+HSM1XqGgkD36e5aF
         KSGw==
X-Forwarded-Encrypted: i=1; AJvYcCV3/7Z5uG+MmO19/sMQdImXjumb9VuYZhTRQQETjWy0gPQ7eHCsoYMzaG2KpKOddanLs11577IXjtY=@vger.kernel.org
X-Gm-Message-State: AOJu0YwQVjbcR7U0TxRE5QrgknUspHIEhJMX3OsaP22mkwwIkLzEXDS8
	DVH7V5u85pK66lMnll8CHnmdg/ldoqGkKJ3qAWprmzJvhOqFK/gWsoyD
X-Gm-Gg: AY/fxX6M1oza5EDxWKLPSjriKMd2dhFeDqjQ30YBL5sEkdnHeMOg9xeDYlfVLzIO39v
	nYQikd8JVJQk6Q/NsDQ8S7j4nqnpSzpGraWJkZxJholjiBAgzMKO9ScL7aUFzw1HyQbyA/G44ot
	dS9l1CBpZbql84OlbNhOc4E+cgIQe7wNwTrcxhadAppORjiJOA8DGJ2kzEzvxjM9fdja9EQ3CVG
	xYVq1z0VYEk0xQTYvbvU3aUmvLbHB3eVn0kYE1ZjCG6ynZimLURtEQ0UNVtp2FJ1sT1vpoYPb8D
	F15w+YX/bwDWCXu0hMnAVGH5JI6KbNQOjMngM86+qFK9An3+CHI4qUtKsWGyI+3NIon9H+H+Gf3
	Xht48BMYgLlFb7FjZgBH9Y00db8qS/pD1JtUAXnzuJuBGRZeiTIakWX3nwfRN2b9z/QL5eZvUoM
	beCR/8975eGzY0UuSY+PxcLuphMMblxTxwJHWJd7huNB8cT3a0KLQn/R9gi59uaRtL8N9GzkELP
	IbqYvf3hlCkdas8
X-Google-Smtp-Source: AGHT+IEHsWvkBFfLWaxrkYo9kgn9NSthBadJdvwBWso9MvFDF33ukY1U7bOL95Ttft3+YCzVbYeUtA==
X-Received: by 2002:a17:90b:3a8d:b0:335:2823:3683 with SMTP id 98e67ed59e1d1-34f68b65de0mr7948900a91.9.1767941005303;
        Thu, 08 Jan 2026 22:43:25 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.43.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:25 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 15/25] man/man3type/time_t.3type: HISTORY: Update first POSIX appearance of suseconds_t(3type)
Date: Fri,  9 Jan 2026 16:40:33 +1000
Message-ID: <7f54dbc4481df2924d1cc277a3453c7939292442.1767939178.git.sethmcmail@pm.me>
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

suseconds_t(3type) first appeared in SUSv2.[1]  The type was added to
POSIX.1-2001 when POSIX and SUS merged, but as an XSI extension (still
SUS-only).[2]  Then POSIX.1-2024 added it to the base specification.[3]

[1] CAE Specification, System Interfaces and Headers, Issue 5, Chapter 4
"Headers", p. 1177.
<https://pubs.opengroup.org/onlinepubs/7908799/xsh/systypes.h.html>
[2] IEEE Std 1003.1-2001, Volume 1, Chapter 13 "Headers", p. 367.
<https://pubs.opengroup.org/onlinepubs/009604499/basedefs/sys/types.h.html>
[3] IEEE Std 1003.1-2024, Volume 1, Chapter 14 "Headers", p. 426.
<https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/sys_types.h.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/time_t.3type | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man3type/time_t.3type b/man/man3type/time_t.3type
index 6bfad6ee3f3e..9757a3297ca2 100644
--- a/man/man3type/time_t.3type
+++ b/man/man3type/time_t.3type
@@ -57,7 +57,9 @@ .SH HISTORY
 POSIX.1-1988.
 .TP
 .I suseconds_t
-POSIX.1-2001.
+SUSv2,
+POSIX.1-2001 XSI,
+POSIX.1-2024.
 .TP
 .I useconds_t
 POSIX.1-2001.
-- 
2.47.3


