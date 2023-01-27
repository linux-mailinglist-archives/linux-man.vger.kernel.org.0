Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E96367EADB
	for <lists+linux-man@lfdr.de>; Fri, 27 Jan 2023 17:27:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230257AbjA0Q1B (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Jan 2023 11:27:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233708AbjA0Q0z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Jan 2023 11:26:55 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66D2D80F8F
        for <linux-man@vger.kernel.org>; Fri, 27 Jan 2023 08:26:53 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0268061D0C
        for <linux-man@vger.kernel.org>; Fri, 27 Jan 2023 16:26:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6232AC4339E
        for <linux-man@vger.kernel.org>; Fri, 27 Jan 2023 16:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674836812;
        bh=Vt2s2mYG9NrCX2s06UWEb/gX4x8WYOdnWIlCf6Kv3kE=;
        h=From:To:Subject:Date:From;
        b=VftdGq1nzQlNRjnofEg6ntiRoaeT30GlX7sqR1AHUvQK24tCmLWPIAFOmAAC4t5UA
         Rz/TVmR0LizswdXyFapbLUCUd9aMYdnxzGXLL/Pl3ucOXoUyNCU/gkk8HuwQn4+p3N
         tanm/yv2hse2R+AWX4fSJ0iXcaDrwrZhntcaN1HRmo26KtBuvN8oeCVKOhHLtXItD8
         EgshU/m6Fv1nxXYkycryP7RELfBVOn0ZqD0AFAH0K/MAL4CenK/naTGSbRSLIjPOoI
         6YdWSF47iSTH3UdjOSI5IDVuI7AkGlxPY7SVJ/Bd1vWkzOSVKPQ1PnRe4bympGLQ1J
         28NXXZMEhnulg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 4D84BC43145; Fri, 27 Jan 2023 16:26:52 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216971] New: add a link from filesystems(7) to mq_overview(7)
Date:   Fri, 27 Jan 2023 16:26:51 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: enhancement
X-Bugzilla-Who: giecrilj@stegny.2a.pl
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-216971-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D216971

            Bug ID: 216971
           Summary: add a link from filesystems(7) to mq_overview(7)
           Product: Documentation
           Version: unspecified
          Hardware: Intel
                OS: Linux
            Status: NEW
          Severity: enhancement
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: giecrilj@stegny.2a.pl
        Regression: No

Please add mqueue to filesystem types!
The filesystem type mqueue is reported by mountinfo.
The documentation for mountinfo says where filesystem types are documented.
But mqueue is not mentioned there.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
