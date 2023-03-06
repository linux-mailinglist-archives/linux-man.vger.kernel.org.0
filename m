Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1A6D6ACBDA
	for <lists+linux-man@lfdr.de>; Mon,  6 Mar 2023 19:03:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229659AbjCFSDM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Mar 2023 13:03:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229972AbjCFSDK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Mar 2023 13:03:10 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B742B3E086
        for <linux-man@vger.kernel.org>; Mon,  6 Mar 2023 10:02:45 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 153C2B81081
        for <linux-man@vger.kernel.org>; Mon,  6 Mar 2023 18:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2690C433A0
        for <linux-man@vger.kernel.org>; Mon,  6 Mar 2023 18:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678125667;
        bh=Pfw6skcp2TC9Iu3CPKLmImfQR21IwmRfchGBeo04q6Y=;
        h=From:To:Subject:Date:From;
        b=elbVWLs0kjj0iaq5HhvBbzQibLUJzDtI2pqen11QcKpXL3gZKVh01bgyOwXHY/m+L
         5OazOzaUCNaY3umch8Qld9F3FeBXFKc41O8T3YuQ29w7+VasSMOAwsTM8Zp02bLzTh
         EoljCvf4zqwcmGgblF9qVCdXB8MQuJtossUheh5Uaje8adOXmQs60dyOSNxxA+87nh
         JqHKQov4A9MxpE8oKrBpTPqgvEmym5GToetuiFG3TSEYuM/pGAIe0nE1lhKa5jvJoS
         GxQB+HPeZCaM+BSl9tSmEaJplMTQiWBddpzVeaY+IshrkvVMsc6TSD/cbFxA6pEA4t
         RsFv14DPgrGOA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 99B44C43145; Mon,  6 Mar 2023 18:01:07 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217148] New: man-pages-posix: create symlinks during
 installation
Date:   Mon, 06 Mar 2023 18:01:07 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: esteve.varela@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-217148-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217148

            Bug ID: 217148
           Summary: man-pages-posix: create symlinks during installation
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: esteve.varela@gmail.com
        Regression: No

Doing some pthreads programming as of recently, I've found that the
documentation is scattered across the man-pages and man-pages-posix project=
s.

Various pages refer to the existence of other pages, which simply don't exi=
st
in a default installation as created by "make install" of man-pages-posix. =
For
example, pthreads(3) refers to pthread_cond_wait(3). Running "man
pthread_cond_wait" will result in the man page not being found.

On the website[1], this page appears to be a symlink. The correct page it
should lead to, being pthread_cond_wait(3p) (yes, 3p, not 3, as was referre=
d).
However, currently no distributions make a symlink for these, so the correct
page is frequently hard to find.

I'd like to have a default set of man page symlinks created by the
man-pages-posix distribution tarball, reflecting whatever the man7.org site
does, such that these pages are more easily found, and the documentation is
consistent across linux distributions.

Interestingly, debian has a set of pages[2] for some of the "missing" pages,
but these aren't shipped in any other distribution I'm aware of.

[1]: https://man7.org/linux/man-pages/man3/pthread_cond_wait.3p.html
[2]: https://manpages.debian.org/bullseye/glibc-doc/index.html

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
