Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5B646169A51
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2020 22:41:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727100AbgBWVlp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Feb 2020 16:41:45 -0500
Received: from outpost.hi.is ([130.208.165.166]:35966 "EHLO outpost.hi.is"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727151AbgBWVlo (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 23 Feb 2020 16:41:44 -0500
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by outpost.hi.is (8.14.7/8.14.7) with ESMTP id 01NLS9KH000874
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2020 21:28:09 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 outpost.hi.is 01NLS9KH000874
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 01NLS6Jn022862
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sun, 23 Feb 2020 21:28:06 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 01NLS6Jn022862
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 01NLS6Pb001952;
        Sun, 23 Feb 2020 21:28:06 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 01NLS6Sh001951;
        Sun, 23 Feb 2020 21:28:06 GMT
Date:   Sun, 23 Feb 2020 21:28:06 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man3/*: srcfix: Correct the misuse of two-fonts macros
Message-ID: <20200223212806.GA1912@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Changes are based on the latest (23th Februar 2020) revision of my
local git repository.

  Correct the misuse of a two-font macro, which function is to

1) use the first font for each odd numbered argument and the second
font for all others.

2) join the arguments without an intervening space.

  There is no change in the output.

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man3/__ppc_set_ppr_med.3 |  6 +++---
 man3/__ppc_yield.3       |  2 +-
 man3/getauxval.3         | 16 ++++++++--------
 man3/malloc.3            |  4 ++--
 4 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/man3/__ppc_set_ppr_med.3 b/man3/__ppc_set_ppr_med.3
index 3d9f11868..863d8911c 100644
--- a/man3/__ppc_set_ppr_med.3
+++ b/man3/__ppc_set_ppr_med.3
@@ -52,7 +52,7 @@ The available unprivileged states are covered by the following functions:
 .IP * 3
 .BR __ppc_set_ppr_med ()
 sets the Program Priority Register value to
-.IR medium
+.I medium
 (default).
 .IP *
 .BR __ppc_set_ppr_very_low ()
@@ -68,7 +68,7 @@ sets the Program Priority Register value to
 .IR "medium low" .
 .PP
 The privileged state
-.IR "medium high"
+.I medium high
 may also be set during certain time intervals by problem-state (unprivileged)
 programs, with the following function:
 .IP * 3
@@ -130,4 +130,4 @@ Availability of these functions can be tested using
 .SH SEE ALSO
 .BR __ppc_yield (3)
 .PP
-.IR "Power ISA, Book\ II - Section\ 3.1 (Program Priority Registers)"
+.I Power ISA, Book\ II - Section\ 3.1 (Program Priority Registers)
diff --git a/man3/__ppc_yield.3 b/man3/__ppc_yield.3
index b9bfc739e..777792d60 100644
--- a/man3/__ppc_yield.3
+++ b/man3/__ppc_yield.3
@@ -81,4 +81,4 @@ These functions are nonstandard GNU extensions.
 .SH SEE ALSO
 .BR __ppc_set_ppr_med (3)
 .PP
-.IR "Power ISA, Book\ II - Section\ 3.2 (""or"" architecture)"
+.I "Power ISA, Book\ II - Section\ 3.2 (""or"" architecture)"
diff --git a/man3/getauxval.3 b/man3/getauxval.3
index 55858abab..92a9066cb 100644
--- a/man3/getauxval.3
+++ b/man3/getauxval.3
@@ -130,31 +130,31 @@ in the bottom 16 bits and the cache associativity in the next 16 bits.
 The associativity is such that if N is the 16-bit value,
 the cache is N-way set associative.
 .TP
-.BR AT_L1D_CACHESIZE
+.B AT_L1D_CACHESIZE
 The L1 data cache size.
 .TP
-.BR AT_L1I_CACHEGEOMETRY
+.B AT_L1I_CACHEGEOMETRY
 Geometry of the L1 instruction cache, encoded as for
 .BR AT_L1D_CACHEGEOMETRY .
 .TP
-.BR AT_L1I_CACHESIZE
+.B AT_L1I_CACHESIZE
 The L1 instruction cache size.
 .TP
-.BR AT_L2_CACHEGEOMETRY
+.B AT_L2_CACHEGEOMETRY
 Geometry of the L2 cache, encoded as for
 .BR AT_L1D_CACHEGEOMETRY .
 .TP
-.BR AT_L2_CACHESIZE
+.B AT_L2_CACHESIZE
 The L2 cache size.
 .TP
-.BR AT_L3_CACHEGEOMETRY
+.B AT_L3_CACHEGEOMETRY
 Geometry of the L3 cache, encoded as for
 .BR AT_L1D_CACHEGEOMETRY .
 .TP
-.BR AT_L3_CACHESIZE
+.B AT_L3_CACHESIZE
 The L3 cache size.
 .TP
-.BR AT_PAGESZ
+.B AT_PAGESZ
 The system page size (the same value returned by
 .IR sysconf(_SC_PAGESIZE) ).
 .TP
diff --git a/man3/malloc.3 b/man3/malloc.3
index 6addb46f7..9a145a620 100644
--- a/man3/malloc.3
+++ b/man3/malloc.3
@@ -218,10 +218,10 @@ The
 function returns a pointer to the newly allocated memory, which is suitably
 aligned for any built-in type, or NULL if the request failed.
 The returned pointer may be the same as
-.IR ptr
+.I ptr
 if the allocation was not moved
 (e.g., there was room to expand the allocation in-place), or different from
-.IR ptr
+.I ptr
 if the allocation was moved to a new address.
 If
 .I size
-- 
2.25.0
