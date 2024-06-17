Return-Path: <linux-man+bounces-1228-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 163A990BF93
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 01:11:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B4A5E1F21F50
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 23:11:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6ACF199396;
	Mon, 17 Jun 2024 23:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bPYJGO1g"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393BC163A97
	for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 23:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718665857; cv=none; b=TB3l+gPDH7o9xnttzc4ct6Pv/E7dEdYPDSo3JPEaMGY57IJt7+V4TefhHldoQsvV9OL1EA9MKd5BSH3zFme/3dgC0CwL05ZymD0lRROA10XpTdRVJNKz3x6XCE8EiOol1H+BDnx/Ix7lb7671Z3t+YieQ2HwzchXGJkqKNN/l1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718665857; c=relaxed/simple;
	bh=Kh3ZhOXTZNS3JFnjE6H78ib66FgbL3dUDoC4Tk4gU04=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FPNENpwFJNLW6Nlgeko3fHA4j0tP+dVBSxW2/ImemnceeMwStpU+c/glhg8d5NHhUiCU5eepXVDsGB6mNQa7BNEGDFLwro737YDb6DWWwrhFjuraQWzAcUo59nS15aWhjpC5mpsZw/VabxLUAt2Irm6KmZlPX398NDoRKE4Ts6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bPYJGO1g; arc=none smtp.client-ip=209.85.217.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-48d75899a88so1522286137.2
        for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 16:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718665855; x=1719270655; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=96Kc5pLtP9xDJnXbe2hduDr/uWPyLH3PR7JvWZ/6vWA=;
        b=bPYJGO1gVr8squXU8D2p3YxY13bqpk0FWILt2WrYtXzOOPxgrcq+25ypYAqnZaBEZe
         53PYFh1xAlQeMUSwfShpwcZ/fH/KmEt1At8fafBtf4C3R3tfUN2sdfWixSi8lwc4xMNZ
         U7xQCjn9H/8DTap2oimHJUY1cxfBB9uhPKxZkwrRrfdv++92EweMEPBJv86k/p68f+Q3
         0ThJG11J83kToK1FYW/dGBcY1W8Svjs6th+y6xkxhTKos99Mh7XDnZhe+ulrqaxmP3Q2
         qPALm65PTqXzlV57baiGTpMZhAwQOhM5d6dE3qxr+dM5bbd2VWMrGZIc03GlM7xQx5yd
         v76A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718665855; x=1719270655;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=96Kc5pLtP9xDJnXbe2hduDr/uWPyLH3PR7JvWZ/6vWA=;
        b=ZYv0rZYqHCrrjiLVCzYjVRxpE5ug/b4NNX0rdQ0Fzg6rU0czd7CnVW11NJTHNjV8+w
         wgboBE9qMh7+mTJVrEYRaWnfE84JmjUwVld+pMvVDm2ItFWUTZBSUqQGvsfR/AGHUmS2
         XF8v+4E2XTrBiwN7Cz+IXhXfn5owUTPaQVEegN6vs/1uThJpFvPl2wGqHNAS0JyVUOtI
         1r1iPglMKRqiSKPmuheOpz2QsxY8PFulJmPNO5/ipct+YD6eJhHHj64wtPMYhFyjH43a
         nvHrHAa7UgL1Kes277gX6ihaTNrmLthNTFadrs3c1btwwDkSE+c7d4KdZ/p6Wx+R25vb
         Pa0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWBDYisI3EqYDSgZ/F//f3Z7sfIPoaKqYwmfDoZE+6eikXHN83c5amdIh1GpubEkFZ/kge7X6gEsEB5clnlEhm6ThImYh9o5vZH
X-Gm-Message-State: AOJu0YyhKKKzog5s4RI3BARdAw3rLt1QZXbr1421S2sE1Mh1/wYNs/hv
	BQuLmkXaDkBOGX8enAOQA2IH4PdGRbWVS/NcesC+QHcVh/Zrh8cU
X-Google-Smtp-Source: AGHT+IGh3MTfSasFHTqujbjfSiok10Ykuc780AfH2qSn3gfYwUG7/zt7fqA4OSe5u/aYO3f/1rMi8g==
X-Received: by 2002:a67:cd10:0:b0:48c:39d6:4c42 with SMTP id ada2fe7eead31-48dae319014mr10116465137.10.1718665854955;
        Mon, 17 Jun 2024 16:10:54 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798abc105b4sm471409985a.79.2024.06.17.16.10.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 16:10:54 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 01/16] cacheflush.2: fix section reference
Date: Mon, 17 Jun 2024 16:10:13 -0700
Message-ID: <20240617231035.1766780-2-kolyshkin@gmail.com>
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

There is a reference to NOTES section, which no longer exists since
the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY:
Reorganize sections").

Fixes: 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections")
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/cacheflush.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/cacheflush.2 b/man/man2/cacheflush.2
index bc38355e6..0e3b4ac62 100644
--- a/man/man2/cacheflush.2
+++ b/man/man2/cacheflush.2
@@ -18,7 +18,7 @@ .SH SYNOPSIS
 .P
 .IR Note :
 On some architectures,
-there is no glibc wrapper for this system call; see NOTES.
+there is no glibc wrapper for this system call; see VERSIONS.
 .SH DESCRIPTION
 .BR cacheflush ()
 flushes the contents of the indicated cache(s) for the
-- 
2.45.2


