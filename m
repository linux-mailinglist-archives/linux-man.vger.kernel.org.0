Return-Path: <linux-man+bounces-3163-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 304A5ADFC56
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 06:22:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6DD4E189F35A
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 04:22:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2D0822256C;
	Thu, 19 Jun 2025 04:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HZwnm6C1"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364BE3085D4
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 04:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750306954; cv=none; b=XyblCt7MTN8+nlCyyZ6vDj+JxV8Y0z9CiBNEjGAh+r/F3S5toun3Nh/2+QnFcESxgZ3s7/a50/3uUhdvV60MpN4UWxhl7U5ZoU5czH3heaAWiiq77PD2Zev43cRHgJWj4dZorilIO83OEt68kmqL5rymNQSxA7CiplHkvmq08Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750306954; c=relaxed/simple;
	bh=5ubFiaa9K2UUMoIg2HZShPI2iNAtzQplGoaPAF6UX4Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=A4WZuqRO3ZLtRDNKyaAWX0G5Qb2zXC13lc4el6MGmhL3W3FOWFJdIdvStGHRZTNV5OaQH++uK9cTRep/tU40WMRk5f4CZMx1obc1zUKYprlqa7Z//gOyFAPrGz/hQcEWSkTgvF/ZvT0/fR8oYA2p8UxUcKwR2f94eFWVJI+XHPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HZwnm6C1; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-3137c2021a0so202824a91.3
        for <linux-man@vger.kernel.org>; Wed, 18 Jun 2025 21:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750306952; x=1750911752; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zd9syBENz0rJT+CW0Jbka/oCYnNARJqt1b16iHtDOuQ=;
        b=HZwnm6C1oG4mPTqcoozouDCsVHVDG9T732B/sKSFgfUJHHqpJbaa16VRpvm3viv/z6
         UGeFhZ8oDZ4j1nKAIik2bCZS1cJGpvMWnLJjEZjiqws/nsrMMxlckUB5U8I3YceGeSTe
         TomkNZkWwpg453+iXvkZA2PzzIFJBfXjZile7Eh/e7fZiLhfIq3ZQAVGa4bzujqQ7MBh
         yWP4ZZa/NF6oYXPTnqH74H46ogeHqYOKswALxlRXZiYBXFw+sbsJdKTi9ATKXrNDPvkV
         SPJG1+VzqcJXZfTKuea2I2qU+opXBC2vr/rmHuLpTmZJs5XTqMDsnEiX944tx7xxzgxN
         91hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750306952; x=1750911752;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zd9syBENz0rJT+CW0Jbka/oCYnNARJqt1b16iHtDOuQ=;
        b=aBKClXbmg3t3M9w0EISzMhQfLSNWUt16wWRbwa3m28T2eyDopvn+rq4jZBWqph7FQR
         NXvLIqj0CnJkCiXlQYxIJgxZSiBOWrm78CUw50s1NM9OIRZhiToNMo37Cm4qHqqlUEP/
         Fgz/KK+XpzUSd/cacv6jUCRsRKx+jFaaXhajD0VzKdwvyDsLatyUklhvspxTbMeiHvzw
         +hpzruxCpcsMwppozgb+mwPTU5B14c4Yqs3N39JzUK+275T6yoKgZzectpsLA8dHnox8
         35cevUAj7f72PgLe6ucZ5V7k102CSpxh0M5EgjLWq2527+1s1LqSYb3dILvFtVN0rKVE
         TUBg==
X-Forwarded-Encrypted: i=1; AJvYcCWLnSc2LCPxqTWEoKSkcGExzD+NDYSMcluWl2CXSyuqv2CjEFFK2v3Bci1udErOdKpe9s3v3Z7XH7I=@vger.kernel.org
X-Gm-Message-State: AOJu0YxSpxK2CBOjhCJc3I/Yk2DWB2rRFT5TBWDNGhc6tMGV5W6qf2fG
	HZRslZuTZ/EXjPmTb1gexNOO7YkRYsG/8F9Ou8qhpRnlj9HWXNh4Zm8r
X-Gm-Gg: ASbGnctt0lM/lGWzCUP2VyEm2/KAMQMrK7KDcJqxbCbRBcSd1TceYc5pmZXj18J+oBe
	W3PDhUwjKeWxaXmMS5/UloOclM4VhjEpZkBvXQoOl32L3qkrEJ3sj2I8wq8WX3KHkJroKkvqq7T
	x2OM7Ne3TK/eVPzWCaKq6sZFPQbtw7mgwfsaTK9Nl58aj8Po2u1eFvnqmwi9U3G/cKzBECLJjU7
	7sil3/YeVYj9k/dQhHrKwGQRz4g35QeWv8waadTmVEjI+pLOpGIR2avkwQ1u3xhlPdnksVhqyGj
	6kUTsKhnbmGFPkOb/imb2mqPWi5Q7ALDdlaov2XjKNFisQ==
X-Google-Smtp-Source: AGHT+IGuj/Q2Ao4NIVUupG+1WOD22IBcYlhav+Fva2moVlTA/2/Hffs+ZPUCUbuQht4aMhk4A/I/Tw==
X-Received: by 2002:a17:90b:52c7:b0:311:eb85:96df with SMTP id 98e67ed59e1d1-313f1ca8c36mr33850159a91.17.1750306952336;
        Wed, 18 Jun 2025 21:22:32 -0700 (PDT)
Received: from fedora.. ([2601:646:8081:3770::de7b])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3158a24377fsm1007495a91.20.2025.06.18.21.22.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 21:22:31 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Collin Funk <collin.funk1@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 3/3] man/man3/ftime.3: Correct POSIX standards in HISTORY.
Date: Wed, 18 Jun 2025 21:22:11 -0700
Message-ID: <830f11e40cabf6a3c77d2d12273fd8a399ba5ff6.1750306917.git.collin.funk1@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
References: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This function was incorrectly marked as removed in POSIX-1.2001, but
that standard contained this function marked as LEGACY. It was then
removed in POSIX.1-2008.

Signed-off-by: Collin Funk <collin.funk1@gmail.com>
---
 man/man3/ftime.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man/man3/ftime.3 b/man/man3/ftime.3
index 8ae808ec2..5cdaf3e70 100644
--- a/man/man3/ftime.3
+++ b/man/man3/ftime.3
@@ -83,9 +83,10 @@ .SH ATTRIBUTES
 .SH STANDARDS
 None.
 .SH HISTORY
+Marked as LEGACY in POSIX.1-2001;
+removed in POSIX.1-2008.
 Removed in glibc 2.33.
-4.2BSD, POSIX.1-2001.
-Removed in POSIX.1-2008.
+4.2BSD.
 .P
 This function is obsolete.
 Don't use it.
-- 
2.49.0


