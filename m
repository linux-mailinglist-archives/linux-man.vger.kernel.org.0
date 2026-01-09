Return-Path: <linux-man+bounces-4735-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2466BD071AF
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 05:20:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C791301A1C8
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 04:20:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62D161C2324;
	Fri,  9 Jan 2026 04:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jHtfhrhC"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08CA035950
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 04:19:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767932400; cv=none; b=M3c0g+6/Qu/wE7h+MKjHd7MNmJZPm5x33I4n1YyXNEdVdfB9apQ5hMfm5cEg9lhE8lnSWB3TlUgsvrEaI8ySjKbWwycB/VUeNTRx5Q3G/Z1BG5N8gzOHAbwuojSJzR0CJpIyvDRAAOVEvHMs3owBtw6MI/fDOvPXDecW/RL/kEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767932400; c=relaxed/simple;
	bh=vYrC6ZRZ1Kq0N9GPu94RKpi+YlS6jSOk+xdfy1hB0/o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jxR/Q5hjT6QfdFgeD1uRFG8Msv9jAh/dOTvJLtqNgSWg+wwBvc9CRXsQSo0QGQX+b6n+r+cEs7tnahmrAOUYyoIMSJbVELqovZcDeN2b3J44sF0KXWAbArALUm5Pwik+ischRsT34VqkRPxoO+h4LYw4X0gzdlPIS/Ji1q57Tis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jHtfhrhC; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2a0d6f647e2so41077975ad.1
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 20:19:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767932398; x=1768537198; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yAzyyLeebi43VrP5HTY1I2J4eePdn9/QngOiFvDKsZM=;
        b=jHtfhrhChw7wJJk5rLIAAu1jIJoJ9kVmfZLoqfWVmMm4Ia3R9i0EvekUNMehOAA2fs
         B+fYmR5RZhHEvQpE1OUSjUeOwlkZrCWmDf3NVY3CLBZoeij0Sz2mSS1REJTGA2aO6Vtj
         AhjdZrDpOh6mvLhFQtl9Eyyd6thY/BGXwR3i9TI4UyRFurbSucCRW4Z7TD5F9R3t+0Af
         Kf4jlsqCpfEBBfylsD6CyUXhq6xpmfgZpHMTQQ5oeRVdtIddq2ETcO34UZANaaG15h/X
         Rrco5+CRPMy2KyvNaO30by9cj9kdMPAm6OWl5O1Hbv7Xu9iwAab1kgxFrS/zl5+geSlB
         yZQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767932398; x=1768537198;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yAzyyLeebi43VrP5HTY1I2J4eePdn9/QngOiFvDKsZM=;
        b=PLC87Ve0RF3dejzt9Y045a2krcPt6VGz+aj6jPVzuk9UUdsnNnZzGn4CjEMol+fc0F
         qiVvUJyYyDI0lqvf0mMmhPZEvM9Iwh6WrfhI6dEfPkAByCyQ0u/CzJgawiTk8CKEUxHe
         SDXE5Hp108h6Nz3R6mnTTGQLBnOzlbQP6A85gxPOXb0Tbryd9swmlprMDFoI6k0BF6Rj
         Eq/xxvLHuDeaUEF8tArh2NPuTMj5gnz2W5ywN9/99cALrWRGcPhglIq/Jx/kV2f5p/Ax
         BF2VnkjZqDRK27ml1ob7pvEekkBsyFiCbXNFyUfhCm03phVI6NxTQRu0JYOVekG1PYv4
         8ckA==
X-Forwarded-Encrypted: i=1; AJvYcCWUltrWxcuvN3o8ozUTtOpnAoPJrggyNFmvFMzL1rvpJosrLlOnNJQGA2fk93/ahkByh05SJpO0zoU=@vger.kernel.org
X-Gm-Message-State: AOJu0YyMtOAQY/LvMOSWvSvYKMIYPE45h+pyI/Bwjm9/SzfLltB+De0u
	XWZSCjoDu4SIE7rW94cktRny8Z68Bpxv3So2cijaXBm+vOH+EZLVK7+m
X-Gm-Gg: AY/fxX4kFZSVNBLhaqJHtdqIn3P6yUrVwEG7qLHIgN/OCfSDKeiVxvkyecOLWe0uup0
	6gLyn2I4wDUSvrIwVjBHzMeExwSjDovIjP9167IhXSW8OLVLURFtkrPSlpV7fEvnvYcvsSoW1WP
	I30KPJ1ToQkpkSTVyf6WN97cJf+d8b1VUqFZvtpEH08N6QoyW2m51G3gFrKbnb2olczHjP93hVH
	wkByssOJdspu56U9mrJizNQEfMN1zfAPRxs3TPrda+ds3lz1rtyGLuF0suT7GV/mzl0MUmOc03U
	yRF0ALzWk9IxKL4ivX0aKNANvrJUJEhLet11hhPz8SFHMDjTq31eN1RBSBCdOtQ9Ay/k8QvazrJ
	GBeS/PuwASiQA9VNRemTzwtBmGLhsPjScFdgawTyLu9+zcKzLDHNQRLsbjF2x3mxRZOngDZRejY
	ZbBy4F0EXTx6jSToHqAG6DjBc8TLn3xyPu44Cwk59CfABooi5ko2XpR7CKViXAiC1RT31xJ7soe
	tFzgBwxXd0aVrtG7w==
X-Google-Smtp-Source: AGHT+IFj9oefrSeqX2d/54RYk3FEDhI9wD1E9pROgRSGFxLgM+EEHggcpGdPUM5vsQ6TXQoRP3RW9g==
X-Received: by 2002:a17:902:d50a:b0:2a0:c5a6:c8df with SMTP id d9443c01a7336-2a3ee429962mr85446095ad.21.1767932398145;
        Thu, 08 Jan 2026 20:19:58 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-1ba5-4bb2-ac31-391a.ip6.aussiebb.net. [2403:580b:5de8:0:1ba5:4bb2:ac31:391a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c47147sm90098055ad.22.2026.01.08.20.19.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 20:19:57 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 02/12] man/man3type/mode_t.3type: HISTORY: Update first POSIX appearance of mode_t(3type)
Date: Fri,  9 Jan 2026 14:18:56 +1000
Message-ID: <90f54d80c479ed70659bd41287a5b0850c1bac0c.1767931376.git.sethmcmail@pm.me>
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

mode_t(3type) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Table 2-1 "Primitive System Data Types".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/mode_t.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/mode_t.3type b/man/man3type/mode_t.3type
index fdfea91a448b..cea959f80f03 100644
--- a/man/man3type/mode_t.3type
+++ b/man/man3type/mode_t.3type
@@ -20,7 +20,7 @@ .SH DESCRIPTION
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001.
+POSIX.1-1988.
 .SH NOTES
 The following headers also provide this type:
 .IR <fcntl.h> ,
-- 
2.47.3


