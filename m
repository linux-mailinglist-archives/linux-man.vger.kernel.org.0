Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA1383778D3
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229995AbhEIVpP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229969AbhEIVpN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:13 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9CB4C06175F
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:08 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id s8so14567614wrw.10
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oDnfy2dPqIcEWEMpNugNp9q53wESxuYnsySAqvENqzU=;
        b=rKa9pAp/e4osbT7tenrBWrX/O88Kp5XtfyPGG4CzslJ7PsPU7x2FLsnIwwDkr9lpHj
         EIFUd9uU97/DAVgvULJJvORB9h9pzh41t0RzxdGn+YvkkmkQDQf2Ncjr9llBC7BlWGpk
         6qWydmSdNYnIAEM57Y2lZN1E4tWMD4VjLWaj0i1O+UubDem7IZhpB4aSgqBb1alkmMYu
         2xTd0UG09CJrwQ9lcplMxYKk4XiObrLolfVdVM6s12p+BeE+p+zO+X4Dvs+cHHk92lTO
         p1Dsi1lQwmRkSNEXPvKnWNvUr7XuBa4f5QH3BCKAbjgFZbDE8w5JOpttZs0x++Pngj2M
         h2MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oDnfy2dPqIcEWEMpNugNp9q53wESxuYnsySAqvENqzU=;
        b=MJW6bjac+b/MK3NmMB/X1PnXo04+BxZ6xiP64fwE+gVIHwyM/24Tk+KxTNeVEgyZ2i
         KrROK4JqK/2hndZlbAFYE2iEU3NHIIyAmZNmlEzR50nxBIIjTMcHQWu9Ia08M+jiuCjR
         fbUkyqMb5WgQyPJRdpqjcb8z3+4h6ppy2Qw3ua2uH8hhv1t0DCt02DjH8SMANWmcMGIR
         779cltPrtzRWv+51NERpzsXc+CmbsSMziLXVoSlHiUtIG3DfWA9weDjDtqvtYkuGdYXw
         kNM2YtnwVi+5FHH6X3rbvMmLaUe67FBrK54uWJyzl42/pLM6E49cS1OAnTNO7DiRy4VD
         ++cA==
X-Gm-Message-State: AOAM530oNfqoDMI6kbOMB47Ps85I/xQFnkDXKata7ezDWMbWI3jKkxcm
        mDs39yJecLo6GbpTU/Cnyv4=
X-Google-Smtp-Source: ABdhPJyyLEkTHYFOxhFEbuUmS56hbYZZZrir1tW2baza2+AUsWU9kLN3grgOCECJQB1/+91uAvrwVw==
X-Received: by 2002:adf:fd82:: with SMTP id d2mr27278359wrr.218.1620596647605;
        Sun, 09 May 2021 14:44:07 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:07 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] scripts/bash_aliases: Add man_lsvar(), similar to man_lsfunc() but lists variables
Date:   Sun,  9 May 2021 23:39:10 +0200
Message-Id: <20210509213930.94120-16-alx.manpages@gmail.com>
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
 scripts/bash_aliases | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/scripts/bash_aliases b/scripts/bash_aliases
index c50108a16..813c00960 100644
--- a/scripts/bash_aliases
+++ b/scripts/bash_aliases
@@ -131,6 +131,33 @@ function man_lsfunc()
 	|uniq;
 }
 
+#  man_lsvar()  prints the name of all C variables declared in the SYNOPSIS
+# of all manual pages in a directory (or in a single manual page file).
+# Each name is printed in a separate line
+# Usage example:  .../man-pages$ man_lsvar man3;
+
+function man_lsvar()
+{
+	if ! [ -v 1 ]; then
+		>&2 echo "Usage: ${FUNCNAME[0]} <dir>";
+		return ${EX_USAGE};
+	fi
+
+	for arg in "$@"; do
+		man_section "${arg}" 'SYNOPSIS';
+	done \
+	|sed_rm_ccomments \
+	|pcregrep -Mv '(?s)^ [\w ]+ \**\w+\([\w\s(,)[\]*]+?(...)?\s*\); *$' \
+	|pcregrep -Mn \
+	  -e '(?s)^ +extern [\w ]+ \**\(\*+[\w ]+\)\([\w\s(,)[\]*]+?\s*\); *$' \
+	  -e '^ +extern [\w ]+ \**[\w ]+; *$' \
+	|grep '^[0-9]' \
+	|grep -v 'typedef' \
+	|sed -E 's/^[0-9]+: +extern [^(]+ \**\(\*+(\w* )?(\w+)\)\(.*/\2/' \
+	|sed    's/^[0-9]\+: \+extern .* \**\(\w\+\); */\1/' \
+	|uniq;
+}
+
 #  pdfman()  renders a manual page in PDF
 # Usage example:  .../man-pages$ pdfman man2/membarrier.2;
 
-- 
2.31.1

