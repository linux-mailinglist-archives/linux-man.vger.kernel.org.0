Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07460330532
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 00:35:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231789AbhCGXeZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 7 Mar 2021 18:34:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231700AbhCGXd5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 7 Mar 2021 18:33:57 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08EC7C06174A
        for <linux-man@vger.kernel.org>; Sun,  7 Mar 2021 15:33:57 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id 7so9567369wrz.0
        for <linux-man@vger.kernel.org>; Sun, 07 Mar 2021 15:33:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ijZhOAQnc9ylzB/I+kkMpgEbFgAU2wOFEO8eJVpJXlw=;
        b=XlVcIIJBnRZt1TX/D3jdL2qnhZFv3Cp3NooCGlJz+GmwkNHxi0ZQKFFTy42h/d1YSq
         sfqURxc8rh17RiClmk6axwsK1oIEuBLacKsx55/JTbALHn7hw1eMxq6xlKJ3A9KeHQG7
         E1/JwTRQ5Azu4fd2U04ETN3bR+Pc3FoCSAzREHwXt/rC3s64+cQtuxl9DspsXeEfZIlS
         AjqMIxry9lHhv+KJJa3M50Bi7C17civQFOkN3CshTEMJuLW9Ed/Mldf2jLczfzK9AaGK
         sdqO72fqWmLgDqcAK8Dk8akp6B99Ck7l6rAeEcIF2Q46DapdZFEY/7W6SV7AODjyEUo3
         HJ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ijZhOAQnc9ylzB/I+kkMpgEbFgAU2wOFEO8eJVpJXlw=;
        b=GrWA8LPnHpn6WCJfB6/RcL/GwrnM0Docsp8LuJo/OBEwHVZtnyBU+XpOOtNs6lvxKy
         79WVmUETDGMN5xpIbmiSgYlBN2kxobRjY8sag+PmbZ7lcitAB1HFY8nlBog2v/uKSNfD
         MSmkl1AoNW/UUzWGA7pjaIVSzLFOnu2v/fMsmnQ8fqLCI9mWNIgSsp6Tc9WqqluLQrVa
         UhSVtxwXwwDMQdXq8rhQjFpgDB/kIVQfL/bUbNf59Vxru7fbStiL9z02OFf+7xqEQwJm
         dkM7uXBz45Whjb0Ce66OO+8ilynahWPsI0s2WgZd0qXcIzVVIgcXPwUAxQN6OH7waBsV
         aL3w==
X-Gm-Message-State: AOAM5320+VKCGQioZ7fapihdHqIb33A2WQeyQS7/lHo4rAeMb1hLTixC
        vLK9Hon3ppshm358esVcVVU=
X-Google-Smtp-Source: ABdhPJzJYsGRQMGaJZmebgLcHhsUqbw1KafcTgkkBIC+whuJHBhTDy3DCKlHDIkN9u5/6b+KiR+HfQ==
X-Received: by 2002:a5d:6810:: with SMTP id w16mr20198671wru.333.1615160034670;
        Sun, 07 Mar 2021 15:33:54 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id p16sm17553819wrt.54.2021.03.07.15.33.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Mar 2021 15:33:53 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Stefan Puiu <stefan.puiu@gmail.com>,
        Walter Harms <wharms@bfs.de>
Subject: [PATCH v4] scripts/bash_aliases: Make man_lsfunc() more robust; Add sed_rm_ccomments().
Date:   Mon,  8 Mar 2021 00:32:16 +0100
Message-Id: <20210307233215.1901882-1-alx.manpages@gmail.com>
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

v3: Simplify regex

v4: Use POSIX -E instead of -r for sed

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
+	|sed -E '\%/\*%,\%\*/%{\%(\*/|/\*)%!d; s%/\*.*%%; s%.*\*/%%;}' \
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
+	|sed -E 's/^[^(]+ \**(\w+)\(.*/\1/' \
 	|uniq;
 }
 
-- 
2.30.1

