Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E4BE6D3EE0
	for <lists+linux-man@lfdr.de>; Mon,  3 Apr 2023 10:23:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231738AbjDCIXW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 Apr 2023 04:23:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231744AbjDCIXV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 Apr 2023 04:23:21 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C6D04232
        for <linux-man@vger.kernel.org>; Mon,  3 Apr 2023 01:23:18 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 08BAA615E6
        for <linux-man@vger.kernel.org>; Mon,  3 Apr 2023 08:23:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D2A0C433D2
        for <linux-man@vger.kernel.org>; Mon,  3 Apr 2023 08:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1680510197;
        bh=nvoxC74nKDLXX6amDh5TLGHg3FQTuxZRkMZs7/tAZYU=;
        h=From:To:Subject:Date:From;
        b=BXGUy5cIzTsqQcA56+6uDduG410Ck0SawUYEY6alKJjCey62vhCkxtqM3YKTBAFgn
         /kWnYhLsBCEOVREwtI6Qf6h1GdXpg52/GrYL1s+gHGXY8Jry7fpW0LL1Z4V7XmbCC9
         WEc48XfGHE1Ri2JkyoZ2f5agPiKswXx4vKt4Wn3gUFrymxAbN+cX9MQ3wyvOYalx8e
         xPeEW49jTxradTK/VPb+FopTeWkptetg5YBlNCGGrte/w9adjYjD8Lw4NXf3MqSCkg
         48SoCYsTWQaJrrmxtWVOoLtKIkcBUDb9LM9P1N/Bxu/2BsuQ2JwOZGIy8uLh0bwLBN
         OYnO6gHdj66BA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 5846EC43141; Mon,  3 Apr 2023 08:23:17 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217291] New: librt empty, man pages should not tell users to
 link with -lrt
Date:   Mon, 03 Apr 2023 08:23:16 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: blomqvist.janne@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-217291-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217291

            Bug ID: 217291
           Summary: librt empty, man pages should not tell users to link
                    with -lrt
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: low
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: blomqvist.janne@gmail.com
        Regression: No

Nowadays librt.a is empty and librt.so is an empty placeholder, and everyth=
ing
has moved to libc proper. Similar to what was done with clock_gettime() and
friends for glibc 2.17. Man pages should have similar language as for
clock_gettime that one no longer needs to link with -lrt except for old gli=
bc
versions.

Looking at the output of git grep -F -e '-lrt' in the man-pages repo it see=
ms
the following man pages need fixing:

man2/timer_create.2          - Moved to libc in glibc 2.34
man2/timer_delete.2          - Same
man2/timer_getoverrun.2      - Same
man2/timer_settime.2         - Same
man3/aio_cancel.3            - Same
man3/aio_error.3             - Same
man3/aio_fsync.3             - Same
man3/aio_init.3              - Same
man3/aio_read.3              - Same
man3/aio_return.3            - Same
man3/aio_suspend.3           - Same
man3/aio_write.3             - Same
man3/intro.3                 - No need to mention obsolete librt?
man3/lio_listio.3            - Moved to libc in glibc 2.34
man3/mq_close.3              - Same
man3/mq_getattr.3            - Same
man3/mq_notify.3             - Same
man3/mq_open.3               - Same
man3/mq_receive.3            - Same
man3/mq_send.3               - Same
man3/mq_unlink.3             - Same
man3/pthread_getcpuclockid.3 - Remove -lrt from example comment
man3/shm_open.3              - Moved to libc in glibc 2.34
man7/mq_overview.7           - Update to reflect that -lrt needed only for
glibc < 2.34
man7/shm_overview.7          - Same

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
