Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F914495F1A
	for <lists+linux-man@lfdr.de>; Fri, 21 Jan 2022 13:40:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1380394AbiAUMkN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Jan 2022 07:40:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380393AbiAUMkL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Jan 2022 07:40:11 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E335C06173F
        for <linux-man@vger.kernel.org>; Fri, 21 Jan 2022 04:40:11 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id D9557B81ED3
        for <linux-man@vger.kernel.org>; Fri, 21 Jan 2022 12:40:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BC81C340E5
        for <linux-man@vger.kernel.org>; Fri, 21 Jan 2022 12:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1642768808;
        bh=RSvZaDl1qxWjiLIAvuF7+4cG8IZqxuFSDxgTLY8vfBA=;
        h=From:To:Subject:Date:From;
        b=fzzSB5Ufz5rBfk42zkDNFrSXyJwv7ysyhCMp01c8rG0baamsIR9HQ9JAYXddhdi9p
         nr8NhVWNYBtyo9q/KYucVzczK7HA52L9n5Ef+QZ6LbfYULq3KBxTP4LjsCTzxogS9L
         7VlG7veoW2NO7VlmWlIAhr2ShkXMTBJtmZCpHQv5ZtLkW8D0LGcZVDQ/uErLBX6FDk
         17NzSohNwyVQiH75pbK7ear+9l7iCZguG+XDI61CrLaveHRFBjsJlV0nCOKdzwHKC0
         XCvyHcF6kJZCCalOiZ0TS9yJYRdKDwhCXfhi1oCvBQFGkV1prdWhTsuQfWGm9PAmqo
         6JUPLgAsIZoyA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 54AEFCC13B2; Fri, 21 Jan 2022 12:40:08 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215514] New: Documentation: meaning of device number / ID in
 `stat` and `stat()`
Date:   Fri, 21 Jan 2022 12:40:08 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: jwagner@computing.dcu.ie
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-215514-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D215514

            Bug ID: 215514
           Summary: Documentation: meaning of device number / ID in `stat`
                    and `stat()`
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: jwagner@computing.dcu.ie
        Regression: No

The man page `man 2 stat` for `stat()` gives the impression that `stat.st_d=
ev`
is always composed of major and minor of an existing block device. However,
filesystems such as `btrfs` allocate new device number not (clearly) relate=
d to
the underlying device(s). The description of `st_dev` needs to be updated.

Similarly, a clarification would be useful in `man 1 stat` either directly =
in
the description of the `%d` and `%D` formats or after the formats table.

My system: openSUSE Leap 15.3

Checked in current man pages as of 2022-01-21:
* https://man7.org/linux/man-pages/man2/stat.2.html
* https://man7.org/linux/man-pages/man1/stat.1.html

Related:
* https://github.com/util-linux/util-linux/issues/1562 (closed, wrong place)

Breadcrumbs:
* https://github.com/util-linux/util-linux/issues/1563 (closed, wrong place)

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
