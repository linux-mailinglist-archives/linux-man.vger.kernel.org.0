Return-Path: <linux-man+bounces-4715-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDC9D00C31
	for <lists+linux-man@lfdr.de>; Thu, 08 Jan 2026 04:04:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 206593002B91
	for <lists+linux-man@lfdr.de>; Thu,  8 Jan 2026 03:04:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56C7A25A659;
	Thu,  8 Jan 2026 03:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bZQiytUq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D6F3A0B24
	for <linux-man@vger.kernel.org>; Thu,  8 Jan 2026 03:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767841440; cv=none; b=GYijpCM1XQzUUageoWrJmSztvhJ2tkr12c5cEYo2CEJ9D2YWE7pK68feJb2Y6r65cWqNg3ifUKxFGGFnuYY0tKATQ/hcXw0XzDYsvIMtGoKEsblRjurpl/3QfpsJzyU0DmcZ4Y+24bZT4PLiWm3Qx/dqVT/OZtdnzc7FMV5NPxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767841440; c=relaxed/simple;
	bh=vYrC6ZRZ1Kq0N9GPu94RKpi+YlS6jSOk+xdfy1hB0/o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=k1mGu+nRTS5bTlCpLk7WiweHsWwhujDHaOmm2m70TAs6N2aVMEf96u3dAkahbB5CrVR//LcN+ceFojgG4xBPe3Avojuf8wHMzTgRQo2FtypnsEUuU1W9K3bH2rVpI/yOVQhDt6NrmwBtwfVGjSNOpmGn0hKXl1i6p5XM6YvmId8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bZQiytUq; arc=none smtp.client-ip=209.85.210.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f194.google.com with SMTP id d2e1a72fcca58-7baf61be569so1938282b3a.3
        for <linux-man@vger.kernel.org>; Wed, 07 Jan 2026 19:03:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767841438; x=1768446238; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yAzyyLeebi43VrP5HTY1I2J4eePdn9/QngOiFvDKsZM=;
        b=bZQiytUq24ZDIN0G1bqdB1UBwjjlIs5yINTQjBb0xSJa4YYd5H3+YPDbR3/Mzhytus
         iC2U8caGF8Nawe2+peRwM+R+j1bk9jW8SeudNn/HhLRIc35vQ6AnIcyONr1NyMDpO8l6
         bz1SJ4y7iCIgB5sljVNPmpynWcWN+Lg1Fq4SibUSR5/uyiMJGAJUIjEylrOs1ugSYUyD
         j+I88cJtBj4P1+TTbdIGP7uYEPBYzrud1FkFNzWAi7MIKrCStvH5RS+dgUo7ussQDPkD
         FnsUY/pAtdOHxLtiZwqVICU3rvJEuaSgBnBge2o+zVxSRkW/ECBrpq2U0YRhHWTZxzIx
         37yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767841438; x=1768446238;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yAzyyLeebi43VrP5HTY1I2J4eePdn9/QngOiFvDKsZM=;
        b=OVKOkBn6bIN7DsO1Hp9K9saKGt2tPuyIFtdArMUnT/HuuOEsCjR4C2twa/qORhNDWJ
         Tz06iFfWLIGkHr4oUDD4CNx4J3pKAErZzDc5BvUgTrCGK+1zgsLhCt83QQxFvjnL3BW/
         44pCyJLkzKyGQkJZ3k6YxVOu+SzaukaeqOLN1YzvRTAcKVXU+6dfGWSTr8rkEYejGYpq
         7xRDL4a99g3exo9dJX/HIz10y/yJFnJHM0fvya8fc8cpKwMYEj7MYC1mVTxfgDmGUdPt
         3N7EzQcd/IbxlNo3OLogcOpESyzVJGjwFVQUGU6pFmakNbD2a5x4MOSEiwQ094XexilU
         Duiw==
X-Forwarded-Encrypted: i=1; AJvYcCXp9bX6xIn7QFB1VM3d14hRHxC58U4SYVN509E0GFOE2RMIz8YifKqorNjfj6DfWKORzZoo1YON90c=@vger.kernel.org
X-Gm-Message-State: AOJu0YygPVkohp1Lhk/2IrdpiVNY4dgFCeaFqJZpqSSeDHp2dpWWmEwU
	QzdLsbNb0lGBV8D3sx/gv0a7aokk0oXH9fDxjEqLu930wAo7KM4MS4I8
X-Gm-Gg: AY/fxX6b9ezaaLh8fzfzvSXc3bMpAgZ+Ey5+PLOCkRE4+GrKGymCWXLyGSL1uHScN+o
	V+X7TK2utzjTN9W6X+9lrO0q245QrdJe/uFHkfuYyNa9Ino95RgHqaQU4VTr7jLTStD1yolX72y
	ugvnkHVToyIGdla32AjZHBE+430P1OkoXzRtJQAd8yDatBTXw/Y8P9dk6sel/eFOOa5G5/JZXAk
	VazNdyPE9kxpaVVsMqCOSwGr5VFyijKW7QYw66SxzPvCUfi2Y4Mg8XbG/TWdLIuBHc3bAzE28LD
	fIeY4ocWEhcFu/lIbCTdEjEu3rgl9UqGxGyzYo8loUwj+HTc4/gj4+T1Kr6USl0Ob0SFen+d44s
	jOsop44A9mKa5mSkXQtgE9/jiQZov/EQ+2Sshnq7p6TlKFpugz2Ia8zkhkfKohr4JKxkLNKb1Jm
	np0VNVnUQRrDAktkv/2td3LEaU4LKln/l9I7MDHsUF3zYQ2SYk4NH6/gSSvFDGqyICIpg7T52Yg
	uIWlVbfqCa5KMA=
X-Google-Smtp-Source: AGHT+IHxUNc5TNNH5ZklVM6SH6gA30uvnxAwlt3c4auXz4GkLbcYdCS9Yfl2yIxduvNFi0kaVSYWWw==
X-Received: by 2002:a05:6a00:400f:b0:7e8:4471:ae74 with SMTP id d2e1a72fcca58-81b7ffc1d21mr3617794b3a.64.1767841438226;
        Wed, 07 Jan 2026 19:03:58 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-ce7d-5796-70e-21eb.ip6.aussiebb.net. [2403:580b:5de8:0:ce7d:5796:70e:21eb])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb4c85bfsm6120312b3a.30.2026.01.07.19.03.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 19:03:57 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 02/11] man/man3type/mode_t.3type: HISTORY: Update first POSIX appearance of mode_t(3type)
Date: Thu,  8 Jan 2026 13:03:08 +1000
Message-ID: <90f54d80c479ed70659bd41287a5b0850c1bac0c.1767840410.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767840410.git.sethmcmail@pm.me>
References: <cover.1767840410.git.sethmcmail@pm.me>
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


