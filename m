Return-Path: <linux-man+bounces-1238-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC3290BF9C
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 01:11:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D18CB283A88
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 23:11:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E39419925A;
	Mon, 17 Jun 2024 23:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GVEl/BuO"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8646C163A97
	for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 23:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718665867; cv=none; b=Ggl3Ss2yix5xRZhrHQruJqZT5F7iHLXGgzEqTYiOrpLD5opPNNYFk8js7+/5LKtLrK/th2xKsiQsN+qJ6yEkq6yGMtHvURzXlhZuqdSzM1HBRPUqMhKFefRoX/2L3I6/f0PWBOaD8EzRlorFNjCRyJd4Awtr9YHxMQYHnoB5GGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718665867; c=relaxed/simple;
	bh=bxv+/cVEhsCH/GXwwLRWKe4PrucYRuquIpU5D4UY1KE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=f7tteFRDQbWhewUgrL0YdoDKly81SXXqiDFGMQpa9nGttGPNSrOrFBsnlhu99RZC2OF2B1a33FXYbnpevD0A5rgyyt7IV/vvHMzbeTtd9OqvsxU1OO+ZXF955bw70m+Qj5SVBW8Ef5a/JvUgGyrLaRMMshfec/BpTBd4zsor4Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GVEl/BuO; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3d215a594b9so2593725b6e.3
        for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 16:11:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718665865; x=1719270665; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m4hKfCsSvnFuWZcNbA8B4CyFQky7Ti9MymJXIHxdECs=;
        b=GVEl/BuOK3+08hefdl019TjCbNDipD332o8Sm5U1teaofHRTvujFKp0GzAUvVxAWa6
         QuoEYhRLBER6jobd2SNfnZS0d29ETXOVeSL6R78rjdZ0e9janNWGPG/JJZ//3XOFJ1oO
         CujzMUOzDKgKq2TxC4VhU8fS+Qwi9bb5MBpCu7deIbM2JqOqcsS60gRG1b/UR3LAKBoM
         1XDwVzzBb5xetXR+Yhnj4hUFi7a5NwuejYar/yaElNrKkRVz57Ef2/KTALtRsv7e54GR
         QvI6IwS4AG3QOB6kKaRSt3tP/kfGRb5DfuIf4u5KLBimhR0nucovW19yzc3aKQLkbG/K
         fMIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718665865; x=1719270665;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m4hKfCsSvnFuWZcNbA8B4CyFQky7Ti9MymJXIHxdECs=;
        b=EMpC1fWCu4vKgy7BZzx7+eCu4QjBKdn0GkqGd9r3SloGhMAThAgn4M7IB+tsrKjSgJ
         7oAnQJkMqLOvYvh4GarxFL2nnKB5S/M70yEG5C5aAS3I1ap/C3iATboT5FfeNjUCMIpr
         sFcZ3ERCWO/oLb5po/R2wHgFl4n1BRbP5DezFotFiQ93vTEKHsu/JEaVTwYp6jew8+wM
         /TPKFqWKgPBu7mM90KZrxjx5lTGEZpFIHjnRvTbg9YlQpNGT3gfe/GtkNQ/X4YDkVJc7
         7XBkFOFPt0KVmA7HLhfBcL3Tbqv3pz6/fAn0dKl4kAAVBqn5sJG0PjTjsTMqcpCTgU9F
         Ox2A==
X-Forwarded-Encrypted: i=1; AJvYcCUlTzhHi/tY1EE1YcTxFuLyiWJeJykxasMGjPVNQPAAcXKYFyR9xgZOGnv4LUP1S02mJn7VDLaIFR5CA+bwsk+xg9xKFQSHh1i2
X-Gm-Message-State: AOJu0Yw4fzdgYbu7jgvsK5Or6r8lbec0LdIoFS1XQkwIxbJKtOZRDsPZ
	lt/uxMzoDwCFwsyLTYDD8WS6aOGIuiTH/V0oxVoklPsRHq1iS1lWd97hirt+
X-Google-Smtp-Source: AGHT+IEC0bzcUEsoO8OiuVP/8aCU3f9alLpZzU8NLFcUXi5r7Zf34C+3cd5dkPBoe2CJZAS+4n9ieA==
X-Received: by 2002:a05:6870:618b:b0:250:876d:2a74 with SMTP id 586e51a60fabf-2584298566dmr11552952fac.30.1718665865395;
        Mon, 17 Jun 2024 16:11:05 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798abc105b4sm471409985a.79.2024.06.17.16.11.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 16:11:05 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 11/16] nice.2: fix wrong section reference
Date: Mon, 17 Jun 2024 16:10:23 -0700
Message-ID: <20240617231035.1766780-12-kolyshkin@gmail.com>
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

> On success, the new nice value is returned (but see NOTES below).

Since the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS,
HISTORY: Reorganize sections"), this information is in VERSIONS.

Fixes: 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections")
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/nice.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/nice.2 b/man/man2/nice.2
index 20d8d8ec1..743286eae 100644
--- a/man/man2/nice.2
+++ b/man/man2/nice.2
@@ -51,7 +51,7 @@ .SH DESCRIPTION
 .BR getrlimit (2)
 for details.
 .SH RETURN VALUE
-On success, the new nice value is returned (but see NOTES below).
+On success, the new nice value is returned (but see VERSIONS below).
 On error, \-1 is returned, and
 .I errno
 is set to indicate the error.
-- 
2.45.2


