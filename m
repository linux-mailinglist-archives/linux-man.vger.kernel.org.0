Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 124BE444224
	for <lists+linux-man@lfdr.de>; Wed,  3 Nov 2021 14:06:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230299AbhKCNIh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Nov 2021 09:08:37 -0400
Received: from mail.kernel.org ([198.145.29.99]:39824 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230185AbhKCNIg (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 3 Nov 2021 09:08:36 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 947E361076
        for <linux-man@vger.kernel.org>; Wed,  3 Nov 2021 13:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635944760;
        bh=vSmysb9LbV/RGhchFwZj3Yf+BYrzIetm+ck78ZHpODQ=;
        h=From:To:Subject:Date:From;
        b=cEa7DTOot4r93zRE3YXohstykRgA9Q0w0Rqq4bM/AqUpg3OewdcdqfidIevWqYymk
         6UsaTfvgQeaOcTVcZodoTvnPuOzl5X2llOQYg01aTyy9lOM/r7fNdcXPh4gZ/RGVSh
         7pofcAB4eKRG0C9awTMR389FKS5oi+OIwxJN6DsFA1jWfNThhekVM7OFc+r8d0xmvK
         vrNo7mrw1dMaW5wqStcTW1A/RVgKV1tn+38+0huJ8jlnTNAsc8JS8caHc7LAwbxQKU
         hKEdD198e9WpZzAPGrPBOhgue+V+Beyz/RDqaNN6xOWpiRCR+7dJjJSdrcKIWa1OO6
         1R9cPIZUjaeCw==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 8E49460F41; Wed,  3 Nov 2021 13:06:00 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214931] New: General Grammatical Errors In
 /Documentation/process/2.Process.rst
Date:   Wed, 03 Nov 2021 13:05:59 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: hunter.chasens18@ncf.edu
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-214931-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214931

            Bug ID: 214931
           Summary: General Grammatical Errors In
                    /Documentation/process/2.Process.rst
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: hunter.chasens18@ncf.edu
        Regression: No

Line numbers correspond to the raw .rst document, not the compiled document.

Location in source: /Documentation/process/2.Process.rst
Build Date & Hardware: 5.14.14

Line 71:
-At that point the whole process starts over again.
+At that point, the whole process starts over again.


Line 169:
-   in the open if at all possible; it can save a lot of time redesigning
+   in the open, if at all possible; it can save a lot of time redesigning
    things later.

Line 177:
- - Wider review.  When the patch is getting close to ready for mainline
+ - Wider review.  When the patch is getting close to being ready for mainl=
ine

Line 182:
-   process works, this step leads to more extensive review of the patch and
+   process works, this step leads to a more extensive review of the patch =
and

Line 411:
-This list is an intimidating place to be; volume can reach 500 messages per
+This list is an intimidating place to be; the volume can reach 500 messages
per

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
