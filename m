Return-Path: <linux-man+bounces-4672-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 39AF0CF828F
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 12:53:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E0C943080F43
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 11:48:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D53F2989B7;
	Tue,  6 Jan 2026 11:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FV+4toq5"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F023A1E7F
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 11:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767700080; cv=none; b=FOaGwhnK6gvZY0NVfQkcwPdZlb7m9+XQ2IDxeBA4rgRRnRA6ceRjG92vm+s3lzi5K/07R/ebVQQLpMQkVPR8QaLpqpwD3oEMfPsmfD+A7aYBfrrFku5z/Mvqzwh0vOKuQKCAld37X5zSrKZamkHXO9pXOVDFpifr2yyBAJBjS6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767700080; c=relaxed/simple;
	bh=dBKIqD8h51QypEZo/f7gB9GFK1j6T4Va98kV31IXLEg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=o7roWrs6mNjFra7g+l0reeqFUeHbo7T1CtuX9LWeOW8Z7CJ6roK2MUAcNs8XVCd4urERQSk5hpYPWQOPvsWwggVOI5mTfgCEj+5Ts5iMuNZ9wzzN0uV1br2/qly+BtMYJjC0i0CbNbv74rbC2BvX/Ogzb0MOfcpc2O5pY6Df7vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FV+4toq5; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47d59da3d81so13516045e9.0
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 03:47:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767700077; x=1768304877; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9LhX9tUq2aRl76m84eTozLW4opGZv4Q4yJ+J8lNfiSY=;
        b=FV+4toq5mXdpdeWH++9lFiZ7XySRxfzkcfqGWjqzFelUtWPJSo1fDzzhCufulqcxxo
         gYEx7ubuP+zmNueVjlCnamt0bJhOZ1hltFVtaXR9iF3xk6MSOL3awmVz6Ri8aRcB+KXX
         lgBCd+lyq783fsZMMhHr1FMk2WHrj750tv9KEZ0bWf98hdkJTwMI5YrhvSaV91d1+Om9
         kPU+qTD562hLRufLLAkc0lm8g04LGu9Zpmc65tt++RDPttA7YabsBiSobvMH4RsiAPu0
         A99FaoRU0VRSTRoWVtA5R7k22xlaPV6rpyzK9zK7me92+3fsCTUyEZhQ/7WNZXaOSiDp
         J68Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767700077; x=1768304877;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9LhX9tUq2aRl76m84eTozLW4opGZv4Q4yJ+J8lNfiSY=;
        b=TRUoKqtsb+0UboMVxKijjbBItIAsIo/HZZnYm50WdlKxYd3EjqfHyMgjKgJ2i6Ayah
         suHJeSga4t6DacH4ubcFgwCPHXlTULaUMuB9gDeuIxKc8Ms/a9r3TG3BWUqHUseAG7dB
         8/U658Z+ARjQPTVkQoUv7JjMW16QvYU1G0C6Sk/PmSLzptsY8vrBYF+NNnXzgpiPyGWc
         78kurTz2Df4TY8B3PMCM8bKw/ww3fd9uDsPYbB9pHnYV+1p9gkb6BXFc8iNvhdcGu8QP
         vIaic8OdmP4ou4oAiWBr3iNr22urI0v5Fa5VM3zcVAuDWvnHTH3HtSVFzMDwA7Sn6h5n
         M7ZQ==
X-Gm-Message-State: AOJu0YyxmvcKLKIF6m44KG1hJn/Qgv3CUar/q5SmEYXR1AGd7bTTMSVM
	+4W8aA3apsm7j+nx6nEZnNFgAKN3P2XMGFKrx+e0IWxyhFFSBP5CV4wE
