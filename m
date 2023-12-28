Return-Path: <linux-man+bounces-306-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 162EE81F9C9
	for <lists+linux-man@lfdr.de>; Thu, 28 Dec 2023 16:57:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AB3371F2428F
	for <lists+linux-man@lfdr.de>; Thu, 28 Dec 2023 15:57:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B961FF4FA;
	Thu, 28 Dec 2023 15:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iXtkVYQx"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62717F4E3
	for <linux-man@vger.kernel.org>; Thu, 28 Dec 2023 15:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1d3e416f303so16728045ad.0
        for <linux-man@vger.kernel.org>; Thu, 28 Dec 2023 07:57:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703779042; x=1704383842; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uMnBwHuuqSlN0OZRZQxm4z/x75+dML7o9ob8zvv0zKY=;
        b=iXtkVYQxeGDRJEs9xQ2VVMxaUdgI4q8G+rCjOoJTJDnt64s8CgE4tiubCY9uGmKQAx
         qKqBAQTO95mOmmLxn1lQu0+2+a2edcFStGQ43rn9GyU29cHShngLyOvCQ3OGkzPO1Jhy
         roCh/SByJWbU91mwWWTV2Aw3N6PRKwRHAWKjzWwfgdcYzYN+/NYCKeuQB5PonCVj/AD4
         PacGq8UBSBG4h9yw1WhfeXRL3168CYwh44ywBzzSpq5Eb1jGv8JGA+qOayqntzbaJU9J
         Ao9uozwxYLD9YE8E4WvRRZHPDgmpGn7hlm7/OS8sAAtttN6+oRalDRk6bEsjrlZ1H987
         pvxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703779042; x=1704383842;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uMnBwHuuqSlN0OZRZQxm4z/x75+dML7o9ob8zvv0zKY=;
        b=Mph9u1BNT7BVZfSq8BTXO0c0AzHAkMoPSYDdVcJVp7eqHLEk/P78PPnGEtc132/dNN
         QX4jwnL5FOKnD2stU+1rzr7cspTCVrcs/T4DI3WMSl05ck0/pSDwR+NT57uQunlmQ25S
         rEhSykx+vZBgzIdYkGRiP3n9/jjUnrVq0ZQ7cNtBWbxvIFNEZ+arfDM3fMYOz9mWEE6m
         fYDR7XQAGjpwiC2vDeUp40ij/wPbj14IbDiE1/8sjbmCf41vmsPqw4v/otoKqG6ov6Q1
         SHapyxUvc9Nq7pgJ3xKgNRH+22stXgrHHbLWRF7+7fAiHT7VWqaACWN4WhABzW9Nm2VF
         1iWA==
X-Gm-Message-State: AOJu0YyFXhtoM+ErntO/XRdQ9Ld8gIm5ZJXDuQGiHXO5Y0I/XXE3N/xO
	2mtSApw3iBCaHKOkqrhe6+FB4rKCDmGtCx0=
X-Google-Smtp-Source: AGHT+IEtxKUpeba9agmQee0KciOlAR5/VA2LhMZYY+k/KWEHPKMwS+A2Ij75NsDKCYEn/X/Ht8/bGA==
X-Received: by 2002:a17:902:da85:b0:1d4:12f0:1293 with SMTP id j5-20020a170902da8500b001d412f01293mr4138200plx.93.1703779042462;
        Thu, 28 Dec 2023 07:57:22 -0800 (PST)
Received: from localhost.localdomain ([122.174.192.11])
        by smtp.gmail.com with ESMTPSA id d10-20020a170902854a00b001d4526d0031sm8183444plo.122.2023.12.28.07.57.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Dec 2023 07:57:21 -0800 (PST)
From: Rajesh Pandian <r.pandian@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Rajesh Pandian <r.pandian@gmail.com>
Subject: [PATCH] bugzilla_218018
Date: Thu, 28 Dec 2023 21:26:01 +0530
Message-Id: <20231228155601.16558-1-r.pandian@gmail.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 man3/dl_iterate_phdr.3 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man3/dl_iterate_phdr.3 b/man3/dl_iterate_phdr.3
index 0a8beb3ae..f47fdd502 100644
--- a/man3/dl_iterate_phdr.3
+++ b/man3/dl_iterate_phdr.3
@@ -129,7 +129,9 @@ The
 .I dlpi_phnum
 field indicates the size of this array.
 .P
-These program headers are structures of the following form:
+The ELF program header is described by the type Elf32_Phdr 
+or Elf64_Phdr depending on the architecture.
+Following is an example of 32 bit architecture:
 .P
 .in +4n
 .EX
-- 
2.39.2


