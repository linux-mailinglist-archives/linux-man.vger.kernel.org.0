Return-Path: <linux-man+bounces-1867-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8A89BC43E
	for <lists+linux-man@lfdr.de>; Tue,  5 Nov 2024 05:14:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 45782282DDA
	for <lists+linux-man@lfdr.de>; Tue,  5 Nov 2024 04:14:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 811AB18E023;
	Tue,  5 Nov 2024 04:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A9Tkv5BP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E642B18EAD;
	Tue,  5 Nov 2024 04:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730780078; cv=none; b=V9zh/sbto3jI56e4eznp4KblsBT49Yp33cjQY/BcytkGkEDmqWeXcY6n4gDRLVcJWUzBouc2CJA3FEtdXE35oVgpCjVY801EIvl7FIMugFW3m2NHzISheOIaf6Phi0Um/BodIP7wO+UgwnLpZj7Q3zVfJnzUW2x1nKpLBOaJOXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730780078; c=relaxed/simple;
	bh=FNArcG8dao3apusJH7rUh2/r6K4P4xVy0K3d4Y1VeNQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bJ390SArRAd6VQ2IKSySvRwa5RlZC8q1Iv1Kl6DKrpofgag1xa4PjwNqcTk3/JSfa7YNK7iyIR7lretF0EH92paM9ooh9I3xUOWM6SemBVhDoxJyBXKWLDypSFvTknYOGCCpq1LNL2eCvXS65p+oXtc6+1Y5JFhqFJa4zuivOmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A9Tkv5BP; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-720b2d8bcd3so4012375b3a.2;
        Mon, 04 Nov 2024 20:14:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730780076; x=1731384876; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yDvZzg2qSpDPOlT08RUR489wkyAFi0OdwcuK64Tz8Bw=;
        b=A9Tkv5BPT206IIc5kuQRRUx9RbvnuKMNyG7AQNjFkNTrqgw/F1/FvNsyEPUEROUjna
         chly0C0c9kEcJS/MFrYGDgeHySvVmJAWDFp9QuHAiNWvDIyTW4wNkr9S3XHrGSYe/Sar
         iuzWhzoFpfwH/jZ6WP00tiyDigIUQ2cam08DUePLPCaVNDLrM3IlQALRHs723o/ueYt7
         2cPDuVGvq6/yKo4lfw+ZRlb3E/k39nMai/k7zeUY0CM7SdmEXFOz5eWFu/2GztDjqUBY
         dT6lxmvJV583SbrVqMc6xO53Xd49iah8SnPkiAVkKemWDri2J3UQMY9FUJyLQCju3dd3
         xeTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730780076; x=1731384876;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yDvZzg2qSpDPOlT08RUR489wkyAFi0OdwcuK64Tz8Bw=;
        b=gIq5NmV7ZPRIfn36rsDjm2aHExkVsgtc9XqgVUcqmYJbFttbHS/p8EdiMaFbMWb5dE
         Q8BJUbZXUi3dCfkjh3TdinDAu2c/adSljYMBAYMqdG3Rm5WMdsd3HnCkEDPXsKz3kdxL
         iD+a0pG8WNpMJqZScH9Z0D3RGwQPTBHG8obZ649Q5qWxOBF3cjVqcY7B2f7hBlQKrEzf
         cBg2egOcaX8DGpzTlgE21qkoz9p13wrBd44DPV4z6+RL2I7ePBGM7uu8R1czEN15FsCS
         k0hXYOV2ubt2zR4i8sKTApsaztsSrtTgg/FlVS4z5RxrfdUGgm6wm9GO59526rvOkvcs
         NTZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVrmQrg4danSA0pMJn9hDi8jfe+Zqt2Ltah7IaW2cBu6ZFlR+R6/OoCNIPWDVBZkrq2LVpbigc=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb6g2AtY1ih7o5YLAp17igh7gjx0JlZQPPJ5zwcMkSRNGVMtuM
	a8mrMQUEjuVQcY3Xgqu48jegUAFXfth0d8z6VIrEc3JUjlpDSpxX2k1xeQ==
X-Google-Smtp-Source: AGHT+IEPGO+twIVvashdscP/aSyJvuAzypupw0de19KLfIQzebVPXE9YuKn8HUUE3lsacXhsAZQf/g==
X-Received: by 2002:a05:6a21:a247:b0:1d8:f679:ee03 with SMTP id adf61e73a8af0-1d9a8409fe3mr47556429637.27.1730780076028;
        Mon, 04 Nov 2024 20:14:36 -0800 (PST)
Received: from panther.lan ([2607:fa18:92fe:92b::47f])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-720e015ec28sm5266179b3a.1.2024.11.04.20.14.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2024 20:14:35 -0800 (PST)
From: Alex Henrie <alexhenrie24@gmail.com>
To: linux-man@vger.kernel.org,
	mtk.manpages@gmail.com,
	netdev@vger.kernel.org
Cc: Alex Henrie <alexhenrie24@gmail.com>
Subject: [PATCH] rtnetlink.7: Document struct ifa_cacheinfo
Date: Mon,  4 Nov 2024 21:14:20 -0700
Message-ID: <20241105041507.1292595-1-alexhenrie24@gmail.com>
X-Mailer: git-send-email 2.47.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

struct ifa_cacheinfo contains the address's creation time, update time,
preferred lifetime, and valid lifetime. See
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/uapi/linux/if_addr.h?h=v6.11#n60

Signed-off-by: Alex Henrie <alexhenrie24@gmail.com>
---
 man/man7/rtnetlink.7 | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/man/man7/rtnetlink.7 b/man/man7/rtnetlink.7
index 86ed459bb..b05654315 100644
--- a/man/man7/rtnetlink.7
+++ b/man/man7/rtnetlink.7
@@ -176,7 +176,15 @@ IFA_BROADCAST:raw protocol address:broadcast address
 IFA_ANYCAST:raw protocol address:anycast address
 IFA_CACHEINFO:struct ifa_cacheinfo:Address information
 .TE
-.\" FIXME Document struct ifa_cacheinfo
+.IP
+.EX
+struct ifa_cacheinfo {
+    __u32 ifa_prefered; /* Preferred lifetime in seconds, -1 = forever */
+    __u32 ifa_valid;    /* Valid lifetime in seconds, -1 = forever */
+    __u32 cstamp;       /* Creation timestamp in hundredths of seconds */
+    __u32 tstamp;       /* Update timestamp in hundredths of seconds */
+};
+.EE
 .TP
 .B RTM_NEWROUTE
 .TQ
-- 
2.47.0


