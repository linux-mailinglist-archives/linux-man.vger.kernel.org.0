Return-Path: <linux-man+bounces-4769-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A19D076FA
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:45:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E656430329C3
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C490D2DC792;
	Fri,  9 Jan 2026 06:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AbZ2RvK0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com [209.85.215.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6044C2DCF58
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767941024; cv=none; b=qY9JzUcLSIk8z8nMYMmNiS5CWWfPg4zxsPmoiWpbNCMMTYG6gm8b36z5RUNNXIx6f2hj6OJLk56sgbe82MryUZGZVUSUxQg0mdApI0uXmwXj9GBIUAVNSkMhp9mdvebXGftm8pMbY3xrxJGw5mY+IgfDtCxbM/ocAL4h1dRiaKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767941024; c=relaxed/simple;
	bh=uE2Py+TanYFuEuvoPvNU5mAz2KzcVqJTdBca/qUuIII=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Eo/eEYt/7QmHPEd8Zz63LhtNj3U1QKW8GHB1ZuhD4r0D72rKGtqe9sjVPRtpdQo6vFRnrvWM7Hpo7hN+0wVLn6x4CD9Bt4K6Rd1wq4nHVKFaQXoGOJnWg509Le9gBBrSTifgIz30Cnk59XDSY6mUfnkwH0dbhdN2i8yAZnvfSDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AbZ2RvK0; arc=none smtp.client-ip=209.85.215.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f194.google.com with SMTP id 41be03b00d2f7-c0c24d0f4ceso1647365a12.1
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767941023; x=1768545823; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cOCoKqS26dcUoVHzzsgBjR0xpWVIV24YnYbsKuNEDo4=;
        b=AbZ2RvK0hrLVPDBFtYG746f+U+ulCXF1kMucww0OOi2GQlzi5Z17/jtlF1tknvBArB
         rOdD4sajbYmh23uk1jRITAA+c7+JECIRVBCz382dcOif9FYr33VnNFQlmQogwGaKFqCu
         1aWy5rWiFe7T4tEZ6hKVSH0RNcTGQB4AVc/pRj7i15GLH28z8EKEDoe/0Fir7cW+paYE
         x6TJpsKpYwndMHwaQSu+R/7D49ZYcdRSWpsytJzgabwNkyoRcM1HocN5BGyFRFzubu9X
         1OEmd90bDURXB2HnTEIUhbRrM38MpNS4+Dq2yGPGi3C4+vc2oB38otAQAqtYQYIouQzW
         ihgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767941023; x=1768545823;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cOCoKqS26dcUoVHzzsgBjR0xpWVIV24YnYbsKuNEDo4=;
        b=h9JIY7sdSDpV7A1EUXcKxTtPrwYNseMAnwoDPBfmjhGbGJfqZCxgk5kGzWqI28msG0
         cG9obBFRi3jTq2YAMybyW27HdaSGP8xinVpqGEvEUtDC9lNMfPzKEb639Xqi/IufC6gV
         KxSbpTYk6Ynxc6mCn1QDiq5gPwl66rNE7mRkEacSsm+Et9SgwaakT0fve2RI0kt/7rkn
         kqKPNJKjMnYAR4M/LvP/N9OdMOJLILKJRvtpUNKNGfbZrIjcRdU65xFhyIW8tMa55su9
         xufQjDMp30lcVPTQx8QdqUM/UwDJUwq+NPxrSby8anRKfkCom6M+kg5y7n1m2MEPh7ww
         5HKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMYmTEYKjfAKXaIYSwjAE1+L/Cjb3m1gSWumgnGma7U0NukIwIY2felf86O5Tqvnp9STUCMOu7bjA=@vger.kernel.org
X-Gm-Message-State: AOJu0YytxC+nbwjpLHqjmA4ZsB0fUUdjgEik2TBNG1EwGiIXai443+Zt
	M1+t0a643wh8Zic3atYA79tt22SddNbBS7b67UT926n5JqSKbbpSz/kH
X-Gm-Gg: AY/fxX4Ax2Dxc/47nV5+MyZA61CId3NneWccFN7AESIyVHSixmHqXodKiUYQwD/kskP
	xIqcq7Um/2FOp/yxhyFBG9VzYbvgmP8j8dLOkyoSctjnCL6FprsnCNQeOVv1v70BeL4hIxucMDW
	gPOJAd3yz+QaRnfHgFyMAuAhqDB62KrHQ9kAXnQ/bxIp5uvvqM6sw58ZEf7Qxh1mbW/qJokeZqp
	cQ5PjRLJYKOlZnyNG+xv+88taTxQexCWzLnae8F/7O9+jkc8735MYvmG/jcjXpz1W9Mb74JuyGb
	cS/b8dJ+s//KB7vBCY3ToGqxgeGQl+vFaKg8lbQ7rp13agqMa97pUbflT7YHvxmH3u0tZocDTHD
	AzLu8YwHNuisv6ho9bbqZEeCwPg9pWQ56YxwFvW7YuohumiTnNg0m2ESbFhDT61BRY5Rqy07Y/r
	tJD/mzLeMvbTU5/UwFR7S2IlsfWNCdDf/ifoiJaolCl+KMNS8NTz06CeSzdkvBH8bAcElvuCGzZ
	30+I+vm37FuWZuI
X-Google-Smtp-Source: AGHT+IE07+0ROzWi7fQQkb+ZKcN7JPJanN5F2dJFmw3ifbJHh3pmijH/ktmUG1EQER8X0R8Z+ZLSSQ==
X-Received: by 2002:a17:90a:da8f:b0:340:f05a:3ec2 with SMTP id 98e67ed59e1d1-34f68cc2a86mr9184300a91.17.1767941022767;
        Thu, 08 Jan 2026 22:43:42 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:42 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 23/25] man/man3type/wint_t.3type: HISTORY: Split wint_t(3type) and WEOF from WINT_M{AX,IN}
Date: Fri,  9 Jan 2026 16:40:41 +1000
Message-ID: <730e0c713039869b2b36fad7aa54376239874cc1.1767939178.git.sethmcmail@pm.me>
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
 man/man3type/wint_t.3type | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/man/man3type/wint_t.3type b/man/man3type/wint_t.3type
index 5d2ea3ff0ed6..358025d45c56 100644
--- a/man/man3type/wint_t.3type
+++ b/man/man3type/wint_t.3type
@@ -40,6 +40,16 @@ .SH DESCRIPTION
 .SH STANDARDS
 C11, POSIX.1-2024.
 .SH HISTORY
+.TP
+.I wint_t
+.TQ
+.B WEOF
+C99,
+POSIX.1-2001.
+.TP
+.B WINT_MAX
+.TQ
+.B WINT_MIN
 C99, POSIX.1-2001.
 .P
 The
-- 
2.47.3


