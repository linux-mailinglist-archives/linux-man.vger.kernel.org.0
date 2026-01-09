Return-Path: <linux-man+bounces-4743-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 911DBD071C7
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 05:20:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 71DFB301B2DE
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 04:20:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 869481C2324;
	Fri,  9 Jan 2026 04:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m0Yy68uP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C464500958
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 04:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767932417; cv=none; b=tIoz/2ofXjka6b9tmdv+XbUcpjFrzW2nQatKRTGWChi56z6Z1Q+FKRtd+Bpd9KtoGu5cldFFJYab9Q+FhXcSsiw/Hr+xhjwEW/eh2jn7aoPcb6dO+FPvAQ3ZSZgEHD3cfsbECvVz1qv/beGnhkJphpN/9lRBEnW34mjPME0rf7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767932417; c=relaxed/simple;
	bh=DcBQXTps0FW0YbfTh5/e1FpJotwkr7HjcbPAV0L3rPg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nWZv3d6AhjaUzYsh4hhUPZRj44gCj82AUMNjXidECqG7SLyQr6yk3QvT5vCbNVBs1fBzswXok7zAUP0iLSBMCG7b21bB3n1Vk6iI/aQaCzliT96CePBEG0wIRW4AKYdaQVWryE2JaHg3Pr9NwVgyNkfH4KqZidBSevOigl0l0DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m0Yy68uP; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-29f2676bb21so34494915ad.0
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 20:20:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767932415; x=1768537215; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=p+CUgQ+Ida49VU8TjqU2s+i5uGy7IhHZMWPNL0YfwFk=;
        b=m0Yy68uPgBkW5TKZJAfr2jA8BZdxkPAfDkTCnrmNqO90zHKdxml6NDFUjStR2yPNuq
         ADel++njDGuRMAduFWqhe79JedDTN0FQ116B5LADoNGrSTyLWsNqiSHEWpBcYtJowD4P
         rR2D4SeZh6guxFOkIFNrx2mm3ZyZsX9Fq59TlXBzkKIIsDQ7v1b5fj9CyJO3G+5JBW2y
         ErfI2pCUxnRww+v0T5IWfhlp7qaaDyZcQkE0facB9yinz+Nrb4o9inIELTLKDYwGpwD7
         umBFFNOK17mMznaBq1OAm/duubCny6lQWgg8nZoH74yRV0IantHaU6Pe7JamvPEzHeBd
         CIaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767932415; x=1768537215;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p+CUgQ+Ida49VU8TjqU2s+i5uGy7IhHZMWPNL0YfwFk=;
        b=L6xx3YmAe+GawYwDTIaF/AhrJ2AynjS0fhQ2cfHYQQTpHqYazgvYJkV6W3KTue0bio
         +hEvpIY1BFlIYMzpgWO2rRnUWMohkEJdiedqPcDvVBrfamsKRzluaClquplKUg6fMshG
         IsWNZ0iP4V4UPTx9pGx1zcO2Shykt1ww0Pdzwg7P0gk3vnfr5dgtwwFbV1lyYQgy5TQG
         OijaBVPciBd6bX/PV5TFFRPlQZexMQgFDwj6bokmPoZimkVml7MUlc0apeV/4rZUsJ81
         1c1INH2gACg3xZcrus97O1luzDwuUHaURSG/1XfC4wDVY3WaohyVxgljl1Gll/NU42xU
         CtWA==
X-Forwarded-Encrypted: i=1; AJvYcCVOle8W/cICoJFCurhNkRlHCsgJQpXhSLsPX+y75cS8N2jSPmgq1q2Nwzt1tea2C/XSMfYAP1l33ws=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywm+9aXhjWzGiHfa0Bl0nVEMcf1xjXNWneNogPKolMRhy27XWfs
	ZGqsRQ/VFJYeHBLsufWqjx4DpGEK2ClQwFyc6ixqWB/f7dwwwkEvb3lkgtf0m4ty
X-Gm-Gg: AY/fxX7SedTfvQG5z/twjYQXWawnGDqVNElb3kRsFmp1UQHsJM3HYoOBLB7i56zNnd6
	LIuLXz47ICmg4o5XVHqULYvX2rbPFIdfyWIn3ffMIOVSdBKOvVFHtLoEfHQEH4rL3H2mg61/D6I
	kGO2gk6tVIxI33nTaQGzpfPz+j121qhxpeOIJsHeS+cbHUAy69ALYNQ8H4J2uXBiJsNCVORv7yv
	z5VfQHwHq3nXVrWZLO5FoJoOqkapLcpPqbdskZ2/zCuCDxNzOmvQ95Frqm/3fXINeAj1evuW3Af
	DLKINf13Ll0flwOOcjBsgwt5LNQeaQdenJPTQqG29O2jcNvCh7uR3TkKgMIg3GXmlmTEOybISg/
	T4wtYufDWOiFXkv9ZIMu7pz4Tk9WMhrvPkFzToqBTYNjQHnnuNj+Gbg2NrxQBIaEHhqv8o5QT2P
	zTVP8iYObusC7BULgHXQ7/YWJzQiDzNJHbgb2jRF+GYkHq+6cY8C4udStVqSfpHOsTr6kmztfGJ
	6IG5ON9BN8hRvT0lQ==
X-Google-Smtp-Source: AGHT+IGudvkF1JjZR9sPmlbWly8eIs+CHZOK/Oz4gz/kpCIR+pwQ6gunZZucH8tB8SiJylMZRVBLpQ==
X-Received: by 2002:a17:903:32d1:b0:298:3892:3279 with SMTP id d9443c01a7336-2a3ee4363abmr82450685ad.17.1767932415465;
        Thu, 08 Jan 2026 20:20:15 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-1ba5-4bb2-ac31-391a.ip6.aussiebb.net. [2403:580b:5de8:0:1ba5:4bb2:ac31:391a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c47147sm90098055ad.22.2026.01.08.20.20.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 20:20:15 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 10/12] man/man3type/stat.3type: HISTORY: Specify initial datatypes of st_{blksize,blocks}
Date: Fri,  9 Jan 2026 14:19:04 +1000
Message-ID: <3ffb01f7c196f5bd1eed0ba823be2e115289a2c0.1767931376.git.sethmcmail@pm.me>
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

The st_blksize and st_blocks fields of the stat(3type) structure were
both specified as 'long' integers in SUSv1.[1]  SUSv2 then changed them
to blksize_t(3type) and blkcnt_t(3type), respectively.[2]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 4 "Headers", p. 830.
[2] CAE Specification, System Interfaces and Headers, Issue 5, Chapter 4
"Headers", p. 1169.
<https://pubs.opengroup.org/onlinepubs/7908799/xsh/sysstat.h.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/stat.3type | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man/man3type/stat.3type b/man/man3type/stat.3type
index 55294599638a..ad366bdeb35d 100644
--- a/man/man3type/stat.3type
+++ b/man/man3type/stat.3type
@@ -147,6 +147,14 @@ .SH HISTORY
 SUSv1,
 POSIX.1-2001 XSI.
 .P
+Initially, SUSv1 specified
+.I .st_blksize
+and
+.I .st_blocks
+with type
+.IR long .
+This was remedied in SUSv2.
+.P
 Old kernels and old standards did not support nanosecond timestamp fields.
 Instead, there were three timestamp fields
 .RI \[em] .st_atime ,
-- 
2.47.3


