Return-Path: <linux-man+bounces-1243-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 459FE90BFA0
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 01:11:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB48B283AC4
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 23:11:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 745521993B6;
	Mon, 17 Jun 2024 23:11:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W+dkPzHW"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF70319925A
	for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 23:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718665873; cv=none; b=C7EoU5HI8BiRxv4zBdhe+T30lOOt8bmd02edR2xjM5ouT1g8X8VPwddF+TiG+nxfizXCZ03bNuHk6qCvB1PIRAVp3ZliHv71fxMXmUyIQowTwCpyiDeZgErRp2FCsiDmR3XhgE5Cj2DFgD9WFYJ8imi6J+pSVgle9NsH9S3jJvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718665873; c=relaxed/simple;
	bh=qnA3Kn7wyem3czgsaKLlO/FZijlpyok1vXJlhYU+81o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BgvK98tBh/pBDcMwiK2xnoQMOFUbzj9dZ+pH94iERt9R8tSoRuZ4UYrRsnn/MIpQQ/DyBFZht+2Ni+v8BjHw4o4gSNHEkKHmKnsnroJaHVsMDDQUk4PZnLh86H9EKsIMZ0A9hTn9cNEMaaN+JaHd8/ciXCAYo8uM+XJJ4FMTAwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W+dkPzHW; arc=none smtp.client-ip=209.85.222.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-80b8689775fso1642973241.1
        for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 16:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718665871; x=1719270671; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1SHivo0NnqLQ43MSeM6YokTXa77jJsCG3KlPHIgBVS4=;
        b=W+dkPzHWBJa7AmYoOFwpMgF2/q0ZiTWtZ6GW/S4vH2UwE5YtwLUb1dbmW9tPmnMsaH
         Hnti/twlDUKqedRNXGRhDvnTY5KkT5NhJpGMpDyyQkgBTE6+CuWFT5RFqaKjbx2ARuQO
         yI9p5r0Pz6aaN1VZ89KdoutWv/TFciDi7mnJLyaOnhW3GaY6CAPT4TZnFvm9AXkUwo9G
         2W6K6u+HFvh1IMPrSEJtv8tn+npP51+OzUXpy6/3iPrTxDir11XF7DBgXdZfXXI6mvkN
         9v3Y0IAl5B/+cOgZ4SS8Wofnul1dIbtOUsVxTdFs3AfQ88NPUbVs5GTWE0/sW3HbDfrO
         64PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718665871; x=1719270671;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1SHivo0NnqLQ43MSeM6YokTXa77jJsCG3KlPHIgBVS4=;
        b=l+FjoCmELz65Zi3w+koTpX2VgvGlI4FU63wVauLaYB8Ek08b/Uy5MrIU7lYmYJKYq1
         JlM48xiq9M2dc/xk3p+Mf+xbIDhckyaE9JnZjHXqZ5RFmXWxGUMSOKe4KZnfJaHvy82P
         QBqkyFyydwZ9fXGmYs3n6lyoxIn2gir+1whsROZMbLQX2mzvKUHPYx6nQpcl0RjfQa9S
         WoCen/Wii1NngpaN63MoGP1VDUvKXKntAIma6qEYvIvG7sJzXCWJhzofFK/qrO6h+8ye
         U8juItqxE/zVHh6UUOMOIe/mxc5vtnkbDdoB/3bYE+AoCaKwgk+5qFUo/nWaCR2h2vSy
         nwLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVv0i38typxL8UwLGUBS8Sal/ye0DOoQID3tm/K6wvzqPdLOHlr4bcvkQrAg7nZrx+947mxMsuH2eZ1XLWiiVStY9l1qLI7YE17
X-Gm-Message-State: AOJu0YxE/qJIi9xBllzuT5W1RacGkp34jTjDEkX4CvevTiE3mUi/6Mp/
	CJ8z6ZNT9QCGJc3JUhyO7tuKnqAuA5h7Hem4kFUCkFlQQjpXy+qC
X-Google-Smtp-Source: AGHT+IHuwX1r9BGRq3Dh2F3x0tMC2LRACaYsDJSp9OSBXQuwAM16XbZxdzYo35uiwgXTqEq1hOxQjA==
X-Received: by 2002:a67:ce88:0:b0:48d:706f:a884 with SMTP id ada2fe7eead31-48dae34bf58mr10567957137.20.1718665870790;
        Mon, 17 Jun 2024 16:11:10 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798abc105b4sm471409985a.79.2024.06.17.16.11.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 16:11:10 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 16/16] wait.2: fix wrong section reference
Date: Mon, 17 Jun 2024 16:10:28 -0700
Message-ID: <20240617231035.1766780-17-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240617231035.1766780-1-kolyshkin@gmail.com>
References: <20240617231035.1766780-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The man page says:

> This is the glibc and POSIX interface; see
> NOTES for information on the raw system call.

Since the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS,
HISTORY: Reorganize sections"), this information is in VERSIONS.

Fixes: 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections")
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/wait.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/wait.2 b/man/man2/wait.2
index dbbb8abf5..46baa6da6 100644
--- a/man/man2/wait.2
+++ b/man/man2/wait.2
@@ -42,7 +42,7 @@ .SH SYNOPSIS
 .BI "int waitid(idtype_t " idtype ", id_t " id \
 ", siginfo_t *" infop ", int " options );
                 /* This is the glibc and POSIX interface; see
-                   NOTES for information on the raw system call. */
+                   VERSIONS for information on the raw system call. */
 .fi
 .P
 .RS -4
-- 
2.45.2


