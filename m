Return-Path: <linux-man+bounces-1239-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B35EF90BFA1
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 01:11:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5181CB211BD
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 23:11:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0A79199386;
	Mon, 17 Jun 2024 23:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iRd0Avw2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 713DD199396
	for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 23:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718665869; cv=none; b=ibNdqfQqhwvcGySXfS3uFboZe4F33rjnePbAzchxQ7DKZxZ2ER7PkkTBafubWCA3BOw0HpeXhrwJRzSkapumYpJ56e1O2b9svvRZIPOK7Y5KVZfKYlAyqgQQco0fTtGxunVrK8zv23MVoKniC3sTRsTpByk2DtXVFlF0BNhmEsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718665869; c=relaxed/simple;
	bh=6dG07ze1UIkbmFv/wXs8JIjULmRV3CT/QZgxQuVb3RM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kUvTd51ah76Fgvr1XyW0C+Nwz6qWmw4Je3V5wD86sQtTicnrJyo+oKvCKL4P/JUpPjDU+MorvP+EVHuWG3K8Fy9O+EtWtErgSDXXmVmSIjQ7+lwhD5fXzEq0n+3Z8vZp7OvM3A25/9+daCDhs6b9Qdmw9qhAZkkEv7/PUZ5BUiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iRd0Avw2; arc=none smtp.client-ip=209.85.167.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3c9d70d93dbso3112851b6e.3
        for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 16:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718665867; x=1719270667; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9tkXUtBZdh2ADDxXcw+cbyFToz81vTaJBfE6TzaNPXs=;
        b=iRd0Avw2k6zfu8DnqZ8PvI9rHLiqV64szr4NQWENT7b6+UfF4OSfql76wrgCFgK54M
         pvROFhcgCm0c4IF9vE3TAWKg7eUhwFzLJulau0Fl1HS/q1DHihNk9rcsv/DM7vaoFacZ
         mwhofcKzHx55meflMVvEz34SkuSod9a6EcWjrb8QpfUo7aAh5anQ61U8xi8OZRdPQigT
         BwRh4hnW5IVg2Pbpuw9aTMsBBZSpOc5i8N1X59+ZcyZwHK+HTBqc40JFXb5Mp5/uF0pv
         dhvYogpLoybzC8aENwcerwKvRS6fimVrq39cieU0MApJMQeqNtSq1tJc0snMQ4ZwT1/1
         9u4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718665867; x=1719270667;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9tkXUtBZdh2ADDxXcw+cbyFToz81vTaJBfE6TzaNPXs=;
        b=MgNecc1qar8fnSqrfr0FguasfCyyGQawdrxHz05E2HfC/TDC3VtxT8CW4KGQAGsdBN
         wPF4EP4kJE2NF/xTMljpZ/XiGIgouddnXaQPnSA6OSDyUwphLWDvdFVzDSThV7MR81iE
         qANGWHTzPZZ6kZ86L09AppadAT3Gf/1mRoPnCR4F4/41ScyPEqSqa2eNtRcrUamDxI4D
         G70bxigeKoGuUPBCj7kZ5L8EGPsI14Q4jJEfZL1dEbiXvtdvHavHUKdtE6SrSW1QoorG
         mLU8pjqlGe+SIRVVAjhTgAPokMRYW43/XC8DgG4WdZu5QusPDbUyu5vubCmESwCQIMk8
         pRTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHwEXc9UQ9KmyRzqm7mb6kqnvGpT30ZsNSXJkaEz2bbCnzJfxErWy/XtWPkkZAQ/DL8NoTgasMBTYVoxQSOOeyhOV+tdjDDCHa
X-Gm-Message-State: AOJu0YxzcqbaebHIJuHitTTk8fFUWOPTkxNUzADLk6jggZHFb57eZehZ
	fZSeEQdy9bnG4wCyeteAZ5KEXshFl3tOvX4wLNJzrPmn9YKJwxc1
X-Google-Smtp-Source: AGHT+IGof/HkfAS4e8J0WnjTgpzmnqENVRBrju6o/GiVzR7oJhfaVGOfUDbN+MBeSbC/BRV6JSu+7w==
X-Received: by 2002:a05:6808:1150:b0:3d5:108a:5b04 with SMTP id 5614622812f47-3d5108a5e01mr932378b6e.28.1718665867568;
        Mon, 17 Jun 2024 16:11:07 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798abc105b4sm471409985a.79.2024.06.17.16.11.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 16:11:07 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 13/16] readdir.2: fix wrong section reference
Date: Mon, 17 Jun 2024 16:10:25 -0700
Message-ID: <20240617231035.1766780-14-kolyshkin@gmail.com>
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

> There is no definition of struct old_linux_dirent; see NOTES.

Since the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS,
HISTORY: Reorganize sections"), this information is in VERSIONS.

Fixes: 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections")
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/readdir.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/readdir.2 b/man/man2/readdir.2
index 1fb02f7d5..e4b58a652 100644
--- a/man/man2/readdir.2
+++ b/man/man2/readdir.2
@@ -25,7 +25,7 @@ .SH SYNOPSIS
 .IR Note :
 There is no definition of
 .BR "struct old_linux_dirent" ;
-see NOTES.
+see VERSIONS.
 .SH DESCRIPTION
 This is not the function you are interested in.
 Look at
-- 
2.45.2


