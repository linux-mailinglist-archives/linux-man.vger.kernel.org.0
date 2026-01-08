Return-Path: <linux-man+bounces-4717-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E6772D00C40
	for <lists+linux-man@lfdr.de>; Thu, 08 Jan 2026 04:04:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 250703012BDA
	for <lists+linux-man@lfdr.de>; Thu,  8 Jan 2026 03:04:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7CE422B8B6;
	Thu,  8 Jan 2026 03:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kvbjiAkv"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com [209.85.210.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632A3227BB5
	for <linux-man@vger.kernel.org>; Thu,  8 Jan 2026 03:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767841444; cv=none; b=B2qcCE0nDCoUsLm1b70Nyey/UBKXRhKoCAi062JJJMZ0L9DL6nIMZzpQayrbPPbhJnInL2MO5ADT9RIb52YqUywkQX62e5Lq6df2Ie9S8dWTeQCBOwDMoePJ4dv+xYSeLmTlI7R2bgPbd1ogd/CejzJ7nsT6pNYXpu3eF/Mm4sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767841444; c=relaxed/simple;
	bh=lxkP6YNZ4nRm4ZwSuzO6xE4Y5U0RUUnPhe4g67utyLI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Pn7PhFE2fMcZgUzByDE9QJipPDgw7cjILUr9LOQ4nqDRe2uAkQDSavZqNR/GxUyJ2AxPXU+w1eFx/W/s+SLbBmZBO0LFlnVzjSc5TuOT9LJwmTh4myNU0YX+A1LL2B4UVjlZf/SK4ar0UUJ1uvXQjQ7yQxUNOYVOAtc2bUjFG+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kvbjiAkv; arc=none smtp.client-ip=209.85.210.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f195.google.com with SMTP id d2e1a72fcca58-7b75e366866so790375b3a.2
        for <linux-man@vger.kernel.org>; Wed, 07 Jan 2026 19:04:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767841443; x=1768446243; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6gR9pVoU88t+Rw35OsPWKSa6Z5diMNi48aco2jiFnRs=;
        b=kvbjiAkvA6U4BnVYi69PKCwRJ1ilJ6oVTrwmMP2X9nz9cwyxTvWk8HcC8PBFeVFADP
         bYw0yiAePq1YVoGUpND0ws62Ziq3r9dCUJ6w7EuW3yrZlE08U+oyZjnvTR83xmIjISZS
         CmtXD7b36JUHJm3YVfF84oiVBDMm0BQrkYRLHYymU6Q+oYPplqONj43LaY7EOXxpeJK2
         ZrvXvMhhWqx4s3mEsjpvU0/407/ZPDINB2mdf8zYwyFD4kW4iIPAbTUXEzrv0cFPtnNj
         rLIQ4ajyMaHAm7tF2V19+rI8v3d31l+BnogUSaIg/WoewL0i8i2jVdueo5jcvLZcUwNT
         wwJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767841443; x=1768446243;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6gR9pVoU88t+Rw35OsPWKSa6Z5diMNi48aco2jiFnRs=;
        b=eS+4CI5s9OxgSvEQKoX4a9+XnJGgTCVliuIlOrvZ9Ne/ZWDruBTo3hAo5+fRTTyqPs
         cdmh07kA/aHfhZCha9V9AZ694ONqSTVPimYG0F7EzKFQsIYz/LfYD7dTQC2ZRsLsIvKw
         PfyfdmJDufYqKUW5Eiy+GEVZCallO9QaCqasCGS1c62AvbQKdz2J8rsgqt0HF+0nZbOn
         HBtdZVki+f4E4VqYA9Akzi8uYYfgcL0A2gu/UOhJarYsJFf+zC3Aoqy3JDhqwMLBirRc
         K/3W+SphTXLPNmolntLc4ZDfk8WvcFny7MoPhEX66V+opq23nxPoCzQfF3BQRBpeW3dh
         kxrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXsHb065mQS45Ed7ORgokkLjrugSr8eOJ2fXs6Z6FwSfsd39EfSrCzmWTCe9Q7AmApjI8NbiXpl+jc=@vger.kernel.org
X-Gm-Message-State: AOJu0YyL+DQBKPbZreJE5/7iEdW5oIVpS+AyBb9nyJ+ntN65/jUAaOee
	IOx+sCqYPQdhSM4qW53C6LLbKlvEE8bn6wfvIlV6tRMWfYVQPMP/XBqxOR0ouzfm
X-Gm-Gg: AY/fxX6/Vx7YwapisBj1KV35520WUIGDmn64fu7H7XGpaE4uzb2P7sCXrgNe4Ti7Bw2
	XiTLGU49UWXX0IrB4KU/ewOyRM6m5FXpAqdk8WSbea++PYdizeHNgFoz4RQESztz+lLEXgqAR9e
	RNvkFQ1He8Bl9s0UW+Ubr8lVunKOcC1rPXnygczqI6yV4P6aJd/api0lHvahKO+zCk0kgTfdlwW
	j2bngFKL3PPDRQL4GgZthy+ez1rTrV9W6aTd8jQxL/oYkvIlkJBlEk9oqcf10VepiT7Q0FHPDB+
	xC/K1rBj/EjCH/8MclyvpLKR4xQOnjZuDhNo70krZuvO35Viy/GKsUDPBH/JJ/dAouwTcpDlfeH
	9Kd3Cw2hTGAhsaNOPx5XRGOW7yK3pH6/+5Vo6K0gwQdRISab+d95MHt0VuAgetfbTqVewiJYExp
	LI06wEgPf8AzBAfCZ7NVKrk7C/Lfc7p08gVco/r2Z/EnWj197+lnwtkEOy9Bi3v/TBtL+jRGeQY
	3uWBnsXOp8+w4E=
X-Google-Smtp-Source: AGHT+IG4l/SNCKvOE2xaXX4iuiYykPCO0AmqP7HWVcp8j3YL1deH0xFfA7V3rtgftLI1Jjm87JVVvA==
X-Received: by 2002:aa7:9a84:0:b0:7f6:4922:89cc with SMTP id d2e1a72fcca58-81b7fbcc041mr3535888b3a.57.1767841442523;
        Wed, 07 Jan 2026 19:04:02 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-ce7d-5796-70e-21eb.ip6.aussiebb.net. [2403:580b:5de8:0:ce7d:5796:70e:21eb])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb4c85bfsm6120312b3a.30.2026.01.07.19.04.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 19:04:02 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 04/11] man/man3type/off_t.3type: HISTORY: Update first POSIX appearance of off_t(3type)
Date: Thu,  8 Jan 2026 13:03:10 +1000
Message-ID: <6b062b0d6afac3422b4b8cd8b1fa7340c43e989f.1767840410.git.sethmcmail@pm.me>
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


