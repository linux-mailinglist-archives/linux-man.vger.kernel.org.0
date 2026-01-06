Return-Path: <linux-man+bounces-4657-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA0ACF7BBA
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 11:16:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EC24C3099554
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 10:13:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E73431D74B;
	Tue,  6 Jan 2026 10:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iYmF4HsO"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3818B312829
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 10:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767694401; cv=none; b=ZiDxw0QPU1Qw0WdT/gZfOvBQZ8XIxJ3K3kxsS3r0DYAobnbMZxZGp2HlseKhRUMRUnsTvbtjhoP831Ag4VlMeyLwF+eerA93wAlF/Wnx8zkow6Js04Udt9GJE5A0P6adMPQkIOVVV2R31csYfhuJ9Te3ePTnBQJse4HwvUpfn2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767694401; c=relaxed/simple;
	bh=tkV8bBn4TYaf1Yt+JwcdRoPMr02rRomdrXP/jQCmlag=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kzSB5izhrrSRjfmwHJZW+KyYMtrOg6kJ4m640kMnzX//Y+JvxcTTFfKw4VBFLUgxqUD6OPEm53+OI2CxVS+ftcAUS5fx0PEYWpMBhyDMqlEX1BaMQQkBnN2Awocko2c/tYZ82+Ewt69pq7/uMYtt3TPeNXJwU5uZngo8mC2lewI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iYmF4HsO; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-47d3ffa6720so7642805e9.0
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 02:13:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767694393; x=1768299193; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HxO1VaShy8AXrTSMj0/Dmme2bMaxkC8rDBBAnF2cc5k=;
        b=iYmF4HsOI33+LWmuHXlWf7DAfikMEAF/mbKSevnTGAZ0VsYqVdY31nHBnnwlzjZ/P/
         0OwzEpg76CxRzi8Geh5JcxrL25j8NWXaPBsGLawgwOSAi/kB/Z0Aj/ql2FXbwWjdthYB
         FO/UfZjLvCquMRU0zwKjXRCCH71oLEk9x0m1FMgtqoIRIVuH35Do1pAgw4KSDY7CLoY8
         1EGCoOX2i6+tjpRW5/Lcw0SK8EsP+xSphK35X+E8Zzbfimb00LL3zMk4zJoMcymKCpea
         76sPuj8TI8oFGq46Qph4mApTeys1VeEgOwrhCU+14TARCUUSwRLTDY5xsxPvzRaO7JC3
         5G8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767694393; x=1768299193;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HxO1VaShy8AXrTSMj0/Dmme2bMaxkC8rDBBAnF2cc5k=;
        b=iPWabla6QS1gLEn2OUwPnBTpHdkY9stgBHeXUe9K75CBPQQ5PmM4E8EW4nNCVc82KA
         Gw0adc0SK+uKZJJ0e14HL+a7rKmDvcFjnCzu8Twz7EcWITeH1MlV4zRFV4d+Ku2rS+2g
         U/w4dHkPap1Y+dMsMhYGsTiA8KpyhTCqfbj+/61H9d39WBzc+XPBM6zG/LYmMrq69t+F
         8xbRLpLhiSF1jOTsoM85XOStfd1Q4FIa+KIssf/HB2ZXSCmYatsANdEw8sbTi8LbbmVs
         nA8xZvFwPvVP5bkOn5ZDUVh17ABH1kinN3mphmL4EOq8mHmM3ThAqY97YMZK24SZB6Cl
         Ti9Q==
X-Gm-Message-State: AOJu0YyHMEW2ZqXoaUP+ZzkdTgUtt6MXlt9uZLVdqT9aikldNPSbQ3n/
	KBud9GhngDJsMZXDVpxNWCyvdSGG9e54LEg8GF92j4aCn4Yl6155EhJxcSvlARO7
X-Gm-Gg: AY/fxX7r2L5vNWjHsuS1aOVvo+VnoXY1S6+wEiest6tgjt2RQtdgzDFsKbd0dzU6oyA
	7a/zG86mq5WCPMTYFGv0wLyDBYMIqVMaALA2+OH0ce4vvw6mfHhHPwZKOJdvWmx/8V7qkbfslOA
	Q/x0mkX2Q+mQlYAwFau+z9Ik3MUd35T4+kP6v8lxVVoy4xvCGRbD9YeEhIiUjfNevOwTMDLylEh
	txBaI2lS2kTWpmb16R30MZBKpsjNoeK/+/pbGmA1zcUNv5cS5H6RkphSrLRiutQop17GC+SI3Kn
	zHX6Twsrn4if22L9GJ6w0CmKIiylhYxm79tbtdyCzcAmiNYCtF2ZJdW9ABy8L2INyBjOc7nHB1W
	veNO97wUPUUPL0ze2xMg0fP4Wy+jakTlWu66fQwuHXpc+YlPxRK6U0xtpWh/loYUu7GwxostIyh
	oDoq5zrpP/rfOul7WhQmPNo97lmncDjHxOqakX
X-Google-Smtp-Source: AGHT+IH4tv4ShAE+ANJgvyZ1as2TfaXq/U85wwTuc2wzYQWjrADIvWdeGN5ESBOrd0rUEM74RJsVYg==
X-Received: by 2002:a05:600c:3115:b0:477:fcb:2267 with SMTP id 5b1f17b1804b1-47d7f06c695mr29910035e9.8.1767694393187;
        Tue, 06 Jan 2026 02:13:13 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f998d29sm14993325e9.0.2026.01.06.02.13.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 02:13:11 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	debian@helgeth.de,
	champbreed1@gmail.com
Subject: [PATCH] man3/getopt.3: Fix spelling (British -> American)
Date: Tue,  6 Jan 2026 10:13:01 +0000
Message-ID: <20260106101302.11938-1-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The man-pages project uses American English. Change 'behaviour' to 'behavior'.

Reported-by: Helge Kreutzmann <debian@helgeth.de>
Signed-off-by: Simon Essien <champbreed1@gmail.com>
---
 man/man3/getopt.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/getopt.3 b/man/man3/getopt.3
index 8495719af..387ba9ce8 100644
--- a/man/man3/getopt.3
+++ b/man/man3/getopt.3
@@ -160,7 +160,7 @@ If \[aq]+\[aq] is not the first character of
 it is treated as a normal option.
 If
 .B POSIXLY_CORRECT
-behaviour is required in this case
+behavior is required in this case
 .I optstring
 will contain two \[aq]+\[aq] symbols.
 If the first character of
-- 
2.51.0


