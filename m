Return-Path: <linux-man+bounces-1892-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC2F9C3851
	for <lists+linux-man@lfdr.de>; Mon, 11 Nov 2024 07:23:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9B28D1F21F9A
	for <lists+linux-man@lfdr.de>; Mon, 11 Nov 2024 06:23:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89444154BFF;
	Mon, 11 Nov 2024 06:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zpml0VqX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F278E1EF1D;
	Mon, 11 Nov 2024 06:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731306177; cv=none; b=hllUUUdVZ3xaIZ1q2eDOJQbPBiVRXkAR9l73H3SxhuRQPAsITyDrPcsDEPR/MBMtuH0UVQVp8ayad248N+e0ONflGwtKkStSf30P9ufy9SnS5Ti9gN+zhwUq9sWAXFKhWRYCdsGb49pVAhirHUedu4HaiCB70ziqavgIVla/s3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731306177; c=relaxed/simple;
	bh=CmDODU32uYrnDk2ZcWMQGQFR+DZeO1tQmv8Hj5OeU4A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lkWUdUP2t3ceRsBtYr/AjOHfd8vnnTsqeLKLu49aUDuBsiCrjFxKjJ7yUGx02f6nWvieP6PCo5N/2V2OfP+prr+HbGud36AsNULrM5ccTxB858iEc3EVierRot+Hv7sIV2BwFbUocICLn1gfRL7Ew1TSgbFVLm2eTZn0MA4MFZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zpml0VqX; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-20c8c50fdd9so34968935ad.0;
        Sun, 10 Nov 2024 22:22:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731306175; x=1731910975; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xOCkTaIOmeg7q3bUUvnuLrQ9L15dDYtHNoEXYkUOvnw=;
        b=Zpml0VqXJEJWLBejcm6bhTjmioFhW6EPpkXQweBseHqNhdVoM01S0ttQ5mhM1VY2Wa
         hfLwTI7virrPwwpFT1sRFjp+OjLyt/nWX0XZ44TNIOU7nOogTH0ubZzyrykHZAWX7VAu
         t4thZODHFpL/O9GKZAVZlmwRiDcyd/kEEo8Wje48wTjpv3bJzMF+aQt6A6Yt0rVEOHiW
         x17DE1AoG3FnqPNbHUKkQhIVWxPhPt4YuIOPUvb5chWdtDUTkLgG0jHesM39M1jgSGvt
         NGLQNmpkeNBlL+H+pZlRW+z9hRf12o0tnW1BTFe0g1Oc6tHE+vS3iYxUWj/Krpp/7hxW
         IQeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731306175; x=1731910975;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xOCkTaIOmeg7q3bUUvnuLrQ9L15dDYtHNoEXYkUOvnw=;
        b=jsgpWve6TYJErFIvv7YrTZMPteWpnXLuoESF2YQ73ABcBc4JkLEqIASZ+qtcY/9zNi
         CkhNyt9p3XMNlHjudBTNs2R6dIssSRNu/7kyeI1/lmxo9ULEyHFd1ksqumXPV4Gs2mZH
         h18DMsyq9kEVcUt1G+tnMjjyP5lHkCOAwVbdkQUmjxXOyaFBVX66jOS0eMSoDICURajm
         jqrEgMTR1E/39im9O7Y5ewnDDd60G92l+c725H+qVQNg7JuO3oH+zX1chwPWa9vG3PnP
         GVfciU8JRGJXAzwlf0E9dWFMZ2jRWQaZ8g+3u39dZ7ZlvstN6Kg9IVGkVt/to19ML8SK
         9jjg==
X-Forwarded-Encrypted: i=1; AJvYcCUyXG+uiIrgJyKKt0Fky+9uQHhruv26kWZoQeujzXsSXXvyIhTitEK6rDzBSkZQ8cqR+2qUXLs=@vger.kernel.org
X-Gm-Message-State: AOJu0YxVJWfwd/MuMRnXSqupo59SCfZ8Cnubes5Jr5tldqbpGruVp9Zt
	PYyN44IfeN+2kdTxM2yvnoXCEU/H0bpicIw3a2LYvCXEBVoM2Ka+JPEyiA==
X-Google-Smtp-Source: AGHT+IHuGzMYnRfVq0fjG4KAlTSiJnMSmgY1YVPKl3JLOGihvG4J8E8s3gP7KSlpBfTKPiMew1/ZUA==
X-Received: by 2002:a17:902:d2d0:b0:20b:a73b:3f5 with SMTP id d9443c01a7336-21183720ce8mr184658005ad.14.1731306175096;
        Sun, 10 Nov 2024 22:22:55 -0800 (PST)
Received: from panther.lan ([2607:fa18:92fe:92b::47f])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21177e413basm68872725ad.166.2024.11.10.22.22.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Nov 2024 22:22:54 -0800 (PST)
From: Alex Henrie <alexhenrie24@gmail.com>
To: linux-man@vger.kernel.org,
	kuniyu@amazon.com,
	alx@kernel.org,
	mtk.manpages@gmail.com,
	branden@debian.org,
	netdev@vger.kernel.org
Cc: Alex Henrie <alexhenrie24@gmail.com>
Subject: [PATCH man-pages v2] rtnetlink.7: Document struct ifa_cacheinfo
Date: Sun, 10 Nov 2024 23:20:06 -0700
Message-ID: <20241111062205.207027-1-alexhenrie24@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241105041507.1292595-1-alexhenrie24@gmail.com>
References: <20241105041507.1292595-1-alexhenrie24@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

struct ifa_cacheinfo contains the address's creation time, update time,
preferred lifetime remaining, and valid lifetime remaining.

Link: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/uapi/linux/if_addr.h?h=v6.11#n60>
Signed-off-by: Alex Henrie <alexhenrie24@gmail.com>
---
Changes from v1:
- Move link to Link line in commit message
- Add the word "remaining" to clarify that the reported values will
  decrease over time
- Say UINT32_MAX instead of -1
- Add a short paragraph to explain the constraints on the minimum and
  maximum lifetimes

Thanks to Kuniyuki and Alejandro for your feedback.
---
 man/man7/rtnetlink.7 | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/man/man7/rtnetlink.7 b/man/man7/rtnetlink.7
index 86ed459bb..ed08834b0 100644
--- a/man/man7/rtnetlink.7
+++ b/man/man7/rtnetlink.7
@@ -176,7 +176,24 @@ IFA_BROADCAST:raw protocol address:broadcast address
 IFA_ANYCAST:raw protocol address:anycast address
 IFA_CACHEINFO:struct ifa_cacheinfo:Address information
 .TE
-.\" FIXME Document struct ifa_cacheinfo
+.IP
+.EX
+struct ifa_cacheinfo {
+    __u32 ifa_prefered; /* Preferred lifetime remaining, in seconds */
+    __u32 ifa_valid;    /* Valid lifetime remaining, in seconds */
+    __u32 cstamp;       /* Creation timestamp, in hundredths of seconds */
+    __u32 tstamp;       /* Update timestamp, in hundredths of seconds */
+};
+.EE
+.IP
+.I ifa_valid
+cannot be zero, and
+.I ifa_prefered
+cannot be greater than
+.IR ifa_valid .
+A value of
+.B UINT32_MAX
+represents an infinite lifetime.
 .TP
 .B RTM_NEWROUTE
 .TQ
-- 
2.47.0


