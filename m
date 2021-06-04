Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A27039C38A
	for <lists+linux-man@lfdr.de>; Sat,  5 Jun 2021 00:37:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229873AbhFDWj3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Jun 2021 18:39:29 -0400
Received: from mail.kernel.org ([198.145.29.99]:41708 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229746AbhFDWj3 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 4 Jun 2021 18:39:29 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 3A20161402
        for <linux-man@vger.kernel.org>; Fri,  4 Jun 2021 22:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1622846262;
        bh=rnC/5V9Pj3nHM/hM4Wt4iIh+rGSAWQeszCERxXhSKdo=;
        h=From:To:Subject:Date:From;
        b=NfCs6d4vi++T2+1yvC3YwFtfmWhAVmek1N9aZKfXFr1GVRGLF3sz2moIwrQf79WlQ
         JhuKYxpK4sybACoDrviVY+wSVhPBdwKqDnoNn+Hk/NaReGegas2yiIrcVNlD8Rn982
         UuQqXIA5/pf0ZU/rF+WjWTKSPN9cKBfevaYcwKIvkU+GDFmz79ll4t2j4X78sbpeAX
         EPGnJKtO1qtbc5DfpMB0UaKVShaCWgn1OsP6F9nKCy6FmS5/D5Jn0Q1s8fe5YR9vgN
         nCy10GmZUtNAx1rJQzKqtM9hEqf5Qdh2VMHpbAbUNy3NT0zwDDLYZt9Hay2ieDA6eN
         oYc1HZQepgQ2g==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 34D8B6124C; Fri,  4 Jun 2021 22:37:42 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 213341] New: Man Page for ferror/feof has bad information in
 "Return Value" Section
Date:   Fri, 04 Jun 2021 22:37:41 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: vulkur@protonmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_file_loc bug_id short_desc product version
 rep_platform op_sys bug_status bug_severity priority component assigned_to
 reporter cf_regression
Message-ID: <bug-213341-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D213341

               URL: https://man7.org/linux/man-pages/man3/ferror.3.html
            Bug ID: 213341
           Summary: Man Page for ferror/feof has bad information in
                    "Return Value" Section
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: low
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: vulkur@protonmail.com
        Regression: No

Within the man page for ferror and feof, there is a description for the ret=
urn
value of feof twice. The second description is for ferror.


>This:
>       The feof() function returns nonzero if the end-of-file indicator
>       is set for stream; otherwise, it returns zero.
>
>       The feof() function returns nonzero if the error indicator is set
>       for stream; otherwise, it returns zero.

>Should be this:
>       The feof() function returns nonzero if the end-of-file indicator
>       is set for stream; otherwise, it returns zero.
>
>       The ferror() function returns nonzero if the error indicator is set
>       for stream; otherwise, it returns zero.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
