Return-Path: <linux-man+bounces-2945-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C378ABAC85
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 22:53:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE4701799C8
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 20:53:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28D8A215173;
	Sat, 17 May 2025 20:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SyQ9EbLc"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BF0215063
	for <linux-man@vger.kernel.org>; Sat, 17 May 2025 20:53:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747515212; cv=none; b=PErRiPX6qcrn122REcXqVz3d1fUBc9ieCU9TXdOIeNAh8Od2mYnshNPFP9ZVRDs8XScuIRYN1cCsinVtpqrD/NL/Gat1rzhiS69C0EKfbRhUHLUS7NFHfvFGJHcJadHyN0CDsq2qwsKZ6Fyop+0lk0VgGyrqLmL6eUn+ZgyBDaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747515212; c=relaxed/simple;
	bh=kJsce37ZeGxNaIVHL6+OPVMhChM2y/gmkGheMI+Njts=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PdYta/h4Kq6monEhFo+x35vAbF0xIahD2EqVz3KXAenpnU1BZ0NKRE0QX6vLVbo2qQHpOf9LWa+PMT6Zx5S4CAw6Ik8aMlMDiyewxKg1LTp8YbLXfe5N2PrMLuBVzstWfFPiUuBe3re8yc3FZlzwRbpxOYIbU5cu3r49ZXBtfWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SyQ9EbLc; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b26f5eb16a5so1185170a12.0
        for <linux-man@vger.kernel.org>; Sat, 17 May 2025 13:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747515210; x=1748120010; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KUx7J93a4DXiJhI8qXbz7Y8+MFBItEhl1O+r4pSq5I4=;
        b=SyQ9EbLc00Y0FHf//zRyfPsq9V0AGGW0PnjmTJRNjlbcOezkaGren8MW3NCJOoCQ6r
         YmXx7S3g8gSpkmt439yNov0yF5YqYksKFFSoUwMK1nUhACCvQkV8anMbEsW87SfnvIHz
         KCRRMGMCh+iQdxKmaD7tEeciZFm1OqWk3CJHbqgnr6U25Ef4MBC3jDEZlBeK06uV+bNd
         9wuZulzuCCo7b07K3G+aAHYQJrLY/n8I6U4X+CEyW2b5MygNiexr6h265jojhd8Jopuc
         yw3mAzRQZDY0JP+HsVnWhC0+c8DYyPL6iymmtB1tuJanMQP95grDi7NlzZ0KzqidJWb2
         twBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747515210; x=1748120010;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KUx7J93a4DXiJhI8qXbz7Y8+MFBItEhl1O+r4pSq5I4=;
        b=EVIEnvFHqKjd+Q24P9Kqu0rrYWwFhKp6vrm6cE2wZk7QsbpzkadZbuOGE8EfBTXMv7
         C6fj1c935f8GqnxBHNz87q33ujC2Qy8WhkN4npp8VI+gwVPOF/SIw1rnxf+hNf2ppUWt
         4wX3mBIqWC/a1SUbTXN8JBXDHpJpFP8/EQ5z1OksSACD95/8l77eDbCZOSXv5v2VruPj
         +yMg2ngWlxE5NVPt+/M11NlGLgccIy27gk1AEFnWqBMedyLARlyKSkJdvQlJjwVdVkMZ
         onHa90MQg6zgE8RT+Tybz1HliPxbuaQJI2CSbKUeBmruh0gipHwJtpydS5B6oBRplH6i
         1QGQ==
X-Forwarded-Encrypted: i=1; AJvYcCXm6FXrMfMxCcbb61LtBvxoCh9R/v9V9VtMqovbjok1LxIKbDi8SsjtPNfeo2DGrqGwbBdGknMOotg=@vger.kernel.org
X-Gm-Message-State: AOJu0YwAIi7rVDn7aowR7eH+ERAetn4IDQThuMnoTgAISTAIWTXFN4Sb
	pIrWCzE/kLX2Sz6l60QMFIUI91RpN84JagghJpKSemdc/gr4L08Zs+2B
X-Gm-Gg: ASbGnctdO5T0ZJtVZ7LseLs7KMZ0BeRp3Vl8zqpZS0jI7Kuo475nZEefRPB++BphbEB
	cA6ItZKSIdGrdhSFtEkOp8gEaeEBYDyQNl25fizH8I2PlbrUR0qa9sBR2vN6jSUvZDG5R8BhZmU
	ImhveJ/Nlp+fUsL9oeVHD6hzvaoWU/sJzaKdF3dg68lHulu7ieVixB9BasxwD8GnyE7THV+9tZ3
	3RWX7KC4c4oDekUHKKwkJJJ78IuCTmJ+2XwT5GAx091ypbqoCcTT84u5X7YgNwnWUKzZe8dyYr4
	8wKSMSIAO0UR+voG39VYVsCiuPuz8Qfgbw==
X-Google-Smtp-Source: AGHT+IExbsERgdIfF+vvfmf7n5Dj636QcS2oqK/7mVxWujOgOeeyi32X+D7Bnwcz6G8uG+DF4ojYig==
X-Received: by 2002:a17:903:3c27:b0:22e:457d:3989 with SMTP id d9443c01a7336-231b388273dmr190310605ad.0.1747515210304;
        Sat, 17 May 2025 13:53:30 -0700 (PDT)
Received: from fedora.. ([2601:646:8081:3770::9eb])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4af1b75sm34567835ad.85.2025.05.17.13.53.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 May 2025 13:53:30 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Collin Funk <collin.funk1@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 3/3] man/man3/ptsname.3: Mention ptsname_r was standardized in POSIX-1.2024
Date: Sat, 17 May 2025 13:53:04 -0700
Message-ID: <883d4a9b8cfb757a080710cf0133be5d0e12adce.1747515178.git.collin.funk1@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Collin Funk <collin.funk1@gmail.com>
---
 man/man3/ptsname.3 | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/man/man3/ptsname.3 b/man/man3/ptsname.3
index 748f1e19a..34d04fcf1 100644
--- a/man/man3/ptsname.3
+++ b/man/man3/ptsname.3
@@ -120,13 +120,9 @@ .SH STANDARDS
 .TP
 .BR ptsname ():
 POSIX.1-2008.
-.P
-.BR ptsname_r ()
-is a Linux extension, that is proposed for inclusion
-.\" FIXME . for later review when Issue 8 is one day released
-.\" http://austingroupbugs.net/tag_view_page.php?tag_id=8
-.\" http://austingroupbugs.net/view.php?id=508
-in the next major revision of POSIX.1 (Issue 8).
+.TP
+.BR ptsname_r ():
+POSIX.1-2024.
 .SH HISTORY
 .TP
 .BR ptsname ():
@@ -136,6 +132,9 @@ .SH HISTORY
 .BR ptsname ()
 is part of the UNIX 98 pseudoterminal support (see
 .BR pts (4)).
+.TP
+.BR ptsname_r ():
+GNU.
 .SH SEE ALSO
 .BR grantpt (3),
 .BR posix_openpt (3),
-- 
2.49.0


