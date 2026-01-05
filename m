Return-Path: <linux-man+bounces-4621-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9A3CF2B1E
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 10:20:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 777A53003513
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 09:20:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00AFE31353D;
	Mon,  5 Jan 2026 09:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hfcbbnu2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF5F32FA32
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 09:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767604823; cv=none; b=XY/fItqnXLOW62aD4NjxurgE/CgTpXDOglS3DAPjvyD7KJK6+6xdibAQ9j8Z/FhUGzUScrKU4hUsnqIQm6PLXPS/fC0cpgpQniTQ50rdrWpyzjqrdO/V1HeMvyPfyC7KBDohYZnjIjTkX22QdXZcU5/IL7XsqrRmeC2iOlSTQ6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767604823; c=relaxed/simple;
	bh=jmbPSeM/AWkXh/kiZh0T7e4gzF8iQLw87vEsTLQpygc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NoSRDD/wwXQkFrFN+MMnC187RQLPFKD+HugFqC/a4BPArP7yDLms7QeHkN3KlCc0Q3hONyb51BJZW5i4iilKXiC+5Isp4UJyLvMNWcNIypkeIRKGVR77DYJK1xcyyqoGgngJg55Bm9eDUppLpaxRm8vJnNetqmwowyBWzrRh/OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hfcbbnu2; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2a137692691so160589305ad.0
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 01:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767604822; x=1768209622; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=e+S1BHIb5y1u7DF6bsWJAn0dU6yuxPV3HZjtM0fzHIM=;
        b=hfcbbnu2SeCltJEHs5t1ZsnvZ0lu0nGBFjLiH7ziWnBqxJrIEKp0eBUX3xQkMQF0OQ
         DQV0Y9rE9UVN3pn7w8JCh/DlsiPF0Nm/+VUtfNCeqpaO3pHln+OqmWHtTa8YGOILDXPY
         mfUog0FbA8clfZLkkimiGRiHsbSDjP0uxOcz8Lzt37XeA1HwYmGKIc3AWPYjRofJKdMR
         Rq6+i6WB+Y2AuZIBdLwTa0ERDdpyQx1vUEVvCTnTBvmvMlEhXPZz3PGQJrq+FWs5l5os
         vJw70GzUx63mPO5RW1k8trWVkA/7ZiAJdnDpLld6SnpHik/+zgPGfyyd/5jGqtTSTcek
         IDJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767604822; x=1768209622;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e+S1BHIb5y1u7DF6bsWJAn0dU6yuxPV3HZjtM0fzHIM=;
        b=BFCDgLQqOBOzkf3mccrWVeVsNMc71XHSy4Hc/mDM5OAHF1O5qz41NF+lLqbdPBUn5J
         2g3LYh7DyCKmkhfJhP53+QDk9OuUEvfsamI8XNIUVP0fqR4dkIVhKcCbbw3N9GhSgADp
         IjzsBmiP7867ckhKwS5GeDJfupHO2dXo7jWXFlyAcgEdV7NGWc78Gs+ANwXe+5pc0nA3
         0koz9jR/FCTHKAHUp1PHlDDncjCI2SxUq/3ZEe9YEZ+XRuoxNLtnQuPPJXkJH/p+n7Y5
         lxaVY9QeQzlaPiX2MZEVWADesARNgqgGaGtTjMy7Ys0Xhp+t+vsD0hk47u3MR5y6Hzi6
         fJXQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwAPhmRzSEMGMKfHc9uWGFiYsfmIHeIJwU9ocgDzKNygywGPly4zzE5mN6Q2WaimwFUiVnuduYMUg=@vger.kernel.org
X-Gm-Message-State: AOJu0Yzw9tVKevCxt0Ml0szBs5JxD3W9KEO+MhWNQb/hqOJ9vz6VGQEP
	xgooZU9JWkTo0kXvvAIUC4lDWidXuxG3aexU6FGQK442koC0YOWQKIzB
X-Gm-Gg: AY/fxX65ubBPQEZVvVbHf3Wp7VXMJ3+SHIaXiOHXw+mFYXyutxlxfyhoLoTJh6lYziE
	5pvneTc5BEIwQD87HPZxjn6JyF6HLLBD3eteWxcxsyDvB9b5DF2s5ddOgeAtwXJyC0QNYMolP9R
	vfmO7El7aj06Yw4lyjcm2mVifj0+Msp2TUYVYNdD/zHhjfuVMXLAqD5eIJEl9A9giYA1/ewqkyC
	Wp6Fktwx8CxPninSLHBNLEuVvGhhApxzgT3lomtKo5DPznzz9KIP3MTP/Rz3C5eZoHVmYHw6mZl
	kKQYoJW9NfULAwcCV/tyW7eiTtttpInN/5Y86kKetRBar9+2Sk4kZfjwP4NUMJzdJ+ZKP9k7Q6/
	9RrGHjbMp+KBJ/NjcRqGyRR729Cu+DXi66FWe407ZY7XqML3aPkxaWpInVFkDIJk58Tqf8+BUG6
	f0ad57yAbzWYfd2CP2xOSCXS7b5tCJg/MoUe2Qg1FLud97tJfw8n9XtpaES+6i36zyg3oQ9OyoJ
	ZT40gDXcQv5ke+M
