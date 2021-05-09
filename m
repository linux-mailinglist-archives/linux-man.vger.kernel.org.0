Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5DB33778E1
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229815AbhEIVpa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230076AbhEIVp0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:26 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60931C061342
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:19 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id l2so14547660wrm.9
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ag3KOw257bICJKiWfSHjr5jGZKUsnLOEajh052VpAWM=;
        b=Cq0sC6ZlxdGba1a2OlBaMgPSPvSPCuWuj2qnJCY9aGy0XAZz0Nzua9B3GKhNhlwrGd
         03BzUXHhUs2+3HdWNoO20u6bZ6PhXDHPlee2OxgYVTR6r326sVVnnzc2m9q/Dy4d2IqL
         QFZd2hPsyxdKbf6DfN8fnPYxWspsjb4/pwNODyRdFwgtBTIepFsmokAiEeVTAxLhGOcF
         jAb30olCEIarvhR/DQd7z/28N7zXy/IR6L/D/KDjO3LeT0540kioYc5OJkuw+9cFbUbD
         fOqVSzHB+6TB8wGHrveoJneufCIqhIdyZD/hziNoDh4wlfaNY3+hvVT02VrTKVcKzSD9
         17WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ag3KOw257bICJKiWfSHjr5jGZKUsnLOEajh052VpAWM=;
        b=Ub2459KPQOed7uzIVzKNYNV4rPCa6scKmAQ6hpcI3E7YmvSttPTXa8I3zyIdBfx1Os
         p+RZS8ZTevLhtgZ8w6RfluAHGrUhIGFte6AE0ztS4ihz9ZB2E1dF+ElXOKnMQXgQa/uR
         5P9U250qP7QURXO5NoABo/QXEotF7Fv0tboiutSQycTM2HoiPGyg2q7XZKYJ04Yf4UyM
         TFazcX1J6AyIGArQDZ1wlPilKu224o/bnayRkS26Y49/O+Mkvjue02zemyypanutDsqw
         5PeGlx/U4kdfFuaY1iLhCHNc3RlBAHovo64yjZXIV2KyLhpLMonsc0daUQ+mnk8VpBOE
         v7nw==
X-Gm-Message-State: AOAM532/7ndvh30imbUbIfrFoU8zzMe9FOy0IQksNyIhkOSOSan2j5OM
        Iu8BcRIu2X44T6VwoKmAGks=
X-Google-Smtp-Source: ABdhPJzIGhUG1rsYVgyJhtplwehNKgLxS0KbjmJjpVzyzNECXvB48/XVXkThd7Cg3wid1NBKGzuBig==
X-Received: by 2002:a5d:5351:: with SMTP id t17mr26956433wrv.83.1620596658146;
        Sun, 09 May 2021 14:44:18 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:17 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] scripts/bash_aliases: srcfix
Date:   Sun,  9 May 2021 23:39:26 +0200
Message-Id: <20210509213930.94120-32-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I clarified the code about two things:

- Checking how many arguments are being passed.
    Here, some functions didn't reject extra arguments when they
    weren't being used.  Fix that.
    I also changed the code to use $#, which is more explicit.
    And use arithmetic expressions, which better indicate that
    we're dealing with numbers.

- Remove unneeded options from sort.
    Reported-by: Stefan Puiu <stefan.puiu@gmail.com>
    After Stefan asked about why am I using 'sort -V',
    I noticed that I really don't need '-V', and it may confuse
    people trying to understand the script, so even though I
    slightly prefer the output of 'sort -V', in this case, it's
    better to use the simpler 'sort' (yet I need 'sort', to
    maintain consistency in the results (find is quite random)).

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 scripts/bash_aliases | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/scripts/bash_aliases b/scripts/bash_aliases
index a14026bda..358e2f37a 100644
--- a/scripts/bash_aliases
+++ b/scripts/bash_aliases
@@ -45,20 +45,20 @@ function sed_rm_ccomments()
 
 function grep_syscall()
 {
-	if ! [ -v 1 ]; then
+	if (($# != 1)); then
 		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
 		return ${EX_USAGE};
 	fi
 
 	find * -type f \
 	|grep '\.c$' \
-	|sort -V \
+	|sort \
 	|xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?\)" \
 	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
 
 	find * -type f \
 	|grep '\.[ch]$' \
-	|sort -V \
+	|sort \
 	|xargs pcregrep -Mn "(?s)^asmlinkage\s+[\w\s]+\**sys_${1}\s*\(.*?\)" \
 	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
 }
@@ -70,14 +70,14 @@ function grep_syscall()
 
 function grep_syscall_def()
 {
-	if ! [ -v 1 ]; then
+	if (($# != 1)); then
 		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
 		return ${EX_USAGE};
 	fi
 
 	find * -type f \
 	|grep '\.c$' \
-	|sort -V \
+	|sort \
 	|xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?^}" \
 	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
 }
@@ -91,7 +91,7 @@ function grep_syscall_def()
 
 function man_section()
 {
-	if ! [ -v 2 ]; then
+	if (($# < 2)); then
 		>&2 echo "Usage: ${FUNCNAME[0]} <dir> <section>...";
 		return ${EX_USAGE};
 	fi
@@ -104,7 +104,7 @@ function man_section()
 	|xargs wc -l \
 	|grep -v -e '\b1 ' -e '\btotal\b' \
 	|awk '{ print $2 }' \
-	|sort -V \
+	|sort \
 	|while read -r manpage; do
 		cat \
 		<(<${manpage} sed -n '/^\.TH/,/^\.SH/{/^\.SH/!p}') \
@@ -125,7 +125,7 @@ function man_section()
 
 function man_lsfunc()
 {
-	if ! [ -v 1 ]; then
+	if (($# < 1)); then
 		>&2 echo "Usage: ${FUNCNAME[0]} <manpage|manNdir>...";
 		return ${EX_USAGE};
 	fi
@@ -147,7 +147,7 @@ function man_lsfunc()
 
 function man_lsvar()
 {
-	if ! [ -v 1 ]; then
+	if (($# < 1)); then
 		>&2 echo "Usage: ${FUNCNAME[0]} <manpage|manNdir>...";
 		return ${EX_USAGE};
 	fi
@@ -172,7 +172,7 @@ function man_lsvar()
 
 function pdfman()
 {
-	if ! [ -v 1 ]; then
+	if (($# != 1)); then
 		>&2 echo "Usage: ${FUNCNAME[0]} <man-page.n>";
 		return ${EX_USAGE};
 	fi;
@@ -209,14 +209,14 @@ function man_gitstaged()
 
 function grep_glibc_prototype()
 {
-	if ! [ -v 1 ]; then
+	if (($# != 1)); then
 		>&2 echo "Usage: ${FUNCNAME[0]} <func>";
 		return ${EX_USAGE};
 	fi
 
 	find * -type f \
 	|grep '\.h$' \
-	|sort -V \
+	|sort \
 	|xargs pcregrep -Mn \
 	  "(?s)^[\w[][\w\s(,)[:\]]+\s+\**${1}\s*\([\w\s(,)[\]*]+?(...)?\)[\w\s(,)[:\]]*;" \
 	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
-- 
2.31.1

