Return-Path: <linux-man+bounces-4620-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B23CF2B24
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 10:20:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 87E8D30019E7
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 09:20:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAEFB32FA2E;
	Mon,  5 Jan 2026 09:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J1/62sc4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0C9E330646
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 09:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767604822; cv=none; b=a8juDXRtCGoI29+u8EgLJ3Za/+2PM+YOlPMjJJ4Jr4uGZZCGswCn8nRjIljYOKGRtJQ4FsB02SfpRo063uZhvAjFQl7LNO5hNE5QKAC/TgwXkxpkOvt+7lw/DPDbpwluksWAmDZFTkoKgxwFtxbTqzWvHk0Z22OQbmRouvSX480=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767604822; c=relaxed/simple;
	bh=HrmbItKJa3Sdeu+XGWc8gCuieeG7rqVylg/lu/tnydg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jLaKkqd8VUZBLlSQ7HVxx/dAzekqA7Rw94nKvLAJV0JJ07qWMK+T3SJZ/pPVQBliZeZAiyO0e2Yl7x2p/QbilfqekabfKH+d6gmOoiNY91gwUPhF5DZxj1RAAXGQWxDZ7MbmMrkWHBBm+aMFrbivKx88H5iL9KzNwHAplWqO4/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J1/62sc4; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2a0b4320665so214829265ad.1
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 01:20:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767604819; x=1768209619; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nz5ETLH5bfVXF2wfDD8C/iwK3pi3KDmIUgAViH5dXF8=;
        b=J1/62sc4XsL/zy/vY60d3ww5NE00d71AuFGmWgcZrasiX6K8P2n6WemzpnIckjxgr2
         t4rpg1FEBKDgcgANzZzDVSR9+6LmyZ2Cbbz3GX6ZJyr8W1370i0zvYdibJt7+qBrGFac
         g+jzoz5V18QOoJD077ympvf+9f9aO0QbOd/KkOpLY4s6Q9Y5hymVzkRLW620ouK04H0l
         XJZ4GZ8zJtJn5827M2VgB5Kr2AbyHaFtP0RTxxLEA+QmXQlpB8k3gE3xxO8gVMXb82Nf
         F8RPYv9VcBQQ6nVW2bxzHGDfWeHb07F/CBqDog+mZG3fohVTAgV/R5L7gqygotk+KdgU
         SALQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767604819; x=1768209619;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nz5ETLH5bfVXF2wfDD8C/iwK3pi3KDmIUgAViH5dXF8=;
        b=Is2kiQ6Jii/PONnvsdrez+n49JldLTtnX2MTtXj9+bfff0PktMWuLc/THhNk8VQsmh
         H5QcZ4obzbFu0Md0F6Z2oNu+7MbWe40githt/b9m6A06gZsn4hvanui/1tdDGh8of4ak
         HWEXxNiu00qxGu+yXQ+WZcmkbNeHpmSe3nStJpOSdUkASrg9fumqj1J1QiPa9sujq37o
         jHYbKZ40fdqzIYk0uqG5c/NNXiiOeJ6V/q7j6bF8MwYqyWzx8UBIir5yOXkJS89LaVyX
         CFHnnHQLr4Y8t7hFdMzUd/kwSU1Oewrydy2pWSh0NFfiy6LFg2Dc9Gb1DDCxBqT/34ha
         m6+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUE+ejVGkVk6RiMwhx453wU2RNRJhzrE1VuQJKlRCQOvsbCs1P/en+chCarsRp4SJEdya0UVDQsccw=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8FKNGshvJNphb5HI5i/EwUPwDpu/PrjDL8rFcQDdFxs0MZ5IP
	8EWGg8nR+fvGJ7Tp27rg8yBWG0RVqvaCtxI3N8+m1XqFopZsxoJezxV/