X-Gm-Gg: AY/fxX6horYCtZMWtgdXinXkYuB2ZvKcqVRekZL/TCNtEnVOOG09G2qwWHds6SK2qCy
	4CXk/Me2l/7/SpbcA7nxlEU7Yi1IyuZJHKeoQb/iQvC3wbXaFX/W8zbAQStJ2LeyKyhJu1WpIaL
	nbMagEjcvCkmhmuc1EP5TmWLMvFwJSY5DB2x4p+CPJEX0pWL5rTOGGrNCLUlE0wazHJtR8qIb6S
	Et5JQ7BSZAtDJt2JmZ6H++AiZvgpLevFz0gDUjNOSz28zglUuQY9DgakxKdtL5WSst/BS53Jp2o
	G93UrnTjaaKWiUVE1tfq+fc665aJxX3p1e3+Jtk3PzGVfoku4cmnxWA/O7++FLKVgUTHco6MzLL
	QTWtu9GwMIlqkCa784u1K4c9FMA+yjY80m3XrnRr/xRRe2h0fHeiNFy7p4G/8TijDhtJGDtHgbg
	RYqY59tLPb6czaCbkVNGh1pfEFbK+6bTRmoy3b
X-Google-Smtp-Source: AGHT+IEkEBiuGDI5oOoFa/ju6OIizcnzJRVLf8D4en23Rn1i+vSoc55KUTX5y+/UTuDDu7xMOYK6Pw==
X-Received: by 2002:a05:600c:2e53:b0:477:991c:a17c with SMTP id 5b1f17b1804b1-47d7f40c518mr21579085e9.6.1767700076746;
        Tue, 06 Jan 2026 03:47:56 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.188])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f418538sm38310895e9.5.2026.01.06.03.47.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 03:47:56 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	champbreed1@gmail.com
Subject: [PATCH 2/3] man2: update glibc wrapper status and clean up FIXMEs
Date: Tue,  6 Jan 2026 11:47:35 +0000
Message-ID: <20260106114736.105645-2-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260106114736.105645-1-champbreed1@gmail.com>
References: <20260106114736.105645-1-champbreed1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update seccomp(2) to reflect that glibc 2.33 added a wrapper.
Update sched_setattr(2) to remove obsolete FIXME markers, as the
lack of a glibc wrapper is already correctly noted in the text.

Signed-off-by: Simon Essien <champbreed1@gmail.com>
---
 man/man2/sched_setattr.2 | 5 +----
 man/man2/seccomp.2       | 4 ++--
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/man/man2/sched_setattr.2 b/man/man2/sched_setattr.2
index 6d5718022..c8010b8fa 100644
--- a/man/man2/sched_setattr.2
+++ b/man/man2/sched_setattr.2
@@ -460,7 +460,6 @@ does not include all CPUs in the system
 Linux.
 .SH HISTORY
 Linux 3.14.
-.\" FIXME . Add glibc version
 .SH NOTES
 glibc does not provide wrappers for these system calls;
 call them using
@@ -482,9 +481,7 @@ provides a superset of the functionality of
 and (partially)
 .BR getpriority (2).
 .SH BUGS
-In Linux versions up to
-.\" FIXME . patch sent to Peter Zijlstra
-3.15,
+In Linux versions up to 3.15,
 .BR sched_setattr ()
 failed with the error
 .B EFAULT
diff --git a/man/man2/seccomp.2 b/man/man2/seccomp.2
index 125794880..685ed4713 100644
--- a/man/man2/seccomp.2
+++ b/man/man2/seccomp.2
@@ -25,7 +25,7 @@ Standard C library
 .fi
 .P
 .IR Note :
-glibc provides no wrapper for
+Before glibc 2.33, glibc provided no wrapper for
 .BR seccomp (),
 necessitating the use of
 .BR syscall (2).
@@ -863,7 +863,7 @@ be determined.
 Linux.
 .SH HISTORY
 Linux 3.17.
-.\" FIXME . Add glibc version
+Glibc 2.33.
 .SH NOTES
 Rather than hand-coding seccomp filters as shown in the example below,
 you may prefer to employ the
-- 
2.51.0


