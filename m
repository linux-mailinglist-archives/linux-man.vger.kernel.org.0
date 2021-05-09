Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36D483778DD
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229876AbhEIVp2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230045AbhEIVpT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:19 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73926C061763
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:15 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id p14-20020a05600c358eb029015c01f207d7so2030800wmq.5
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EskDcWJwoS+Qt4MI+ttWQ2WElluL/AMgtvlSzie6MXw=;
        b=AgLMYlNi6uQ4DRQ4ZDFtSLTllBAVD5xnGRzaDlDiTJDYYKlIcCvL9JGL3iWxuUrCi1
         FslNZH1Qng48GIqNRNcrh4M9JSl4MRHTF7AKe52/LgQQ+54eyhtr/jrVuH6iAaY7xD+L
         C0yTmm0w4iofR5N8NVpr8+ai/rG1DfLjCVyvkcciRpjUPWmp/xFDLFRaZKcSweG5cjtI
         1dqw6SwydENVax4V8iOzsDCT0ZF95adwkYB784jUUpyYvFy34M9H9tB7lPu+GeBlxGK8
         YuPb3k7p6+Gk1DUDXyD7ZYSqcwh1OjwB7clwXMMYicluFW/7bSc0JmWmNzDKsnlWraCB
         j2YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EskDcWJwoS+Qt4MI+ttWQ2WElluL/AMgtvlSzie6MXw=;
        b=uIsK7NwEX9/lTspW0er8lnwSDaP0i0yMUDfmFrb1atQ0zOjKO/mlibQk/dGxuSrWOz
         kh0Ev3TOVwpb5yUQuqSEtu+pyNRy5ru+WLK0C70eAVsJ1vbDWwUmReFk7pymdR/jxWNk
         wv37Mqu/FK4vRPgyqzjRVRb29l+J9nf18nS9yd7L8dgxvcBf60xPwcWQSCNXWX4hPpqN
         cPsPmgiwo48j9j0S74SU9VX/XQV+BXeVDk5ZgrHPuDdJ0L+oBCRv96AXU7w1B5K182Ax
         +f8Cg1Vqyem4zvip8f71rtK7uGniKAWnwlFEyk3ysceQZvQxU/XoTLq6a/eAJ3XYQU4L
         Wohw==
X-Gm-Message-State: AOAM53182GYXjLTCqwOU5AVyKKZ+0EWvE0ji72d4MZxtleUZnJgKjfdv
        W7ihv7QodmmPAbGPBQMYlgc=
X-Google-Smtp-Source: ABdhPJzjJwdVc3ExJJsUPb6yaYo4KeaeJqpnzJTcZKp1/wREEtRhyj4Kh0vCIkB+N9ot0ya/TMk8Rw==
X-Received: by 2002:a05:600c:3205:: with SMTP id r5mr22667158wmp.78.1620596654222;
        Sun, 09 May 2021 14:44:14 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:13 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] scripts/bash_aliases: man_section(): Accept multiple sections
Date:   Sun,  9 May 2021 23:39:20 +0200
Message-Id: <20210509213930.94120-26-alx.manpages@gmail.com>
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
 scripts/bash_aliases | 29 +++++++++++++++++++----------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/scripts/bash_aliases b/scripts/bash_aliases
index 813c00960..7b1b7da9c 100644
--- a/scripts/bash_aliases
+++ b/scripts/bash_aliases
@@ -85,26 +85,35 @@ function grep_syscall_def()
 ########################################################################
 #	Linux man-pages
 
-#  man_section()  prints a specific manual page section (DESCRIPTION, SYNOPSIS,
+#  man_section()  prints specific manual page sections (DESCRIPTION, SYNOPSIS,
 # ...) of all manual pages in a directory (or in a single manual page file).
-# Usage example:  .../man-pages$ man_section man2 SYNOPSIS;
+# Usage example:  .../man-pages$ man_section man2 SYNOPSIS 'CONFORMING TO';
 
 function man_section()
 {
 	if ! [ -v 2 ]; then
-		>&2 echo "Usage: ${FUNCNAME[0]} <dir> <section>";
+		>&2 echo "Usage: ${FUNCNAME[0]} <dir> <section>...";
 		return ${EX_USAGE};
 	fi
 
-	find "${1}" -type f \
-	|xargs grep -l "\.SH ${2}" \
+	local page="$1";
+	shift;
+	local sect="$@";
+
+	find "${page}" -type f \
+	|xargs wc -l \
+	|grep -v -e '\b1 ' -e '\btotal\b' \
+	|awk '{ print $2 }' \
 	|sort -V \
 	|while read -r manpage; do
-		<${manpage} \
-		sed -n \
-			-e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
-			-e "/^\.SH ${2}/p" \
-			-e "/^\.SH ${2}/,/^\.SH/{/^\.SH/!p}" \
+		cat \
+		<(<${manpage} sed -n '/^\.TH/,/^\.SH/{/^\.SH/!p}') \
+		<(for s in ${sect}; do
+			<${manpage} \
+			sed -n \
+				-e "/^\.SH ${s}/p" \
+				-e "/^\.SH ${s}/,/^\.SH/{/^\.SH/!p}"; \
+		  done;) \
 		|man -P cat -l - 2>/dev/null;
 	done;
 }
-- 
2.31.1