X-Gm-Gg: AY/fxX4Dtd0xiOClrv/x3L3ri3NKrXjRWI8dQDvNWzXkw2iA4E2/7aLpgYOSsaEvW0m
	kwq8XMLINTU6E/Nxm23dSDpHYWtlP5vxmk7RQiCDZnxefkHaZarj96qjDaRdQsZF0bK6mLjWXQT
	N/iJBsN0ID5yRn2JiMEPYuziiGmFOpn/RnGkU9nWFKHQkbZDKGnEd6xC24CfaHA/Oc2sO7DceLv
	oMAsVhg91ATjSva3GqFYpSPBj60/KluBCc2BaFuejjRPKxYzDhb0RbhaS9DlV7ZeVXnGfjP4JCd
	24PLXwXO+YSTsXI2DhHwsWrd9PACBTYVfQx87c1mPCkpJWaWyRViH0TJ2A53+jxNgMMZ48lwCvL
	VKZCVlfyIlrqJCuFXQTQtqxN9QsYx0nrtPtfYGqERcJfJfnrql6NkyF9wgNFmihIp4y76aOVf1a
	ZSZpOgGPJS2TDZbwzv8wn5YLENSYgYedmXNtWJvvfXm7T77rghTbMnIOpyaUefl2PIDNoEgPkl3
	IkjhWFvyVWi34Bt
X-Google-Smtp-Source: AGHT+IH0uWzXnftNVPTdhwFSJu2hc0/T83pGJFRN0OBQXnSLLD1EG7GVfzoMO9oV5fjCfBRomi7NOQ==
X-Received: by 2002:a17:902:d2d1:b0:2a0:980a:4f0b with SMTP id d9443c01a7336-2a2f2a4f5b8mr526620115ad.40.1767604819382;
        Mon, 05 Jan 2026 01:20:19 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-a8d1-55e9-3280-2b25.ip6.aussiebb.net. [2403:580b:5de8:0:a8d1:55e9:3280:2b25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d776b2sm446173565ad.98.2026.01.05.01.20.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:20:19 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 04/12] man/man2const/IPPROTO_IP{V6,}.2const: HISTORY: Add sections
Date: Mon,  5 Jan 2026 19:18:40 +1000
Message-ID: <355603eae66595c24a2edee87d8d51b7c1ebfb7f.1767599119.git.sethmcmail@pm.me>
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

IPPROTO_IP(2const) and IPPROTO_IPV6(2const) first appeared in
POSIX.1-2001.[1]

[1] IEEE Std 1003.1-2001, Volume 1, Chapter 13 "Headers", p. 280.
<https://pubs.opengroup.org/onlinepubs/009604499/basedefs/netinet/in.h.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2const/IPPROTO_IP.2const   | 4 ++++
 man/man2const/IPPROTO_IPV6.2const | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/man/man2const/IPPROTO_IP.2const b/man/man2const/IPPROTO_IP.2const
index 56bddbbf66df..50245fe1fc01 100644
--- a/man/man2const/IPPROTO_IP.2const
+++ b/man/man2const/IPPROTO_IP.2const
@@ -134,6 +134,10 @@ .SH ERRORS
 .\" .SH STANDARDS
 .\" IP_XFRM_POLICY is Linux-specific
 .\" IP_IPSEC_POLICY is a nonstandard extension, also present on some BSDs
+.SH HISTORY
+.TP
+.B IPPROTO_IP
+POSIX.1-2001.
 .SH SEE ALSO
 .BR setsockopt (2),
 .BR ip (7)
diff --git a/man/man2const/IPPROTO_IPV6.2const b/man/man2const/IPPROTO_IPV6.2const
index 7d0a10b8e722..6b22bb4864c6 100644
--- a/man/man2const/IPPROTO_IPV6.2const
+++ b/man/man2const/IPPROTO_IPV6.2const
@@ -151,6 +151,10 @@ .SH ERRORS
 .B ENOPROTOOPT
 .I opt
 is invalid.
+.SH HISTORY
+.TP
+.B IPPROTO_IPV6
+POSIX.1-2001.
 .SH SEE ALSO
 .BR setsockopt (2),
 .BR cmsg (3),
-- 
2.47.3


