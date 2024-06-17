Return-Path: <linux-man+bounces-1233-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0D190BF97
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 01:11:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7BD6D283A52
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 23:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3FF11993B6;
	Mon, 17 Jun 2024 23:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P5lKJiWX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204E919923B
	for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 23:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718665863; cv=none; b=sNKBXRfAXXASBgULNV/Aw/kOQcXOQa5v8p/ZOPgYZDnEeE/v9lK5MX+kwE7oUJAfDFjwR3+3OhaoPTXB216kHcghhHd+Ts+PMUyQ8ZA5DHEWjcXiABdKgcnyn++iUj0gUPpDnFWCFsC+GZ8Odyxx4tucW0gz3291fhASZAZoJl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718665863; c=relaxed/simple;
	bh=hNv0GDPdNstDeoGoSIODAte84ps3uHepY+iON/EYlH4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HSN/lYZOxTXecQWTS78bnuf5kcFjtbHRQcJeuqUPy2WcEcyUYCNhgyFrXjoshBPvhe+pDOUI91dJYeuy7WYmvFDMZJ6idXeFRyJ2tnwTrvqbRkeOFYOwJjI2mjBOAmUnf2ubtnuhkTPrb2uJuuYO7ofhAfkfidvkq88smCO2U1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P5lKJiWX; arc=none smtp.client-ip=209.85.222.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-79776e3e351so345587185a.3
        for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 16:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718665861; x=1719270661; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=45XCkFZP4q2Gw6MxZ7jvCpSrS2OljXG4q9rxP7ZbTBI=;
        b=P5lKJiWXF8Mc7Dt/qJ81qioybpM1dRi7mk2+U4P1YuIlQuIkoRw/Y92Mx+YYknozfU
         JtOIFzD0m9mg8JzdRmlYvy0/vQGjNbeInsNQzhSU7N7am0lXVT+vDIOw7g4HGJISSRZp
         e6SrQ6clBxzYT/9l13EguA2epqOvhE1DvgZEZEBbwEdDA3rCMWs+HN3/tBH6TO53y9gz
         eKG+lNdq3L7McCqISA0Rsi4kqo9bsjR371ZTnPmOZuD8r4Clee0ySFTnPQF8FwzWHdQ6
         Jx4IbB4sY5EW0mZnpD1lmLgG0ogcj2ICIEGW+8F/TAOM7ADXF4ltjSSxaMDglCDuWr4N
         x5Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718665861; x=1719270661;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=45XCkFZP4q2Gw6MxZ7jvCpSrS2OljXG4q9rxP7ZbTBI=;
        b=EYahhfPYDzFPA24orRJqAaAw5Zkzt9frsj+/z9NGUF9OiHo20wR+uJBqZBNkUFRzfX
         b2NCuqiupz28ggabmW4UbxlZ0wer54sUknDIDcbq2fGwPwusRoznjVcU2h9hIUqwxTyv
         HC5rHrtwzx9cf7Yqib5aqgvR/Jusxsm1IAYYaKTUjywH3LL2r7oFD4S911uMi2I9XlVG
         R6miwT/l4mqY8vO2GP5v4hqMsvI0RBZL6c2I5+yx3Y2bsRvc9emQ1sqyw/ZVs9F2EyeS
         rVR/XromkLz014Vas6oYFsHNYAhN+7BezR3DbuxTVWR1bmIlr9x2MsSe5lbAb884y/Ku
         8Bog==
X-Forwarded-Encrypted: i=1; AJvYcCVnmLOXQezwN6p4uUwShDUuIQpYoP0pc0O2X7q/FHmbSb+xUClRsEaE04b6cR9PCVIsXIySFCNjdTCKzHJGu1m5cOOLUCWCI/cK
X-Gm-Message-State: AOJu0YytcLfdzc5fDmjQIvw35ghAmR5P1dLReYmC3eCnSvtV4SAC59QL
	etfNYA0YBmOiadXsQ1Chw4T8vEnhmckulXfztXxuOYsnnGVHn8MpnOgYHuWk
X-Google-Smtp-Source: AGHT+IEFO3nW4IKl6Nf05XFYj55BKzBxZwtWFZmVhHzv0HWa1mu6CZugEdvTWVkU18HCWcySdKGCvQ==
X-Received: by 2002:a05:620a:4148:b0:795:5884:ee4b with SMTP id af79cd13be357-798d243816bmr1340067285a.40.1718665861006;
        Mon, 17 Jun 2024 16:11:01 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798abc105b4sm471409985a.79.2024.06.17.16.11.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 16:11:00 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 07/16] ioperm.2: fix wrong section reference
Date: Mon, 17 Jun 2024 16:10:19 -0700
Message-ID: <20240617231035.1766780-8-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240617231035.1766780-1-kolyshkin@gmail.com>
References: <20240617231035.1766780-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The man page says:

> Permissions are inherited by the child created by fork (2)
> (but see HISTORY).

Since the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS,
HISTORY: Reorganize sections"), the discussion about permission
inheritance is in VERSIONS.

Fixes: 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections")
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/ioperm.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/ioperm.2 b/man/man2/ioperm.2
index a2cde4721..5b6550e46 100644
--- a/man/man2/ioperm.2
+++ b/man/man2/ioperm.2
@@ -50,7 +50,7 @@ .SH DESCRIPTION
 .P
 Permissions are inherited by the child created by
 .BR fork (2)
-(but see NOTES).
+(but see HISTORY).
 Permissions are preserved across
 .BR execve (2);
 this is useful for giving port access permissions to unprivileged
-- 
2.45.2


