Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 880A21D9B73
	for <lists+linux-man@lfdr.de>; Tue, 19 May 2020 17:39:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728647AbgESPjl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 May 2020 11:39:41 -0400
Received: from smtprelay07.ispgateway.de ([134.119.228.97]:24435 "EHLO
        smtprelay07.ispgateway.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728633AbgESPjl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 May 2020 11:39:41 -0400
X-Greylist: delayed 304 seconds by postgrey-1.27 at vger.kernel.org; Tue, 19 May 2020 11:39:40 EDT
Received: from [149.233.153.81] (helo=[192.168.178.25])
        by smtprelay07.ispgateway.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
        (Exim 4.92.3)
        (envelope-from <t.piekarski@deloquencia.de>)
        id 1jb4GH-00071S-Cr; Tue, 19 May 2020 17:34:33 +0200
Subject: Re: [PATCH-v2] hier.7: Updating from FHS 2.3 to 3.0
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, glperkins@lit.edu
References: <33544f6a-5983-ed08-b2f1-a7a348c411f6@deloquencia.de>
 <8bbe0eae-b4a0-3b49-84a7-245b46eb9eff@gmail.com>
 <69e7cf2a-e0d3-bc1d-0bc7-81111cf80bbc@deloquencia.de>
 <CAKgNAkhnRiowDQmjuqLrgHbgTbR-EkjokZLJPP-+7PrHtTDirA@mail.gmail.com>
 <9ebe073b-0e66-3ccd-a815-974eae0f9318@deloquencia.de>
 <99ae2d82-e5a5-6511-a324-ee59da9642b3@gmail.com>
From:   Thomas Piekarski <t.piekarski@deloquencia.de>
Message-ID: <c1c52c68-5fa1-246f-06c6-2bbe647c65ca@deloquencia.de>
Date:   Tue, 19 May 2020 17:34:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <99ae2d82-e5a5-6511-a324-ee59da9642b3@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Df-Sender: dC5waWVrYXJza2lAZGVsb3F1ZW5jaWEuZGU=
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,


On 19.05.20 2:55 PM, Michael Kerrisk (man-pages) wrote:
>>>> What do you think about such rephrasing? Or should it be just deleted
>>>> from the manual page? How have been such updates (where something in
>>>> documentation is silently not mentioned anymore) handled in the past?
>>>
>>> I think it would be sufficient to say something like "present in FHS
>>> 2.3, removed in FHS 3.0".
>>> Shall I make that change, or do you want to revise youe patch?
>>
>> That is a good idea.
>>
>> Being new to the process I would like to revise, make the change and
>> update the patch.
> 
> Okay.
Updated patch and description.


Adding description of new directories (/run, /usr/libexec,
/usr/share/color,/usr/share/ppd, /var/lib/color), stating
/usr/X11R6 as removed and updating URL to and version of
FHS.

See https://bugzilla.kernel.org/show_bug.cgi?id=206693

Reported-by: Gary Perkins <glperkins@lit.edu>
Signed-off-by: Thomas Piekarski <t.piekarski@deloquencia.de>

---

  man7/hier.7 | 29 +++++++++++++++++++++++++----
  1 file changed, 25 insertions(+), 4 deletions(-)

diff --git a/man7/hier.7 b/man7/hier.7
index dab9483d7..44c3139f5 100644
--- a/man7/hier.7
+++ b/man7/hier.7
@@ -161,6 +161,12 @@ This pseudo-filesystem is described in more detail in
  .I /root
  This directory is usually the home directory for the root user (optional).
  .TP
+.I /run
+This directory contains information which describes the system since it 
was booted.
+Once this purpose was served by
+.IR /var/run
+and programs may continue to use it.
+.TP
  .I /sbin
  Like
  .IR /bin ,
@@ -186,7 +192,8 @@ It should hold only shareable, read-only data, so 
that it can be mounted
  by various machines running Linux.
  .TP
  .I /usr/X11R6
-The X\-Window system, version 11 release 6 (optional).
+The X\-Window system, version 11 release 6 (present in FHS 2.3, removed
+in FHS 3.0).
  .TP
  .I /usr/X11R6/bin
  Binaries which belong to the X\-Window system; often, there is a
@@ -296,6 +303,10 @@ which usually are not invoked directly.
  More complicated programs may
  have whole subdirectories there.
  .TP
+.I /usr/libexec
+Directory contains binaries for internal use only and they are not meant
+to be executed directly by users shell or scripts.
+.TP
  .I /usr/lib<qual>
  These directories are variants of
  .I /usr/lib
@@ -385,6 +396,10 @@ or
  or
  .IR /usr/man .
  .TP
+.I /usr/share/color
+Contains color management information, like International Color 
Consortium (ICC)
+Color profiles (optional).
+.TP
  .I /usr/share/dict
  Contains the word lists used by spell checkers (optional).
  .TP
@@ -421,6 +436,9 @@ same OS.
  .I /usr/share/nls
  The message catalogs for native language support go here (optional).
  .TP
+.I /usr/share/ppd
+Postscript Printer Definition (PPD) files (optional).
+.TP
  .I /usr/share/sgml
  Files for SGML (optional).
  .TP
@@ -523,6 +541,9 @@ Variable game data (optional).
  .I /var/lib
  Variable state information for programs.
  .TP
+.I /var/lib/color
+Variable files containing color management information (optional).
+.TP
  .I /var/lib/hwclock
  State directory for hwclock (optional).
  .TP
@@ -635,11 +656,11 @@ this directory holds temporary files stored for an 
unspecified duration.
  Database files for NIS,
  formerly known as the Sun Yellow Pages (YP).
  .SH CONFORMING TO
-The Filesystem Hierarchy Standard, Version 2.3
-.UR http://www.pathname.com\:/fhs/
+The Filesystem Hierarchy Standard (FHS), Version 3.0, published March 
19, 2015
+.UR https://refspecs.linuxfoundation.org/fhs.shtml
  .UE .
  .SH BUGS
-This list is not exhaustive; different systems may be configured
+This list is not exhaustive; different distributions and systems may be 
configured
  differently.
  .SH SEE ALSO
  .BR find (1),
-- 
2.20.1

