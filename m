Return-Path: <linux-man+bounces-4770-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 78784D076FD
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:45:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DBA173032FD8
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08A002DECCB;
	Fri,  9 Jan 2026 06:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cVy7f1ce"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com [209.85.216.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 830272DB7BE
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767941026; cv=none; b=RiJkIgcJOm3xEguHTrqkj8pCm3JPjfFD/AsBimLJQAbiUCBl0s/Pll18v5ThbIMt3QQPt0fE7gYmnsRah35z/N5Fo3Bxwb5qvp1qR1AlkxmRKFridsuL+NICi0bMG+NJrbdmXE/oESLLv0VYVVkYxwohDaSX6KZkFp05C82o5Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767941026; c=relaxed/simple;
	bh=y9zo+idVcmlrIMGlFbW8VFH8IDI/a8s7REWVuNSGfpQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RLgQ3rV8jV/bcM0JkwvYDH5O+Sao9V97YQAxDYzC0NLa51zLaVpuCqOfBCNoT6LkTj8SlJ5/Y+PRvdQ6EJjv7VG5eH3eBDdN2uaADb39/07MmYLDpjuyaYmeMohukVp8L5/DD28E1tGH0vy+IDgcWLuRlc7R16cT+fPs4siwrHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cVy7f1ce; arc=none smtp.client-ip=209.85.216.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f67.google.com with SMTP id 98e67ed59e1d1-34f2a0c4574so3117916a91.1
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767941025; x=1768545825; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FlJ6Wno+CGl1E4yrobF+Y+9a6FqiX2R2FSb4xQPS/f4=;
        b=cVy7f1ceLibPs6tzQVRQAsu/NXUmwJ8h1gHkj6Ml7kINzfK3go37FLROFYDQGZ48fE
         p94hnd620HcmWEJjt608m4OwzupJfwx6aVftZ1byjgV0ikDDwn0tdN4me9UAM/OHIW7f
         FgvHC1QRK1mwe4sxCLk6NEqMicRgwZua4D9VVIpCyOQDxnCpKSBO2snvDnwr5UsumD3u
         usApB3A+P4oTytE/oYzlr2Na/LoOpSdPx6z4KJs7vE9Gyxy+QFLbT9sZ/82472hafdAs
         DxW5h9ZVEAGVlxr3WOpfAYYg1HBooo8zxb4z373xxdh0ZGlq4bjBcYF4ougWGHCP/D8/
         Vp6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767941025; x=1768545825;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FlJ6Wno+CGl1E4yrobF+Y+9a6FqiX2R2FSb4xQPS/f4=;
        b=XJ6N7bpClPHkVctJmZCH0mENKdnFwKoF7/Vuzl0DiGCPVzAIJvuYTGPaJhmiwhwiHj
         hRu6FbycphBxfX5dJkfQhQFAcwGg31y+QXR5nE1jECW9K8i5cUnV4wBXgJJBprUyfuRD
         LJmXKtGiu/pv+ooPSrvbFnKcLb6GiWhCC90yCcc1gJ4FQUlsPD+Oz71/4vnsidy8yqAp
         /oJlK3iS3hWvFoRmktWO4fo44FHsChhuK4EfuwB2v6XifF6gt52BtSdBoQwlr1t61ME8
         auUahApDkew7RfL/HD0SWzvZO/3uXOjqS3q6Oy387QcFftTAZIFOn50udJLDpGJ3CaPH
         ymZw==
X-Forwarded-Encrypted: i=1; AJvYcCVby+Hz2yOIsYzMCp1JH+sGOj3wz2zCxadFq4Vp239D1DILDq4+LXfev3hxMN13d8VF8feUdKo50Mc=@vger.kernel.org
X-Gm-Message-State: AOJu0YzLHn7/iH8ybVMyTFZUk6w7xTbyekYSM89Yf0I1Y+7e846/QT6T
	Bi3rrDwhMQ9n+VR8kXARF7uL4J0miAh/zYV04sKP6podz5nV4L9rk9be
X-Gm-Gg: AY/fxX6Fh5N9TEdekiJPiIOFuQg16qyB3AByaW+yjuYhEe+4PLakt0B7aACp/OsE7lA
	5Gq6KnTfj7mEBTlF6aUJSiqOIL1X8HNoSQAK2EVboV0hrcqlcu8D1rcAi0TWzrB6WTnOaTNu4d4
	vdOnkrREQzOm0HaSOOenla2xEq6mHfpOgdJBy848M5juBNhj4qkQ6wOm9WQYbBnfSVJZs9uqmWH
	fED/p+HvjfPL25+4Ct0j3G0N5ggUs4D7gtGHrIeee6Og1+V3PbT45vl84wHk3k2ldA2NH684v84
	4piJlyU0z6lM/GjIVCRbIOvSXuTbOQBM9hYngPKilSfB8w9FHf+banOGcsm8+b7g0c5GoPXrfU0
	vCqfKVeeohfWrwC8WddBUZiwoUBo0OcbYPQ+xbuNEmyRMX8OowlrKo5WMIx+qPQH6fRute2PN6O
	iwnYyWvUmjGUkRk0mKWJjB9HqYUO5EhSBfDHaSIbB/AJHtPhUJJIupknuBTsldbxEiW7eKr4iDa
	9n5O7GPkoHvovRU
X-Google-Smtp-Source: AGHT+IG5GTaHGwRBEWzt8TS4YI8su5MRXWRQsNMcFDAIRnEsyOjg+LUxV7VkQo17uz2mhIfKWY4F9w==
X-Received: by 2002:a17:90b:5450:b0:329:ca48:7090 with SMTP id 98e67ed59e1d1-34f68c7f063mr8602727a91.37.1767941024941;
        Thu, 08 Jan 2026 22:43:44 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.43.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:44 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 24/25] man/man3type/wint_t.3type: HISTORY: Update first SUS appearance of wint_t(3type) and WEOF
Date: Fri,  9 Jan 2026 16:40:42 +1000
Message-ID: <a9ac764ac2836bf1644b08ccad6c61f72edd19ab.1767939178.git.sethmcmail@pm.me>
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

wint_t(3type) and WEOF first appeared in SUSv1.[1]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 4 "Headers", pp. 867-668.

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/wint_t.3type | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man/man3type/wint_t.3type b/man/man3type/wint_t.3type
index 358025d45c56..5d51cf8d508d 100644
--- a/man/man3type/wint_t.3type
+++ b/man/man3type/wint_t.3type
@@ -44,6 +44,7 @@ .SH HISTORY
 .I wint_t
 .TQ
 .B WEOF
+SUSv1,
 C99,
 POSIX.1-2001.
 .TP
-- 
2.47.3


