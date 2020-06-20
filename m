Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 55C8D20258F
	for <lists+linux-man@lfdr.de>; Sat, 20 Jun 2020 19:14:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725777AbgFTROc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Jun 2020 13:14:32 -0400
Received: from outpost.hi.is ([130.208.165.166]:57208 "EHLO outpost.hi.is"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725290AbgFTROc (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 20 Jun 2020 13:14:32 -0400
X-Greylist: delayed 463 seconds by postgrey-1.27 at vger.kernel.org; Sat, 20 Jun 2020 13:14:30 EDT
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by outpost.hi.is (8.14.7/8.14.7) with ESMTP id 05KH6ljn030019
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
        for <linux-man@vger.kernel.org>; Sat, 20 Jun 2020 17:06:47 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 outpost.hi.is 05KH6ljn030019
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 05KH6ev8010904
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sat, 20 Jun 2020 17:06:40 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 05KH6ev8010904
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 05KH6erd023501;
        Sat, 20 Jun 2020 17:06:40 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 05KH6eaq023500;
        Sat, 20 Jun 2020 17:06:40 GMT
Date:   Sat, 20 Jun 2020 17:06:40 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man7/*: srcfix, trim trailing space
Message-ID: <20200620170639.GA23494@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Trim tailing space in "strings".

  There is no change in the output from "nroff" and "groff".

###

Output is from: test-groff -b -mandoc -T utf8 -rF0 -t -w w -z

  [ "test-groff" is a developmental version of "groff" ]

troff: <attributes.7>:510: warning: trailing space
troff: <attributes.7>:512: warning: trailing space
troff: <attributes.7>:513: warning: trailing space
troff: <attributes.7>:516: warning: trailing space
troff: <attributes.7>:649: warning: trailing space
troff: <attributes.7>:681: warning: trailing space
troff: <attributes.7>:720: warning: trailing space
####

troff: <environ.7>:181: warning: trailing space
troff: <environ.7>:182: warning: trailing space
####

troff: <ip.7>:820: warning: trailing space
####

troff: <signal.7>:316: warning: trailing space
Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>

####
---
 man7/attributes.7 | 14 +++++++-------
 man7/environ.7    |  4 ++--
 man7/ip.7         |  2 +-
 man7/signal.7     |  2 +-
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/man7/attributes.7 b/man7/attributes.7
index 4c20c0919..1c8a464b0 100644
--- a/man7/attributes.7
+++ b/man7/attributes.7
@@ -507,13 +507,13 @@ synchronization.
 Unlike
 .IR race ,
 which causes both readers and
-writers of internal objects to be regarded as MT-Unsafe, \" and AS-Unsafe,
+writers of internal objects to be regarded as MT-Unsafe,\" and AS-Unsafe,
 this mark is applied to writers only.
-Writers remain \" equally
-MT-Unsafe \" and AS-Unsafe
+Writers remain\" equally
+MT-Unsafe\" and AS-Unsafe
 to call,
 but the then-mandatory constness of objects they
-modify enables readers to be regarded as MT-Safe \" and AS-Safe
+modify enables readers to be regarded as MT-Safe\" and AS-Safe
 (as long as no other reasons for them to be unsafe remain),
 since the lack of synchronization is not a problem when the
 objects are effectively constant.
@@ -646,7 +646,7 @@ called concurrently with locale changes may
 behave in ways that do not correspond to any of the locales active
 during their execution, but an unpredictable mix thereof.
 .IP
-We do not mark these functions as MT-Unsafe, \" or AS-Unsafe,
+We do not mark these functions as MT-Unsafe,\" or AS-Unsafe,
 however,
 because functions that modify the locale object are marked with
 .I const:locale
@@ -678,7 +678,7 @@ environment with
 or similar, without any guards to ensure
 safety in the presence of concurrent modifications.
 .IP
-We do not mark these functions as MT-Unsafe, \" or AS-Unsafe,
+We do not mark these functions as MT-Unsafe,\" or AS-Unsafe,
 however,
 because functions that modify the environment are all marked with
 .I const:env
@@ -717,7 +717,7 @@ GNU C Library
 internal data structure without any guards to ensure
 safety in the presence of concurrent modifications.
 .IP
-We do not mark these functions as MT-Unsafe, \" or AS-Unsafe,
+We do not mark these functions as MT-Unsafe,\" or AS-Unsafe,
 however,
 because functions that modify this data structure are all marked with
 .I const:sigintr
diff --git a/man7/environ.7 b/man7/environ.7
index cd4d884d1..3d654b77f 100644
--- a/man7/environ.7
+++ b/man7/environ.7
@@ -178,8 +178,8 @@ influenced by the presence or value of certain environment variables.
 Examples include the following:
 .IP * 3
 The variables
-.BR LANG ", " LANGUAGE ", " NLSPATH ", " LOCPATH ", "
-.BR LC_ALL ", " LC_MESSAGES ", "
+.BR LANG ", " LANGUAGE ", " NLSPATH ", " LOCPATH ,
+.BR LC_ALL ", " LC_MESSAGES ,
 and so on influence locale handling; see
 .BR catopen (3),
 .BR gettext (3),
diff --git a/man7/ip.7 b/man7/ip.7
index 834f6465b..86b7ed22e 100644
--- a/man7/ip.7
+++ b/man7/ip.7
@@ -817,7 +817,7 @@ address is
 .B AF_UNSPEC
 when the source was unknown.
 When the error originated from the network, all IP options
-.RB ( IP_OPTIONS ", " IP_TTL ", "
+.RB ( IP_OPTIONS ", " IP_TTL ,
 etc.) enabled on the socket and contained in the
 error packet are passed as control messages.
 The payload of the packet causing the error is returned as normal payload.
diff --git a/man7/signal.7 b/man7/signal.7
index e53f38a7c..f6868e38b 100644
--- a/man7/signal.7
+++ b/man7/signal.7
@@ -313,7 +313,7 @@ and
 cannot be caught, blocked, or ignored.
 .PP
 Up to and including Linux 2.2, the default behavior for
-.BR SIGSYS ", " SIGXCPU ", " SIGXFSZ ", "
+.BR SIGSYS ", " SIGXCPU ", " SIGXFSZ ,
 and (on architectures other than SPARC and MIPS)
 .B SIGBUS
 was to terminate the process (without a core dump).
-- 
2.27.0
