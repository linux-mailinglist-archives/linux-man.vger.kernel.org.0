Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A3B16031A1
	for <lists+linux-man@lfdr.de>; Tue, 18 Oct 2022 19:33:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229882AbiJRRdz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 13:33:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229526AbiJRRdy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 13:33:54 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5535B2DA1
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 10:33:53 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 54233B82075
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 17:33:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0832DC433B5
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 17:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1666114431;
        bh=2dsrfVmgf+ZSQnFNxEnRyGhb8rYMM4OuVT5A9cCrTpQ=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=FpA3wF+KZFBGMfs5/nAhakDriKmIjnvA+KmCBos1iSfZQdJNAdCwxckp16y8koevL
         1tM91ukUMMtB/Ni2vlAfMCz5rIYoieedV+LmVIBCAImqm0I51E5V8/hDkflL8as819
         BEGTDm3Jd2dtkzqv8AwSGv92+/n7ZdrKYSug5wvBi3RcspLJyCDEk0QpFr/cImrXx2
         XtHxpRvomTz+dIBCeFVh9nnCY8ZI98WmQQmYVygof5ulJShT452+w5tvLdgwOxTqQE
         W2PJKNh7j/VuKH8cWx/AVhq73OhY+A1I7UVCZx03nfq6tWsi/lvqKJB9B2yanrCHL/
         KyJTzPO/C8+jw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id E011FC433EA; Tue, 18 Oct 2022 17:33:50 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216602] The build system requires the bsd compat libraries even
 if only installing man pages
Date:   Tue, 18 Oct 2022 17:33:50 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx.manpages@gmail.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: CODE_FIX
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status cc resolution
Message-ID: <bug-216602-11311-85aDJcPCHY@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216602-11311@https.bugzilla.kernel.org/>
References: <bug-216602-11311@https.bugzilla.kernel.org/>
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

Alejandro Colomar (man-pages) (alx.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
                 CC|                            |alx.manpages@gmail.com
         Resolution|---                         |CODE_FIX

--- Comment #1 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Hi Pierre!

Thanks!  I was worried about it but didn't know what to do.  I've fixed now:

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D8=
f97613a490f5b5bdb1156f4572424771e051020>

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D3=
4caa7cd4d50f4ab306c18d5fc07c5619f237aea>

I'll release 6.01 soon with this fix, since it's important enough.  I would
release 6.00.1, but I prefer releasing some recent changes that deserve a n=
ew
release.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
