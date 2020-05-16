Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B92AC1D64C0
	for <lists+linux-man@lfdr.de>; Sun, 17 May 2020 01:34:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726726AbgEPXed (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 16 May 2020 19:34:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726719AbgEPXed (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 16 May 2020 19:34:33 -0400
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BBE4C061A0C
        for <linux-man@vger.kernel.org>; Sat, 16 May 2020 16:34:31 -0700 (PDT)
Received: by mail-pg1-x541.google.com with SMTP id t11so2881192pgg.2
        for <linux-man@vger.kernel.org>; Sat, 16 May 2020 16:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VlneB9OhND35nxe72XUKeNHyHjqyGzY+SmftByd339o=;
        b=DqGbwjKKzNLWg4RYxdvTetqRxbLzUhZoiSlKYKsN1fLBW/8qTmVnNZkWANswYD/gRQ
         x6dNMY8duRdM9VQvgiOFyw0FMh2i3/q85MR7vtUNmLDZSklgf8EvQOc+dHGGizpgHuHk
         ZbB57OccTPZTaTZbXcZixE2GkWoxtPRglrcjECnoHo1SBd+iYl62XrWI0yW4TzweCYOo
         qGiOqJkEFGnLSNOd3UtKV+VxuPpLCASkmSKOHWmUAlQSPFu5U4YP+uryVtqUfN1pY6cW
         BsdEfthXWshxu+2BzEirlEXCmddZi8m0gAr2lVlnovJ4XFQtQbf7gTjijk04edTA7/4c
         R+Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VlneB9OhND35nxe72XUKeNHyHjqyGzY+SmftByd339o=;
        b=ab0u5jTZ+BtNR3Oe1u5jst8MvZIVTrYiZ1XLZC1KlnwwOQCbDeoU+nOFI4Or0/5hNh
         GIcss6pcODYzwtl/RDvWsFJDQYwTnyb3Av5xKMGb9myahbIETupQ090kdscVTPiIjEfx
         fLTLToBS5YVKoAfZUSbA3y6tInEeg5rsIT4Xzzx5jc7gGi4bkiJ+0YadZfDqTFnZm2/O
         gfMWOvi/0F+ebFtWhqZQfw1Fzu2Ow3Z8f4ZaccSfz1ELnAXjZdCC5eH+pAv/XIwz7LRj
         iVFGHy2TR4GQcPZLSDCqkbv1VFTilPF7skn1TnTfPjoSXdgQ0ovQ4MSj+zO3toDi0IH6
         nY0A==
X-Gm-Message-State: AOAM533FAbtW62TLAJKa2tpzhZJEVD7MQpnoa+OH8MI2ehB1AgS1uHFR
        RQh25SJXdy1w9GDFU4+GFsl8VjwVV9k=
X-Google-Smtp-Source: ABdhPJy4S4vAYJrt6pfFSxt/pCU0XzQ+DMdzB5MbP7U+qcq3Db+THeSKgsqeuNC3ljf0qC9jr9nONg==
X-Received: by 2002:a63:4cc:: with SMTP id 195mr8978614pge.294.1589672070377;
        Sat, 16 May 2020 16:34:30 -0700 (PDT)
Received: from kir-rhat.lan (c-76-104-243-248.hsd1.wa.comcast.net. [76.104.243.248])
        by smtp.gmail.com with ESMTPSA id dw12sm4693574pjb.31.2020.05.16.16.34.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 May 2020 16:34:29 -0700 (PDT)
From:   Kir Kolyshkin <kolyshkin@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Kir Kolyshkin <kolyshkin@gmail.com>
Subject: [PATCH] Missing commas in SEE ALSO part II
Date:   Sat, 16 May 2020 16:34:25 -0700
Message-Id: <20200516233425.3006706-1-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a sequel to commit baf17bc4f2a3f3b02d, addressing the issues
with missing commas in the middle of SEE ALSO lists that emerged since.

The awk script from the original commit was not working and had to be
slightly modified (s/["]SEE ALSO["]/"?SEE ALSO/), otherwise it works
like a charm. Here's the fixed script and its output just before this
commit:

for f in man*/*; do
awk '
    /^.SH "?SEE ALSO/ {
	sa=1; print "== " FILENAME " =="; print; next
    }
    /^\.(PP|SH)/ {
	sa=0; no=0; next
    }
    /^\.BR/ {
	if (sa==1) {
	    print;
	    if (no == 1)
		print "Missing comma in " FILENAME " +" FNR-1; no=0
	}
    }
    /^\.BR .*)$/ {
	if (sa==1)
	    no=1;
	next
    }
    /\.\\"/ {next}
    /.*/ {
	if (sa==1) {
	    print; next
	}
    }
' $f; done | grep Missing
Missing comma in man1/memusage.1 +272
Missing comma in man2/adjtimex.2 +597
Missing comma in man2/adjtimex.2 +598
Missing comma in man2/mkdir.2 +252
Missing comma in man2/sigaction.2 +1045
Missing comma in man2/sigaction.2 +1047
Missing comma in man3/mbsnrtowcs.3 +198
Missing comma in man3/ntp_gettime.3 +142
Missing comma in man3/strcmp.3 +219
Missing comma in man3/strtol.3 +302
Missing comma in man3/wcstombs.3 +120
Missing comma in man7/user_namespaces.7 +1378
Missing comma in man7/xattr.7 +198

Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man1/memusage.1        | 2 +-
 man2/adjtimex.2        | 4 ++--
 man2/mkdir.2           | 2 +-
 man2/sigaction.2       | 4 ++--
 man3/mbsnrtowcs.3      | 2 +-
 man3/ntp_gettime.3     | 2 +-
 man3/strcmp.3          | 2 +-
 man3/strtol.3          | 2 +-
 man3/wcstombs.3        | 2 +-
 man7/user_namespaces.7 | 2 +-
 man7/xattr.7           | 2 +-
 11 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/man1/memusage.1 b/man1/memusage.1
index 9cc06838b..aa5739eb0 100644
--- a/man1/memusage.1
+++ b/man1/memusage.1
@@ -269,5 +269,5 @@ main(int argc, char *argv[])
 .EE
 .SH SEE ALSO
 .BR memusagestat (1),
-.BR mtrace (1)
+.BR mtrace (1),
 .BR ld.so (8)
diff --git a/man2/adjtimex.2 b/man2/adjtimex.2
index 1722369a1..d802d52f9 100644
--- a/man2/adjtimex.2
+++ b/man2/adjtimex.2
@@ -594,8 +594,8 @@ is done by the kernel in timer context.
 Thus, it will take one tick into the second
 for the leap second to be inserted or deleted.
 .SH SEE ALSO
-.BR clock_gettime (2)
-.BR clock_settime (2)
+.BR clock_gettime (2),
+.BR clock_settime (2),
 .BR settimeofday (2),
 .BR adjtime (3),
 .BR ntp_gettime (3),
diff --git a/man2/mkdir.2 b/man2/mkdir.2
index 12b131270..959169cad 100644
--- a/man2/mkdir.2
+++ b/man2/mkdir.2
@@ -249,5 +249,5 @@ argument.
 .BR stat (2),
 .BR umask (2),
 .BR unlink (2),
-.BR acl (5)
+.BR acl (5),
 .BR path_resolution (7)
diff --git a/man2/sigaction.2 b/man2/sigaction.2
index b4e630878..744cdfcc4 100644
--- a/man2/sigaction.2
+++ b/man2/sigaction.2
@@ -1042,9 +1042,9 @@ See
 .BR kill (1),
 .BR kill (2),
 .BR pause (2),
-.BR pidfd_send_signal (2)
+.BR pidfd_send_signal (2),
 .BR restart_syscall (2),
-.BR seccomp (2)
+.BR seccomp (2),
 .BR sigaltstack (2),
 .BR signal (2),
 .BR signalfd (2),
diff --git a/man3/mbsnrtowcs.3 b/man3/mbsnrtowcs.3
index 2e5420305..2e447bac8 100644
--- a/man3/mbsnrtowcs.3
+++ b/man3/mbsnrtowcs.3
@@ -195,6 +195,6 @@ Passing NULL as
 is not multithread safe.
 .SH SEE ALSO
 .BR iconv (3),
-.BR mbrtowc (3)
+.BR mbrtowc (3),
 .BR mbsinit (3),
 .BR mbsrtowcs (3)
diff --git a/man3/ntp_gettime.3 b/man3/ntp_gettime.3
index ff54a1ee0..be80b4801 100644
--- a/man3/ntp_gettime.3
+++ b/man3/ntp_gettime.3
@@ -139,7 +139,7 @@ is described in the NTP Kernel Application Program Interface.
 .BR ntp_gettimex ()
 is a GNU extension.
 .SH SEE ALSO
-.BR adjtimex (2)
+.BR adjtimex (2),
 .BR ntp_adjtime (3),
 .BR time (7)
 .PP
diff --git a/man3/strcmp.3 b/man3/strcmp.3
index dd187be22..f1046f2e3 100644
--- a/man3/strcmp.3
+++ b/man3/strcmp.3
@@ -216,5 +216,5 @@ main(int argc, char *argv[])
 .BR strncasecmp (3),
 .BR strverscmp (3),
 .BR wcscmp (3),
-.BR wcsncmp (3)
+.BR wcsncmp (3),
 .BR ascii (7)
diff --git a/man3/strtol.3 b/man3/strtol.3
index 960f61b3e..02598b983 100644
--- a/man3/strtol.3
+++ b/man3/strtol.3
@@ -299,5 +299,5 @@ main(int argc, char *argv[])
 .BR atoi (3),
 .BR atol (3),
 .BR strtod (3),
-.BR strtoimax (3)
+.BR strtoimax (3),
 .BR strtoul (3),
diff --git a/man3/wcstombs.3 b/man3/wcstombs.3
index 8b3ca7d6f..749cc7b26 100644
--- a/man3/wcstombs.3
+++ b/man3/wcstombs.3
@@ -117,5 +117,5 @@ provides a better interface to the same functionality.
 .BR mblen (3),
 .BR mbstowcs (3),
 .BR mbtowc (3),
-.BR wcsrtombs (3)
+.BR wcsrtombs (3),
 .BR wctomb (3)
diff --git a/man7/user_namespaces.7 b/man7/user_namespaces.7
index 0f2c89184..1975daf5e 100644
--- a/man7/user_namespaces.7
+++ b/man7/user_namespaces.7
@@ -1375,7 +1375,7 @@ main(int argc, char *argv[])
 .BR subgid (5),         \" From the shadow package
 .BR subuid (5),         \" From the shadow package
 .BR capabilities (7),
-.BR cgroup_namespaces (7)
+.BR cgroup_namespaces (7),
 .BR credentials (7),
 .BR namespaces (7),
 .BR pid_namespaces (7)
diff --git a/man7/xattr.7 b/man7/xattr.7
index 706dfa344..23a928c1b 100644
--- a/man7/xattr.7
+++ b/man7/xattr.7
@@ -195,5 +195,5 @@ This page was formerly named
 .BR removexattr (2),
 .BR setxattr (2),
 .BR acl (5),
-.BR capabilities (7)
+.BR capabilities (7),
 .BR selinux (8)
-- 
2.26.2

