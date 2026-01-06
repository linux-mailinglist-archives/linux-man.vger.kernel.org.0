Return-Path: <linux-man+bounces-4668-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F4ACF80D0
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 12:32:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13A9E312C923
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 11:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71CA431AAAA;
	Tue,  6 Jan 2026 11:26:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Vy9rxq+6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 981E430EF8F
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 11:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767698818; cv=none; b=ghNO4KmDbdSlx6zESKsm2DISVYe4tcn2UZEfsAHbUza6l9wMVWHFZVYmkXzB1RQK+ZLw+jk3zn8OX2Ow0D7JYo24/OsGuJ8iNm5AgU9nWkIWi2la0M3gg1k20VJ2H/1aEYR/idipabMG6IVk70+fWJENNVaru6abOgKvJAvfLIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767698818; c=relaxed/simple;
	bh=Bs5fMWXcJXRZzCdzD5/4BlI7MLFpn3ododsw19SQGuU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oVWguVnKLznMRHPd7sQJE3ep7GOYudKnPeFgkSvKBWhmofMT6AKqhlkp4MJxTpumVilMDpd/Lzg93Je3WifUunCDU9ukLJa33VWGdNyuPw1qUe6LvCzz7gwLQMHogBXg7JQur4Oe3YD9B9fOdZk5SnBdudEUMaqPu/tLkdhJ/s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Vy9rxq+6; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-477619f8ae5so6894665e9.3
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 03:26:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767698815; x=1768303615; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N6jD6Z/1L6jWLTThkDjURDAN4SUT0/0eteEfk85jgT0=;
        b=Vy9rxq+6qkhWJbzJ/T3KlQqsJHc55nNbLTQpYBp6vbIkLrHenUIFgicWqFjgerZYXp
         M/+YjXIzpGzz+gEPAwU/XWs4aMHAh5/gDuKI/QY6kLz/FLKfF2BtbEitbKgUS+f/UV43
         ckvW7lm7vVZeMXmgf58guqLeMhR2X5gn7um0dvg0CWDa4tv0722i6E1r6OXpCpGrEJpa
         eIdEOe4KkD1Nfqose+WtJs31mOQjkTIs4Kw+etH+eKWcZjN2XJvExUHohcSGPn7cX+Cb
         4J2w9cprNDYET0d9GC3b1oxLpCR3wOSucixziJeTLLSzCqb67ZeShLh8AM8NzndxVj5e
         E5lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767698815; x=1768303615;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=N6jD6Z/1L6jWLTThkDjURDAN4SUT0/0eteEfk85jgT0=;
        b=UCF1w1BwtKChXUYj0Jn/zjrRzmUjtXYjbGMgNlHep1y0uK+8gTzPuYgb4nMSsRR1Vm
         eomjeAy8RDD/nxvKSyR5dMm4YTEuTWANM9DbFBmuN3z2BEbpKdw+9VhRstF0+TU2EyOJ
         oktTQ4CzGHmmzO36gSB5cEmXGrRorWA50f/7ShQaDK5fcMoweF3cVy2dEBV4Fbxx4UJK
         OWYDNrTNFP0CaqoqEz77b0O9VslakmAeCV0ahzpGIvVyhkQP2WdxBhxF1kWswPUPJg2x
         iEA7UbVUVYIR6UKmmjSZc37vxJhNLCaHMFirj+L4MDEt0i7Qd6x92fmC+JhtiNBgF+aK
         pCuQ==
X-Gm-Message-State: AOJu0YzDmRoS+oepti+NDdL3wwuxjlBnTV2MCJHxTBjA4ZtjhByL5wuC
	EM8ypgSj8zcgCOWaAHENMJcNJABS0oNo4gGBTne1m3t4V/ZoZnxyLdnz
X-Gm-Gg: AY/fxX7ZT9oo13qyxMGH09uqbFc0CYwSMSEAtgH4FUiZaAsSTP+rNkejyTArHyjIlIy
	Z4VJR6hAnh3w6j2lIU0hSSea89J8fP/6AYbs+DbjjTatUs9hBVCr7+SBz0FpptLpsdVlkMF91V9
	L81er5IZ1RuHLhR5SqgxY/1z65wYJ+F/OG0CEPfSUDPCO4ZCjYxgKp7I+MFe9aJaiGV9fHuVdnq
	INsPr/Q93a3eQ/FqarnBuNFOJeG/L8EHL7Ux2YyuXjxGLsWCSPeS+IkQN3/i0+96WcrjrHNvdJw
	XMFVjxoZczsa34c03/1pdC7HYkHHIDMt72pOWRdxIFTg2eRJSVM2Yas+LD5cj53CBEyUt7AndWM
	hkpW9JtqCNWggCoeYElp7tGR06u5Kx3ruCNUWVFMemSz215+MU5bVh0yFevkORDjCyAjIDay11Z
	N4s8qqWhav940s+yX3uX91FfVBBweqgltaFZ21
X-Google-Smtp-Source: AGHT+IHxbmO3vnDaWB/15/WKyv9cvOI5lg4Q9PVtThR5l7VfY0NuYxAplZxION+wRQfUIRKFcSWiLw==
X-Received: by 2002:a05:6000:26cd:b0:432:86dd:ef31 with SMTP id ffacd0b85a97d-432bca53d77mr3668413f8f.56.1767698814777;
        Tue, 06 Jan 2026 03:26:54 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.223])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ff1e9sm4071859f8f.41.2026.01.06.03.26.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 03:26:54 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Simon Essien <champbreed1@gmail.com>
Subject: [PATCH 2/2] path_resolution.7: document read-only mounts, ACLs, and immutable files
Date: Tue,  6 Jan 2026 11:26:27 +0000
Message-ID: <20260106112627.83127-2-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260106112627.83127-1-champbreed1@gmail.com>
References: <20260106112627.83127-1-champbreed1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Address several FIXMEs by adding brief mentions of:
- EROFS errors on read-only filesystems.
- Access restrictions from filesystem ACLs.
- Access restrictions from immutable file attributes.

Signed-off-by: Simon Essien <champbreed1@gmail.com>
---
 man/man7/path_resolution.7 | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/man/man7/path_resolution.7 b/man/man7/path_resolution.7
index cdf21e1f7..78573f3c2 100644
--- a/man/man7/path_resolution.7
+++ b/man/man7/path_resolution.7
@@ -225,7 +225,12 @@ Similarly, Linux uses the fsgid ("filesystem group ID")
 instead of the effective group ID.
 See
 .BR setfsgid (2).
-.\" FIXME . say something about filesystem mounted read-only ?
+.P
+Even if a process has the necessary permissions to access or
+modify a file, an attempt to modify any part of the filesystem
+will fail with the error
+.B EROFS
+if the filesystem is currently mounted read-only.
 .SS Bypassing permission checks: superuser and capabilities
 On a traditional UNIX system, the superuser
 .RI ( root ,
@@ -256,8 +261,15 @@ The
 .B CAP_DAC_READ_SEARCH
 capability grants read and search permission
 on directories, and read permission on ordinary files.
-.\" FIXME . say something about immutable files
-.\" FIXME . say something about ACLs
+.P
+Beyond the standard permissions, access may also be restricted by
+filesystem-specific ACLs (Access Control Lists) or by
+immutable file attributes.
+See
+.BR acl (5)
+and
+.BR chattr (1)
+for more details.
 .SH SEE ALSO
 .BR readlink (2),
 .BR capabilities (7),
-- 
2.51.0


