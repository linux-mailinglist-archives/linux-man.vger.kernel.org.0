Return-Path: <linux-man+bounces-4736-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 02460D071B2
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 05:20:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B91E93019BA2
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 04:20:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FCA11925BC;
	Fri,  9 Jan 2026 04:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c8rvGy0j"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF07635950
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 04:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767932402; cv=none; b=IMWvyjgBxDg/rRJuk8Jq9u1h+dxO3gJo6BS1Vy8u6vtN5xYzJnRQvaJ7hs94BkpYBVH4kLBS1+8Aoha7vSmAY7Y7T3pnqwquRcxJS4dTucFs3NeQ+4oWiZQW3IAV9srRwSJTT9caIUYatmz+4Uyj2PBegOIUT0usNf+0ZKO9bTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767932402; c=relaxed/simple;
	bh=MStZ05hbOethxCL3FXO6DM/qxIledsW8WIoikyCaAFc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WW7AuvqAVlk91v5T6wBJ7zMNsZN0q0NUCN/ppEuAeX9ciA+rNSnzXR2UP+NkV1Okzz1lDklFPZoZtU3ttgkdHKZkIWaQD/f229NGRhUzJvnjZpkNdcnm4d9E15ycj7k2kukmjYU+ILmsdsAD0MpsdhNgdn6YfkCH9sCH0hJQBbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c8rvGy0j; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-2a07fac8aa1so29858355ad.1
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 20:20:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767932400; x=1768537200; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Qn15EL4eS00Ci6BIdi/ULOP5hmRP7vvyULzbZtXk7WM=;
        b=c8rvGy0jhOVdlFQSjAiVo7fjNv+0AsrPuV+SeZOXV0/W0/FhbUfnk+dRDxCbumtfKd
         czn1BdGu03wKwmhLCM3p086WNm1tuX7RDvfjNHp2/9ApMplCc+5tL5qiJkERbEpTBURt
         GAv4IsbrQ93x5vcAsNDWdhFyLlG51l++MajQiUPlmQE89dheT6qNuA1+lRXgq7vTDdkU
         gbUDOcTkhZweKv/7P9PMIeWT3wLs/dJjQXf8buYtfTLClFyumhZuFAjb2G+9FXNkCoZ8
         MYqTxPkMUa9fRWgfLBJ7EDpE/FBaV2k3YWRg1q/U94+hHnTJYyV99cIsVAljL2VxnEoI
         0lBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767932400; x=1768537200;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qn15EL4eS00Ci6BIdi/ULOP5hmRP7vvyULzbZtXk7WM=;
        b=UOEaTXRbF1cGEx9ZH5wSL4Xnym4bWcE4ApwCjRdsO8SJo9Gy6ipK1zMzJicyINFSj+
         TmNRJh7FMA5v2DvdBNBxIR40rpj9I2j0hz371DRjnurzLNJTewwLLEW7AI4tkHC8s1AY
         SVI8kLpiHitFZxDLSLq9UDS7zU3iZiv4Xaq9B+RvJZixh5Ii7+zK4+bmQiL42KsXpSl2
         elWzbIfnO+E5GV+hEkGTXoTiwrtr01wahbMkc/pyB8CYvPscNiAH+tHMiUfIl14IoLSO
         ggApKq3nqMSNVar9hIwEsbebPraVdB6c1BOfdbefxfx6LRta46k5gSHL0c9er8Uystv8
         sukg==
X-Forwarded-Encrypted: i=1; AJvYcCUfUYbL695vwS7gZUPrWdGHbsRknxcnokVb6Vz8/dRG5Mg793qhAl8a+XHtfvjUg8aBrPm5e9rYFpg=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8u/BlO8OkiZOTqhHmPEq5+xCdhXuJaZoyOBDUngYcUkU/jnwh
	MdnWC4T6Qtm7PLe+mRmUaAAdea6w3GuWOKQ27HGh/WSU4bUlPSrxKH8u
X-Gm-Gg: AY/fxX5vAf4jmGrHNnFf7LI+OgksMv9aH0gvKIL/yJAZTWwlA/Ic9Hb0f5y3cjcwCP8
	gsdo5Y98ngn2s2iCSxfqcYKMWsyxOqndc4u3FwmE6FaNgxB2RGEzQtwG77iGBGMSKYrwHkuMpVU
	ADw78KdZwflbg37gn7fydoMmXBFnWa0Ul2eE4M8G9RhcNcB7AC8ezxNnx9PxUOhDBeLLgBxVWd5
	ToKobOEeNtQzgumKIMQ+kuVk9T0qcdBflKT09/4SdzWXbO5OVPrFSPG1RP3YHD6l9xLECz/qsxG
	wSdcPicBZRLrezIBfK3aeEH/py2wbynCCtJ0M1gnrzqXyqV4jl6WMWAxgqR2Oeq++hO5ENiYord
	X5iEOV7AJugGxGrn0d5ikJz8+IlrX/Bu60KJlpSSsoSR9yFCDI6CZKbSI6F7NRnpYN9VQyfpTfb
	k16o9ljbrNlYX9Id6szn2PmN+orWcHlcg24SPo6V62G7fuJakO+zp29RZpLFWYvzs46ChEF0PNB
	gEKVJ2I1gqdOQBJGQ==
X-Google-Smtp-Source: AGHT+IF501DU7ZCNYcIDQ6pD5UyBzI0QtMbzwSVBa5PPgC2AEhQqL3+Yo8GU5VUheVjbqn9HVDqMbA==
X-Received: by 2002:a17:902:ea09:b0:295:738f:73fe with SMTP id d9443c01a7336-2a3ee4ab6a2mr86854295ad.30.1767932400279;
        Thu, 08 Jan 2026 20:20:00 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-1ba5-4bb2-ac31-391a.ip6.aussiebb.net. [2403:580b:5de8:0:1ba5:4bb2:ac31:391a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c47147sm90098055ad.22.2026.01.08.20.19.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 20:19:59 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 03/12] man/man3type/off_t.3type: Change VERSIONS to HISTORY
Date: Fri,  9 Jan 2026 14:18:57 +1000
Message-ID: <c1498253ab68f6eaffce880c490a11fb1569d533.1767931376.git.sethmcmail@pm.me>
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

Fixes: 4131356cdab8 (2023-03-30; "man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections")
Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/off_t.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/off_t.3type b/man/man3type/off_t.3type
index b0eebcf4af0b..9004971d1039 100644
--- a/man/man3type/off_t.3type
+++ b/man/man3type/off_t.3type
@@ -46,7 +46,7 @@ .SH STANDARDS
 .TP
 .I loff_t
 Linux.
-.SH VERSIONS
+.SH HISTORY
 .TP
 .I off_t
 POSIX.1-2001.
-- 
2.47.3


