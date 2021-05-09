Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E6773778C5
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229980AbhEIVpI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229976AbhEIVpG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:06 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72973C061574
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:01 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id v12so14543008wrq.6
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XiPHRkX5I+f+Sb3ILrl5Yo5nXh3udTQ9qXJfioNySEI=;
        b=LcRiUDd98LjcdxnS39aW1A8qQbNWGJgxMzj299NXnVUFYf/EmuDrtjE/VZRQlHoB13
         M4uIbNXyzIe5fraI22w9IMYWH7n2HCEa0w6m13FsGEZQqzbasJS6sGgu2lx///lwJo+n
         wmgE4d3ITy3iR5qJBeMDbEeCqEoazpE7dFB7n6C5esPalDdiZYaVARCMD/9yHtvCRm4Z
         UlBAW62+F9EeM+M43raI6DHQdXF040qnvkNESjzwwxLWwXmL7i+1u/cZO2AF4PrQLPxn
         ywpXKQCTcrEeNFsSGptHUjZ7s4AhnVRkZ79oL6jCJZnZUIS5T0rwspeVqjsk46HF2TBN
         pNAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XiPHRkX5I+f+Sb3ILrl5Yo5nXh3udTQ9qXJfioNySEI=;
        b=LvF1BwlL+IkT+1EN6FxgBYR8h8YUnJMBTKj1bZuVwRqUeSc67Q80W857omOkNV5H0p
         GnWt+2O5UXhJMyl7uNos7qbi3Y/AvqWrR4xyKEaaKR/75llMrgeRxC1rSaV2pF4w+Qpi
         BoUr2dm8nHggtMoH+4ATvhRp88IIea4BQn7L/DfoidQmWxsVKugxEfTl1leqr5svz3/B
         S0fXDpZTwnHxE0FHAPfbrl7sJ/gXdcQUKAzwJugkWA8RScglHBHGYF8SBO0VaKHcy7Yg
         dTunUsOZXZhTzDyxWMCSYxlo0RaGrR9fm1ebR31v1R13cvsRTDUnPSlR0zL5b/ZEoJ1l
         u9+g==
X-Gm-Message-State: AOAM531l74RVk7R4dmI2zqNad5PRearXSA4Bcb2XwZ9jYHbpJopuY3YE
        mLk2lIGasFg7agSITPdjZBc=
X-Google-Smtp-Source: ABdhPJxXAbG4dEEH8BeUC98KRdI+wA+I1m/rKafFzddjlE1h7qlfHZglaQmIIMyfRh4xdrcPTJT2PA==
X-Received: by 2002:a5d:6e0d:: with SMTP id h13mr27095822wrz.118.1620596640319;
        Sun, 09 May 2021 14:44:00 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.43.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:00 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Walter Harms <wharms@bfs.de>,
        Theodore Ts'o <tytso@mit.edu>,
        Adam Borowski <kilobyte@angband.pl>
Subject: [PATCH] open.2: Fix bug in linkat(2) call example
Date:   Sun,  9 May 2021 23:39:00 +0200
Message-Id: <20210509213930.94120-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

AT_EMPTY_PATH works with empty strings (""), but not with NULL
(or at least it's not obvious).

The relevant kernel code is the following:

linux$ sed -n 189,198p fs/namei.c
	result->refcnt = 1;
	/* The empty path is special. */
	if (unlikely(!len)) {
		if (empty)
			*empty = 1;
		if (!(flags & LOOKUP_EMPTY)) {
			putname(result);
			return ERR_PTR(-ENOENT);
		}
	}

Reported-by: Walter Harms <wharms@bfs.de>
Cc: Theodore Ts'o <tytso@mit.edu>
Cc: Adam Borowski <kilobyte@angband.pl>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/open.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/open.2 b/man2/open.2
index 6360636af..bac1ee806 100644
--- a/man2/open.2
+++ b/man2/open.2
@@ -824,7 +824,7 @@ fd = open("/path/to/dir", O_TMPFILE | O_RDWR,
 
 /* File I/O on \(aqfd\(aq... */
 
-linkat(fd, NULL, AT_FDCWD, "/path/for/file", AT_EMPTY_PATH);
+linkat(fd, "", AT_FDCWD, "/path/for/file", AT_EMPTY_PATH);
 
 /* If the caller doesn\(aqt have the CAP_DAC_READ_SEARCH
    capability (needed to use AT_EMPTY_PATH with linkat(2)),
-- 
2.31.1

