Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21A386030D9
	for <lists+linux-man@lfdr.de>; Tue, 18 Oct 2022 18:38:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229463AbiJRQie (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 12:38:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229456AbiJRQid (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 12:38:33 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6114E22CB
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 09:38:32 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 51CFA6162D
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 16:38:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F03C43470
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 16:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1666111111;
        bh=m2fYkTBUuTmaaEO6NP7dfN07LYS5lCtqdFXom52lFzM=;
        h=From:To:Subject:Date:From;
        b=lQ61+Jxd+h1Q/bCt4tsoPttNj08ddDhAc3GJ1i4rAhy9zBUePfMF+mvm4leFbTGba
         W21V705PFTrscvGKU+oJkNgzj8gkpvqnmod7hn6sAUXje0V/5pPZAqH4KbSzt8xthb
         vYqhJEUCM+l9v69Ddo34AR68OXcvdECBsQnVELVc92diOWQ0AEoctMINPdeW3bPcxF
         /dC+dQC1UutK/9g7Bjkadj0pmJk4I4dymmgSlofDlPLHaeQAG6rCdukL++etYUAbFa
         ywA/b6g80c7auD7yTN64uuNHcV1JUx2A0HHL6PyYK7Kzfyl2dAvcryfHYdU59N2OuT
         4cXvvabGmtGtg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id A4561C433E4; Tue, 18 Oct 2022 16:38:31 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216602] New: The build system requires the bsd compat libraries
 even if only installing man pages
Date:   Tue, 18 Oct 2022 16:38:31 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: pierre.labastie@neuf.fr
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-216602-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D216602

            Bug ID: 216602
           Summary: The build system requires the bsd compat libraries
                    even if only installing man pages
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: pierre.labastie@neuf.fr
        Regression: No

In version 6.0, Makefile unconditionally includes lib/build-src.mk, which
itself unconditionally runs "pkg-config" to search libbsd-overlay. This
generates spurious messages if this library is not installed, while this
library is not needed if only installing the man pages on the system.

Note: I'm one of the linuxfromscratch editors, and we install the man pages
early in the process.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
