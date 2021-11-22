Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C09A458C37
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 11:24:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238914AbhKVK1W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 05:27:22 -0500
Received: from mail.kernel.org ([198.145.29.99]:58834 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229983AbhKVK1V (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 22 Nov 2021 05:27:21 -0500
Received: by mail.kernel.org (Postfix) with ESMTPS id 7E08360C4A
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 10:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1637576655;
        bh=TPk83n3ifUY7gS38rj8ENggaND58t0+OrSEhfVSY4/k=;
        h=From:To:Subject:Date:From;
        b=Eb/FQqRm1lHp6IXqJf0y2F5SS8CEeD1JJU2UgK5b3ppzikW71UY1DRcxmLVVwMh0g
         F8N/CbkmOXfwLf30uuVrgNZPTFT2xfs1Ttq9QOoYgdjT4Hdlk7aC/BCwH9wadXJamg
         zPda3Vu/dIrt+HHSwm8LNCxN5InOTGRe5KM+0cgU83hCE4ZwV2myABikx+Jl12V7SK
         EAYP/OrQab39N9knZLidvBypRg2Zpwmx8xHyMh7ts7hOigSKePAU/DnosCx4uUXWZT
         YlcI2krY03wXNXTcQi3JzRWK05APoNaXSPqRssE/yWe9nrMopBqoGyLqiU5KFOPO5B
         yczGHgYTbsRDQ==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 774EE60ED3; Mon, 22 Nov 2021 10:24:15 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215097] New: Example in getpwnam_r man page compares size_t
 variable to -1
Date:   Mon, 22 Nov 2021 10:24:15 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: fabian@ritter-vogt.de
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-215097-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D215097

            Bug ID: 215097
           Summary: Example in getpwnam_r man page compares size_t
                    variable to -1
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: low
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: fabian@ritter-vogt.de
        Regression: No

The getpwnam_r man page
(https://man7.org/linux/man-pages/man3/getpwnam_r.3.html) has this in the
example code:

           size_t bufsize;
           ...

           bufsize =3D sysconf(_SC_GETPW_R_SIZE_MAX);
           if (bufsize =3D=3D -1)          /* Value was indeterminate */
               bufsize =3D 16384;        /* Should be more than enough */

bufsize is a variable with unsigned type, so this results in:

mantest.c: In function 'main':
mantest.c:14:20: warning: comparison of integer expressions of different
signedness: 'size_t' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   14 |         if(bufsize =3D=3D -1)

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
