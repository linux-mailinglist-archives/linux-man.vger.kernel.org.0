Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FC7A6C76CE
	for <lists+linux-man@lfdr.de>; Fri, 24 Mar 2023 06:07:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229864AbjCXFHO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Mar 2023 01:07:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229484AbjCXFHN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Mar 2023 01:07:13 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E5CA2886C
        for <linux-man@vger.kernel.org>; Thu, 23 Mar 2023 22:07:12 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id e18so532503wra.9
        for <linux-man@vger.kernel.org>; Thu, 23 Mar 2023 22:07:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679634430;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jagFuk1/NEvC1pCnwdX58Wy6UY7UMvFnl3zu9r6xAZ4=;
        b=GvAghCDuz0t+/GCotw6Xxg3hnGNSw3CRjp8QQj4CicuAh6Mg+1hMUaPDDxbV9kZGzu
         MBYVK23d1fC6+8UonLunNXyeR1hVCt2uVA4dAOuAdv05VGjbUXoV+GJanW9BRPqvQheO
         6I7v0Ft8ppS5cnrLEAjf1MPnlVxXKZ72VndNI2/X6WnkCaqMKm640HXxpH46UIIB3BBq
         ZaKywbjc3mn0/bLdMG2aH1zaUsjIqeydbUdwi3lg+MCmNBnNR+S5mmylAnlAV/1vS5q1
         6sbGPJDo8DZIjXl9VEuc4S4i8xSZV9QCn1zrgKc8DQ42nJH+qMHoFdJOYMlWpcwo/cpI
         AMng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679634430;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jagFuk1/NEvC1pCnwdX58Wy6UY7UMvFnl3zu9r6xAZ4=;
        b=gvWcY+17WswRg2cR44ghdFmyQ97y16SY0fSevFUmR4FHCyStrq88U6uMNXSQbjNpC8
         AvHm7os1FFM74joWG/INPHYp/6AgeIU74LwNcN+x+cs/tPvlixAvs41uzK6TWVtYJJoJ
         gKBFPlapHYbl/R2PQ1bmc0y58Xf4a8zbHlHxpzGRBtwTNu1R3t7E5uFARL+KjrcjbjLq
         soTH1VSGqbww9naEGjyDjzXoDNAKtnEVTjVI7gcVtoNZV8MtqIX6LwFU2sZ0qvPXN6Pq
         +96s5UGxg1sMS5Ygr/sybXY3GqHNH52dqKxucUlpoeUYnRNSD4jmC83gGaAbyp+5jWH8
         GlAw==
X-Gm-Message-State: AAQBX9dtZQMEU0m3nCM7LfkdcqFIXgWlgfgsGSGF+xeaLClPSzE+Sj0H
        tGSIhw322kVPwWK9dpPJ0Rw=
X-Google-Smtp-Source: AKy350Zkv/GYmlSkDw9t1Bo+jVwVKO40S0Jw1PhciieU03omXmlX3bewoDrXGoUxSAi/OlNyrRdQxA==
X-Received: by 2002:a5d:46c9:0:b0:2c7:e5f:e0e0 with SMTP id g9-20020a5d46c9000000b002c70e5fe0e0mr998830wrs.65.1679634430594;
        Thu, 23 Mar 2023 22:07:10 -0700 (PDT)
Received: from dj3ntoo (87.sub-72-108-136.myvzw.com. [72.108.136.87])
        by smtp.gmail.com with ESMTPSA id u8-20020adfdb88000000b002cff06039d7sm17502870wri.39.2023.03.23.22.07.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 22:07:10 -0700 (PDT)
Date:   Fri, 24 Mar 2023 00:07:03 -0500
From:   Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Matt Jolly <Matt.Jolly@footclan.ninja>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        Guillem Jover <guillem@hadrons.org>,
        Tom Schwindl <schwindl@posteo.de>, Sam James <sam@gentoo.org>
Subject: [PATCH v2] stdc: some improvements
Message-ID: <ZB0v95XCMia3ibVj@dj3ntoo>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
        linux-man@vger.kernel.org, Matt Jolly <Matt.Jolly@footclan.ninja>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        Guillem Jover <guillem@hadrons.org>,
        Tom Schwindl <schwindl@posteo.de>, Sam James <sam@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

- Some small stylistic changes such as removing trailing semicolons and
  noisy `shift` calls.
- Ensure pcregrep exists. It is installed as pcre2grep on my machine, so
  check for both and error out if neither is found. Prefer pcre2grep
  (installed by libpcre2) because libpcre is EOL.
