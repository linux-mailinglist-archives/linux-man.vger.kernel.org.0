Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6C3D3304BA
	for <lists+linux-man@lfdr.de>; Sun,  7 Mar 2021 21:57:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232892AbhCGU5R (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 7 Mar 2021 15:57:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233004AbhCGU47 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 7 Mar 2021 15:56:59 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9124DC06174A
        for <linux-man@vger.kernel.org>; Sun,  7 Mar 2021 12:56:59 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id d139-20020a1c1d910000b029010b895cb6f2so2544241wmd.5
        for <linux-man@vger.kernel.org>; Sun, 07 Mar 2021 12:56:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=L5yGTHG3xLMW2XLvE8EOquLzGlGGAve/Ze+tkQqa2Tc=;
        b=TYg+5vmMF71L8GIsZ+WHwEimsK4+QhxbQ8WW+9vGpoolYTYB8ADaG4tH+S0GUMbrr1
         cFDo5TUW9xYSHQj3hSn5r9424MCSt4C4fJczP4YQQjc3lvKmoF+TkPVAyl5ztSd1ChH4
         Rym4+bxCGYKmymr7wqdQViqKPkyhmPLblkeis5z8i/jTEdhXzwnKBJBIB9rcF97kGrCL
         DpLjObUY8J6Klr6XnEhwGlO8dv6DDfnNOMWrVaty9OYzvBjvjDIdR+f4TE6y7d1B0WZO
         08qKFoN2a9v/3V8foCveKXexsv6sEV1w5VlIS4WJOXcHYFxQQwijpulBnt4WUoEJHl4h
         UiFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=L5yGTHG3xLMW2XLvE8EOquLzGlGGAve/Ze+tkQqa2Tc=;
        b=mvPsFTNB1el2jyfu7RpytW0eF28i3F5ZwD1xcmygRlUte8jqbg3KxS1s8ZJDjVirEL
         9JVlji0A5oNugEh4+xwN3xACgOSyjxemLwPDX4uzZ0PXL7HYBofhW3QMYLZWT76l3Pty
         l9nf1UwpdyYU0v/LSPNmLbAgMzZPyit8tbSkbTmCQs16sWVhGaHFHWe7uJ4Ed/rUV0ny
         /FNZyBY+pIaBuL1DBZpMmc9WmZJpQpa4iY6g4dSnvBPRadGC8gups79NzwbAuCWqMbus
         LEAuc6Db6jyxFVR0bFUInUu1xrlzrKFnzhl7HFef0pqjQ4EW/DHLJBzXFuutDslEaLt4
         /ptA==
X-Gm-Message-State: AOAM5316wmVSnvo2+ujGQUsw0sv5UVJcGJT0HYNbYxS4ztJwL//KVb5Z
        MUm7zKYj4xu+iH9yvzPcm00=
X-Google-Smtp-Source: ABdhPJxfAJ1/w7Z+70rDyeljA2NdF+H769Ja4TfNimjsI3M2YG1HzXMVpOw6/Gb8wIA5xCHgdLCO8g==
X-Received: by 2002:a1c:a791:: with SMTP id q139mr18651224wme.20.1615150618423;
        Sun, 07 Mar 2021 12:56:58 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id h20sm14207119wmp.38.2021.03.07.12.56.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Mar 2021 12:56:58 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Stefan Puiu <stefan.puiu@gmail.com>,
        Walter Harms <wharms@bfs.de>
Subject: [PATCH v3] scripts/bash_aliases: Make man_lsfunc() more robust; Add sed_rm_ccomments().
Date:   Sun,  7 Mar 2021 21:55:55 +0100
Message-Id: <20210307205554.1376104-1-alx.manpages@gmail.com>
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
+	|sed -r 's/^[^(]+ \**(\w+)\(.*/\1/' \
 	|uniq;
 }
 
-- 
2.30.1

