Return-Path: <linux-man+bounces-4583-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F18CECE8CDA
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 07:44:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B0F663012240
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 06:43:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BF422E6CD0;
	Tue, 30 Dec 2025 06:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fBH2Iqky"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A43932F1FE1
	for <linux-man@vger.kernel.org>; Tue, 30 Dec 2025 06:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767077036; cv=none; b=gZSWQyjamp8FGbK8lazeZU+nlEgPCCCXcbYcHPEPhjj08/X3jZD5LXBssfEOY4m6eKvviOdJzZ9yBwbp8JH4hQGLo10l23/8Jxl59rCOh3JeYf8mZxRsNx6QkPZg5xe2jLs6fhOLs9Okz3P1f3oPGieYYUiMEAWQ5OJc8O7ThOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767077036; c=relaxed/simple;
	bh=c1CE8pQ36ZxKZ6SjTVW0HYWA5qok+YdNFg2/rNP7w0Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=glMBbhZIDRPU687wiW6lLzlqd+1U2d2/4Qc1kZpPEUQ+U9vGJBY+Q+UlwAB0aZyr5s6f2pd0zyNGBh1bEJQEGkYUwIiyqTLL9WFriDwQNVJc1DdVrbKLzFBMcfcsrzhdgKHI1NodOq3qFlrU2i/LLVHwAF+TAuw+FqSYgL4dDWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fBH2Iqky; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2a0b4320665so148508545ad.1
        for <linux-man@vger.kernel.org>; Mon, 29 Dec 2025 22:43:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767077034; x=1767681834; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HtTBsgswcOnOr+CW8uRHOAzWvmYpTjdyUCTYvuYCEYw=;
        b=fBH2Iqky19YR+vYTI+8mxnrrJ17aNUriHcDE4lVT6Zw9kx2UenR6YBJT6gqI0KXpla
         yZK5usNR4P0MRlTRa85XNa511+B7VsNgYelHKKKA3rYSlGvvqBD+jjKjjxXosgxG63PQ
         1wFJxVcf8SONE/vA82vnvVW8aNe+X1LJnLr1E3K1mLiyFqU2nlL3xTzwCR8mlBEr5Jck
         bnCbCXquA6rsRbSaYjrlh1cSUksSUPKTrH1VJTyCrlbTdQrVKJlaE5+mSlYCXk8CSAkh
         sFlsof+I9/SMuaP5XT+s0sxI2sJJFIqN7KWGE5/fH0qts1ZRU/I937Cm8CLRti9N9n9x
         gz8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767077034; x=1767681834;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HtTBsgswcOnOr+CW8uRHOAzWvmYpTjdyUCTYvuYCEYw=;
        b=aVXTENbdZrNxjS06gC+qdgx+jHNr7vr880fRL0C1OSTgNiLoK8ruAHy3QO7QR82cnb
         TWVcP99b+484c/4iubtNxRPJKKZOiuO4J6cti11MO95izyuLZkKxeJ25+wU2WwG5bgFZ
         nXpQSK0uUm7L3yPj6LHU7UEfb0lGh6FAklx1wOAvf1quaT+6wpANn2AS3vsX1DYjUBFy
         NJwhKrDsMDtC1PXtDa+HgUznTh2Ii3wcQDK/hI3Ys6d1f1jm2JWmJbMe7rZVy0WA/QIP
         tnRHD8ywJ1MqtSAFCDiHEDO8UsPvG708HqsjzBOCa4RGPeomPCXq9niuV8x7oSjauYtr
         4siA==
X-Forwarded-Encrypted: i=1; AJvYcCWKJWN3N7phW/D0jPzXWYMqnxb2UOO1rp+GaL4CkJ0R1l6qyXD+00gg/FUndU/s+nL1ANh/SIH/Xqk=@vger.kernel.org
X-Gm-Message-State: AOJu0YwvWNBd1B+vg9/xZTTf3yScc+FvXT6C5CqCbezTcaKe/urMUaEB
	YAQaqA9prWuIwK42qmFABVa+G9NSULtRclL5vTC9LbKp/PiV2MeRtQWw
X-Gm-Gg: AY/fxX6Fbm5pK6fwumU1xKB/8qyJSIlP0pnnu0jPbTYwFFT4u+4SBfSTr1jjqNwvqpQ
	gL7OYam2WlYnIO5YWEvHxj8EWxhL30igxdO9UZk7cGxfz3v+hMYSz8qCBg/vzGFFkRe3SL2/qsu
	grGAmFSRM8ahK87xzxGdTYhtbi816lM9Ehcv0zfddhiDvyd7qMOgQIKRz80r7FfdWFD7eWAADav
	ZjSeVGwmcPTsFbRwL8nS6SSGekTf/iMh5dTtFYgY8UGxoEtGgWMQFovjpRz0KtXyTTSdZuWyh8h
	HlfcYrC5e6hqqUegEByLwIpuDabEGXRPiUdvSPnVwe32M0f12PhwuqLV+TPvG4doLmT117W9uFm
	F7mANd9WnH6vdzwpjgD+NLhObDxbwLyoNYzcYtFhWB3dFq7/c4eI5DamHaGEOJMX+vrP6SbdoLH
	i4nIkm223WEHrqjJGg58esWgHEs2HjHdWu2HwQbTM962tPwnnPAd/wWfxSZ7GyPaZ5tAj4P1bkJ
	CEwiMcmUIGaRKdMFB9ZQuVnoeVD
X-Google-Smtp-Source: AGHT+IHb2mCx/QgTpXI4EaHICWwoMDStjKUeGo27xbADU115VhEmWsIhhncCLvrkpmYJ4rxaZgVNPw==
X-Received: by 2002:a17:902:cccb:b0:2a2:f0cb:df98 with SMTP id d9443c01a7336-2a2f2717922mr291541605ad.25.1767077033873;
        Mon, 29 Dec 2025 22:43:53 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-841f-6737-2002-883a.ip6.aussiebb.net. [2403:580b:5de8:0:841f:6737:2002:883a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d5d566sm287458395ad.71.2025.12.29.22.43.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 22:43:53 -0800 (PST)
From: seth.i.mcdonald@gmail.com
X-Google-Original-From: sethmcmail@pm.me
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 1/4] man/man2/syscall.2: Add HISTORY section
Date: Tue, 30 Dec 2025 16:42:00 +1000
Message-ID: <a2a2a51edeb0b23ebedf998cfac788dd96ee7ff3.1767072049.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767072049.git.sethmcmail@pm.me>
References: <cover.1767072049.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

Move the description of syscall(2)'s first appearance from NOTES to a
new HISTORY section.

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/syscall.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man2/syscall.2 b/man/man2/syscall.2
index be645c0f4a..54385cdfba 100644
--- a/man/man2/syscall.2
+++ b/man/man2/syscall.2
@@ -62,10 +62,11 @@ .SH ERRORS
 The requested system call number is not implemented.
 .P
 Other errors are specific to the invoked system call.
-.SH NOTES
+.SH HISTORY
 .BR syscall ()
 first appeared in
 4BSD.
+.SH NOTES
 .SS Architecture-specific requirements
 Each architecture ABI has its own requirements on how
 system call arguments are passed to the kernel.
-- 
2.47.3


