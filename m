Return-Path: <linux-man+bounces-1231-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F392B90BF98
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 01:11:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EA3A4B216DE
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 23:11:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC19A1993B5;
	Mon, 17 Jun 2024 23:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RU73EIj0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9E1198843
	for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 23:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718665860; cv=none; b=lQCZbDH9gD7XAaIYvfsvdmJVvLBsj9VgwrNi8ij2J7GAhDoaGthlet7UcDMCHa8xyth3kVaznJZJtGENr2Rca8E+fSrDB50AHNJaZqI37uqcfAmtWQDCMMIf9rDOgUTI2iwwz18pFqb5yg6ribfhpah6hI/dSWQc9dFv5Pponvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718665860; c=relaxed/simple;
	bh=jFet0Ola7whzvT83E53ukttnnIg/e9EO15PBeTnO92Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pJcUT2Gi/dg1Bq3+U9PwTnTWbAfdX6DMmvyTRJhmo1DSbxArzlUMlwqgPpQZoexPY7pCAH2T0CftRfTJqjKFRjSZFfi9K7CR5p0Qgpkw1gtfD4cWTIEth5W5cVfAs1SkWbWGROW/bN21OX4I2k+1i0SNxyLAtlHd7f/P7Cd3Nwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RU73EIj0; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-79a3f1d007fso202850985a.1
        for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 16:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718665858; x=1719270658; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DKRkOswIEYIIXRplSyY74IGUX1Dahf9/4a2RLRp1s4I=;
        b=RU73EIj0U16f2r/fG/Z8Hkx2k6o835YY4wi3dhE1zPG5UVpXpMOta5WwcqL2y9KEa3
         VPRGA0j+qqG5ccXNHVWtnCWAcTgfzwEObWiHGHujEAtoZyTNiD9miENiH4e2871h07wE
         Ax6m29APN3U8HoyF+8k0wcUtzF+FDmo+FFMtI7ZLG3BpwBcSSyCLTsWi7egrNsyYkiCV
         LjVzHOUTXdUhpTRR88ejdZ+vv+aK6UK8lpzXzrE6jEFigdM3pAujTeOxXqFMaP3uB/BG
         LuZ/moyk1JQlIZ9AufBMo3z7gA/74shl4MoYjeR/nRLenvuEo7WC+mIIw/LCQR/11oRU
         WwdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718665858; x=1719270658;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DKRkOswIEYIIXRplSyY74IGUX1Dahf9/4a2RLRp1s4I=;
        b=tIdEZmxrSG7oUB6qGuEahZWjNzK3kji/VuuM3qT2rqgt/UXMl81HoXAZoRZ6XDpAQp
         Wlf1PVlDvrCUZ27nLd1yKrdXFDRLiafx5yCXIxjZ8aGeikjuCjr53g6EzbacPzqpsuxx
         QGPZ82+XlQEdKVgYefnek4GTz9ycKYfQwdm5kO4RMfQnzKR4fF26p51ez4bRS1WKA+iu
         4gMgw8d3+UOz7I+vHsGM7gRcSQp5LNpfTBsjVyGBHA/pbF67qu0fN2U69eX82QYXDXhS
         efLp6VLCj92GmRfC7aHeSEGWTUc5TLigdAF/QRlo/pRpfuq+D/uIy6//OQurE6XhziOL
         p+tg==
X-Forwarded-Encrypted: i=1; AJvYcCXrkoNDdShXJl4y9vjyIIbSsVWqlWb1zgASNFKYnBYltRXHEjG1IR3ee77/iQuIkDuyVnKtsjvKX9ZQ8nrmih9l5o1nk0D5r2L0
X-Gm-Message-State: AOJu0Yxq3RsoSe4jGcrNXbeHX5V/8T3G83eKzAyt/8x0ZAD22hCOIkGg
	TGuPHxpDfPNFCLIN+aVKnfddzQH/ZUPau+YVMP5JMs/MJ3nlQHlIYmFdsNQx
X-Google-Smtp-Source: AGHT+IE35HLpMPzgqdjxIO+4tcRydCBy/htYdUh/kAq6m8tWcFOFxVDFKpLYkeh5xLQq8EXSoZ/2Jg==
X-Received: by 2002:a05:620a:45aa:b0:795:4e64:dbbe with SMTP id af79cd13be357-798d1f824a7mr1342782285a.0.1718665858087;
        Mon, 17 Jun 2024 16:10:58 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798abc105b4sm471409985a.79.2024.06.17.16.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 16:10:57 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 04/16] gethostname.2: fix section reference
Date: Mon, 17 Jun 2024 16:10:16 -0700
Message-ID: <20240617231035.1766780-5-kolyshkin@gmail.com>
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
 man/man2/gethostname.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/gethostname.2 b/man/man2/gethostname.2
index 1a9fc0d2f..ad9e96b3f 100644
--- a/man/man2/gethostname.2
+++ b/man/man2/gethostname.2
@@ -69,7 +69,7 @@ .SH DESCRIPTION
 .I len
 bytes.
 If the null-terminated hostname is too large to fit,
-then the name is truncated, and no error is returned (but see NOTES below).
+then the name is truncated, and no error is returned (but see VERSIONS below).
 POSIX.1 says that if such truncation occurs,
 then it is unspecified whether the returned buffer
 includes a terminating null byte.
-- 
2.45.2


