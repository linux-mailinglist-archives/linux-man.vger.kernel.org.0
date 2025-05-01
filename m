Return-Path: <linux-man+bounces-2828-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FDAAAA5D78
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 13:01:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD835172C44
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 11:01:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 525B82E401;
	Thu,  1 May 2025 11:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L2mZTMF7"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F9B79FD
	for <linux-man@vger.kernel.org>; Thu,  1 May 2025 11:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746097288; cv=none; b=UrzTYnvAjLtakFl4u8phOPgPj1MkOf7ZMtvLnugIUEhySq4YcGMSLXB7z+JGkgeayzwRavL6WdlxcEWI+06ChqZ1fwDPCENG0nGdADei+7z6xNoZjQgxdkehjsymGfTOOnfONIIX9XmqSGFP1div7rYhNOhf+/s4h3e9NApBg2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746097288; c=relaxed/simple;
	bh=dzAEicZE375gbYioXx62EnyCa8dB6gERU52PzU++Rok=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=MSzUTeHiLN/URznTHQPvl1/n/Qtw4DTnGeABgY16SbcrOo7hN8TIoK6mwlxAbdsMlHxokMHJrFSNV7tgLJWABI0IJ/Vnp2sZRCnXcn2MtVgyVrsbPoIT0DfbyiudyiRfWR/gFM2mHsrh0I4oR6RIpD/KJECs6QqgTtrP5swMivY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L2mZTMF7; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43690d4605dso5486655e9.0
        for <linux-man@vger.kernel.org>; Thu, 01 May 2025 04:01:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746097285; x=1746702085; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=woGkcLdj5dNZeUoCWbw087HJ16FDyTn1zRmNSXV1sUY=;
        b=L2mZTMF7foPFXhN8BMYDAOBQExYM1XyTcUoAw1ACPbWMN0N3/saDvmLnxfziBxznRO
         9Pm/JjB1knIsqIW099dF07cM5de/7Rk18H9+Z5EfkrMcJ8BqNpLT7U0WjGfTm38/4Fwt
         BSKVllGb4eLlgHFG4qMmUVjmSdAI/5/qsYZOfy3AG5Q0R/iMsdvkcEHoOPqiT2fOv8qb
         FlPouGcaAKdO2oCdDGsZaiMGVNyqMUBQQY1mlbuFtMvpgbKn2WW4Z8wKEE0C3MO8YaKl
         7FXJj/gHLKbcKCbmWgGemaohzd875XA+Xa4w/ang3FpCAVuz6ceO4xkpgQgW5MmAxP0i
         CgEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746097285; x=1746702085;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=woGkcLdj5dNZeUoCWbw087HJ16FDyTn1zRmNSXV1sUY=;
        b=pcN4QuoSZXGbs74TqWELENl1V2G+IzL50eRIobDdSAK+7E3MVHUZaZ95X11GxIAbIh
         h/95SJIzjhAdcIsosGc1ukhPB+G4OCGASX8rdy+I4oSJApsbRVU6Urjv2jW6qQ66ggQ1
         IOX96/q3y89HUKyYcW8F2gloEUDrN40NJAzGEbxVjsR1nQQWcJIlPYmGXFtUbVVBteIy
         w5Y0C1nBhwfPjf+iPX04f2OsbRg+aSyTvyf1Kx/UiingPe+aCjSDAjuMIO8OXtpGMNBP
         7BLrMO96jsHZg5jDrXkuswN+SNp34KkQExmTcq5gH5w5Yz8giW4qrVdqrGgGNn9er/k+
         W+GA==
X-Forwarded-Encrypted: i=1; AJvYcCUM08yJLp+TRenkiT4a4POf5Utm4NiM6A78fmTg1y6ZHQDhI5R423uH1nj5UzkENP0TWeEPtcljjl8=@vger.kernel.org
X-Gm-Message-State: AOJu0YwP8qavoxP1oabYjtTetRoH/FVLSRGpGg0Xb1iNvFMOhbVIyiG4
	+nC4kbKg/97GunkCyTVcLoyK2in9fYXWQLslYH9OlxN18CT/IxFn
