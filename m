Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 936DE56AB09
	for <lists+linux-man@lfdr.de>; Thu,  7 Jul 2022 20:51:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236481AbiGGSuN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 7 Jul 2022 14:50:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236547AbiGGSuK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 7 Jul 2022 14:50:10 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC9712F01D
        for <linux-man@vger.kernel.org>; Thu,  7 Jul 2022 11:50:07 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 82691622F3
        for <linux-man@vger.kernel.org>; Thu,  7 Jul 2022 18:50:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7793C341D2
        for <linux-man@vger.kernel.org>; Thu,  7 Jul 2022 18:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1657219806;
        bh=qKPQ/i8nynUhFD0v7ygCqv9/oqDafmsVGb1sz8DqfL8=;
        h=From:To:Subject:Date:From;
        b=B8RikMgnr5ulhh4ZUk7pP1/ZSoTdw4XtluChdKXxJV1iohkUYSYG0+ufXgCgxcPPT
         F4iYN7Bv3+P8OMJMXlQfnU6IzPpxn2XzXLXeP4pifBFRrE0XAq8oQ9vaNpC5tySdq3
         vs1AguggcvP/+aIq81KasBicgMYhkW9O92s5kqd59njKE5xziodcoGnkwMinN/YhMN
         ekyUYXzJ8Nfu6DG+1L8N2dtH+Cfe7noailWMo84FnyO1PxVLsjafxWYYUiD2b+C3XP
         SugUkmseQRQAvD04A6sfdA3QCh1wadHRG1Ng7x9V6rA6mNNEC+qc73nBiZVZQAZeFF
         5On063nYowrfA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id C52DDCC13B8; Thu,  7 Jul 2022 18:50:06 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216215] New: clone and unshare say CAP_SYS_ADMIN is required to
 create new namespaces
Date:   Thu, 07 Jul 2022 18:50:06 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: linuxkernelbugzilla@pxeger.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-216215-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D216215

            Bug ID: 216215
           Summary: clone and unshare say CAP_SYS_ADMIN is required to
                    create new namespaces
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: linuxkernelbugzilla@pxeger.com
        Regression: No

According to clone(2) and unshare(2), the various CLONE_NEW* flags for crea=
ting
new namespaces require CAP_SYS_ADMIN. But this is not the case, and never h=
as
been (as best I can tell from some git log grepping in the kernel).

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
