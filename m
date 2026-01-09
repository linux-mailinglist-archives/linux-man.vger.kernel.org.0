Return-Path: <linux-man+bounces-4742-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 85934D071C4
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 05:20:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46B58301A1B6
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 04:20:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2162E1925BC;
	Fri,  9 Jan 2026 04:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P2AE/qeM"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com [209.85.215.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC66E500958
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 04:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767932414; cv=none; b=FHS/pO1ReAvNYdzrJe+uVOgHp7EUhoRNqWeMyNeefiTodNF3bL7qvp/ptgJj6xhs745f07yg8NL+O1eeApdwjHp/a8c0SBy2iQr5e0UecGAGV0chs7lkx2jFKVU8ILtCQ7bs+mC/AMj3SUAlkH3zOrITG+U/4sAXEOjpLfyDwls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767932414; c=relaxed/simple;
	bh=JyNyHEC8UiIjZPnwrjcwwyP1R2zWcC5ZF5Qr29o3P/E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=h8B9VLO1i0e7XxGdPTp6ncdZmPiVHGJ7VkCDETRCSZ/+YWPtSipdWl7XQacwxnupdhE3GzO7jpxzkifTOgTQtBvUj4xMy82i8KfMOm/+nTEQL/dCxKdr+bnri1ZPzW1F92mOIqJ8l6vzHwzScX2RjArjfkOUcRDEFV/pH/Yw1kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P2AE/qeM; arc=none smtp.client-ip=209.85.215.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f196.google.com with SMTP id 41be03b00d2f7-bbf2c3eccc9so1113130a12.0
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 20:20:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767932413; x=1768537213; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+lFzUZ8HC8h5FpSRR6tHBIv/SkLjocbfcB1WRBSCFVc=;
        b=P2AE/qeMSuEiTIvTgDh1v6TbFRHiztuc89/8th4Qm+yFDJXJH0fjbyw05mdX6kTEz8
         /QDW3ENdBDDckIWsVkDik6PTxrfrG4fHoVKrDM4yTZS5iiec3+Nna1z4qCtuw8K1f8P2
         eFhiGudgZfibI6j9k+AJZZy9S5f3U2DYVK+OkflMj3jPRM4AZQIcQdzSz66KSyiW81Cq
         UJYG87YzZP8ok7L7r7gJ6sCGKuvTUTcRId0AgzpwuM+uPExeQVGO06F1qrJZrQBiJdIA
         xATl0Mf+K+0YL6+qW9sre9zQQLNw8Wm1ZnkItLQMuniFxbTlU9YU+VE5hnCV2dzdZ4u4
         E1BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767932413; x=1768537213;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+lFzUZ8HC8h5FpSRR6tHBIv/SkLjocbfcB1WRBSCFVc=;
        b=EMbWeuA3k9sDY8xx5D7WKYGKoFufrxZJinSN+j52x1Hdm/vyhSpiQclpPJiWuWyvKp
         HLib9H5YHP0ZSU6GiXR15ETTNFJ2/wucfjaOM3MHy2GtiIHo37E7Rb949JloTNxfSsJp
         QlPvylSCJiuX3ysxB4E64n6M/GtIrF/Dy0oyhZo/iQvhDSdGIG9Vl6QcVsXPmkviFmrH
         6YEqgOmJqlGKnRCbFetYxrA/j7Bu1sjA2sXjGa3x3rseFY+/KMA2DJJrQw7wZchIFved
         i+vtGoT0a7f9d0DnzenpU3sKpQaGAKPkojX4l9CGvTXU++iXyd5BW79kMkvPlWnXWnJH
         qy9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVu8egQen9jV9eOqSxkyaUuRep4CF1ocOCRfidDe21JM5BklBRFRXcwbYApGoMJBLT5kVg+N4VQdY8=@vger.kernel.org
X-Gm-Message-State: AOJu0YybdQ/qoYuv4JUd0lEsDMkbBQ/ib1AkKBkKKnSmb/YtqaHFZYm2
	EVI6FySnaoPYh/0ZILf1MlUh5CQIa8dQjSwdOdKoluwtaLz1tDfXZWSh
X-Gm-Gg: AY/fxX5L2jJZS4BHajpnHia29ecqb+m2/LxVuypJ2qpHHnwsX6Z4rz0yOWGxvJ6Vebq
	IWbQaCewrHKK/wGAj9zaC3ICn4iP5D408AgMnGOLl8JapMKduAdDvKQVdHdj3fi+NSBK4FIp3hE
	FFCMRhiaQMfqKnI/tu4aLa03jsbkVEwDHIJ17QsJyJ/syVDQjM7G1KY5EWTe7Pai2N5e+h5y+Bz
	n0My1d+Y/FJmHhneHLULyG9Hc3b3lj6NsyEzhSTQhPimyw7t6Y+esTQKVwTiLfLMJcEwPrX/wMU
	ZWyin9riKweb9sPEoNVRgdcSv++6+bPUYSTBXy4AWoHsrs0h7k1wPzLKFBVX8JBDmFtROKurTEI
	uPpF77t55uWOGqrEgcP6AjZ3MTwoSB68bSKDer/I2o7DPlVUwSFeUL0FjZ6hkB3r9GlXH15Ewv1
	S1srUETmK22FjITlHoPLpUgoVJwXfxhtJqsiKf6Yb+ymAitAjxc1S63gaY40Z7YdmALBJdG+Z9z
	k04ZTeiIAwdUcqcUx3R5YaKFWjq
X-Google-Smtp-Source: AGHT+IGhv0ReZG9+0KsKflzNBfXyxEp2DU73Wlg7x4mbaLSV9dsBgveJtoq/LjcdaKq4BkjuQlxd6g==
X-Received: by 2002:a17:902:e5c1:b0:2a0:b467:a7d0 with SMTP id d9443c01a7336-2a3e39d8350mr123067795ad.16.1767932413279;
        Thu, 08 Jan 2026 20:20:13 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-1ba5-4bb2-ac31-391a.ip6.aussiebb.net. [2403:580b:5de8:0:1ba5:4bb2:ac31:391a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c47147sm90098055ad.22.2026.01.08.20.20.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 20:20:13 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 09/12] man/man3type/stat.3type: HISTORY: Specify first POSIX appearance of st_{rdev,blksize,blocks}
Date: Fri,  9 Jan 2026 14:19:03 +1000
Message-ID: <a33e91f7c1b702f405fd33603f8d2d18e651e755.1767931376.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767931376.git.sethmcmail@pm.me>
References: <cover.1767840410.git.sethmcmail@pm.me> <cover.1767931376.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

The st_rdev, st_blksize, and st_blocks fields of the stat(3type)
structure first appeared in SUSv1.[1]  They were added to POSIX.1-2001
when POSIX and SUS merged, but as an XSI extension (still SUS-only).[2]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 4 "Headers", p. 830.
[2] IEEE Std 1003.1-2001, Volume 1, Chapter 13 "Headers", p. 356.
<https://pubs.opengroup.org/onlinepubs/009604499/basedefs/sys/stat.h.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/stat.3type | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man3type/stat.3type b/man/man3type/stat.3type
index 21610f7ea723..55294599638a 100644
--- a/man/man3type/stat.3type
+++ b/man/man3type/stat.3type
@@ -144,7 +144,8 @@ .SH HISTORY
 .I .st_blksize
 .TQ
 .I .st_blocks
-POSIX.1-1988.
+SUSv1,
+POSIX.1-2001 XSI.
 .P
 Old kernels and old standards did not support nanosecond timestamp fields.
 Instead, there were three timestamp fields
-- 
2.47.3