X-Gm-Gg: ASbGnctSy2dtMf/G5fvOrIqtPgwxRiK4bVH5yASeQ+JpekAoTxYtwLf6pt3O6cbuXz7
	r0BZMbFZRtkyF/+AXtamORnNt6WjoxuMZpDRVqkFv8IGJZ64pJ7lpaVk0j/BowtA1jTKuATy6s4
	I5RLwdkoc7DVLM9FHVhWPil0XZWK2Yd0/ardjEe5AXEH1CLBYBz7HoIRSMmDAOp1TxcTfVil5aP
	/Mjk2rP3JSCtF8NjV2MBQgrcmUtKEhJWczOb8jnhW1mobcwDqmHFvmEHHm1rNk7XYYjbiMtEm7l
	91VTRPSrjCuM4kA7j8YqM3wyozrSlpboz8gpUr408nLLB7reuE6eo/vRWv+Ror/6SEY=
X-Google-Smtp-Source: AGHT+IHtPFwp5eR9fmdlDNqyYTfXLgbyeRfDaPUi9VRkxycxdqwueIfNCxabzaTXYflvrPX/6OJCXw==
X-Received: by 2002:a05:600c:548d:b0:440:6a1a:d8a0 with SMTP id 5b1f17b1804b1-441b64ed8f1mr21208445e9.7.1746097284385;
        Thu, 01 May 2025 04:01:24 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-441b2b20a57sm54406505e9.26.2025.05.01.04.01.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 04:01:24 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jared Finder <jared@finder.org>,
	Jann Horn <jannh@google.com>,
	=?UTF-8?q?Hanno=20B=C3=B6ck?= <hanno@hboeck.de>,
	Jiri Slaby <jirislaby@kernel.org>,
	Kees Cook <kees@kernel.org>,
	linux-man@vger.kernel.org
Subject: [PATCH] man/man2const/TIOCLINUX.2const: Document CAP_SYS_ADMIN requirement for TIOCL_SETSEL modes
Date: Thu,  1 May 2025 13:00:23 +0200
Message-ID: <20250501110024.9225-2-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

CAP_SYS_ADMIN was previously required for the entire TIOCL_SETSEL
subcode, but is now only needed for a subset of the selection modes,
since linux.git 2f83e38a095f ("tty: Permit some TIOCL_SETSEL modes
without CAP_SYS_ADMIN").

The CAP_SYS_ADMIN requirement for TIOCL_SELMOUSEREPORT was further
corrected in linux.git ee6a44da3c87 ("tty: Require CAP_SYS_ADMIN for
all usages of TIOCL_SELMOUSEREPORT").

Link: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit?id=2f83e38a095f8bf7c6029883d894668b03b9bd93>
Link: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit?id=ee6a44da3c87cf64d67dd02be8c0127a5bf56175>
Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man2const/TIOCLINUX.2const | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/man/man2const/TIOCLINUX.2const b/man/man2const/TIOCLINUX.2const
index 61f1c596d..f48132ea1 100644
--- a/man/man2const/TIOCLINUX.2const
+++ b/man/man2const/TIOCLINUX.2const
@@ -72,18 +72,30 @@ may be one of the following operations:
 Select character-by-character.
 The indicated screen characters are highlighted
 and saved in a kernel buffer.
+.IP
+Since Linux 6.7, using this selection mode requires the
+.B CAP_SYS_ADMIN
+capability.
 .TP
 .B TIOCL_SELWORD
 Select word-by-word,
 expanding the selection outwards to align with word boundaries.
 The indicated screen characters are highlighted
 and saved in a kernel buffer.
+.IP
+Since Linux 6.7, using this selection mode requires the
+.B CAP_SYS_ADMIN
+capability.
 .TP
 .B TIOCL_SELLINE
 Select line-by-line,
 expanding the selection outwards to select full lines.
 The indicated screen characters are highlighted
 and saved in a kernel buffer.
+.IP
+Since Linux 6.7, using this selection mode requires the
+.B CAP_SYS_ADMIN
+capability.
 .TP
 .B TIOCL_SELPOINTER
 Show the pointer at position
@@ -118,11 +130,11 @@ If mouse reporting is not enabled for the terminal,
 this operation yields an
 .B EINVAL
 error.
-.RE
 .IP
-Since Linux 6.7, using this subcode requires the
+Since Linux 6.12.26, using this selection mode requires the
 .B CAP_SYS_ADMIN
 capability.
+.RE
 .TP
 .BR subcode = TIOCL_PASTESEL
 Paste selection.
-- 
2.49.0


