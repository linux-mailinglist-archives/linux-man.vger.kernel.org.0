Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5B62440A3B
	for <lists+linux-man@lfdr.de>; Sat, 30 Oct 2021 18:42:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229734AbhJ3Qod (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 30 Oct 2021 12:44:33 -0400
Received: from mail.kernel.org ([198.145.29.99]:38250 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229694AbhJ3Qod (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 30 Oct 2021 12:44:33 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id E394360E76
        for <linux-man@vger.kernel.org>; Sat, 30 Oct 2021 16:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635612122;
        bh=KMfJe1FBKQjNN2F6fBUXowMe0UREbfngf0LrIXQ3Afc=;
        h=From:To:Subject:Date:From;
        b=RJPN3dJn1Vs5chB3gvwSBR3h/TSAsSWH3NDi4frPz1Ag5IapZERV+AFM/cLUB88OL
         nohL3A4Vt0buEP9T/8BTvqpDtbOMyTS7Ft+kJ8BpjS1fchS5ccmb0ewwnKmz/MFGVx
         rhMDU6lPCTI2IEPwgESoe19NMCrEXQNA3B70YEo38L4k/j2opek2v8eiXQVWMrvJ8L
         HqWG2vXK5z7zj5K500KCVcCtFS5vhxW7QpLBI9+oDoWlzf4QkNDFVMeUZzfy3wrUcU
         aObBt8rflPFTMZj0bEPKV5aR/0IlWTEx6HSyQ/I9eEqO4aH867v1Q8YvEhfHt4Nlak
         uzo+94TMqNUMg==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id DB10260EBB; Sat, 30 Oct 2021 16:42:02 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214885] New: random.{4,7} [man-pages 5.13] do not reflect
 changes to /dev/random semantics since kernel 5.6
Date:   Sat, 30 Oct 2021 16:42:02 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: kerbug@zplane.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-214885-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214885

            Bug ID: 214885
           Summary: random.{4,7} [man-pages 5.13] do not reflect changes
                    to /dev/random semantics since kernel 5.6
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: low
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: kerbug@zplane.com
        Regression: No

In kernel 5.6, the semantics of reading from /dev/random were changed
significantly [1][2]. If my understanding of [1] is correct -- and perhaps =
it
is not, I am not claiming any expertise -- /dev/random now behaves essentia=
lly
like /dev/urandom, except that it blocks only in the case of insufficient
initial entropy during boot, but never blocks thereafter. A few quick
experiments using kernel 5.14.14 seem to confirm that understanding.

This is a significant behavioral change but it does not seem to be reflecte=
d in
either random.4 or random.7 from man-pages release 5.13 (as provided in Arch
Linux man-pages 5.13-1). In looking thru the change history of those pages,=
 it
does not seem that there have been any updates to either since man-pages 4.=
10.=20

I'd be happy to offer a patch, but the required changes are not trivial and=
 am
hestitant to contribute language on something that I don't have sufficient
familiarity with.=20

Based on my quick experiments with kernel 5.14.14, at least the following
statements in random.4 seem to be entirely invalidated by the post 5.6
behavior:

  A read(2) from /dev/random will return at most 512 bytes (340
  bytes on Linux kernels before version 2.6.12):

      Observed behavior with 5.14.14: It returns up to 32MB, just as
/dev/urandom does.

  The subsection describing read_wakeup_threshold:

      This pseudo-file read_wakeup_threshold no longer exists in
/proc/sys/kernel/random.

- Glenn

[1]
https://github.com/torvalds/linux/commit/30c08efec8884fb106b8e57094baa51bb4=
c44e32
[2] https://lwn.net/Articles/808575/

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
