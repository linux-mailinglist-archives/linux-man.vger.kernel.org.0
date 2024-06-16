Return-Path: <linux-man+bounces-1202-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D83909B0C
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 03:19:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DBCF21C20F1B
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 01:19:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9C5E154C0B;
	Sun, 16 Jun 2024 01:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XqkX4wwY"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1992D154C14
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 01:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718500783; cv=none; b=H8NzYBze4QqT0zlmhzlZWz1aXSVgDPobrZ7VcOQST8KGC5jULz/NSkWms1gXNKJebgtuNjrAqA01x3L/4xF0uCXqoS8WOSeKxqYuq8AwDtlME3AA1Ah3YyloqLB0aJ+aIjsP0dOFpJkSX8VIax+17lOC9CGyHHCQAqIhU8QliJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718500783; c=relaxed/simple;
	bh=fpSHUAFntUG/fdQJAj+iQmC8gBwk8HRpKSPmW2Z1tJU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=s/UDu3cgUP0VzxC5D/l8vyedUkK1a+8xljLVtQmDuxPZ1jARbND5o8fmVDs6l4ifw2NgREACNZy29MfbT3AXVmIuXGc7PKnzxBdlZlkal81MZsey5JmoFR+Il9ahwiRKv7KfAxUuLPituQqkWxaVoObIpTrrPYFPDoVthm9X4kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XqkX4wwY; arc=none smtp.client-ip=209.85.219.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6a3652a732fso15447096d6.3
        for <linux-man@vger.kernel.org>; Sat, 15 Jun 2024 18:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718500781; x=1719105581; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uHjkmowxhBmfDFLTGwyjOf2fSpdG/4uxTvzoH+ZGh+I=;
        b=XqkX4wwYpYprS3J3bLmlRrzoIFNDozaTSAP1KUK2zoja8AfOhxAe9WWktWrNnas6Eb
         1x/NmBeXb7WsVVeMc3V2i5b+U4oeu+T5fBPVTbS804cMLlcT48+M4B615IAxbkOm2PPC
         4Q+jaTOXcBHvNXh2eb6ey4ewmNWXIaehJ61q1LG0T1eAvea1o1T1aod/JQTnsb9ptSq3
         tVU/WSFpyVWCopSXGJBCYABgqFzLdYrYYgKEGC5eY7ukFa89I0KuCAlB63nHZwHnGN7X
         PYTfc1MtPmIY/jWervsBor04fH5TDYu/+AKIR15ks/dESstGXxlihdUxFNdUDlLV0AEk
         oUIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718500781; x=1719105581;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uHjkmowxhBmfDFLTGwyjOf2fSpdG/4uxTvzoH+ZGh+I=;
        b=MTqlDq0E7TPLl/I3NK/67BBjw1To7q9tEDVTsip9Vc9lCVR2o9Of75PJnhRhlf66Os
         RfoL4YbdY2Tb+AAy2hNqZZmf4AEOL7PJZNt8QuM6dp4IDgQtrsJR51LFsYE6eJFyfNk+
         KMsIzq9m5jErFbFQzBB84FTZzWjhmfX8LLfB/CyiFpGUehQV1D+QFVDQZd/5y3b4aH8O
         yf0Dyko69iRtVAEc5tCkOGlbuZvHzx97rUfCacLX+hQpB3FSmlers5fer9jpHJk0wGPP
         EW1L8P0ZrKBwLG0ByINsic//w77/ZnMZjpCl4RAro9rru/WghXfByOh9TfxPqRC1KVeV
         egxA==
X-Forwarded-Encrypted: i=1; AJvYcCWX5sy2rx+yOMMDJMsAER8VO1vX+gyYhVYyw6JJ7x6Sv172idI+kZixZUZaeARc6Si3wV7xxXv4fOCRlOnTO194voqhoijP+sWH
X-Gm-Message-State: AOJu0YyJSWVU4RS7lm6AT8hv8Le9B7Z22VG9QE6oQpSXq5RksuSWmpek
	v0n+XTy6jWRAMZ2pHa/CU55Nik8sgx7AY9Bv0c8OnMX5iHHGxQEj
X-Google-Smtp-Source: AGHT+IHvdyx8WyMclAHxvh9snNFvBmXj/tQ+jhuQXmJBQElCtEhnE0UyFhmnKHWkxJQ8fgKBk7gxGA==
X-Received: by 2002:a0c:e14c:0:b0:6b2:b7f3:5faa with SMTP id 6a1803df08f44-6b2b7f3614emr49389026d6.57.1718500780993;
        Sat, 15 Jun 2024 18:19:40 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b2a5c18209sm38130626d6.42.2024.06.15.18.19.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jun 2024 18:19:40 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 11/11] strtod.3: fix wrong section reference
Date: Sat, 15 Jun 2024 18:19:04 -0700
Message-ID: <20240616011920.1627949-12-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240616011920.1627949-1-kolyshkin@gmail.com>
References: <20240616011920.1627949-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY:
Reorganize sections"), the discussion about n-char-sequence refers to
NOTES, while the relevant information is now in VERSIONS.

Fixes: 4131356cd
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man3/strtod.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/strtod.3 b/man/man3/strtod.3
index fdcf5574b..9ddd21eea 100644
--- a/man/man3/strtod.3
+++ b/man/man3/strtod.3
@@ -94,7 +94,7 @@ .SH DESCRIPTION
 where
 .I n-char-sequence
 specifies in an implementation-dependent
-way the type of NAN (see NOTES).
+way the type of NAN (see VERSIONS).
 .SH RETURN VALUE
 These functions return the converted value, if any.
 .P
-- 
2.45.2


