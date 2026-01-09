Return-Path: <linux-man+bounces-4747-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DDCD076A1
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:43:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2895D301225A
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:42:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09D512DC787;
	Fri,  9 Jan 2026 06:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FjEIUnk9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com [209.85.215.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A01E2DB7AC
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767940976; cv=none; b=i/LdYxOyI3ay5HBcb7cDm8i3dCwq6i5Fi1oTDmBKbdQfuhdmEnB7dfFz2BFm2bK8Z5tstUrhFmWNwHC00Sy7qhQ+p9i9JJDsixFqVYeBxIKI81kk0Irvv5VokhXN1RwT2VV3ELZnHfpS0lZO8DoI/PsasCiEukHq310x3C2loFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767940976; c=relaxed/simple;
	bh=AyuP/rcY6g18u34pFtO9TYY5M4NaO3OcTN6aSQ7U1Lw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dQWvSY05cbK74j9GdRWB2nqMA0JmcZenjmqNIg7M1kz5TPrV/9gsGXbYVSVlYd6Q2jVu+M5VkWDEXHnP5VqpDd9jdX4xB/34oPYyE3ySb21NWG6PP8iIFlDZKknDK/lEPMzvzNnUw8RfM/PUhlM80QkZSWR48JoinIx49PTdZg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FjEIUnk9; arc=none smtp.client-ip=209.85.215.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f196.google.com with SMTP id 41be03b00d2f7-c551edc745eso348730a12.2
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:42:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767940975; x=1768545775; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vwDEMfa94rQVLKoQIYja5r1SaiZLhlvVDbQRtL4BRoE=;
        b=FjEIUnk98iw6stSBaWAm+5UTytsl7raki2kgBhSAraL8u1Ef13RSaumT4f9NlEyZU3
         FwRzxBUjSHSKQBultGdA/gAfFrOOWutYwtmd2DULMTfRG1nyPuxdZynDby6j0sQYRL6Y
         FVGLAoObis3sz5ul8QuRygrDeOIR0icxLDIJJJezJN6TW0ePfHYkqx8Ph+YykSOfzLlY
         bqzlkpF6J21b2/GN37qkjPBsoUKBx8+nghFEd5ADLtl2K78S+fI2RUYKgcjLTHgUDizC
         Uf6Y/O0v62vqNmcqHl/Ug/vVOf5Ngu0gpJ++l9zxyRwlSF41ffcLUNyNXmjFMJNOmeUG
         OKoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767940975; x=1768545775;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vwDEMfa94rQVLKoQIYja5r1SaiZLhlvVDbQRtL4BRoE=;
        b=OgRZib0ZSADqdsp5ER1XtqzMhiCU1eV1AoQC2pRNnxALnU+64m+lPjSgcSRk6JBS2n
         /zIgREo6zi1i/kOqnn9ngDTuJqOxJgZ1KwK8L6rgrGRsfx+JANCFnd4pFZiFATflUglL
         2C6NyLRMvSxSrSxFeqMERnmgkZhUyxuUhSx36L1DaZAccmOZg83Dzsdz/MQP5anreF+L
         glBOkZNK+qk7ErFZaCmjLERSYpHVc56UpG4soCc1FOr3uSkcgoWpGwrvJdhtUkxSM3ds
         sxbEX7S8WuMbxQ6BOD28TDLqFri/ST1uoN9wSfiJ0Rse04zBKro5Iw/H/wAl1OzRZ+o2
         epBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWyVQJkP8yDQTd5a6G6qDYMbHPL2IQkOL4pxLfKEdDYHXFGBzaXjLYdSYexNF4PLduMhBrPW8COwnc=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+ICONmgjuc2KI9CZBuAG/7UuDIyRHIevifrxWg05sbcSPohfv
	+0OgiKGiJOv5lI5CpWvs4zh4pljnAib8FRqUHYJETTRxygIuoinX9V60mr8ugrd8
X-Gm-Gg: AY/fxX6oQ/jAY/Clh/tHzGPdwyTdgw6F7afgua6evLrOj7u9MBG6Aqo9EIHj5Pp6Qc1
	OT5kM0JMySYMZcAYVfq91SJxwdQQeP5BPMhfTXCSm/5J3chYfywx3AS9SYy7vMlcTsRpXKdQ6qv
	NrZY/blaxICpCqdiyEVVjNt3mQW56bsottJNUmjUrarWAcbHWsb7rxv8Ak8Q54KAidtvpgL2Tde
	5A+jj17YUxOxnG9AbWYdNIgTW1GhgMXL87LtSVvuESL8nqyerQZIKQc6NPcikpliRY1UFbLLgis
	rNCfeqI1Unlggm6YcP1YzJbs6TF+X81fmhXqslEk7qSlqhP5vSetNZRw9fcHQv8LmcwtU719XBW
	unH9vTXlP3//IsL1pX5i0r3CUXx8EV5WZDJ+cs9n01Q3U+80n2mz3Unm3mbRTKedlCdjuAx4wrh
	SVxTwzIUC5Bt9m7xGcHbXiP9sXlFv4HJpd3Qp+NtqpjNWMa+RSLWg25kxA2GJfcyrtXAVrot2kZ
	UdlCL/5GCSrza6J
X-Google-Smtp-Source: AGHT+IGNKg97kmwIz3EPlEeRY/gEASFbITdzIb4gZwNTPnZ1vSJWaYhMSVQhcsK7thmB2ucoMwD+pA==
X-Received: by 2002:a17:90b:2c8d:b0:341:8ad7:5f7a with SMTP id 98e67ed59e1d1-34f68c01c6emr8410516a91.18.1767940974834;
        Thu, 08 Jan 2026 22:42:54 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.42.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:42:54 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 01/25] man/man3type/div_t.3type: HISTORY: Update first SUS appearance of [l]div_t(3type)
Date: Fri,  9 Jan 2026 16:40:19 +1000
Message-ID: <a6650fa27290b597271c4df7ef3b2d014d8e376f.1767939178.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767939178.git.sethmcmail@pm.me>
References: <cover.1767939178.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

div_t(3type) and ldiv_t(3type) first appeared in SUSv1.[1]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 4 "Headers", p. 807.

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/div_t.3type | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man/man3type/div_t.3type b/man/man3type/div_t.3type
index 654e78b215c0..1bebd3fd4899 100644
--- a/man/man3type/div_t.3type
+++ b/man/man3type/div_t.3type
@@ -53,6 +53,7 @@ .SH HISTORY
 .I div_t
 .TQ
 .I ldiv_t
+SUSv1,
 C99,
 POSIX.1-2001.
 .TP
-- 
2.47.3


