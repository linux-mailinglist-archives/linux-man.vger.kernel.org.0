Return-Path: <linux-man+bounces-4666-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AB99DCF7F8B
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 12:09:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2D89305E2A2
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 11:04:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 682DB3176F8;
	Tue,  6 Jan 2026 11:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AohdlHzf"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F7723242B5
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 11:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767697476; cv=none; b=Fo0D8qAxvzoGeoFtGFfC+PoF3il/ksfwZ//B2xuT8Qn/bkyno6BDe/+rrwULERafppaR5bQNQv+dfRqYEdBGDrUfDlXPa5Y/wh2bDA/VKBTEa8Ls3lYa7/pZK01mvkvK0/z5BPLVeYsZ4RscppevJlP3FMCbJzM0OGhR1+QgA+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767697476; c=relaxed/simple;
	bh=9OMqHIdVP+D5qcjvO9cH4+pQhkEQAh67lIkSsHCzvNs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GIIOgbwPex8vgjYwdsUolcYTvJiLzg4u+0pqhVQDR9mi5UFk8Vimp8VDMlxTGy2DIoBQe0nWTwrp9Sq6lTDxJMAEONIkKJcekkDWC9uL5D/eoeODbcb/ez5Vwl9h5lYTgXH7++QsYsTXOr2iYey++FoxCnQnVIUHQ0qbR+dk7HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AohdlHzf; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-477bf34f5f5so7746385e9.0
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 03:04:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767697473; x=1768302273; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DY7SJ83lIrW6fUelFoHr5MiOFNYeFAmS0DXGx5Jx6dc=;
        b=AohdlHzfsfMRHq+0oaBjs7JRFp3ZXtfmMDeOkdS4Jq3HSnKUFZI5NHIK2d7mmft/cv
         tFo0/ieL1DM7pQzg55SGfe7pGGM9mK539KXLX/tIEbIsJeBmtduuwMRP/7hOEbpYsIXC
         sEDkdJU5ZS4UZ/KmgNLyw9tN4yDvZYRYT0qCyaUAchHbP7wSiNM9rvdBz2kTC5PXpt9+
         A1OLQJB+nPqEhFhl0Fjw/IAohU/i8FHmRRq8M6gAl7VRDgiHJfyyeorJ5HY4KfVuc8Ax
         5lt8HEc4OywTKVkhCiKySc0FuemxLAOjXRaeNyESxVNhy7aK672UWUqiR/iRqbXqk/23
         tPKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767697473; x=1768302273;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DY7SJ83lIrW6fUelFoHr5MiOFNYeFAmS0DXGx5Jx6dc=;
        b=mYpad8xjoqrmVF81kX8EBNRnlra5yPSUs5FfmjVlUw9LnubmZjo7z6O54Hmq7awwTf
         DlRYYvDTEvLAU5wxpUQc4pxAqYiTFQvlHREMAfvcOwh6U+goShiLUVTl+NgG7fGk5MCR
         fv5lm91+7EZsuQgYffIwiAdIjudCGs6FLPCijy+ieHiX/AtdYzKwgZcB/k89bwXCS4P5
         FRAB4AC7PFQwfXwK5wwSdyoWmvnSnIrP02JZCu6Zx+8CQvHdg0I1h5pBBIQMjVD7x8CT
         NhZ2BruM3OYH94w9URTrHyMxgOwyo8Nio4QygYd1lL9N9tLchoRFIy3M4A3z8eJnl1l1
         ovkQ==
X-Gm-Message-State: AOJu0YwCotSwDciGg1sVGcMUJ+HwCf2lUIEkJ0CkZ7TLlsAppjaSPnci
	TUkwZBuE9sTUx8wk00UJCXzniQVHDCE/PYW5qXZHfx4M6lvlDa7s9wnX
X-Gm-Gg: AY/fxX712QPNFwEK3rxBxwQjeCqkYrXn78feN5lLgsC2IW8P97rke9p2ruQCg4+aP+f
	p0D8UdY/4k78n+T19jFbM1u0xDw8kzFa6ICHj0D2s9dNKre6y3/AuRL/QhnwdPVCq6C+xROSCAg
	HxC97sHnVXMtCT2yKsxPCOGaupggcR6XRZkoPTMkWjfB4cBR0IezOHyuz0udLD7IYchCGMZtflP
	pQMuTUdvws9nF+tiLzOFD77fWqS0oKnjSdInfyGKpOtcR2RM67+FQMiB9xxgMo3pUoW9QlBv7um
	GJVyTQApeL21V/RVP3VpMyvQu2KmTWwGqDjO5PWVZUV9kU/Frlfv06V2cARGl2PczvHFmH74SDn
	yoxy6ds3jThO6u6hi2sd/6zDquiLnSMoWbeetZ0uYvsoKVkmb4gnS8o1jqa+wO3pW8sxf57NA1G
	F8VtD1ppOZDW/7pKY7V/KYKKlbrArT2qXX/kNz
X-Google-Smtp-Source: AGHT+IE9B4mGI/KOGkzZvRMfonecUJ4KgcpaGPnONlcmtuButJPxjSLz56f6MUg2tvTF29ZqnWsCjw==
X-Received: by 2002:a05:600c:4fd3:b0:477:5c58:3d42 with SMTP id 5b1f17b1804b1-47d7f06fe58mr25565575e9.10.1767697472853;
        Tue, 06 Jan 2026 03:04:32 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f418538sm36409735e9.5.2026.01.06.03.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 03:04:32 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	champbreed1@gmail.com
Subject: [PATCH] man3/creal.3, man3/cimag.3: Standardize style and history
Date: Tue,  6 Jan 2026 11:04:25 +0000
Message-ID: <20260106110425.61812-1-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Consolidated VERSIONS and HISTORY sections to match project standards.
Moved GNU extension notes for __real__ and __imag__ to a clearer
format within VERSIONS.

Signed-off-by: Simon Essien <champbreed1@gmail.com>
---
 man/man3/cimag.3 | 11 ++++-------
 man/man3/creal.3 | 11 ++++-------
 2 files changed, 8 insertions(+), 14 deletions(-)

diff --git a/man/man3/cimag.3 b/man/man3/cimag.3
index 39eeb1007..946e095a8 100644
--- a/man/man3/cimag.3
+++ b/man/man3/cimag.3
@@ -45,14 +45,11 @@ T{
 T}	Thread safety	MT-Safe
 .TE
 .SH VERSIONS
-GCC also supports __imag__.
-That is a GNU extension.
+Available since glibc 2.1.
+GCC also supports the
+.BR __real__
+keyword (a GNU extension).
 .SH STANDARDS
 C11, POSIX.1-2008.
 .SH HISTORY
-glibc 2.1.
 C99, POSIX.1-2001.
-.SH SEE ALSO
-.BR cabs (3),
-.BR creal (3),
-.BR complex (7)
diff --git a/man/man3/creal.3 b/man/man3/creal.3
index be07d8273..d05125274 100644
--- a/man/man3/creal.3
+++ b/man/man3/creal.3
@@ -43,14 +43,11 @@ T{
 T}	Thread safety	MT-Safe
 .TE
 .SH VERSIONS
-GCC supports also __real__.
-That is a GNU extension.
+Available since glibc 2.1.
+GCC also supports the
+.BR __real__
+keyword (a GNU extension).
 .SH STANDARDS
 C11, POSIX.1-2008.
 .SH HISTORY
-glibc 2.1.
 C99, POSIX.1-2001.
-.SH SEE ALSO
-.BR cabs (3),
-.BR cimag (3),
-.BR complex (7)
-- 
2.51.0


