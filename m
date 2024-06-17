Return-Path: <linux-man+bounces-1234-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7702190BF9A
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 01:11:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 011C6B219A5
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 23:11:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC8F5199396;
	Mon, 17 Jun 2024 23:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RbY+KLRk"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A94D198843
	for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 23:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718665863; cv=none; b=lNh5I4xhiNle9jQ3fBGYDUp48DmcmX139UTw6FQU4KGzTXJzajJhI0xT+Q7Cviyq//aiapFTYSDR9s97tuvM38xDcw+7Rs3+KrjbCOLZEsesVw7Aiv8kmY5pRYxRlnTq7alFhnC+nv5TeYHygjfyFsSnP2gXQSb7oE0EYVPvbV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718665863; c=relaxed/simple;
	bh=aTbTMkzCOHbVMDDu7HPRZSfAlTFVPUkCRNfwYN0d2z8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=E7MK2z7ln3cukupcg3l1cDh+6KpXDyw9pHrBjQyiEb3Q9jtf3R3wVy54IFxjfRSsn0wnyNim4ng3XOjhJcxDH+US8UdSLtsz8qw8e6unbhJR+LLOFOiAAiY/92Po7BSutBhLlSwzBiBoGhcwMVM2lw2dns0MWUHkIVFUh9wniSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RbY+KLRk; arc=none smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-7953f1dcb01so421006185a.3
        for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 16:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718665860; x=1719270660; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jDhGq9C1EVOoD1+elecA9DgmMhrbZQ3zmRFbACASfAk=;
        b=RbY+KLRkJoGMLvEq351uyikfKrjZooh6ZSjCFfcxz81mkkYIQH7K3R8JLajU3GD1Hb
         qWE7dtAywlwgziJax0CdyOaPROwmAwnML2f/6jRUgYCqIl+08BGzKTPEp3wprZXfvywE
         hjSXPyJmcvmnhSMutzOmnRIcU50erbordr2mokTr8xZ5KxvDuG2srb4YW4ee+HK8vpJ2
         IuIgDrLtFdil5/NHM0vY9fVwMmVLB8qasaZAF6J/Y9b7NoHYaNJ+b3qwqQV+REzGe9Jj
         9q+MJp4Vvwq6GfkFeDzoVlQxjWm6HdrwcHoXXCpXYP8ZL9hAXNolDNk5dMS0iR5tfzLU
         1hHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718665860; x=1719270660;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jDhGq9C1EVOoD1+elecA9DgmMhrbZQ3zmRFbACASfAk=;
        b=RvZX9WbZMybZn/b977TU51ivpJH0944bItbuMnvpDuSrED62dtyG0UNpJgjN3vjaFN
         /9CZ69A1DXPEqHngC+/XEYmERdckjtdMHhkYZhIhe2ZuPhHHwCB9b8aC4JOYCIxtK1aR
         pXofqz34uT7PwIhgzz36gi7TgbJQ+W3hKxxY/4WETpTxkOabKY05HaAoLN+RoP5ULRwB
         pLOA2OtxxljI4u6q1Se+6QCxKswigqrLtCxnP9ocbEB9+4bRZWf7A9aQ9pa0KS0mO1lu
         g9MOwtGdD5/B0xSpj31ZpXKp2UHngol9tyNXApdZYAihX+6/0uHsEVND0IZZapQ1sKRm
         t7Rw==
X-Forwarded-Encrypted: i=1; AJvYcCWWYPXO3uaMvseE40QUWfyeVCP5z4Y1I8jrpZvmXkyiCxou2qzzQWUIhlZHr+iMIQNOa3/TPORKH2DwkwkZ4rDPuOJsBxCON2On
X-Gm-Message-State: AOJu0YySGdnUcaYBRB765pqz+0IfImZBi9ptrnQNxafYlWZq1RINn7D3
	Ed928GHMAdfH0oIyaQr/BP/xOxRrSvyDSlMuuo94Ba7MtjznM/Ee
X-Google-Smtp-Source: AGHT+IGjwmUJ6oqznTfsad9Evs1QngWlsuZP6KS0Dg0hCCD0ICUPdTCMsU6b7BLIp4Wi8iriHAh4jw==
X-Received: by 2002:a05:620a:4110:b0:795:dca5:cdb8 with SMTP id af79cd13be357-798d240dd52mr1156764585a.28.1718665860005;
        Mon, 17 Jun 2024 16:11:00 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798abc105b4sm471409985a.79.2024.06.17.16.10.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 16:10:59 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 06/16] gettimeofday.2: fix wrong section reference
Date: Mon, 17 Jun 2024 16:10:18 -0700
Message-ID: <20240617231035.1766780-7-kolyshkin@gmail.com>
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

> The use of the timezone structure is obsolete; the tz argument should
> normally be specified as NULL. (See NOTES below.)

Since the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS,
HISTORY: Reorganize sections"), this information is in VERSIONS.

Fixes: 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections")
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/gettimeofday.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/gettimeofday.2 b/man/man2/gettimeofday.2
index e0231e230..b7fba16d8 100644
--- a/man/man2/gettimeofday.2
+++ b/man/man2/gettimeofday.2
@@ -105,7 +105,7 @@ .SH DESCRIPTION
 structure is obsolete; the
 .I tz
 argument should normally be specified as NULL.
-(See NOTES below.)
+See VERSIONS.
 .P
 Under Linux, there are some peculiar "warp clock" semantics associated
 with the
-- 
2.45.2


