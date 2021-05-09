Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 219633778D4
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229969AbhEIVpP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229925AbhEIVpN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:13 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 263FEC061574
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:08 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id l14so14560625wrx.5
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kCzxgW/fjjc2V3hKGPYjH7OI/YkUZN+eYDz7kmXqmug=;
        b=B/n6J44q6gJ28vX8gEkBTMSanOvlA1Bus5PROkmg6DbspfoXP8CskMBBbmgWPwKKeu
         OFbscXh+T/cdkda6DT5kvJizVf4JaeRCK6HNbU7rqbax2AtkdbsWD0iwfd5Kku5MRx5O
         ui/BmWfzm0RycOaiKix9VczuoYMfXlBN8jg9shfc/bKsSiowQO7nHXF87XNeHoe6mYOm
         RRAV0Qv13BYntFqxqkJ82raHFTHHB5+dGDWnrxGOILfiRZDJRIdt4aqesSkT+bjf1Y+g
         f+XClql5FOvdndaghFSN2nbmsC/pJ4zvcfGdu02QV/2jGXMtM3HNmBoYhNWChw0/pW/p
         Xcmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kCzxgW/fjjc2V3hKGPYjH7OI/YkUZN+eYDz7kmXqmug=;
        b=Spciz6G0orCpMuMNHctzr0kICwwWDQf62Kqc5UKo8978ketTRG4svmecxaermbykQc
         R+4nXbpoS+dNXXOwwM50t9xb4qx/+QVVsQ6jEBmdclVSq22Fa9en2RxqmFBuTiZWtVA8
         RXpKGEhIDYM0jk+3DUHbgCzu8lPHO76i5+bVJcAa+BaM67y6G4uVNFmfp4IDtjCL9/gp
         FbpTcxsEKUJuZZIlFd9D7uhqow9H74r8mrSgov4hWbOfyxs53gGWXzVCFBUr0njq5WZz
         1ZieUW3M1rRPIrWLQ4qc80zjVyH9RcTUZP46Oks4y6WoPrPUuPyfT5tq/TRSYX0x8y/V
         ZEOQ==
X-Gm-Message-State: AOAM530t8PzmkbNDJopLhc7p4aEBGJWE6SdIo5ukXA/WqShH19Q9lWSh
        r8l3NXCT5Y9a4z2hqox1g/0=
X-Google-Smtp-Source: ABdhPJyzeFspp7wILOFsQLOT5WG8Xa5xqJLZkPwmmNelpAywoSc37uuSOs2kXhTgy7vz8aP/P/wR5w==
X-Received: by 2002:adf:d22f:: with SMTP id k15mr26622700wrh.258.1620596646929;
        Sun, 09 May 2021 14:44:06 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:06 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] scripts/bash_aliases: Make man_lsfunc() more robust; Add sed_rm_ccomments().
Date:   Sun,  9 May 2021 23:39:09 +0200
Message-Id: <20210509213930.94120-15-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
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
 scripts/bash_aliases | 39 +++++++++++++++++++++------------------
 1 file changed, 21 insertions(+), 18 deletions(-)

diff --git a/scripts/bash_aliases b/scripts/bash_aliases
index d9b6047d1..c50108a16 100644
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
2.31.1

