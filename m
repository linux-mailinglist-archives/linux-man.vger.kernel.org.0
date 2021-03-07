Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E9CDD330464
	for <lists+linux-man@lfdr.de>; Sun,  7 Mar 2021 21:00:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232772AbhCGUAM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 7 Mar 2021 15:00:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232744AbhCGT7s (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 7 Mar 2021 14:59:48 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FCA3C06174A
        for <linux-man@vger.kernel.org>; Sun,  7 Mar 2021 11:59:48 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id l22so4818372wme.1
        for <linux-man@vger.kernel.org>; Sun, 07 Mar 2021 11:59:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bymLzqmS2qDcVYil8xkEGvWqh8xPofddTaMrE1grZWY=;
        b=tAXGhX8C7wGERX9hImWHRxqu/7cCPFUM6O/ivkd8aFjyuFkNreQAz5RufL5WIFVZmU
         U5aEwUcm3BVhPkuNO1PNiKfjnIt8JdeaqQGbRRYMON9AKmbuaOROO5S1l4ccsUG5gg9y
         0HfFBKS4Q3Oa2CXSUV6yE4AjlLwPqO1Zh4FO7bDQbdtPSWCgstMaLH5JiuVZsly22kNj
         yG6b3QEX3MWq5qvdDecHwd028gsW+xJXxD3KpUdCcoz9HqGi72/vr3rkuGt4grexhHTl
         M91lbCaO78lAXddCu+xboM4+Y30JGT/cYvTNJF6oICS39dkRwvxrN56tF93BkkgU2H+g
         m+AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bymLzqmS2qDcVYil8xkEGvWqh8xPofddTaMrE1grZWY=;
        b=qzCczObLwOJsQey6K132APmcvdZE2qpqmg4XEZ2j38pJaBzhAMQ8QLLATSLOcVDA6F
         tO9t15xd+2Z3L/VYFCec6gEsh1qh9M2CgfT65YtdrvT4Yen0uHC4OqIe+tMu9FWt1H20
         ylr3o3RC+1XzO7go/702HkzEeALEb850f7aOijDbssGOy/iXQST6YZCsuuX/MF0IxlY4
         vDvMG0AYDTt4VDc6UxKBevPPK9dY349mw+7iU8RFa9Z69NhJWwsE8EW3xAPcHfXHPNmD
         7S94hY2q1/NrJzuE3yA0Uh0oMMUTAZKIv6TIG9DXIcLmPB5sDK0GRm2IjPkpY417TAR4
         9+rQ==
X-Gm-Message-State: AOAM530AgbRgK2huvD8M5TB6mT893SNfZCd7DIqeAybSxaI/gPnmaFFx
        9d3As/szzDlGq5sn95kTyxhkI42nl2E=
X-Google-Smtp-Source: ABdhPJwD4rrBh+AfPPdgfHbI+/wPnU6/f2HM6ZQDM0FVZGI0md5t9O8JMQ5P+wt2TA8Hs+rJb6ZLhw==
X-Received: by 2002:a05:600c:409:: with SMTP id q9mr19257257wmb.105.1615147187085;
        Sun, 07 Mar 2021 11:59:47 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k11sm15008200wmj.1.2021.03.07.11.59.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Mar 2021 11:59:46 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Stefan Puiu <stefan.puiu@gmail.com>,
        Walter Harms <wharms@bfs.de>
Subject: [PATCH] scripts/bash_aliases: Make man_lsfunc() more robust; Add sed_rm_ccomments().
Date:   Sun,  7 Mar 2021 20:56:23 +0100
Message-Id: <20210307195622.1140064-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This patch makes man_lsfunc() search for the function prototypes,
instead of relying on the current manual page formatting,
which might change in the future, and break this function.
It also simplifies the code, by reusing man_section().

As a side effect, this change fixed some corner cases, where this
function failed to find a function, or listed a wrong function.

Create a new function sed_rm_ccomments(), which is needed by
man_lsfunc(), and may also be useful in other cases.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 scripts/bash_aliases | 40 ++++++++++++++++++++++------------------
 1 file changed, 22 insertions(+), 18 deletions(-)

diff --git a/scripts/bash_aliases b/scripts/bash_aliases
index d9b6047d1..12fb203e1 100644
--- a/scripts/bash_aliases
+++ b/scripts/bash_aliases
@@ -20,6 +20,21 @@
 EX_OK=0;
 EX_USAGE=64;
 
+########################################################################
+#	C
+
+#  sed_rm_ccomments()  removes C comments.
+# It can't handle multiple comments in a sinlge line correctly,
+# nor mixed or embedded //... and /*...*/ comments.
+# Use as a filter (see man_lsfunc() in this file).
+
+function sed_rm_ccomments()
+{
+	sed 's%/\*.*\*/%%' \
+	|sed -r '\%/\*%,\%\*/%{\%(\*/|/\*)%!d; s%/\*.*%%; s%.*\*/%%;}' \
+	|sed 's%//.*%%';
+}
+
 ########################################################################
 #	Linux kernel
 
@@ -106,25 +121,14 @@ function man_lsfunc()
 		return ${EX_USAGE};
 	fi
 
-	find "${@}" -type f \
-	|xargs grep -l "\.SH SYNOPSIS" \
-	|sort -V \
-	|while read -r manpage; do
-		<${manpage} \
-		sed -n \
-			-e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
-			-e "/^\.SH SYNOPSIS/p" \
-			-e "/^\.SH SYNOPSIS/,/^\.SH/{/^\.SH/!p}" \
-		|sed \
-			-e '/Feature/,$d' \
-			-e '/{/,/}/d' \
-		|man -P cat -l - 2>/dev/null;
+	for arg in "$@"; do
+		man_section "${arg}" "SYNOPSIS";
 	done \
-	|sed -n "/^SYNOPSIS/,/^\w/p" \
-	|grep '^       \w' \
-	|grep -v ':' \
-	|sed 's/^[^(]* \**\(\w*\)(.*/\1/' \
-	|grep '^\w' \
+	|sed_rm_ccomments \
+	|pcregrep -Mn \
+	  "(?s)^ [\w ]+ \**\w+\([\w\s(,)[\]*]+?(...)?\s*\); *$" \
+	|grep '^[0-9]' \
+	|sed -r 's/^[^(]+ +\**(\w+)\(.*/\1/' \
 	|uniq;
 }
 
-- 
2.30.1

