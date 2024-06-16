Return-Path: <linux-man+bounces-1200-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B609909B0A
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 03:19:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 35AE91F21A38
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 01:19:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98B31154C1C;
	Sun, 16 Jun 2024 01:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OfZBhq24"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083F0154C14
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 01:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718500781; cv=none; b=PkG3IW1b+t3l9Ip+giYJRHmhqZi6ZiehkXJnaEOumkLyYHXht0EfujBgAHvqDN9aXFHnj/npUUF9XHZAAp1YIiftMlYlP1MPoNFbVReAyB3N7xqNkfbKzqEPr4tYA/LzMfVxiQ9IfNoOglOHTMfcJyrUr1FdPTzzyW+18ZobGC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718500781; c=relaxed/simple;
	bh=FTwjO+XdBCK6zFSJ9igDg0I14kzjEQ/mK+ei+iSdGBQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ma5AXu+kknZJnhiCN1aOFuNM9UyK7XoK44EHWFGrumv5CHaZS+tgDZivHX6lVemZPdAa7mJ4jbanoIsNtdjzwttcpWqo1l9XJK/G045i/q3i0ZDQwWDC89oewIuyq6P2+t7uaXDA1LJoBgedCdeitSjpbxfp24lYaLQlcJrpKQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OfZBhq24; arc=none smtp.client-ip=209.85.219.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6b2c6291038so4832546d6.0
        for <linux-man@vger.kernel.org>; Sat, 15 Jun 2024 18:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718500779; x=1719105579; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9co8SqoJq4O2NQ6kmihO44vwJbo1IJZQPZbB5T3MqwY=;
        b=OfZBhq24ggQZkFJXh4Wf02pr9IK6vjAd6ST68SVe+Ux5GfbDwPk8mqzlKBLh9jrv1h
         cLr8M3WTE6tIGfat06m/+v7ol5xYWfrKCKUocneOPyZDz4ofCcjJK/Fdx0xqfS+eWhQs
         Lz3B5oZ+p8lZbqVDzeVjBACLM+qRyzrIWENeg0MJQe4kdkcKPffn+i6eDBzdFjzPlgpu
         c0AOksJVyW6hkP1DXnp0bN9zfDkFhXUht10fWFRZOrk05FilG4j2AABWNi67M+h/2EQP
         EKHLL0KM2A8JkhOVIRmnzZsp0e5CmSAHkksqAZT45dw/shyrUGKrQGahDj5BJMLuXpE3
         tvuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718500779; x=1719105579;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9co8SqoJq4O2NQ6kmihO44vwJbo1IJZQPZbB5T3MqwY=;
        b=m8cdwP5jGww+SohtQLhQUKtSYck9ocBV6NvNdo1ISXdouEjfwwX70PQxEF91zmzZ49
         PwX6o6rHP0C3pVIBQ448x/3FyrVqI9PTn9kkvHNRoVWMOV93VQSjcL+XmsH2HHTUb4V0
         Y4y0/3Zr7A7YC2LTDsl5uA1f5sFXOgeilepgcG7nafcRwTdfNgWvgXWjND+Cfm83hhOf
         glPr8B3H1ENw88KFxovHRNCYFukL5dfbR9Iizw2jMHNlKyuS/55jdAQyKeNrlAKgfmDV
         a4lrm46zkDNoG6xp8Hi3SyGEYNgrgDkIXDO5nb4395fXlHQYb1zIv5D4pJeGwbjDVg68
         DpnQ==
X-Forwarded-Encrypted: i=1; AJvYcCWv9iT2totYMerTrFJXJFWK0GFvC7WhDhwcjF7n2mK5EgPNyVPA4eaJOeg0+ps+uo8JkHAmktkgkRUss48y6GfLTug0NqXELfyT
X-Gm-Message-State: AOJu0Yxn+aod0QleY1TNkv/CUocV3DIVF2PlM+R9sdNHcqM1En13W9QQ
	C571Yuj/a2u+wf7i1TNOBYPCEuxcBjm6IpBpScCgkcX5RZbUaiH4LESFwHaH
X-Google-Smtp-Source: AGHT+IFDe4FPDC/pfkry9Hh18uk4PbiYq044irmr3qB8h3q13UrkmLtHUgH0XYof5pXbztp5HTgpbg==
X-Received: by 2002:a0c:e601:0:b0:6b2:ae35:2fe with SMTP id 6a1803df08f44-6b2af16eefbmr127769376d6.0.1718500778932;
        Sat, 15 Jun 2024 18:19:38 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b2a5c18209sm38130626d6.42.2024.06.15.18.19.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jun 2024 18:19:38 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 09/11] stailq.3: fix section reference
Date: Sat, 15 Jun 2024 18:19:02 -0700
Message-ID: <20240616011920.1627949-10-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240616011920.1627949-1-kolyshkin@gmail.com>
References: <20240616011920.1627949-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is a reference to NOTES section, which no longer exists since
the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY:
Reorganize sections").

Fixes: 4131356cd
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man3/stailq.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/stailq.3 b/man/man3/stailq.3
index eca802cbd..c4dbf9450 100644
--- a/man/man3/stailq.3
+++ b/man/man3/stailq.3
@@ -96,7 +96,7 @@ .SH SYNOPSIS
 .\" .BI "                          STAILQ_ENTRY " NAME );
 .fi
 .IR Note :
-Identical macros prefixed with SIMPLEQ instead of STAILQ exist; see NOTES.
+Identical macros prefixed with SIMPLEQ instead of STAILQ exist; see VERSIONS.
 .SH DESCRIPTION
 These macros define and operate on singly linked tail queues.
 .P
-- 
2.45.2


