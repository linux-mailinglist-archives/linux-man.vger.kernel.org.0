Return-Path: <linux-man+bounces-4757-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BF692D076DC
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:45:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5B667305CAE3
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C6B72DCF55;
	Fri,  9 Jan 2026 06:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lIWTNwLe"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC83F2DC792
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767941002; cv=none; b=SG07C8bsltdmu4g32JjVqpfFil+QbhfC+taSqXd7ovOPq1q+Zg0nX0okDDRrwtyUjLao77dPHwpLaLQ0v3Ojx+6EP/NkJvi15HtWi3slMChiEJskGgJ36sABTI50N4hSOsiGhnGMtnIuFLKW6zl51rG1yQZ+jnvIQrWzP8Qnxwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767941002; c=relaxed/simple;
	bh=JWn6R6eQ4i8Uyd+e8ZB8qZa2khgU4OggiwPcuo1EXFw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AYSI4VDy80Bm8+YAEHT+Xm+NRJkOB1iU4WraL162BNVHnjAhAEgANp5MWR2M2Qg2bZZ/XTBK4Y97NF9E+7toOdc2rPq0V8OYDR5Ryy2NijYIEZjj+VllEtS+YW/epNL1oyxnMhqfZkKKRNws2PWwm0/0TVVzKKBTwNCCqjITiEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lIWTNwLe; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2a0bb2f093aso29411165ad.3
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767941001; x=1768545801; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VsspK9mXYxJT1BEqTtrFtop2koHeo1JJJWzNKvqjwY4=;
        b=lIWTNwLezq7xj0l6crpr/gtdr2m9h80x9vGcvYUuNnl3kU3v/6PA3vzLl4iGE3wBpt
         1QWWIpiec4ODOdoT+7mG9FNXFbvvB2kvtWyng72qLZHwnJR5jfDuc63MEsHyPEghsTiY
         vyl8bOoCiAGpG+Bcr5MvkwjzZVLDtiXtkU8WoSMBg491dKy2S+zZTXUN6MwOfxrUWOXH
         7XkCQ85w2rEx87xa2Iz1D3ECsgItDfNBHnpRBxsek+1faCSn3dfTFJ7yFkt7rsNfFHDM
         sQPr2glgC8wvD/ogOhBAqTByOg62OpSpKTBILn3FZjvUE2Ntg7UTUGouV0+7XNwl/ZPv
         zlIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767941001; x=1768545801;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VsspK9mXYxJT1BEqTtrFtop2koHeo1JJJWzNKvqjwY4=;
        b=CM6YM9RjDSr39/myCYigwjrSiYXaQsj4puDogGAWHbF9lcVWTcwLhBfdqXdFsUHNRt
         vf6pV8yZ1INicLyZJXbLGUg+qe+quyiqaERXA9D5jChun15ClmEuchF8dDq8qEDFQEvO
         a/xl+wlhZOX62sTh0Zx+uI5zs/bRBsU3lZIHXZQ92rWBIL8loghMnYKPoD0AhedZNu1R
         xdQAVdA3bdvX3s+xwMydybb6+kTcSdKdbY0aCiB/D742W4GZAizgwRnLIAe5xhUmRHry
         juZqEgUxbtk3BygZAzohyP3BrERi4twAGgoNFmht8zawifEE9QWhFrYuBMPK268CPUk+
         +yTg==
X-Forwarded-Encrypted: i=1; AJvYcCVOmRogUbFNudvyHCjAU9rN0gsBXYVjN7KDqtVhLVFwYvFr11zS3ROK+bNCuDADk3xWbF9BvFP0gK4=@vger.kernel.org
X-Gm-Message-State: AOJu0YwbcQX3+IvP1925vAjQ8gwnYtPUhqMdrbC+mkrvKzoz37CyXYBC
	UwQxu10K7sUgmBCai/FB1Pr8eRiivUVOHBTdvMiRrfU7ArIXT1abucvG
X-Gm-Gg: AY/fxX4ly2+fnQXXzrkhBGKCcI4De1nndgHDRFFDF3jah0IR0bsz/Mmb6zHXaM3gKyT
	rATi11Oc+xyHCcolZpr/krac6Osf2+GOt84qd3UIFNMXt1RwX1k9Q+Fj565DTjHW+6s0pLOG6y6
	XalaGb76m+VGERcSlja237fOtIecED/XG5BMQYjRNdc//qohzveTPdqeNGaQq4hSSRe+srUtn5Y
	G+cVapxZfV70oCUcrmX1hSJ78IRlH++GAFA6hs4nXrLD8jx6uSHC/BvRd524GQVMLgV/lE3+aAO
	cFCZFnw9V4b9X7BXvHBAVvpmW5dE/Yc4aO8fY3F0y1w3GEseLFKBj02iEUdk7IE9MM+FaIlPxbP
	bwcQsC1DA4mlRO1j7oUMsLIbEKbclthzudbGh3OgW0BKqlLs/X+0sn6QAo3y2DwgIbjQj7Q1ONq
	2n2FmTooN5hxcvsf7A5/T+ka9ZCWYHtyADu9dvAEHNQociWRZkcCa2t6s3IRcA1Zszknx+Cap0q
	lVyoKragAmttRzK
X-Google-Smtp-Source: AGHT+IHMpc2tQLVE5fUQobi4Ab8JSRwHy7F/8+DZ7M8EiU4/G0sVtm7JCynMHlZaRWD5KhvizVz8hA==
X-Received: by 2002:a17:903:1745:b0:2a1:4c31:333 with SMTP id d9443c01a7336-2a3ee445ae3mr84294085ad.19.1767941000965;
        Thu, 08 Jan 2026 22:43:20 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.43.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:20 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 13/25] man/man3type/size_t.3type: HISTORY: Update first POSIX appearance of [s]size_t(3type)
Date: Fri,  9 Jan 2026 16:40:31 +1000
Message-ID: <3cf622ba3c3cb3a94491e80ca153ab29f182620d.1767939178.git.sethmcmail@pm.me>
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

size_t(3type) and ssize_t(3type) first appeared in POSIX.1-1990.[1]

[1] IEEE Std 1003.1-1990, Table 2-1 "Primitive System Data Types".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/size_t.3type | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man/man3type/size_t.3type b/man/man3type/size_t.3type
index 38338b97e1db..da67dabf90ad 100644
--- a/man/man3type/size_t.3type
+++ b/man/man3type/size_t.3type
@@ -93,10 +93,11 @@ .SH STANDARDS
 .SH HISTORY
 .TP
 .I size_t
-C89, POSIX.1-2001.
+C89,
+POSIX.1-1990.
 .TP
 .I ssize_t
-POSIX.1-2001.
+POSIX.1-1990.
 .P
 .IR <aio.h> ,
 .IR <glob.h> ,
-- 
2.47.3


