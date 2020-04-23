Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9881D1B6754
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2020 00:57:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728054AbgDWW5l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Apr 2020 18:57:41 -0400
Received: from zimbra.cs.ucla.edu ([131.179.128.68]:48044 "EHLO
        zimbra.cs.ucla.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727065AbgDWW5k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Apr 2020 18:57:40 -0400
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 51F881600D3;
        Thu, 23 Apr 2020 15:57:40 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id y5gb-T1VFUhF; Thu, 23 Apr 2020 15:57:39 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 602331600E1;
        Thu, 23 Apr 2020 15:57:39 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id uYKSzViSJloh; Thu, 23 Apr 2020 15:57:39 -0700 (PDT)
Received: from [192.168.1.9] (cpe-23-242-74-103.socal.res.rr.com [23.242.74.103])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id 1F5601600D3;
        Thu, 23 Apr 2020 15:57:39 -0700 (PDT)
Subject: Re: [Bug 207345] zdump(8): zdump -c has an opposite behavior, in my
 xterm: lower bound is inclusive ...
To:     bugzilla-daemon@bugzilla.kernel.org
References: <bug-207345-197507@https.bugzilla.kernel.org/>
 <bug-207345-197507-BrfGWbbBGi@https.bugzilla.kernel.org/>
Cc:     Marco Curreli <marcocurreli@tiscali.it>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        Time zone mailing list <tz@iana.org>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Message-ID: <504c7bb3-8b44-2a6e-ff02-02266f5f45fa@cs.ucla.edu>
Date:   Thu, 23 Apr 2020 15:57:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <bug-207345-197507-BrfGWbbBGi@https.bugzilla.kernel.org/>
Content-Type: multipart/mixed;
 boundary="------------882DBB213ECDE59763942B10"
Content-Language: en-US
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------882DBB213ECDE59763942B10
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

I installed the attached doc patch to tzdb try to clarify things. The documented
zdump behavior is kind of weird, but now's not the time to change it as we're
about to do a new tzdb release.

--------------882DBB213ECDE59763942B10
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-Clarify-zdump-c.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0001-Clarify-zdump-c.patch"

From d5f78a4326b94809e1cba6fcc4b59ba2a10b2d1c Mon Sep 17 00:00:00 2001
From: Paul Eggert <eggert@cs.ucla.edu>
Date: Thu, 23 Apr 2020 15:53:24 -0700
Subject: [PATCH] Clarify zdump -c

* zdump.8: Clarify -c cutoff timestamps.
Problem reported by Marco Curell via Michael Kerrisk; see:
https://bugzilla.kernel.org/show_bug.cgi?id=207345
---
 zdump.8 | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/zdump.8 b/zdump.8
index fb6b8df..98109ad 100644
--- a/zdump.8
+++ b/zdump.8
@@ -74,11 +74,11 @@ implementations with different time representations.
 Cut off interval output at the given year(s).
 Cutoff times are computed using the proleptic Gregorian calendar with year 0
 and with Universal Time (UT) ignoring leap seconds.
-The lower bound is exclusive and the upper is inclusive; for example, a
-.I loyear
-of 1970 excludes a transition occurring at 1970-01-01 00:00:00 UTC but a
-.I hiyear
-of 1970 includes the transition.
+Cutoffs are at the start of each year, where the lower-bound
+timestamp is exclusive and the upper is inclusive; for example,
+.B "\*-c 1970,2070"
+selects transitions after 1970-01-01 00:00:00 UTC
+and on or before 2070-01-01 00:00:00 UTC.
 The default cutoff is
 .BR \*-500,2500 .
 .TP
-- 
2.17.1


--------------882DBB213ECDE59763942B10--
