Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FC9F6C7697
	for <lists+linux-man@lfdr.de>; Fri, 24 Mar 2023 05:35:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229589AbjCXEfa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Mar 2023 00:35:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229499AbjCXEf3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Mar 2023 00:35:29 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 326A419F16
        for <linux-man@vger.kernel.org>; Thu, 23 Mar 2023 21:35:28 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id t15so501591wrz.7
        for <linux-man@vger.kernel.org>; Thu, 23 Mar 2023 21:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679632526;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FqwqSeMO7jIF5nLSWYfosFr8/E6vyyMyqeR5y0pfcQU=;
        b=ZyOcZyhNVUxIszAGHDK7WRq5La2e/LXev95h9Z3+UCUF+1G3eyrEcMApaEUfTSjYQ+
         J8hZMqoNAqKf/hN6U0kHbEQEGcquwdVdLii6In7P1ukyP9ZZ21gg5Zs06TVPz2l3LIzX
         AZd+ytn+1jGgp+DI/bkrPjiIHg8NKDu6CnWx2OVCJZO2n/0ei4cPhOc7a8WxTBAEfcpH
         1Bz4GAeOxAj6XZ6Ig4OdqcfLmFUbd72xmevf0B1q54IBmanCZtUSChEwSkwaA7RNV1/p
         hbw61DD0m7v1dQ+NWTZdQgA05ZFWNQhMXJm+ItQitc1sul8giKylEs3RHvAaXyj7LOEs
         0YTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679632526;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FqwqSeMO7jIF5nLSWYfosFr8/E6vyyMyqeR5y0pfcQU=;
        b=C0N8B80VbqBChh6XJUWd9pAZZKN8m+YCqmSPclLrtvJ3818f3U1c9cU4eEMvjZ85KT
         vFA83uWn/STNapRdUTUPmtnF+mxwcD4FoGWmfJp69EoSc/gS7UFJNnT3C4BTgmUxd9gM
         GbntmUatKuDN1+dHiou3l4K0+bHgwAhJymKIMXSxB2VT5Erlkn5hzOw9LfNr3wW6tzl1
         03i5GpKbwbEyJGDJo4kw9WqGKBXJ+w5QUI++IIH25SqUiJxJMXI5IzxSAPeA754xv4kS
         lnq/fbJDc29dSCIfhnZJapCRpAVN1Ge4AF2rwAx4kS5IxKQ3J3eevJB9y+HHDOTtEtXz
         459A==
X-Gm-Message-State: AAQBX9fMECEl1zmyQBuw4WVUPdQPd8E3vFNrv5PktEDPn9d6/EJOSWeg
        ydEGe76eKQUzMMOuMoum4zU=
X-Google-Smtp-Source: AKy350bKu+jH8PWqvygwGumaMZgWuPZ4O99b5HgpC3Si6I7rh8PIcOKQAAbapj8VNkj0mxGsGHrAUg==
X-Received: by 2002:adf:e552:0:b0:2d6:8d2d:5a7c with SMTP id z18-20020adfe552000000b002d68d2d5a7cmr919213wrm.57.1679632526219;
        Thu, 23 Mar 2023 21:35:26 -0700 (PDT)
Received: from dj3ntoo (87.sub-72-108-136.myvzw.com. [72.108.136.87])
        by smtp.gmail.com with ESMTPSA id c10-20020adffb0a000000b002c70c99db74sm17474817wrr.86.2023.03.23.21.35.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 21:35:25 -0700 (PDT)
Date:   Thu, 23 Mar 2023 23:35:19 -0500
From:   Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Matt Jolly <Matt.Jolly@footclan.ninja>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        Guillem Jover <guillem@hadrons.org>,
        Tom Schwindl <schwindl@posteo.de>, Sam James <sam@gentoo.org>
Subject: [PATCH] stdc: some improvements
Message-ID: <ZB0oh8/A5Ll/0SY0@dj3ntoo>
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
  check for both and error out if neither is found.
- Make libc_summ() standard-agnostics by passing in the filter
  expression and the path to the doc as arguments.
- Make libc_summ() error out if the doc is not found.
- Give basic usage information on usage errors.
- Make the standard version match case insensitive.

Signed-off-by: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
---
 bin/stdc | 101 +++++++++++++++++++++++++++++++++++++------------------
 1 file changed, 68 insertions(+), 33 deletions(-)

diff --git a/bin/stdc b/bin/stdc
index 8c725a2..375be76 100755
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
+pcregrep="$(type -P pcregrep)"
+if [[ -z "$pcregrep" ]]; then
+	pcregrep="$(type -P pcre2grep)"
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
+	die "pcregrep or pcre2grep required but is not installed"
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

