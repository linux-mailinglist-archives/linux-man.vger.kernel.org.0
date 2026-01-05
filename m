Return-Path: <linux-man+bounces-4623-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6289CCF2B27
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 10:20:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 60A51300353C
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 09:20:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A97631353D;
	Mon,  5 Jan 2026 09:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z/zPNo72"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 809F332FA2E
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 09:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767604827; cv=none; b=LKnQGNhPC1wkxJVO4wFEfeLarPDOR0YWoyuXq9XBpfpKf9vm2AQCTrL2KUWSvLpCT5OZ2Fk5KX6dN3f5V76wxgj2tMVuoFuaSUstqjPsuaB1OvSTXWceEMOAekCmr19Y1V7DUdsNlJ7qfrzbc7b3H4VR4TZXMD39yj1QgXRb/eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767604827; c=relaxed/simple;
	bh=WKFhl25BeXaEuc4pWHS1olWkhJ2DJgRCnCS0ijYSoPQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AzEqOthWWRFrvN0ZYGjHYhyll0uAT/3VMX4kTYEdIIXyqdHIknov8NtRLn1YnoEJ8k7ziSom3d+riQYyIfA4Q7aD3LhBZUA6j4VmOBv8axJRrx1X0OSse3fqM+MugWUMVTkhKHRiBdVcbNyc0UHtzctf1vDY7qzbsdmutFtekH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z/zPNo72; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-2a12ebe4b74so246940055ad.0
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 01:20:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767604826; x=1768209626; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OYhkTpj0iJg/jSy9cQz/r0HlgEICW8M8NTd569BoSto=;
        b=Z/zPNo72CUlgWntSOezO6EarEEzIECApG4TLy5AzW4iEzjZBxU/Q/ODJNc/XV3UCc6
         n/tM7P9b9dn4l+9QqIaELEQlSwNn1KW6o96POB9iduZ3Ged22xRVG0b8RgNWIcDCT1GJ
         YoO1Z8wMgvnLKWpqlBkBVmiuObkT0l/xQ6kxCMgSCaH1SKyxT6pJPo8BwxGD3qPm201T
         PMwLmQha/kzCG8OoOLr5KjFljjETqDyxs8z2hoUFSBruxi2/QRe9gi1FWaVSNR8vd+Vh
         5XMWXWHARtNnX/pxjWd31xSY1L5VAgdjv/FPXIu4Ki6Gtbl2DVKxiGEiJt4IjNUkzsY6
         AIww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767604826; x=1768209626;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OYhkTpj0iJg/jSy9cQz/r0HlgEICW8M8NTd569BoSto=;
        b=LfFbKdrfXJ9zBSM984ahBFEsVlMwI5WhkyoXZzWnIOMz8oNnPx7zOoPwX935LmuvIR
         eyLBixLfo2ybl5oAEchVYLilhoPXJoifHQGE39a9iGSyZe83OUcwMZUGlXWbrZx6T8TA
         EL2ho4IIj8LTvn9YKjlmmPSXL2vFBxzoeBZqzta4Y6GOnL2WorI7z7BuO+ScsJguJpY6
         B1bQwcC+HU52VOFEVZXc7AFi+TSeLNXnRBnEwUE/rxts5mFG8IDg8ol0aHEQcWZSZXez
         Uj1lfULSUFKgyJQ8GSpiJqLNlZGvdOiC19vDl+S/QBEmzIL2gDcB55GVKPiFLff7cOux
         VX1g==
X-Forwarded-Encrypted: i=1; AJvYcCV8mowcyHSz4AMnXB5pQEJKQBM/+ih2bV6P3vhiME4z1kC6zkAAqMortSwjrpbdLd5DKzPh5AZmyXM=@vger.kernel.org
X-Gm-Message-State: AOJu0YxkbDj8bJbEugEVWKZyGoafG7M5waVzP6p1QS5xwN+47HhTLmkZ
	9cDvyJfATYWgY8Jzc06lxmnC4J2VuWabn91iwP1wm/pYsSbpsNqXL7QY
X-Gm-Gg: AY/fxX7HJn5ejJEjO3G1LFsQ57jXSp822y83iMUb4LOPC62ckr1KHcbiLYaxGA3ePoL
	eo6+QbspV322J/B/lT2QT3Hz0AKhdWtDQFoYhPVSEjK+0Kk58a+BUlSq6vpsW26y3vhL6chmPj9
	ZHD1oOkBTQ+LcDoHDA7wCjrwhU98c3HRxocKOn3C68YbcFgBAldo1i7iNabmMukah3fdgu0h6A7
	OGuGDtoIuBPtpxzxQE+vxWByAdvS5yhe1MGPbsBA6NhGyx/h7B6G75DVaGZQaYxpJECqRs0bC4c
	MPO1kAKhnlJHbsAvCjlPcDHs65diLoyfaCxIXDq1bOJNU2v793z8p7pCyv5+gA3O4D80Xm9zVxU
	L363Tc3F4LvCb7R7qhfcOwhGI7TkhrqdOJNu5J21tSUTxTtwPv4XvMEP24UhvE69r6g2sG6PGLM
	QeJ8rR9VTKYhmKfg+OsnJVPi6Vs5zhjS4D6OO6PU9la5ScyxBel9aHUz+P+pL21o7slctMoxU3o
	tMrbQaOF9DMuicPhw5QqEEpvIM=
X-Google-Smtp-Source: AGHT+IH6xnL5Vx4N8pXMs7sQOcXBWH8tNT+Aqm76IQ0iZSD2SWjeTm0m9oTh/FDMOUB2UEzRCSkC2g==
X-Received: by 2002:a17:903:4b48:b0:299:e031:16d with SMTP id d9443c01a7336-2a2f273827bmr468206725ad.33.1767604825875;
        Mon, 05 Jan 2026 01:20:25 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-a8d1-55e9-3280-2b25.ip6.aussiebb.net. [2403:580b:5de8:0:a8d1:55e9:3280:2b25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d776b2sm446173565ad.98.2026.01.05.01.20.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:20:25 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 07/12] man/man2const/IPV6_V6ONLY.2const: HISTORY: Add first POSIX appearance of IPV6_V6ONLY(2const)
Date: Mon,  5 Jan 2026 19:18:43 +1000
Message-ID: <bec94e780a3cee91f56c41b42dc287783686a8b9.1767599119.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767599119.git.sethmcmail@pm.me>
References: <cover.1767599119.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

IPV6_V6ONLY(2const) first appeared in POSIX.1-2001.[1]

[1] IEEE Std 1003.1-2001, Volume 1, Chapter 13 "Headers", p. 281.
<https://pubs.opengroup.org/onlinepubs/009604499/basedefs/netinet/in.h.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2const/IPV6_V6ONLY.2const | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man/man2const/IPV6_V6ONLY.2const b/man/man2const/IPV6_V6ONLY.2const
index 4a11b1847bf6..bf8c9aeed560 100644
--- a/man/man2const/IPV6_V6ONLY.2const
+++ b/man/man2const/IPV6_V6ONLY.2const
@@ -43,6 +43,7 @@ .SH ERRORS
 See
 .BR ipv6 (7).
 .SH HISTORY
+POSIX.1-2001,
 Linux 2.4.21, Linux 2.6.
 .SH SEE ALSO
 .BR IPPROTO_IPV6 (2const),
-- 
2.47.3


