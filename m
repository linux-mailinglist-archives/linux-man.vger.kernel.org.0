Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E5DD3778BF
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229876AbhEIVpC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229699AbhEIVpC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:02 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2673C061574
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:43:58 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id t18so14560655wry.1
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:43:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=v6c1wsXus6jr5f8SsjKbFzv6Y6WgL79ueQ1pbN5k9BE=;
        b=SZaX9WtvMuyBlhIDZT4j2fna5H6yehTzJ3KbalhjK8lBcgsIca/AWX0u57ru2t08g2
         vNXSoVxLNdMXTq1Vd12wUAsLJ5kc/QAMQEA7NQKFYMDy1M1P0EP0AG49XD78tQr+O79P
         Bziwb+FMV2cPcfBElK1wRMeSA8OwUy/nHoIYgook1Yiw+3AY1smaWDI3BbBiMHUvtRo7
         t9mEc1JXQiWpkXlL6c9zlmu0lZO7Ko2EShT1n4v3hz+CP1pB5X/Wuoi+hFxOVwy2a/eP
         HJD0lhNa1pD2ZN2Q2QIfDIbgVADTVTggtZtc92ONqVKHgYugcFwMiQJJCaOYNqytZlwK
         xecg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=v6c1wsXus6jr5f8SsjKbFzv6Y6WgL79ueQ1pbN5k9BE=;
        b=OO5Uw5CCd5glvcTZSiOswo7Q0jxTVdnZqpqcmN1vaJJ3GkcfElZLUc4+YxVN3whO2E
         Ev/c/EVi4B1a42y/dhnSZ8daDtCiIdwqnfRo/HgZMTE/9DIJCaElzFqV6XPNVIknG063
         WZ5mEw0+90dZYg1vsy0ExeLFQgR4h9iGYB1LWRtYo9MVgww9MiMuAMlCvcMpO+egNvzG
         lMuPPqwflzWWm6wmJIKvhqt958XXcHKcNJ9oeIZoKicPopP1q7tYEm5mloC9uoX1MABD
         W6G3WWxfaCiWDIEzdI7aUAzOaNeHoj/9eyV+mYUNpJd5E5QSK2oBKGWyZaAImtokPhAW
         MyVQ==
X-Gm-Message-State: AOAM531jyIvFYJDcQL64bIG7Wvv4gup5pgAnZu/kPFcKOW82g7xiUJhM
        dtu1WfgF43GvamWYzjiHCiU=
X-Google-Smtp-Source: ABdhPJwy2oyBXxZoq8VP6j7HFxI17rhq1wIZcV1Dw3FsGhWFEb1AOtZ4ZFwqHQ5S7fbRjt+WqU0b0w==
X-Received: by 2002:a5d:6c61:: with SMTP id r1mr10973637wrz.151.1620596637566;
        Sun, 09 May 2021 14:43:57 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:43:57 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] scripts/bash_aliases, scripts/modified_pages.sh: Move scripts/modified_pages.sh to a function man_gitstaged()
Date:   Sun,  9 May 2021 23:38:56 +0200
Message-Id: <20210509213930.94120-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 scripts/bash_aliases      | 17 ++++++++++++++++-
 scripts/modified_pages.sh | 34 ----------------------------------
 2 files changed, 16 insertions(+), 35 deletions(-)
 delete mode 100755 scripts/modified_pages.sh

diff --git a/scripts/bash_aliases b/scripts/bash_aliases
index a14c65cd4..8cedc4efc 100644
--- a/scripts/bash_aliases
+++ b/scripts/bash_aliases
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 ########################################################################
 #
-# (C) Copyright 2021, Alejandro Colomar
+# (C) Copyright 2020, 2021, Alejandro Colomar
 # These functions are free software; you can redistribute them and/or
 # modify them under the terms of the GNU General Public License
 # as published by the Free Software Foundation; version 2.
@@ -147,6 +147,21 @@ function pdfman()
 	xdg-open ${tmp};
 }
 
+#  man_gitstaged  prints a list of all files with changes staged for commit
+# (basename only if the files are within <man?/>), separated by ", ".
+# Usage example:  .../man-pages$ git commit -m "$(man_gitstaged): msg";
+
+function man_gitstaged()
+{
+	git status							\
+	|sed "/Changes not staged for commit:/q"			\
+	|grep -E "^\s*(modified|deleted|new file):"			\
+	|sed "s/^.*:\s*/, /"						\
+	|sed "s%man[1-9]/%%"						\
+	|tr -d '\n'							\
+	|sed "s/^, //"
+}
+
 ########################################################################
 #	Glibc
 
diff --git a/scripts/modified_pages.sh b/scripts/modified_pages.sh
deleted file mode 100755
index f6c4a6cea..000000000
--- a/scripts/modified_pages.sh
+++ /dev/null
@@ -1,34 +0,0 @@
-#!/bin/bash
-
-## SPDX-License-Identifier: GPL-2.0-only
-########################################################################
-##
-## (C) Copyright 2020, Alejandro Colomar
-## This program is free software; you can redistribute it and/or
-## modify it under the terms of the GNU General Public License
-## as published by the Free Software Foundation; version 2.
-##
-## This program is distributed in the hope that it will be useful,
-## but WITHOUT ANY WARRANTY; without even the implied warranty of
-## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-## GNU General Public License for more details
-## (http://www.gnu.org/licenses/gpl-2.0.html).
-##
-########################################################################
-##
-## The output of this script is a
-## list of all files with changes staged for commit
-## (basename only if the files are within "man?/"),
-## separated by ", ".
-## Usage:
-## git commit -m "$(./scripts/modified_pages.sh): Short message here"
-##
-
-
-git status							\
-|sed "/Changes not staged for commit:/q"			\
-|grep -E "^\s*(modified|deleted|new file):"			\
-|sed "s/^.*:\s*/, /"						\
-|sed "s%man[1-9]/%%"						\
-|tr -d '\n'							\
-|sed "s/^, //"
-- 
2.31.1

