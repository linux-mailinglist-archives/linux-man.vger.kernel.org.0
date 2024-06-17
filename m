Return-Path: <linux-man+bounces-1236-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5DA90BF9B
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 01:11:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7DA26B210AF
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 23:11:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCF1E199386;
	Mon, 17 Jun 2024 23:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UAK9xNdJ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49116198843
	for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 23:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718665865; cv=none; b=P2XEAdGTB+ZYTDuf/SBHYD8ut6tJYaa795Psbyo4tW+BHPXaIRVm2nms146atiIIbTrQMGr6UFZucmHAP+yv83T7MIqExwKJj/x6/lg044p5vK6nxzE5MQsVNuHN+cOpUjdihY+zcubAvY8/FHJYk0mwGlLB/7ft0C7d+h6vWDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718665865; c=relaxed/simple;
	bh=JJOf+s/T2eq0bQQjLHsFc8LUD7UqZkTc+7rFgLHmgOA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cI3OTddnSkj5QzgBtardBJIftpyKtAoxne/N1jg+kCplDoObITzXPq0XjmRrF8gGVqbFmIg2xdGV2F4xq6RRpI482lqvgtY05/SO2uT4BHLpK3C3AAud2RWQLqUYHkhLMKcb+CUHZSq8ch+lA9TYR80KaaOK/3RRtNX8TMXV7gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UAK9xNdJ; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-254e42df409so3098677fac.0
        for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 16:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718665863; x=1719270663; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vco8QehzIcb0XPKmogjkIbgkR348cCCKI9F0aH5oYhY=;
        b=UAK9xNdJlTdAOIHaGYFsC2riVZv9U582SJpbtuHsI3JFvjg9sFB/DQDiDY0v7h0wee
         rwYXgCMjslwvH6R8sug7bYl1yvkn9+iJqc27MLOxbjZla74ZbOOzlZiXM+9maFxHGvE3
         C7KfJQX+mms1RXZYFalOj76Jbz6hXlaWNXKqtkhB97dFikbU/cC02eBfukiL2Y9Zdni9
         LxRHgUGdoqFYXiH1hj+ba5Eag915cWnkzlmf36BXxRhGzEbT5RU1wbvcpxUv1gQG7Mdv
         5G/C0moIkoo+I3L+WNzY90HjsLX1HqAsdc7BOsACws7l68iw7s6cnSRbmTz3osE2rkmx
         lv8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718665863; x=1719270663;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vco8QehzIcb0XPKmogjkIbgkR348cCCKI9F0aH5oYhY=;
        b=dnRh/sn+Ed9+h5KSmUCynKxkBm6iUFpbpffsvCfmML7OKKXL0u4OFAdKmgQRPLWDT9
         O0AefHWnYPecXJqVR77cPvI7fYMLodRTVAuk3q2r/JZBH38l7RaXVt0+wEXb7ukAC+dk
         tSsyVQwSWNsC1IV2XNbjs96wgyRKjA4VPMymdzF5LcA2AB/tK82vB779cTy+1UqrR2IP
         kE+DQFqfXVEkgBqM6kd6t3LDyK9Zmh0oxoP9NdMCq2n6LMtwUwKxqHWKsnT6TNxV49k+
         Eyw3ombEzrzJU2eRajVYpo4Y2gyenoXeki9W9CcwBhjIimc3jGGEvAJKsp0AQU1PeopR
         glVw==
X-Forwarded-Encrypted: i=1; AJvYcCVhp7nNe4+fiYlK3VO0ZCUkRD9VyPDNfE/n+baYil7ORHdy+ZJi4ZNlOc5tDCJ+4OyQrE8YZv7bvBKTnVDv98+/uHXuabBAwscP
X-Gm-Message-State: AOJu0YzpsCbve5uO7CFTQhcoI2CWWi6Itps2D6KQXdRJZFeYUw9yvW7g
	iAtJcY8k6B81F27DyWryWH5WjZlap82GlhXcOWQGEJA7yWYsOtvI
X-Google-Smtp-Source: AGHT+IEoEcgmAxTPZ1DeMaPF9Sn0MvgwoGnjfKhdCOhe7IKXcnUzxpgDvga7MG5NWx/Dd8GdnIdJLA==
X-Received: by 2002:a05:6870:469f:b0:254:bd24:de85 with SMTP id 586e51a60fabf-258428f6e6emr12420884fac.16.1718665863310;
        Mon, 17 Jun 2024 16:11:03 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798abc105b4sm471409985a.79.2024.06.17.16.11.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 16:11:02 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 09/16] mkdir.2: fix wrong section reference
Date: Mon, 17 Jun 2024 16:10:21 -0700
Message-ID: <20240617231035.1766780-10-kolyshkin@gmail.com>
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

> Whether other mode bits are honored for the created directory depends
> on the operating system. For Linux, see VERSIONS below.

Since the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS,
HISTORY: Reorganize sections"), the discussion about permission
inheritance is in VERSIONS.

Fixes: 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections")
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/mkdir.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/mkdir.2 b/man/man2/mkdir.2
index 1d9cddbe6..3e56475c3 100644
--- a/man/man2/mkdir.2
+++ b/man/man2/mkdir.2
@@ -53,7 +53,7 @@ .SH DESCRIPTION
 Whether other
 .I mode
 bits are honored for the created directory depends on the operating system.
-For Linux, see NOTES below.
+For Linux, see VERSIONS below.
 .P
 The newly created directory will be owned by the effective user ID of the
 process.
-- 
2.45.2