X-Google-Smtp-Source: AGHT+IHascnALWIl5fTdGk7qBtOpbggiMtcEEU0qDbfDUmEIXNwwrc7ItqUMX4aWWN09OCF6WH67RQ==
X-Received: by 2002:a17:902:ccc8:b0:2a1:3cd8:d2df with SMTP id d9443c01a7336-2a2f2a3db6cmr415318265ad.54.1767604821523;
        Mon, 05 Jan 2026 01:20:21 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-a8d1-55e9-3280-2b25.ip6.aussiebb.net. [2403:580b:5de8:0:a8d1:55e9:3280:2b25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d776b2sm446173565ad.98.2026.01.05.01.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:20:21 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 05/12] man/man2const/IPV6_MULTICAST_{HOPS,IF,LOOP}.2const: HISTORY: Add sections
Date: Mon,  5 Jan 2026 19:18:41 +1000
Message-ID: <82a8170800bf0f1ac14762453f9877100e697377.1767599119.git.sethmcmail@pm.me>
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

IPV6_MULTICAST_HOPS(2const), IPV6_MULTICAST_IF(2const), and
IPV6_MULTICAST_LOOP(2const) first appeared in POSIX.1-2001.[1]

[1] IEEE Std 1003.1-2001, Volume 1, Chapter 13 "Headers", p. 281.
<https://pubs.opengroup.org/onlinepubs/009604499/basedefs/netinet/in.h.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2const/IPV6_MULTICAST_HOPS.2const | 4 ++++
 man/man2const/IPV6_MULTICAST_IF.2const   | 4 ++++
 man/man2const/IPV6_MULTICAST_LOOP.2const | 4 ++++
 3 files changed, 12 insertions(+)

diff --git a/man/man2const/IPV6_MULTICAST_HOPS.2const b/man/man2const/IPV6_MULTICAST_HOPS.2const
index 448467d7857a..5f03e3cf36dc 100644
--- a/man/man2const/IPV6_MULTICAST_HOPS.2const
+++ b/man/man2const/IPV6_MULTICAST_HOPS.2const
@@ -36,6 +36,10 @@ .SH ERRORS
 .BR setsockopt (2).
 See
 .BR ipv6 (7).
+.SH HISTORY
+.TP
+.B IPV6_MULTICAST_HOPS
+POSIX.1-2001.
 .SH SEE ALSO
 .BR IPPROTO_IPV6 (2const),
 .BR setsockopt (2),
diff --git a/man/man2const/IPV6_MULTICAST_IF.2const b/man/man2const/IPV6_MULTICAST_IF.2const
index ee269ccd9cc2..e7a324dca7b3 100644
--- a/man/man2const/IPV6_MULTICAST_IF.2const
+++ b/man/man2const/IPV6_MULTICAST_IF.2const
@@ -40,6 +40,10 @@ .SH ERRORS
 .BR setsockopt (2).
 See
 .BR ipv6 (7).
+.SH HISTORY
+.TP
+.B IPV6_MULTICAST_IF
+POSIX.1-2001.
 .SH SEE ALSO
 .BR IPPROTO_IPV6 (2const),
 .BR setsockopt (2),
diff --git a/man/man2const/IPV6_MULTICAST_LOOP.2const b/man/man2const/IPV6_MULTICAST_LOOP.2const
index 32edb88c6970..821c4d85f05d 100644
--- a/man/man2const/IPV6_MULTICAST_LOOP.2const
+++ b/man/man2const/IPV6_MULTICAST_LOOP.2const
@@ -29,6 +29,10 @@ .SH ERRORS
 .BR setsockopt (2).
 See
 .BR ipv6 (7).
+.SH HISTORY
+.TP
+.B IPV6_MULTICAST_LOOP
+POSIX.1-2001.
 .SH SEE ALSO
 .BR IP_MULTICAST_LOOP (2const),
 .BR IPPROTO_IPV6 (2const),
-- 
2.47.3


