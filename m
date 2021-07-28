Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9063F3D9684
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231268AbhG1UUX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231334AbhG1UUW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:22 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26B7BC061765
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:20 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id j2so3997132wrx.9
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KIPpbYcadHpfJTc67HBiGrfaEsT/04llPlrTE4rN8d8=;
        b=loGerpeVgZQS3Mk+NmXsc6OmQGsoUAZzC3zC7XpvylIvIkfLsQmf4aIxr8POuQEhV5
         9BuOF7Xap/jpZwQdBnupgShNxQxF9kTZy9GnHXU3zlBe9+OERF1E8ZBFCwF36HgqWwKZ
         BG1Zri+o7R9JrfFNxIpN4vVyQYvxod1d5blsFJYkCOgR17cbLSplxbTZemlt74+EbJhQ
         VkU+S8We0GPfNY/NQy/akkHrsmQUV7EtuVgbR6mWjKhIt8+zAo/DgkTXequ5zlC2UrOR
         Uq7j6leP9iY0xuGGMm4Iuvojb8LjxemY2kqWoxos7XgHSKeezNEJ9AC+pnc3GQMD4qfH
         YltQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KIPpbYcadHpfJTc67HBiGrfaEsT/04llPlrTE4rN8d8=;
        b=SOZxuJ1vu2FFHyD1lnqqrycBqqkhX2YfFreUP4EEpvKs9aijQ1yB1+odnEdOxi1ioE
         4713sU6110MhnZrA2LmMPlarmKqhv0HJpS0H4rGvqiy5fCCuHnWPtZ1YU+3+EFOeaFmf
         SW+FspQfqAkGlhwLdkDteVGN6OQ3RGZ19qIjIWnvbs9vh/SDVNH8Uf9FMiLsKgfm+m+9
         PP7WvsxuF3A4J8wfEQoVRcb60fD5VLZ1lp52y9bfEGhXrDCyngbipiSzGxhl/OHyiqeJ
         i6M54LgAqHi9kSshKzZ2inOUdHCwSspUpSrPQfvaewPr85atfL70l6LDqHhe920ql5GU
         6QAw==
X-Gm-Message-State: AOAM533ph7scH0e/7/oT5dnioRxIdwslAXFT1F1yL7QbPJg946hGp175
        +iah5ZW39xZT10Wj/k+nc/Y=
X-Google-Smtp-Source: ABdhPJzc5utpIGsxkstayXLFVhO7tQXBtsmqzfxiRvMqCTSOQWCnut01+wbkCzoye95/5xzGYMNYiQ==
X-Received: by 2002:a5d:4585:: with SMTP id p5mr1069334wrq.265.1627503618826;
        Wed, 28 Jul 2021 13:20:18 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:18 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Dan Robertson <dan@dlrobertson.com>, linux-man@vger.kernel.org,
        "Darrick J . Wong" <djwong@kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 06/32] man2/fallocate.2: tfix documentation of shared blocks
Date:   Wed, 28 Jul 2021 22:19:42 +0200
Message-Id: <20210728202008.3158-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Dan Robertson <dan@dlrobertson.com>

Fix a typo in the documentation of using fallocate to allocate shared
blocks. The flag FALLOC_FL_UNSHARE should instead be documented as
FALLOC_FL_UNSHARE_RANGE.

Fixes: 63a599c657d8 ("man2/fallocate.2: Document behavior with shared blocks")
Signed-off-by: Dan Robertson <dan@dlrobertson.com>
Reviewed-by: Darrick J. Wong <djwong@kernel.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/fallocate.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/fallocate.2 b/man2/fallocate.2
index a62706193..b4cb3516f 100644
--- a/man2/fallocate.2
+++ b/man2/fallocate.2
@@ -81,7 +81,7 @@ Preallocating zeroed blocks beyond the end of the file in this manner
 is useful for optimizing append workloads.
 .PP
 If the
-.B FALLOC_FL_UNSHARE
+.B FALLOC_FL_UNSHARE_RANGE
 flag is specified in
 .IR mode ,
 shared file data extents will be made private to the file to guarantee
-- 
2.32.0

