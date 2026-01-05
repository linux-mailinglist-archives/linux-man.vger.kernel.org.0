Return-Path: <linux-man+bounces-4624-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EC246CF2B90
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 10:25:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A249303F0E7
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 09:20:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DF90330315;
	Mon,  5 Jan 2026 09:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KShYrgNr"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF9E732FA2E
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 09:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767604830; cv=none; b=TDrhtWHHtlembpyd3MVEDta9CuiZxqDMjL+fLVlO8dHDvKUwL+zyCCD3EEWMYoDaB0cPxH8lRd75jamf6dBOK/t4vkKhQ9VSecvislT5hlU26hKHfeLzdds92WgvRCKbd99qsz0h0b0miFvt0B+RfuoSJ0hx9Yuzri42/BZZqno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767604830; c=relaxed/simple;
	bh=vk3Ux+Lg8RVJUMdIsXW214f7JAxVfY7kWl0mRYIWsgg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZxttZKYiX2DOT6h+/wcMg0q/mPul8Eb+SxWGumPZKxmCH1rAoq+fCASUuMFB6u/dLEhyRrn+XYQEMdu0DOPHvca4vF0igTE376K0hcWHXQNGiEFI9kX/TWiQGk6HdA3ZRmUTzjCcdKEpeGs8LZmPWi/LGRPSCJGXCJS0IsqK5XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KShYrgNr; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-2a0b4320665so214831275ad.1
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 01:20:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767604828; x=1768209628; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=B+QCsRlW3an6Fzwlwi+RJoEsslhVbnlaaIHCQOp5FGs=;
        b=KShYrgNrgca6uH4sIPJaZHvQHs866i4/7XKxTqTuzn7CoJ+PmJuN5IPbWdIVZGy2Qt
         6RivFCk6NXj0U88GP/s+Gdg9Qm7L+S5nQl1h51TRRvGA6m2urU9awL4sWD+LNDBCTx/3
         gjjVKpK2o2RPznsUTCt1nLx18NFKxwFtwwp4+ct63XgK5MHR3n1lVu0wuhX3nHodtnpX
         6bmtfl/th6CilR1ZP3KG66bOmEAC4nK2jpKUa+DPnOrUgDToap44g7nxS+xAknINddIY
         HewOFAHidxq6We3oDBgbuy/1ytOGu9YJYWBvK6UumzCvNPPia6yV9WpGi21N+Y91Xvnd
         sJUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767604828; x=1768209628;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B+QCsRlW3an6Fzwlwi+RJoEsslhVbnlaaIHCQOp5FGs=;
        b=cslaqtBb4g0mPkaxNVcErzx52rjjfrj2RJ3jBtl1N8uECJ3fxCNf6WjQLU6IWdfrDA
         sXh8WUELL7mRJstmAqnv8ge+HN9XytO7EfKfAQkCq/v+4J1m8kDupzkeB02nFaxzrJxP
         /+48/OGGFwr5NXUKURH2ni23NIi845lSNJA46Jmieuv9fqKhOoukeIzvrlZm5+NETtfE
         9U8UaxMl6XyuOKP5GJz0KluHy2HcE9ZYQyEZR7S8/eL8lXm9qCZvn/0tBEu92DXttaRG
         dX3SvmDFgnVlntBb8QQVRk54nsdY9mLmOb3ik4RgBSPusfjD9u8gl8HudD7qVAUilS5T
         mhLA==
X-Forwarded-Encrypted: i=1; AJvYcCXSd/eNIEh7TycY3uH4qxNJRY6f1iCrUP1LTdwyWMYi5NU80wwDvZjNYHWWg/z5+85nbKkIhQNEFO8=@vger.kernel.org
X-Gm-Message-State: AOJu0YxTBc8ypVcw8P1foOpcUPcDm7hNQLEklfAYjo3FVBE7qyCDGqub
	jFso6oeLegdkggQKXxkHA8aRsIoVfTf67VKId+ub2XIQYh9ilyk4+U+E
X-Gm-Gg: AY/fxX70A4vYDTqoJ5u1kgxQqPGblKV3XtQK0V9B/Hx2TEqna6d0BhQh0KHKfVMJtFS
	kEw7T2nenOcbFH2A6FXXEFfrknzF+w7SrPglkA4HYeZIR441+6TKSX1+oIMsc1yMKjGhVyA6lJN
	KPZzJ8Js1MzB3+IRA2n2gkjOUge+i6wugD+dKNA0kksvYOnZgVsqXFyE7xfLUdURAAGBNq1ICLW
	7mD1RiwtIH4DSZlr4L5MxXCETg0zefilmbg50wi8ZtlXXVlO85s4zSA9t4KSCM8j+VqJfFfac1X
	aposXc5m+ddV7rzGVPxTZb/jY1uaq1BTmtCZiMXt+Vp+v7RtR5MEcf9yOwzpALuk99ZaxaBIn/8
	03QOGt0VJEp9G9JHgrWghgkbHDihhbAqBvWoa3ftotIDxxO7ajrIbophz/+jTDvr0pVb5rmLbG6
	uJsfDMVffIeSNBSjFg97vv7eR52GjHFMIiWByeLGN3t3sNI60cbqN2EvLoJF5y2x8qy05B/wody
	3jsbKOIsytXnQ5i
X-Google-Smtp-Source: AGHT+IEzU3lZeFlIitjXE8LvCTMSPo8OThibmXoxrOENu6kTbzWyjwGdDwMsSuXYr4COcg3dLoDMfg==
X-Received: by 2002:a17:902:ce89:b0:2a0:de4f:ca7 with SMTP id d9443c01a7336-2a2f222add8mr471053545ad.1.1767604827949;
        Mon, 05 Jan 2026 01:20:27 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-a8d1-55e9-3280-2b25.ip6.aussiebb.net. [2403:580b:5de8:0:a8d1:55e9:3280:2b25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d776b2sm446173565ad.98.2026.01.05.01.20.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:20:27 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 08/12] man/man3const/EOF.3const: HISTORY: Update first POSIX appearance of EOF(3const)
Date: Mon,  5 Jan 2026 19:18:44 +1000
Message-ID: <b8028fb93420bb513e3ccc47a4b17035532c138d.1767599119.git.sethmcmail@pm.me>
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

EOF(3const) first appeared in POSIX.1-1988.[1]

[1] IEEE 1003.1-1988, Section 7.1.1.9 "Special Characters".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3const/EOF.3const | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man3const/EOF.3const b/man/man3const/EOF.3const
index 3d15d909ac3c..89daa043b0bd 100644
--- a/man/man3const/EOF.3const
+++ b/man/man3const/EOF.3const
@@ -29,7 +29,8 @@ .SH DESCRIPTION
 .SH STANDARDS
 C11, POSIX.1-2024.
 .SH HISTORY
-C89, POSIX.1-2001.
+C89,
+POSIX.1-1988.
 .SH CAVEATS
 Programs can't pass this value to an output function
 to "write" the end of a file.
-- 
2.47.3


