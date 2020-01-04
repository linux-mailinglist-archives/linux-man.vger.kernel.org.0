Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D2932130493
	for <lists+linux-man@lfdr.de>; Sat,  4 Jan 2020 22:16:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726219AbgADVQf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 Jan 2020 16:16:35 -0500
Received: from mta.tntech.edu ([149.149.2.87]:41868 "EHLO mta.tntech.edu"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726170AbgADVQf (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 4 Jan 2020 16:16:35 -0500
X-Greylist: delayed 323 seconds by postgrey-1.27 at vger.kernel.org; Sat, 04 Jan 2020 16:16:35 EST
Received: from math.tntech.edu (unknown [149.149.102.6])
        by mta.tntech.edu (Postfix) with ESMTPS id A4A933000055;
        Sat,  4 Jan 2020 15:11:11 -0600 (CST)
Received: from norden.tntech.edu ([149.149.102.4] helo=norden.math.tntech.edu)
        by math.tntech.edu with esmtp (Exim 4.92)
        (envelope-from <jeff@math.tntech.edu>)
        id 1inqhN-0004GV-FD; Sat, 04 Jan 2020 15:11:09 -0600
Received: by norden.math.tntech.edu (Postfix, from userid 742)
        id 5EF9D2572B73; Sat,  4 Jan 2020 15:11:05 -0600 (CST)
From:   Jeff Norden <jeff@math.tntech.edu>
To:     mtk.manpages@gmail.com
Subject: proc(5) documentation for the cmdline file
CC:     linux-man@vger.kernel.org
Date:   Sat, 04 Jan 2020 15:11:05 -0600
Message-ID: <fda7733p1y.fsf@norden.tntech.edu>
MIME-Version: 1.0
Content-Type: text/plain
X-SA-Spam-Score: 0.0
X-SA-Spam-Report: Spam detection software, running on the system "math.tntech.edu",
 has NOT identified this incoming email as spam.
 If you have any questions, contact @@CONTACT_ADDRESS@@
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
  0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The following is from the current proc(5) man page:

/proc/[pid]/cmdline
    This read-only file holds the complete command line for the process,
    unless the process is a zombie.  In the latter case, there is nothing in
    this file: that is, a read on this file will return 0 characters.  The
    command-line arguments appear in this file as a set of strings separated
    by null bytes ('\0'), with a further null byte after the last string.


I believe that the end of the first sentence should say:
   "unless the process is a kernel process or a zombie."

or maybe it would read better as:
   "unless it is a kernel process or a zombie."

You might also add something like the following at the end:
   "When cmdline is empty, the stat or status file (below) can be used
    to determine whether or not a process is a zombie.

I'm no kernel expert, so please make sure this is correct.  It's just
something I noticed while poking around in /proc/

Thanks, and Happy New Years!

  -Jeff Norden, jeff@math.tntech.edu
   Dept of Math, Tenn Tech Univ, Cookeville TN 38505  (931)372-3441
