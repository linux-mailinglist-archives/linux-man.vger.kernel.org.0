Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2456A330485
	for <lists+linux-man@lfdr.de>; Sun,  7 Mar 2021 21:29:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232861AbhCGU20 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 7 Mar 2021 15:28:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232858AbhCGU1v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 7 Mar 2021 15:27:51 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5F36C06174A
        for <linux-man@vger.kernel.org>; Sun,  7 Mar 2021 12:27:50 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id r10-20020a05600c35cab029010c946c95easo2515200wmq.4
        for <linux-man@vger.kernel.org>; Sun, 07 Mar 2021 12:27:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cccHNo49J/XaeQjPwbSlBj/4kh4QbBBnORfWWb2I8sY=;
        b=C3ojgbb5JARkhZnbiEJrUtleGyhF6vf9gJ7SzNd8TC5vBCAjkjJXqGnK6Ter2dZb2i
         5KUHK5JYakMb/LlaqBiMI/FmktUQRCbb6AvC8urmvHGXqkBfcUvkHgqDBjCSGtcA5mK0
         mC8b//gKhz68IgZzkw9S9mLnknMu82dwedfU3p8L0TrQmKTVrrg0WfEkgeY3B6EJ4g2G
         /FSJSohktY/NkmQQQ/+q55FNP878gkY89ZKxCE5I2Ln9Gs3SgK20i6KZBKd/IVFTcLK7
         NZD9zyY1Dh7xvBj4dirLxBfzGaO7sf5RXJ7kSC2FoQ6nDEAjmC73T5A+So9L+EpXrLIQ
         JcAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cccHNo49J/XaeQjPwbSlBj/4kh4QbBBnORfWWb2I8sY=;
        b=tBquECtGe+Hi2fXrpMvcVhvuCuQb1U65oduU6CxAoa6UGsnYZ1oUwN5TAX9xlaOnR7
         UaOHkzwE99+1oOkL/CewNBoIhiAxL+RhGr/Sn0C3rF8xfzZDTYBEkN5/xFOl6YmhCTzg
         t9Wv6ML3cLJSF8S1xQsAvXxQkhjvR6kYeTsFUx2pG5Sobq4YvXC6Qxc1y9YubZXkQ68v
         9AchJvuN0KrYiuNtdTCVcIGqnZ2bhk2ippuAXJSg+RY3yjMhbkOShdiW2RyG/GA3enej
         SlkJkObaYVKO3vZTfUZX1PR9uDoGe3Xdo2JBCFpXjtFAx7Q29pmiOT2zf2W/jM9oDQhm
         fozA==
X-Gm-Message-State: AOAM532EYu7z+W73IJM73InvCclB0qOrPhp7F0dfEzPXQgXJOilZ2IwF
        e+L04UjpwBqnGi35p4tOkpY=
X-Google-Smtp-Source: ABdhPJyOS9c1SMDngAvUuDd/3ShV2uebgoauLfyxMsl1Zs1KB1sl3nI6FLtoFGih04kQ+JOKvH9kZQ==
X-Received: by 2002:a05:600c:47d7:: with SMTP id l23mr19344593wmo.155.1615148869602;
        Sun, 07 Mar 2021 12:27:49 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v2sm11664683wmj.1.2021.03.07.12.27.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Mar 2021 12:27:49 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Stefan Puiu <stefan.puiu@gmail.com>,
        Walter Harms <wharms@bfs.de>
Subject: [PATCH v2] scripts/bash_aliases: Make man_lsfunc() more robust; Add sed_rm_ccomments().
Date:   Sun,  7 Mar 2021 21:26:35 +0100
Message-Id: <20210307202634.1215744-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210307195622.1140064-1-alx.manpages@gmail.com>
References: <20210307195622.1140064-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This patch makes man_lsfunc() search for the function prototypes,
instead of relying on the current manual page formatting,
which might change in the future, and break this function.

It also simplifies the code, by reusing man_section().

Create a new function sed_rm_ccomments(), which is needed by
man_lsfunc(), and may also be useful in other cases.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Michael,

Never mind the previous email.  I fixed it and merged two lines that
could be merged.

Regards,

Alex

 scripts/bash_aliases | 39 +++++++++++++++++++++------------------
 1 file changed, 21 insertions(+), 18 deletions(-)

diff --git a/scripts/bash_aliases b/scripts/bash_aliases
index d9b6047d1..ba6544a97 100644
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
 
@@ -106,25 +121,13 @@ function man_lsfunc()
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
+		man_section "${arg}" 'SYNOPSIS';
 	done \
-	|sed -n "/^SYNOPSIS/,/^\w/p" \
-	|grep '^       \w' \
-	|grep -v ':' \
-	|sed 's/^[^(]* \**\(\w*\)(.*/\1/' \
-	|grep '^\w' \
+	|sed_rm_ccomments \
+	|pcregrep -Mn '(?s)^ [\w ]+ \**\w+\([\w\s(,)[\]*]+?(...)?\s*\); *$' \
+	|grep '^[0-9]' \
+	|sed -r 's/^[^(]+ +\**(\w+)\(.*/\1/' \
 	|uniq;
 }
 
-- 
2.30.1

