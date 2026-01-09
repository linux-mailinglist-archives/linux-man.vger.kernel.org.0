Return-Path: <linux-man+bounces-4754-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF51D076D9
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:45:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0CD99305CA8F
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A17672DF719;
	Fri,  9 Jan 2026 06:43:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CKbMjotj"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com [209.85.216.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D93A62DF6E3
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767940994; cv=none; b=MIPBT8UvkzTPipVvnfFS4GMtNw2RrQVmO1KVli91B/HAgO1Q2Q/qA7FwfvZDDsRcwTFR8ho8DjnAGJmvsst9uCrzEk71T9+z9XI5inkusCNiTtD6ZYT7g+wg3ps8MYgfoipYiU1gLHtBi36AbgNS9B+APNHNWix4KHy1lkXdD7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767940994; c=relaxed/simple;
	bh=z6vSdSOh64PIM3Gz3llGEmiAy32fU+ldhWG2mQ54pqI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jLXFMA9OQQBniKXZwKS6dxzOn/83HPYNikHVD44PZ/jjmIW6leMrBqkG+65rAw7gt0vno5rQ15O5G+95iKWaX9yR5j0qxlTOJV/VXD3IFY6AUI6usBoNpVhE3o33m8pjZ77mN9AiRU0iTJZRh9LFJf2/aVBKLi8xSSw/uahxKJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CKbMjotj; arc=none smtp.client-ip=209.85.216.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f68.google.com with SMTP id 98e67ed59e1d1-34c868b197eso3535357a91.2
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767940990; x=1768545790; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Lk3TX8hTFfLfCFQudteouXJY1RN07ym5fQ7g5DKl6bM=;
        b=CKbMjotjneiW4O1DOn/lhK+zK9rgt5+4yKP7eRRVrTSG+YCdS7IyqdIqp0GZL7D9Am
         6lQrMX+brpysdA0AEyqovLv2wGvNrd8oOj+GZLGW0LASe3MPj3v2NV7N+2zx6EmP8MA2
         Ml5M2LU7Kyu6IIhK8/VTFW3CagYGUBTdsC6RXAQo5Mvtwz8B4Xeqzwh5clVrsKciXcjL
         vFTzqvmgW47fWJhTDhsyfl9fZx6v9gfX9pjDaek2MTlqnZ1WwBPn22EFrigeeYCyGhqs
         YKRTIzyj22UuXOUQdHeS8xHouAN++nPloWl1KIszJfnX5qkR4dwKxf4GwrJJfnh/NAuH
         ToGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767940990; x=1768545790;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Lk3TX8hTFfLfCFQudteouXJY1RN07ym5fQ7g5DKl6bM=;
        b=W7de4Y+KfuhlqM2wmsg1S81dpUFUn1tAGlTY28/qorUSV+ZzxLKOcQSPUIU4dnvF41
         n6JSSkhseHSAq3TV7k+dBSz/6/Dl1vw//DNEnZ7RkxW954PxcXHdgI3OX5jis1++cc3n
         2gv4pd46DYIJJVy/CXfeAfxxWP5Sl++nyPP6n2Em320wVPTN8xmv8lKaWP4uHPfQR9NR
         +j/MxxtWmTRJU7WmCmCLDGMt/7vINQHD1wkcQOSlDQyO4LhBNSwAkR1YskTv+jzvn3dR
         eV3q4eZ0xidrH8uNkohR9fuXFM+8R20Jta8AC95+2Z+PJxT8GrhmyuEntWHOjbhkjVkp
         Xw8g==
X-Forwarded-Encrypted: i=1; AJvYcCUul0qHPnc8FCGSMm4w6PML7wAs8+H7lXJqYKeukyyVQDGtCnSUArpS0hTCPA4dmLTSPWU32w4iQZk=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0LjbxTtDxE5K7rhNDOG7R1hgFUysss6ww7M+9Nq4D3EQEDiKL
	7H6H98Ivu916gVwyQb5cFgPNAVCJ7Px3IGE0swzKrj4xqYGy6z/Nwcl1n8RFHEyi
X-Gm-Gg: AY/fxX7vCLrdBLqCwN496LrYwLqL1oPhmwscbNJoocRTHjZdsEXSb5+uB0lEjKt1ZAK
	ID8IX3sBRjIQc6FHzNztqydS4S4vVo1iyy37Fy21YpejrV2zggOlilOc0fWpmEG7iCC7yvmy4JZ
	NkK6PNosucspX52oU6h7cOCJ1e1jHvfBoggfrhPZebxKIFB2VK68FigC9etxs71P+xe4sY5vZ3K
	Go/U19WmatGsMtdyBZ5r6UdfkSjkKo47O2PH2ZY65nmi8FM2Nm7kTepholi2eeDZwYORr78v8xp
	rRPZsu2i7XjU955mOB/q0DIX5ZgiQWS53Qgxs4h3tdXCJQnQNuiWJ0o7m4RCSmhQexmIhtftCl7
	qQGx4IiGpZV8AJVGU9CFjhf93w3CA1yUpxftj4TNbqlugvwT/Jkg0/ipoyJL8UZ3+tUzby0Jssj
	vjz5GobRwnM/cU165E/ais8GgoazulYFAvredu2df2EYH/rLgurGqvrctgYdZ92RwyvbB+Koiwj
	+55nywHMhjiG8nE
X-Google-Smtp-Source: AGHT+IGz19npLQqHhNBHdMnqbzzm+yNQjPe6sAdawh1ahV+wvA+d/T2lX3Bnx09IKxf7lAlHQAP76Q==
X-Received: by 2002:a17:90b:38cd:b0:340:ad5e:cb with SMTP id 98e67ed59e1d1-34f68b8325amr8422566a91.8.1767940990095;
        Thu, 08 Jan 2026 22:43:10 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.43.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:09 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 08/25] man/man3type/iovec.3type: HISTORY: Update first POSIX appearance of iovec(3type)
Date: Fri,  9 Jan 2026 16:40:26 +1000
Message-ID: <0cf31543f6d22de123da7bae70f6f8af1be0e997.1767939178.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767939178.git.sethmcmail@pm.me>
References: <cover.1767939178.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

iovec(3type) first appeared in SUSv1.[1]  The type was added to
POSIX.1-2001 when POSIX and SUS merged, but as an XSI extension (still
SUS-only).[2]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 4 "Headers", p. 840.
[2] IEEE Std 1003.1-2001, Volume 1, Chapter 13 "Headers", p. 369.
<https://pubs.opengroup.org/onlinepubs/009604499/basedefs/sys/uio.h.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/iovec.3type | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man3type/iovec.3type b/man/man3type/iovec.3type
index 368f57157c15..b7c1abfeb040 100644
--- a/man/man3type/iovec.3type
+++ b/man/man3type/iovec.3type
@@ -39,7 +39,8 @@ .SH DESCRIPTION
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001.
+SUSv1,
+POSIX.1-2001 XSI.
 .SH NOTES
 The following header also provides this type:
 .IR <sys/socket.h> .
-- 
2.47.3


