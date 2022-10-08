Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B11165F86F6
	for <lists+linux-man@lfdr.de>; Sat,  8 Oct 2022 20:56:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230037AbiJHS4u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Oct 2022 14:56:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229900AbiJHS4e (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Oct 2022 14:56:34 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 426F647BB9
        for <linux-man@vger.kernel.org>; Sat,  8 Oct 2022 11:54:21 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id A2E8EB80BEB
        for <linux-man@vger.kernel.org>; Sat,  8 Oct 2022 18:52:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 427D1C43141
        for <linux-man@vger.kernel.org>; Sat,  8 Oct 2022 18:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1665255174;
        bh=Evqz/5ybVtHRsVIYFW1RnDGK2Bcp2db7JkTAkPNjm4o=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=rSPa4cMI4nFnYUNzRz4TZKPtviLu1vVPtc2DkIda36Tu7o2riVYZln2eNAeDGMoE1
         dAFieZmUbYlzEANqfZfo08KsXT0TRIsHAoLmP6OOQEzYpRyEMyv9PWutkb6u0DHuq0
         GZ8eRJUPhA9xQx+g2SvbXEClJYhBG3kWQ4VklSnbsX9xzk6eOkRt7CucEB5e2CzQLw
         Lk2JNodK7P9eTH5QSX+i3inhrlCXPa+WUUYozz9YadP56uf44jvDjSi6dRukVPe4dn
         xKixBe5Xwn+mSq//pszSYOszwDcdbHrx2qPW3aaDSfosmcncigcFHm52jpII7UQ+Ra
         CoIQmnn8pu92A==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 1ACC5C433E4; Sat,  8 Oct 2022 18:52:54 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215769] vfork() returns EINVAL after unshare(CLONE_NEWTIME)
Date:   Sat, 08 Oct 2022 18:52:52 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Other
X-Bugzilla-Component: Other
X-Bugzilla-Version: 2.5
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: socketpair@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-215769-11311-lLKLsDL9JE@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215769-11311@https.bugzilla.kernel.org/>
References: <bug-215769-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D215769

--- Comment #18 from =D0=9A=D0=BE=D1=80=D0=B5=D0=BD=D0=B1=D0=B5=D1=80=D0=B3=
 =D0=9C=D0=B0=D1=80=D0=BA (socketpair@gmail.com) ---
It's a bug or missing feature in Linux namespaces subsystem. I don't know to
whom it should be assigned. It's some core kernel functionality. It's not a=
bout
documentation.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
