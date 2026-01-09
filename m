Return-Path: <linux-man+bounces-4737-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D5DD071B5
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 05:20:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 502B5300D293
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 04:20:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 688A52356A4;
	Fri,  9 Jan 2026 04:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T/bJudHx"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E4C35950
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 04:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767932404; cv=none; b=Sjc6vVQIU5IPbnF0ir3PmFYz5aXejaDnCiLXz35pyzLmwPd5s6/Zq/upmfwAFcsrrQfcSedFNxL2aeHMzL8RicL4fnT9TDCjWUBN2k4M7zUFZuAnDrAmRS9onegLpJD9a2vP5XCFzLpK/nDIjyTKNmQtNkaxJNfUxjFORpzq6Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767932404; c=relaxed/simple;
	bh=lxkP6YNZ4nRm4ZwSuzO6xE4Y5U0RUUnPhe4g67utyLI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZHQ78oTIQQoAvqEaXfDgLrMI20ta8O1W5dwibukKruQ9IvbPm0qZe1/luI11izjF0PrNj3T7WndvJ69zBL46EWD3DyQk+Ltm3B16sQzbICiktvQF97kiqPQucvWbJAR2i/lUXjQU0LdPXLqIQ85lRhPCpN12ss+C/vToNJ2ng0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T/bJudHx; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2a3e89aa5d0so28171065ad.1
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 20:20:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767932402; x=1768537202; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6gR9pVoU88t+Rw35OsPWKSa6Z5diMNi48aco2jiFnRs=;
        b=T/bJudHx0YI4W2R1ry93YRZ9F6TvotWTAg/0j+HQqebdFsPVhbM8Jdc0bBUumseq6P
         20GBeWvWbanqdP7T4rv3kS4UVggdorUFM35J6E/PoDHOwLRsFEtUbPumIZV34klMFV/w
         5jK3n6B1vwNnCX6uDHrcukP9vOZnCpD2JSzdiGG3tPnhRM3Goq3fc1njCdBfVsOwBR7/
         h7ec4DB1KOhsWssAVtb1+X2OyOoP1/1/yt1J4UQzUySViudOtqfswv6IW8xvGSI+Lk7E
         x0cbYzAG+UBah5bGsGTqrHIOFV+MJ1RqRc/A+E8O4S1EWeIiwqfnCHcOn+inh6IXxvSR
         iFiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767932402; x=1768537202;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6gR9pVoU88t+Rw35OsPWKSa6Z5diMNi48aco2jiFnRs=;
        b=ucV4EGPlasdXCNjSr+9TRc1Xz7KeJwZ39McOY9rN2G9KIuU0Llutag+nMZThuaaD7s
         pfRnUCU2ywNfk+VuaupNxLDXRADsYMGV/0KQ8iX8JYYS84ul6AQyy9r3Alv1FVU3JPeC
         qhONQyIK23cISNDKW9L1VJw9VR4FWssTbvBMsIrRZ7i/rMmClORTWUhwPR0WoK2YPwYf
         GP1XRn05C7ITFmiw/NNN/0ic0KrvyJw0b778l14BfntDb8T4N21my+JGNbo3FR6t/NHF
         AM3rnyganhsuK95yoiFZyDJ5R6VOVrbjhQYt13hc4teUXNNqeCw6fNk3cwshQjzrXAWK
         l0bQ==
X-Forwarded-Encrypted: i=1; AJvYcCUPdPYiXkOPZl5PiTAaOGY8NzdZx1Ov2X7ernhR2F75CxCHmrvVZVBAiV07pxvH74zWgwAzr3B1/00=@vger.kernel.org
X-Gm-Message-State: AOJu0YzKzmnype++76dRh7odrsp7UlBgZ7XELdwcgaOO2+K3CvfrFK13
	JsSsfgkHYjKv3agmOVXVj32spWKy/Tq43W1Y1gLjo6lCDvmgH6Yb8n0I
X-Gm-Gg: AY/fxX72NJu34d30MSx7+djym2QMH/fBttAjODKHikhVcRmlv/sJVe3SIEb3MoYVD/8
	VQw8HLRflFnhc1PZQSWSHhD6Z8uODjcc3upo5o1EH2865kKr9ufu3sj/ClLaiZoRwTcnXEqL8TJ
	HKhg5DuyiWJ63cL7k8ecWCkIzdcy0lIw2tz08szub+2EX0mYKCNoq9UTL+F/wU9KDvRUQqxjRsB
	ExAq+4QQ12+iw8iYNmxcSgF1g0o4erZXk29aXFArzmykGuDZxxmY9Yhc3maQpgHmHHUntQ5VRaY
	XLN77EnNwlvv69f4flqtynf8z+ePlVjj7YYzvdGEZohH2dKdNKRwlzqKacQaFD4VGKeEwzDQ7yi
	n8dKGAbjFN3UtKME0EsNAyRC8UTKhTheUEO+DWYi4n8gYpB3ySuBcljBxN/7RO52tQiuhvxcyc0
	oCSEUkSLr/niylweKf4nt58oJ3qo7s2TjzHa03wDmjlr69FVYwdoFB60LMMLLIVCE8Rnw4XLthS
	YSqJlPljE1W2/NSJw==
X-Google-Smtp-Source: AGHT+IE9cgqEWH5hS+HLQAPr4TbPSKsoh3Tuy9VyReYmqCaoQFwF/lX3PsQCWhWFjQsEzZsxDxvHLA==
X-Received: by 2002:a17:903:234a:b0:2a0:b066:3f55 with SMTP id d9443c01a7336-2a3ee4151fbmr78123445ad.10.1767932402452;
        Thu, 08 Jan 2026 20:20:02 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-1ba5-4bb2-ac31-391a.ip6.aussiebb.net. [2403:580b:5de8:0:1ba5:4bb2:ac31:391a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c47147sm90098055ad.22.2026.01.08.20.20.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 20:20:02 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 04/12] man/man3type/off_t.3type: HISTORY: Update first POSIX appearance of off_t(3type)
Date: Fri,  9 Jan 2026 14:18:58 +1000
Message-ID: <6b062b0d6afac3422b4b8cd8b1fa7340c43e989f.1767931376.git.sethmcmail@pm.me>
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

off_t(3type) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Table 2-1 "Primitive System Data Types".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/off_t.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/off_t.3type b/man/man3type/off_t.3type
index 9004971d1039..b3d9e18326dc 100644
--- a/man/man3type/off_t.3type
+++ b/man/man3type/off_t.3type
@@ -49,7 +49,7 @@ .SH STANDARDS
 .SH HISTORY
 .TP
 .I off_t
-POSIX.1-2001.
+POSIX.1-1988.
 .P
 .I <aio.h>
 and
-- 
2.47.3


