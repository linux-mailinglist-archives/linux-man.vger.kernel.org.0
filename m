Return-Path: <linux-man+bounces-2816-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E586EA99ECA
	for <lists+linux-man@lfdr.de>; Thu, 24 Apr 2025 04:26:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36AFD4474ED
	for <lists+linux-man@lfdr.de>; Thu, 24 Apr 2025 02:26:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C486148827;
	Thu, 24 Apr 2025 02:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="EnaIiq/+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f201.google.com (mail-pg1-f201.google.com [209.85.215.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE9B714F70
	for <linux-man@vger.kernel.org>; Thu, 24 Apr 2025 02:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745461588; cv=none; b=FVQASyADYMgsIYrThF+fyLewDXQnbbuALufYysPXF6e8ClYUuMoCHoef9xqBux/R90QlbKVI9kT2E3XlYZ1yJ32jbzDohTqmWh7Y2oev4N2aVD0003O61pqrlPXiucrqkFbejSeHziS/Kw+pmI/sjxVURF7btYG9O7p9zI53njA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745461588; c=relaxed/simple;
	bh=ZCeDLdrtCrCxfrhaDmrCz0i0Q4hDAVlH6/PI2MI1pB4=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=lbR2r2XGQRIwf+UE4YXYgHzB9TSpU3IYoqDf3hYKwiG4iPhzP92sedS+D/VPV9ZavCqure3ZdVlhIIB+33NHmvthx1Xnu8mJc8atnvjYw3QjHPWhLilBrnvqyXxzFjY6tXLtMe2vD7DaDy1n43zNVGq85gTN/NIkhqybLMog7/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--tweek.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=EnaIiq/+; arc=none smtp.client-ip=209.85.215.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--tweek.bounces.google.com
Received: by mail-pg1-f201.google.com with SMTP id 41be03b00d2f7-b1442e039eeso266162a12.0
        for <linux-man@vger.kernel.org>; Wed, 23 Apr 2025 19:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745461586; x=1746066386; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZCeDLdrtCrCxfrhaDmrCz0i0Q4hDAVlH6/PI2MI1pB4=;
        b=EnaIiq/+Ys5rL3fA4pU/rLq4JJjGGMFSDJ0spL7UGbzPJvZJBXFKpvhugSyLDFhtWL
         0UoMfypc3oTfFUZH4EZdZDOGLQ79e/2PsNc/CAnKl4q5dSwALCZEWQz3P33+55cmA+27
         26R1TfdGwb+dkulnOMNbywCKaTY6K3g/2o+ytq+S+GV4k5CvHRcQrzbWTSJvRNYDsOex
         DhqZVmxkLbBOILPqrtxLOVKLhbcOxxDOMB+tQx1349pN5hQLOha99l/w6bmsncmeMNxO
         auUOHI7wWJeqW+ExU4LDv2PYK4cwYVSUWNkV4r64jagyOVgXzpTbAQ+vYV6Y22FG2iMK
         Hhvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745461586; x=1746066386;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZCeDLdrtCrCxfrhaDmrCz0i0Q4hDAVlH6/PI2MI1pB4=;
        b=SySfrkrT3RvHrLLuK5KoB6xCFwCKe6S12q3QB2+Lgf7C0mE8hd/oOJ0g95i9g3OaDd
         ALHPcQvEnGr2J7R2Endl/XE+TK1/G2lPe+7Zg0Ipjc4+7oQijmXXGkWJt9XLeOJuPG+M
         RjfVerAf8opCUgnL6WINjonx7fOH8EMxbg6ZgNoMC9pLBtZjXYnS0mLVlliQEEQeqlue
         5M1ukV29Zo3zsUWQdzKlAmawKBLqOyhJoSM8X/i5OCyCd7df/IhaHYkD80Yt+ry9EbwF
         cEsEjaDXY/CiDWP5sMQa7wmlUh5PCeWCXU8BnrjcJg6mZv4rl4HFB+c3g0TdtXLXk3Mw
         I2Zw==
X-Gm-Message-State: AOJu0Yz00fYTIE9FHxQePEVPoBSvfCUKP8SZ3JUsrDI5ET6yoyH9yj3c
	pYNMpQRGlV1Gz3Oyftj13Niv9ME3ffVGTxDQ4MbXI4jixDNR3sUxgGBTzK5TEO/71S9tm8rttw=
	=
X-Google-Smtp-Source: AGHT+IFF9cDzZFV3RWcQTxbYQqGrmneamhs4tCXUe0Fo+F9s0HDfOG2MCvn8Qp0H71H02XcRv/LayrXNWg==
X-Received: from pjyp14.prod.google.com ([2002:a17:90a:e70e:b0:2fa:15aa:4d1e])
 (user=tweek job=prod-delivery.src-stubby-dispatcher) by 2002:a17:90b:3a05:b0:2ff:5a9d:9390
 with SMTP id 98e67ed59e1d1-309ed2704b5mr1376872a91.8.1745461585924; Wed, 23
 Apr 2025 19:26:25 -0700 (PDT)
Date: Thu, 24 Apr 2025 12:26:05 +1000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
Message-ID: <20250424022605.10485-1-tweek@google.com>
Subject: [PATCH] man/man2/memfd_secret.2: Update default state
From: "=?UTF-8?q?Thi=C3=A9baud=20Weksteen?=" <tweek@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Mike Rapoport <rppt@kernel.org>, 
	"=?UTF-8?q?Thi=C3=A9baud=20Weksteen?=" <tweek@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

In commit b758fe6df50 ("mm/secretmem: make it on by default"),
memfd_secret was updated to be enabled by default.

Signed-off-by: Thi=C3=A9baud Weksteen <tweek@google.com>
---
 man/man2/memfd_secret.2 | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/man/man2/memfd_secret.2 b/man/man2/memfd_secret.2
index 322d67a41..2eb6db599 100644
--- a/man/man2/memfd_secret.2
+++ b/man/man2/memfd_secret.2
@@ -182,12 +182,15 @@ or spawn a new privileged user-space process to perfo=
rm
 secrets exfiltration using
 .BR ptrace (2).
 .P
-The way
+Before Linux 6.5,
+.\" commit b758fe6df50daf68fef089d8f3c1cd49fc794ed2
+there was some concern that
 .BR memfd_secret ()
-allocates and locks the memory may impact overall system performance,
-therefore the system call is disabled by default and only available
+allocations and memory locking had an impact on system performance,
+therefore the system call was disabled by default and only available
 if the system administrator turned it on using
-"secretmem.enable=3Dy" kernel parameter.
+"secretmem.enable=3Dy" kernel parameter. Since Linux 6.5, the system
+call is enabled by default.
 .P
 To prevent potential data leaks of memory regions backed by
 .BR memfd_secret ()
--=20
2.49.0.805.g082f7c87e0-goog


