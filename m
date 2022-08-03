Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5673158850D
	for <lists+linux-man@lfdr.de>; Wed,  3 Aug 2022 02:12:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229614AbiHCAMh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Aug 2022 20:12:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233658AbiHCAMg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Aug 2022 20:12:36 -0400
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com [IPv6:2607:f8b0:4864:20::d36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C16741D0E0
        for <linux-man@vger.kernel.org>; Tue,  2 Aug 2022 17:12:35 -0700 (PDT)
Received: by mail-io1-xd36.google.com with SMTP id n138so11898287iod.4
        for <linux-man@vger.kernel.org>; Tue, 02 Aug 2022 17:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=CQiQEe8gxNpuVWnfvRJxoPhVBlZL7XGFcZOF6Wy3sKY=;
        b=bzNZvY1UtJsKlWHwH7HYTQs3jGfYg/abRwY6503yHgEv/l/0VMPm62Jm74Zr1yWsh1
         ENBpHmNWWw2Fw4CgJ1KqBMavCJaOps7Ouxsg0cb6NmxElq7x2Y4iOS6Htl2hXYA0UkCn
         2TK/suDFd5FXo2Ul8xykxmHOckXQcYxzlz6ZOxhTIwaspUei/sYq0dOPeQemzQu0p6tH
         wmhj9deq2mQjLNbZO5CRhrEwwAUt7vJZWWOUEMdGkjP9zk0CxRyjwkOQsONI9ndwR67C
         Vycf31j12KT8wqwpDFZ6yn/Xc2ovjAusHXGGRhE2SuOPCd+H6CQqmrEMvmQmvAgBVp2Q
         QXUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=CQiQEe8gxNpuVWnfvRJxoPhVBlZL7XGFcZOF6Wy3sKY=;
        b=QBXTHzuD/XDNfY1Jo7OB3ipHiwudy+OEi46VyYlHrbaaX5But59Mc+yvYtF1Zt2A1C
         kohHgHhhGZQUo8Rk9khLivpd2KOyQgkVnLsrS7cP11AaUOUZHjUTSsM+eR3W1AJGc3S7
         4UJsb0SojEdWMvHBKOMBRDloO0j0PnNVfdJ25zo+qfPOiBTwoJtF4T7cgNqIVFProaN/
         qinCH/yfshouIB3g6P2z8X2ITD3VnAQj1gsHcN7VBG/MkoKhoFwUr8CZJ6Flt8v8QeN1
         nVvO13LzAYb4y4EPOqDzA+SoVlJkqLuGXkLRAjUZpE3iHexKf5R1s2ZEhvhdVwddKpDt
         dOuQ==
X-Gm-Message-State: AJIora9662DhrWBX4nUpoB18S+kP/YyPoJLCJr/Qz8lPNRITpdvN3K3X
        5FAt+hIhGMUI5TpLdNY0Oy3o14QKzVA=
X-Google-Smtp-Source: AGRyM1tisiRNhAJTvZ1sEyDZubj7ijqoNE5lgRc4/TOVlL3PwEqChaRtHcKX5OxTGVFkJM0w/cb2Tw==
X-Received: by 2002:a6b:c983:0:b0:67c:a657:e935 with SMTP id z125-20020a6bc983000000b0067ca657e935mr8563368iof.145.1659485554176;
        Tue, 02 Aug 2022 17:12:34 -0700 (PDT)
Received: from isa ([2601:282:1f20:a71:3e6f:f68e:1c50:9d5c])
        by smtp.gmail.com with ESMTPSA id j15-20020a02a68f000000b0034264f6a809sm4733748jam.14.2022.08.02.17.12.32
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Aug 2022 17:12:33 -0700 (PDT)
Date:   Tue, 2 Aug 2022 18:12:30 -0600
From:   Brett Holman <bholman.devel@gmail.com>
To:     linux-man@vger.kernel.org
Subject: [PATCH] cgroups.7: Document mount option
Message-ID: <20220803001230.7nlxm4i3642rkxup@isa>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

cgroups.7: Document memory_recursiveprot mount option

Signed-off-by: Brett Holman <bholman.devel@gmail.com>
---
 man7/cgroups.7 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man7/cgroups.7 b/man7/cgroups.7
index 2496c06c1..7b5a54360 100644
--- a/man7/cgroups.7
+++ b/man7/cgroups.7
@@ -1888,6 +1888,12 @@ mount option.
 The kernel supports the
 .I nsdelegate
 mount option.
+.TP
+.IR memory_recursiveprot " (since Linux 5.7)"
+.\" commit 8a931f801340c2be10552c7b5622d5f4852f3a36
+The kernel supports the
+.I memory_recursiveprot
+mount option.
 .RE
 .SH SEE ALSO
 .BR prlimit (1),
-- 
2.34.1

