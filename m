Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB7706E3CC1
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 01:19:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229484AbjDPXT2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 Apr 2023 19:19:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbjDPXT2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 Apr 2023 19:19:28 -0400
Received: from pulsar.hadrons.org (2.152.192.238.dyn.user.ono.com [2.152.192.238])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B0422127
        for <linux-man@vger.kernel.org>; Sun, 16 Apr 2023 16:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hadrons.org
        ; s=201908; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:
        Cc:To:From:From:Reply-To:Subject:Content-Type:Content-ID:Content-Description:
        In-Reply-To:References:X-Debbugs-Cc;
        bh=34UcFaCKc5PBooVaZOLuDfqtkIGBgCNRTMeiiXqMtXw=; b=plkc/dUdRCLW72z3Ri6aVL4X1y
        IlezI7zunObHmi6Iyism2jLQPvBVVPpl+xRZcXZwGaz+MszlGWlpSKWDSvfxoYA61uK2Q9a42vLjO
        kkj3Ui9ag29R6onoY3g+DDdyvSAwySV2Nu9EZKoCplB60aPjZmHTqUwV/+Uld4F6YiO3uEZHwr8A4
        dzGS3WeXeXz4G1uSR7/oXn/jxGMcE+aZuzISSJrj5oJ5umJjsXwDDJ52fjYIpm2wFSDswzlP/kuW2
        nOeQdoJxwKii+EhjszhExySHZddriTs5QB07VrUq9cYvf3w8uGHBxgfsKlusN+MTLdmBIKN1TI3CR
        qUwztXnQ==;
Received: from guillem by pulsar.hadrons.org with local (Exim 4.96)
        (envelope-from <guillem@hadrons.org>)
        id 1poBeV-0000pQ-2O;
        Mon, 17 Apr 2023 01:19:23 +0200
From:   Guillem Jover <guillem@hadrons.org>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man*/: ffix
Date:   Mon, 17 Apr 2023 01:19:16 +0200
Message-Id: <20230416231916.281037-1-guillem@hadrons.org>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_SORBS_DUL,RDNS_DYNAMIC,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Escape dashes on dates, UUIDs, URLs, file and package names.

Signed-off-by: Guillem Jover <guillem@hadrons.org>
---
 man2/futex.2        | 2 +-
 man4/random.4       | 2 +-
 man4/rtc.4          | 2 +-
 man5/proc.5         | 2 +-
 man7/capabilities.7 | 2 +-
 man7/hier.7         | 2 +-
 man7/rtld-audit.7   | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/man2/futex.2 b/man2/futex.2
index 92eccde5b..eb4abac9e 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -1965,7 +1965,7 @@ Drepper, U., 2011. \fIFutexes Are Tricky\fP,
 .UR http://www.akkadia.org/drepper/futex.pdf
 .UE
 .PP
-Futex example library, futex-*.tar.bz2 at
+Futex example library, futex\-*.tar.bz2 at
 .br
 .UR https://mirrors.kernel.org\:/pub\:/linux\:/kernel\:/people\:/rusty/
 .UE
diff --git a/man4/random.4 b/man4/random.4
index 38396b667..edd047b77 100644
--- a/man4/random.4
+++ b/man4/random.4
@@ -265,7 +265,7 @@ These values can be changed by writing to the files.
 .TP
 .IR uuid " and " boot_id
 These read-only files
-contain random strings like 6fd5a44b-35f4-4ad4-a9b9-6b9be13e1fe9.
+contain random strings like 6fd5a44b\-35f4\-4ad4\-a9b9\-6b9be13e1fe9.
 The former is generated afresh for each read, the latter was
 generated once.
 .\"
diff --git a/man4/rtc.4 b/man4/rtc.4
index 55dc1ff6b..b16be16c1 100644
--- a/man4/rtc.4
+++ b/man4/rtc.4
@@ -43,7 +43,7 @@ and
 .BR time (2),
 as well as setting timestamps on files, and so on.
 The system clock reports seconds and microseconds since a start point,
-defined to be the POSIX Epoch: 1970-01-01 00:00:00 +0000 (UTC).
+defined to be the POSIX Epoch: 1970\-01\-01 00:00:00 +0000 (UTC).
 (One common implementation counts timer interrupts, once
 per "jiffy", at a frequency of 100, 250, or 1000 Hz.)
 That is, it is supposed to report wall clock time, which RTCs also do.
diff --git a/man5/proc.5 b/man5/proc.5
index dc5397a22..9c0b3e2ab 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -4383,7 +4383,7 @@ Unnumbered interrupts are not shown, only summed into the total.
 The number of context switches that the system underwent.
 .TP
 \fIbtime 769041601\fP
-boot time, in seconds since the Epoch, 1970-01-01 00:00:00 +0000 (UTC).
+boot time, in seconds since the Epoch, 1970\-01\-01 00:00:00 +0000 (UTC).
 .TP
 \fIprocesses 86031\fP
 Number of forks since boot.
diff --git a/man7/capabilities.7 b/man7/capabilities.7
index a9a676891..013efb0a5 100644
--- a/man7/capabilities.7
+++ b/man7/capabilities.7
@@ -1759,7 +1759,7 @@ capabilities and user namespaces, see
 .SH STANDARDS
 No standards govern capabilities, but the Linux capability implementation
 is based on the withdrawn
-.UR https://archive.org\:/details\:/posix_1003.1e-990310
+.UR https://archive.org\:/details\:/posix_1003.1e\-990310
 POSIX.1e draft standard
 .UE .
 .SH NOTES
diff --git a/man7/hier.7 b/man7/hier.7
index dc254c269..20a8a103b 100644
--- a/man7/hier.7
+++ b/man7/hier.7
@@ -273,7 +273,7 @@ and
 point at a random kernel tree.
 Debian systems don't do this
 and use headers from a known good kernel
-version, provided in the libc*-dev package.)
+version, provided in the libc*\-dev package.)
 .TP
 .I /usr/include/g++
 Include files to use with the GNU C++ compiler.
diff --git a/man7/rtld-audit.7 b/man7/rtld-audit.7
index c5d4fdddc..cc4b0431b 100644
--- a/man7/rtld-audit.7
+++ b/man7/rtld-audit.7
@@ -7,7 +7,7 @@
 .\"
 .TH RTLD-AUDIT 7 (date) "Linux man-pages (unreleased)"
 .SH NAME
-rtld-audit \- auditing API for the dynamic linker
+rtld\-audit \- auditing API for the dynamic linker
 .SH SYNOPSIS
 .nf
 .BR "#define _GNU_SOURCE" "             /* See feature_test_macros(7) */"
-- 
2.40.0