- Make libc_summ() standard-agnostics by passing in the filter
  expression and the path to the doc as arguments.
- Make libc_summ() error out if the doc is not found.
- Give basic usage information on usage errors.
- Make the standard version match case insensitive.

Signed-off-by: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
---
v1 -> v2:
- Prefer pcre2grep from libpcre2. Suggested by Sam on IRC.

 bin/stdc | 101 +++++++++++++++++++++++++++++++++++++------------------
 1 file changed, 68 insertions(+), 33 deletions(-)

diff --git a/bin/stdc b/bin/stdc
index 8c725a2..0d322af 100755
--- a/bin/stdc
+++ b/bin/stdc
@@ -1,65 +1,100 @@
-#!/bin/bash
+#!/usr/bin/env bash
 
-set -Eefuo pipefail;
+set -Efuo pipefail
 
-prefix="/usr/local";
-datarootdir="$prefix/share";
-docdir="$datarootdir/doc";
+prefix="/usr/local"
+datarootdir="$prefix/share"
+docdir="$datarootdir/doc"
+
+c89_filter='/A.3 LIBRARY SUMMARY/,$p'
+c89_doc="$docdir/c/c89/c89-draft.txt"
+c99_filter='/Library summary$/,/Sequence points$/p'
+c99_doc="$docdir/c/c99/n1256.txt"
+c11_filter='/Library summary$/,/Sequence points$/p'
+c11_doc="$docdir/c/c11/n1570.txt"
+
+pcregrep="$(type -P pcre2grep)"
+if [[ -z "$pcregrep" ]]; then
+	pcregrep="$(type -P pcregrep)"
+fi
 
 err()
 {
-	>&2 echo "$(basename "$0"): error: $*";
-	exit 1;
+	>&2 echo "$*"
 }
 
-grep_proto()
+die()
+{
+	err "$(basename "$0"): error: $*"
+	exit 1
+}
+
+# Args:
+# 	1: usage error
+usage()
 {
-	pcregrep -M "(?s)\b$1 *\([[:alnum:]*,._\s\(\)-]*\);$";
+	err "$*"
+	err
+	err "usage: $(basename "$0") <version> <function>"
+	err
+	err "    version    ISO C version. Supported versions:"
+	err "               C89, C99, C11"
+	err "               (case insensitive)"
+	err "    function   Function to look for"
+	exit 1
 }
 
-libc_summ_c89()
+# Args:
+# 	1: declaration to look for
+grep_proto()
 {
-	sed -n '/A.3 LIBRARY SUMMARY/,$p' <"$docdir/c/c89/c89-draft.txt";
+	"$pcregrep" -M "(?s)\b$1 *\([[:alnum:]*,._\s\(\)-]*\);\$"
 }
 
+# Args:
+# 	1: filter expression
+# 	2: path to plaintext standard
 libc_summ()
 {
-	sed -n '/Library summary$/,/Sequence points$/p';
+	if [[ ! -r "$2" ]]; then
+		die "cannot find or read '$2'"
+	fi
+	sed -n -e "$1" "$2"
 }
 
+if [[ -z "$pcregrep" ]]; then
+	die "pcre2grep or pcregrep required but is not installed"
+fi
+
 case $# in
-0)
-	err "missing ISO C version.";
-	;;
-1)
-	err "missing function name.";
+0|1)
+	usage "missing ISO C version and/or function name."
 	;;
 2)
 	;;
 *)
-	shift;
-	shift;
-	err "unsupported extra argument(s): $*";
+	shift
+	shift
+	usage "unsupported extra argument(s): ${*@Q}"
 	;;
-esac;
+esac
 
-case "$1" in
+case "${1@L}" in
 c89)
-	shift;
-	libc_summ_c89 \
-	| grep_proto $@;
+	libc_summ "$c89_filter" "$c89_doc" \
+	| grep_proto "$2"
 	;;
 c99)
-	shift;
-	libc_summ <"$docdir/c/c99/n1256.txt" \
-	| grep_proto $@;
+	libc_summ "$c99_filter" "$c99_doc" \
+	| grep_proto "$2"
 	;;
 c11)
-	shift;
-	libc_summ <"$docdir/c/c11/n1570.txt" \
-	| grep_proto $@;
+	libc_summ "$c11_filter" "$c11_doc" \
+	| grep_proto "$2"
 	;;
 *)
-	err "$1: unsupported ISO C version.";
+	usage "$1: unsupported ISO C version."
 	;;
-esac;
+esac
+
+# vim: set noexpandtab:
-- 
2.39.2

