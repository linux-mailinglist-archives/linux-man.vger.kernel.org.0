Return-Path: <linux-man+bounces-4724-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FB5D00C52
	for <lists+linux-man@lfdr.de>; Thu, 08 Jan 2026 04:04:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5CAEB300F8A9
	for <lists+linux-man@lfdr.de>; Thu,  8 Jan 2026 03:04:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0E0B227BB5;
	Thu,  8 Jan 2026 03:04:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TzS/PPM8"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0583A0B24
	for <linux-man@vger.kernel.org>; Thu,  8 Jan 2026 03:04:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767841459; cv=none; b=gmTwD+AsKtyI2UVhu3pjnsg5rerhOppKpixOsWiy565K8a+jfbqwHHMU9SNEztLF4ZnEH9DT3oQVlO8aJmrK1P31dNJBODlKrw7GScaRbemKvsFS75hRpGpMIKz0AIUU9p8Ed+Cgai1lu3aeLLvx6rRNFHqOKEklnFBcgDcHgtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767841459; c=relaxed/simple;
	bh=UzrpAUHfWX0MONNODQDR/OXADtRTcXpc2Fp6xfFfSqE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KwQPqhCggCr+Rt5vB4qWusPZ4YGmYEErVqaoqOyLtxE4v/MUJIfdQPn7JxxXgITZlRPXMtvIOMV7qJErEkRhPOZFRt/I32VcSmjokojqSIgfeO5UdQI9Wd3RmmK3geos5vzWmzSWTRGQ7KTpN1xQuXEx6IHGHoU/OAmaQHzxIRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TzS/PPM8; arc=none smtp.client-ip=209.85.210.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f193.google.com with SMTP id d2e1a72fcca58-7b7828bf7bcso2127245b3a.2
        for <linux-man@vger.kernel.org>; Wed, 07 Jan 2026 19:04:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767841458; x=1768446258; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tE7V4Vf84Fm91eTsBQ+sD9pgMu92bfcygsHSYyTfAIs=;
        b=TzS/PPM8SYi97YuvdKMLynvz2aBSHrgLMADo3oTa/zm+uiB9es7yGnC3xYdbwfgeYx
         SMc4bFMlS48AoSL73waO/LufqBkbl8o++FX/Slqqj/oUc9qMNX6zVA8dOJfFNlKp4jvF
         KsecfhfuPnf6WwMR1F+KCx7mMY/Y6bbarQnogSX3aseB2BC+r8uZSBCIxtRiPlcUq7wx
         gQWoPEXP+NX10fv+uiilfW5OLV4xdW8nLK9HUx6N8kpQPH1XfKO6LUL6Q/Aj1bfTBRKx
         fnQTxsE5k0sNqhWCwsZW9aqYiXCiiXlbnmHyxlab3DGIecLvsrP1FMUJEEdB8xqvsbA4
         zvLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767841458; x=1768446258;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tE7V4Vf84Fm91eTsBQ+sD9pgMu92bfcygsHSYyTfAIs=;
        b=r2naDeZTHJ7cY/oNER15GGXL0ITGEKKMdzRqkiG34DxdrNcVjqC0NuREddHoyXNTiz
         82TsOxWo3nQieB7t+OaRc0zTAWHBctobhbn1RHdUQLGEkgl3fxIuHq1SfJ7/A3nEyE/P
         OhzlEdc7HHO4tn7O3443EodV5zT3rlxf4OZgyZ8MS6GaKGpc4ZXkVI0eEialf2Q61Q7G
         ay7ax41xYsHrezIm9bcOcupBwQKCL56QWnhedizmRCADaepVl1GKMbnzn46+52Btp5+x
         PvhORBm3YABfGdZfuUZ6c5On/Vi6LWIx+ApeBUoVTxki8xffApgUowk5ewsTqIoJ2zd/
         X8DA==
X-Forwarded-Encrypted: i=1; AJvYcCU7nJyiqQ13qaootGhs85cyJax2TBkjsFKHw3G7KEiwMdWZ7yWO5msDoOhlaJ+zIpzvXm+Xz+HLa+c=@vger.kernel.org
X-Gm-Message-State: AOJu0YxvWB/PwuOk/xoiT99xVL9s0PERAnoiEd5DmsS2q/cT9fCTKWEu
	VPCxYpLT3mFP6sUH2ucZDH2HXmw11UtfokwNamFbJ76NvNEuSZuU01UexMJxKFF3
X-Gm-Gg: AY/fxX5mgTCx0OlB9vOsjh8yRk6H1RSrFTkqGjdPCthYBZCvUf7apZDMFvdbNP5rJKD
	rIUp+Kjw46FxyjGcYTdG0H3SAC162+aGrwv8kpQh+2ZlP53gnlr0TVntGpmBukoa4dfAJCDG3Vj
	Ynt74tlUko5B1qTpPpcOYi2ME0c3rCFHguiqlUVKwJChtAnI1GlFFJwoL4ie4XF9c35n8cgQKYP
	agVvf/HIMQEKlV4fpmeqP/shHVYzGK1WXPRtZCBfZVlrveMN8MGosEW81QJxgA6i65z5eCG5mLK
	T6OlbhJiNjDqj3K2XnF8eNCM4eh9psTLPUhdaPU8Ttt/m4bFRCknPGyWVNzwD1uKFoUHlRXCPit
	6CmSiDAD4M93WvRtUtiVJQdrwgB8wI2hLJ4C1P6LG6LN0ZjF1lILynGOw0ITh2wK1070HfO3zd4
	wGYyaFQ0aiWC7BgBA26OwjtY8NOsv9O61Ad4ngN79YAjmOaz51Pzn6p/HXxyDPmManQabOyvMr2
	ES3n+pjtzSiijM=
X-Google-Smtp-Source: AGHT+IHAz4UjaAIVsv8ykuxWf8e6wFUyABEJXsUzbXe2JoJyKr4hLVuzmL6aljHWDQebeX8y03ScDw==
X-Received: by 2002:a05:6a00:90a2:b0:7e8:4398:b360 with SMTP id d2e1a72fcca58-81b7fccabbfmr4407766b3a.51.1767841457669;
        Wed, 07 Jan 2026 19:04:17 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-ce7d-5796-70e-21eb.ip6.aussiebb.net. [2403:580b:5de8:0:ce7d:5796:70e:21eb])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb4c85bfsm6120312b3a.30.2026.01.07.19.04.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 19:04:17 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 11/11] man/man3type/timespec.3type: HISTORY: Update first POSIX appearance of timespec(3type)
Date: Thu,  8 Jan 2026 13:03:17 +1000
Message-ID: <d25e140aaabe3e33585635c7601b24761a4f5d3e.1767840410.git.sethmcmail@pm.me>
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

timespec(3type) first appeared in POSIX.1-1996.[1]

[1] ISO/IEC 9945-1:1996, Section 14.1.1 "Time Value Specification
Structures".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/timespec.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/timespec.3type b/man/man3type/timespec.3type
index 30bad58d1cf4..3e4d939bb3b3 100644
--- a/man/man3type/timespec.3type
+++ b/man/man3type/timespec.3type
@@ -38,7 +38,7 @@ .SH VERSIONS
 .SH STANDARDS
 C11, POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001.
+POSIX.1-1996.
 .SH NOTES
 The following headers also provide this type:
 .IR <aio.h> ,
-- 
2.47.3


