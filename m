Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18A0D61E012
	for <lists+linux-man@lfdr.de>; Sun,  6 Nov 2022 04:04:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229600AbiKFDEr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Nov 2022 23:04:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229492AbiKFDEq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Nov 2022 23:04:46 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4614610566
        for <linux-man@vger.kernel.org>; Sat,  5 Nov 2022 20:04:45 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id DE235B808CC
        for <linux-man@vger.kernel.org>; Sun,  6 Nov 2022 03:04:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68FCFC433D7
        for <linux-man@vger.kernel.org>; Sun,  6 Nov 2022 03:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1667703882;
        bh=576i/WyAnBcrpvFEEECcwIlaSajB2ND9n9csMt74r/M=;
        h=From:To:Subject:Date:From;
        b=sWWVHvY+Aib8RDG5vUSa7XmEU12EBJsHTUPHjMun26NLHvMAu9JA1vKAXuw/x4KGg
         UdsVOsQZ5oeHuufprkJF7lTW2Dk4g5peVoff77OsEDPlBWyovWOQnzPo8ivW8S2Jsb
         mFLBNqsgd1M3Ks861cQmegb9ulaHeWBuXL/0T8g8Kb0ajxBpXRCr7uyMErMExVtyh6
         TQJwK0Ki14CJjP98nQr6b0WVUF8FXSle2iuO61KEjdjrQcSUrhT/MNhx7f93fW/QWU
         LxBkwPlUPTnl6k55Yuj8Pi2GHPyvU+kYUpuYuPHF/mbZeR4HF5LhxHFNZTBtb6Tsuk
         YPSY1DytLfOiQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 516ECC433EA; Sun,  6 Nov 2022 03:04:42 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216667] New: Self-contradictory description of inheritable
 capability set
Date:   Sun, 06 Nov 2022 03:04:42 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: robryk@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-216667-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-8.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D216667

            Bug ID: 216667
           Summary: Self-contradictory description of inheritable
                    capability set
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: robryk@gmail.com
        Regression: No

man capabilities says about the inheritable capset of a process:

> This is a set of capabilities preserved across an execve(2).  Inheritable
> capabilities remain inheritable when executing any program, (...)

I understand this to mean that any capability in the inheritable set will s=
tay
inheritable across an execve (i.e. the inheritable set will not shrink acro=
ss
execve).

The same manpage says in the next paragraph:

> Because inheritable capabilities are not generally preserved across execv=
e(2)
> when running as a non-root user (...)

This seems to say the exact opposite of how I read the previous paragraph.

I am probably misunderstanding something basic here, but I am unlikely to be
the only person who does so, so I think it bears making this part clearer.

(When I try to look at the rest of the manpage to get more clarity, I fail:
 - the section that describes capability transformations across execve() se=
ems
to say that inheritable capset stays constant,
 - the description of ambient capabilities implies that inheritable
capabilities differ from ambient insofar ambient ones are more "durable" ac=
ross
execve().)

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
