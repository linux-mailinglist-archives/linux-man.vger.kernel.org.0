Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9ACAD6CA6C8
	for <lists+linux-man@lfdr.de>; Mon, 27 Mar 2023 16:06:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232356AbjC0OGy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 27 Mar 2023 10:06:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbjC0OGt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 27 Mar 2023 10:06:49 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D01FE5255
        for <linux-man@vger.kernel.org>; Mon, 27 Mar 2023 07:05:45 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 7A975B8159D
        for <linux-man@vger.kernel.org>; Mon, 27 Mar 2023 14:05:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3DAE6C433A1
        for <linux-man@vger.kernel.org>; Mon, 27 Mar 2023 14:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1679925943;
        bh=7B5PrwNxky4tmpnatB1GAJukGF9BuWvozsLkqZ6wg3s=;
        h=From:To:Subject:Date:From;
        b=f7V0tdYLBrF5tT4hXUh4Q9UDuAWTO8ws+GHHsNBXbDONbuhH1oEzddaEtjSz8VFUc
         wp4TAa4an3vgP4FyyHa5xwaE2GBCsrbIAe3Oqm8XGIR79f/2CXl0K65qwCIQB1iJPX
         Sr68LUVT44xTGBbOkZx7O2Gqu7NFmQNVxnKrk0Sv5vEEnFpSu9SqyANb8yvOLivce+
         jPIc7bor2WgQidyFux4u4NMwkXJSYV9OPP3f4yl34A3OKkZetRK+N7t/08xOMd31t3
         UTKlZaxrICOkK6fzgXnULy4aSCQLvM0pSfHFQZfG4LX9lHoD98JYMqfn2DieAO+o88
         h9nw/U4HqJhiQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 2C451C43141; Mon, 27 Mar 2023 14:05:43 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217253] New: mbind, set_mempolicy, migrate_pages: maxnode
 description is off-by-one
Date:   Mon, 27 Mar 2023 14:05:42 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: tonyb@cybernetics.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-217253-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D217253

            Bug ID: 217253
           Summary: mbind, set_mempolicy, migrate_pages: maxnode
                    description is off-by-one
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: tonyb@cybernetics.com
        Regression: No

linux/mm/mempolicy.c::get_nodes() does "--maxnode" at the beginning, so:
maxnode =3D=3D 0 is invalid (-EINVAL).
maxnode =3D=3D 1 specifies the empty set of nodes (the man pages currently =
say to
use maxnode =3D=3D 0).
maxnode =3D=3D 2 indicates one valid bit in nodemask.
maxnode =3D=3D 3 indicates two valid bits in nodemask.
etc.

Incorrect section from mbind manpage:

"nodemask points to a bit mask of nodes containing up to maxnode bits.  The=
 bit
mask size is rounded to the next multiple of sizeof(unsigned long), but the
kernel will use bits only up to maxnode.  A NULL value of nodemask or a max=
node
value of zero specifies the empty set of nodes.  If the value of maxnode is
zero, the nodemask argument is ignored."

I am not sure if this was an intentional design choice or a bug that got
enshrined in the userspace API, but userspace programs "in the know" seem to
rely on this now:

https://gitlab.com/qemu-project/qemu/-/blob/60ca584b8af0de525656f959991a440=
f8c191f12/backends/hostmem.c#L369

Also, the commit message for linux commit c6018b4b2549 ("mm/mempolicy: add
set_mempolicy_home_node syscall") shows using "new_nodes->size + 1", so this
API bug/choice seems to be known within the kernel community.

Here is a related bugzilla entry that treats the problem as a kernel bug ra=
ther
than a documentation issue:
https://bugzilla.kernel.org/show_bug.cgi?id=3D201433

But since "fixing" the bug (assuming that it was unintentional) might break
existing userspace programs that work around the bug, I suggest fixing the
documentation instead.  But that is just my opinion as a user who just ran =
into
the bug and did some investigating; best to check with the kernel maintaine=
rs
for their opinion.

Related:
linux commit 050c17f239fd ("numa: change get_mempolicy() to use nr_node_ids
instead of MAX_NUMNODES") commit message talks about calculating maxnode for
get_mempolicy().

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
