Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C3DBA2E3590
	for <lists+linux-man@lfdr.de>; Mon, 28 Dec 2020 10:45:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727138AbgL1Jpn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Dec 2020 04:45:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726697AbgL1Jpn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Dec 2020 04:45:43 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35054C061796
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 01:45:03 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id d26so10777407wrb.12
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 01:45:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dQA03QmNQgFBmz0KFbrb2U66U1dvTD7mefDuwufnM74=;
        b=icXu58dlSpwUmhx2JgAHFZ3FduRr8EWYSQGrbuICL2VVCRx2zRqYy7kHZYmV3IW22O
         rpf+iDmVwrmoFrTjllEodHhvw07FBba3rC0wA02LZPzbz6Ni36vYNOBq8YkDEfsmigif
         hLq8K5dQ3EFa0ZA7IfUyG6gldApA9D0apseFPxzKnWcN5pgNUci/d5Q8XOdDMXsVxrCv
         fNaFc+TTkK0hPPg3g6r6/gtfnKRsQEKiT7ZcaGOaTJ8qvJ2aLNi6t/b7J7JCLIAM2W7A
         dHlrc03qyZAlV1SATKMwwaerNWrCkKJM7hl3abyHNlT4GUWnXRr/Fjwrcc1iJq5+bDPo
         KQEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dQA03QmNQgFBmz0KFbrb2U66U1dvTD7mefDuwufnM74=;
        b=TDQ7KVGqcCSDow6HiwpXKjX7oQMtVQhBeVMe88R9rJ3S/52Sop+riT6GAIpT5VvLx+
         1e5eivPXDn96K9S/DgcK8ib04kdTBjicz77xufaJVYgGTem3XTCGN4Bw5bocLxcYZ6gm
         SnxQY6pn01PMDrpizCCbNn8R2u0Gywvn+CDK91KQYcTHEYnVgNi6FgHn8a+YeCvC7Crp
         MHYnSd63C64vamgej3GPDcFrJp5yo1m2Xt2tL0MO1HNvzjBFzYW7p2rZymYt8kI55q44
         oxOOOwtpHPNPL4riEQ8aVWrKn9K9UlqQlkqCEkwbSHErGQNxgK+ZYUmT+3Hi7MxOYO/a
         obpw==
X-Gm-Message-State: AOAM530lFiXS4Fbj2miKEF7wQV1XioGWUDvaA9GIY0lY+2WUj5kup102
        8UDFw/40tfgocteVUrMJYnA=
X-Google-Smtp-Source: ABdhPJxgPKTmaKy0RiCwkXVVz2sFbVXqxaJswPY54Qit7req8Oy6f4LR1WHg+XR4dXqh80aRHg/f4w==
X-Received: by 2002:adf:f605:: with SMTP id t5mr49326411wrp.39.1609148701882;
        Mon, 28 Dec 2020 01:45:01 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id c6sm32119165wrh.7.2020.12.28.01.45.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Dec 2020 01:45:01 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Subject: [PATCH 3/4] ftime.3: tfix
Date:   Mon, 28 Dec 2020 10:42:12 +0100
Message-Id: <20201228094211.4917-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201228094211.4917-1-alx.manpages@gmail.com>
References: <20201228094211.4917-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Jakub Wilk <jwilk@jwilk.net>

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man3/ftime.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/ftime.3 b/man3/ftime.3
index fa28daccd..658ed300c 100644
--- a/man3/ftime.3
+++ b/man3/ftime.3
@@ -80,7 +80,7 @@ function and the
 .I <sys/timeb.h>
 header have been removed.
 To support old binaries,
-glibc contines to provide a compatibility symbol for
+glibc continues to provide a compatibility symbol for
 applications linked against glibc 2.32 and earlier.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
-- 
2.29.2

