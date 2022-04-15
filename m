Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA1315033C1
	for <lists+linux-man@lfdr.de>; Sat, 16 Apr 2022 07:48:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356549AbiDOXdd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 15 Apr 2022 19:33:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356571AbiDOXd3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 15 Apr 2022 19:33:29 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D96256C36
        for <linux-man@vger.kernel.org>; Fri, 15 Apr 2022 16:30:57 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id o20-20020a05600c511400b0038ebbbb2ad8so5783060wms.0
        for <linux-man@vger.kernel.org>; Fri, 15 Apr 2022 16:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=91ENE3tccwXrgjyzBHvCz+X5u9yVasrX4NOAH2E0fnM=;
        b=g8MEuEB/UwCDC7drhsWaXalVS31uc71PJ1wqTucrSm2XIOPJHIXVxT2RqsE0kYg203
         OxLq/wyzfyvq/IYzb9JbeSuG07HIwyWLbCb3rCrGiRctKhXz4AOoOnS4JKNsDIkE0IOQ
         /bpU6irQnV3R015xCG8JTMCyA0BAHqMxCKZCwsZgj5/4g/NIcacL0+7wjyLAyD+z25bJ
         5qgeBO/rmvz84SqB1OxvDQGzaZKyCojQ50JHRQD1IJ/FZTxoSFAf5z28Q6bnVSxXrqNr
         xhK+l8/t9mZrftw0X0jqi2n4ZNyw5z2lFzolG3LbWklc1aj1jU0eZvWoF3Ew997r8fTW
         y81g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=91ENE3tccwXrgjyzBHvCz+X5u9yVasrX4NOAH2E0fnM=;
        b=jOIQf8DO0+B52+WmPNw/H2HJrHKQBw0zM1Foe4lIDJJGQuSuA4Gf/khpWImfpUzp7H
         SdJRVb58l3eKTEpuotHizZILoOV9r7NBnia1dxPlFo8dyIv/BVtCAaPOWIuJtUTcG0g3
         cX801xTR3/PeZrEQSLZyFe47ecjlR6hf2sIqmmGIbn04OgC4D3USxBmqKsA5bXMNcFnT
         iLORf24rSghZxruiIBF+EQ8Lx6s9mzkRbjrXTTCgB+xHrx+XUzi4jaSeY+XNIN0P9ecn
         yFnZFKVqOYqfvr+NmhogYItsNR44LNLeVo/6lXgHIMcom1P3l67y9/R8+8FYjtM/owSc
         JhAg==
X-Gm-Message-State: AOAM531IpsYrwC8VIT9JquUEy0EX3jDJv8Raf9F/lHSQ2klmG7f8Ny3j
        281dLu5+cLfyqxjEXXjealE=
X-Google-Smtp-Source: ABdhPJzgS/8uvso5n6Ww+g8J8YDocumQPJtl6v6odL4s2Ldbl1XNzAoniVTyEpj1sFdZ9oP/vQ3qXg==
X-Received: by 2002:a05:600c:3b28:b0:38e:bb86:d68d with SMTP id m40-20020a05600c3b2800b0038ebb86d68dmr877068wms.135.1650065455652;
        Fri, 15 Apr 2022 16:30:55 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id q14-20020a1cf30e000000b0038986a18ec8sm5995473wmq.46.2022.04.15.16.30.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Apr 2022 16:30:55 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        nab <nabijaczleweli@nabijaczleweli.xyz>
Subject: [PATCH 2/3] scripts/append_COLOPHON.sh: Add script to append the COLOPHON section
Date:   Sat, 16 Apr 2022 01:30:47 +0200
Message-Id: <20220415233048.70477-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220415233048.70477-1-alx.manpages@gmail.com>
References: <20220415233048.70477-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I first implemented it using cat <<-, but sed(1) is around 5 times
faster, so even if it's a bit more complex and slightly less
readable, let's use sed(1).

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 scripts/append_COLOPHON.sh | 38 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100755 scripts/append_COLOPHON.sh

diff --git a/scripts/append_COLOPHON.sh b/scripts/append_COLOPHON.sh
new file mode 100755
index 000000000..f277b997f
--- /dev/null
+++ b/scripts/append_COLOPHON.sh
@@ -0,0 +1,38 @@
+#!/bin/sh
+#
+# append_COLOPHON.sh
+#
+# Append the COLOPHON section to the man pages.  This script should be
+# run before running `make dist`.
+#
+########################################################################
+# SPDX-License-Identifier: GPL-2.0-only
+########################################################################
+#
+# (C) Copyright 2022, Alejandro Colomar
+# These functions are free software; you can redistribute them and/or
+# modify them under the terms of the GNU General Public License
+# as published by the Free Software Foundation; version 2.
+#
+# These functions are distributed in the hope that they will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details
+# (http://www.gnu.org/licenses/gpl-2.0.html).
+#
+########################################################################
+find man?/ -not -type d \
+|xargs sed -i "\$a \\
+.SH COLOPHON\\
+This page is part of release\\
+$(git describe | sed 's/^man-pages-//')\\
+of the Linux\\
+.I man-pages\\
+project.\\
+A description of the project,\\
+information about reporting bugs,\\
+and the latest version of this page,\\
+can be found at\\
+.UR https://www.kernel.org/doc/man-pages/\\
+.UE .
+"
-- 
2.30.2

