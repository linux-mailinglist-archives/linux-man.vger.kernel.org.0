Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACD166D71B9
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 02:52:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235182AbjDEAwx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Apr 2023 20:52:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229484AbjDEAww (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Apr 2023 20:52:52 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28F8610C6
        for <linux-man@vger.kernel.org>; Tue,  4 Apr 2023 17:52:52 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8B67D63938
        for <linux-man@vger.kernel.org>; Wed,  5 Apr 2023 00:52:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED556C4339B
        for <linux-man@vger.kernel.org>; Wed,  5 Apr 2023 00:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1680655971;
        bh=mW6kP3VshgHMI1RrTn2EZV5rrBU0qKo0Cw39KbcNxqM=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=MK2+tWnafc1gdqH/UP5fUfKwZ9XzdY1WBZpLe5EwTyBTv8crLOTete+YZCSnmr2JG
         j2byvQvu1pjO/tiV9lg+k7csQAYDurGLS6dAGkYYYAhxsBv4AauhSu1Yh/cHUch1D/
         OuOKanPeRsyPl6ZpsdCbLFqwpMmY3uD+GECCMmTg2xt7ILs+PIpYO+mFICSKX/pcmY
         IfDG9KAS5Vr0oGmsx8+kmoK7a7+5yPj5R8jVqORGUsH5LVM/mIH+v9QYAb8jezyXGM
         r1j0CaEZbgH57VC61iFGUT+5cGdMr9bs5chViCSJFWLkbSuTTX3Y8hupfV5lrxeqOy
         4YF8ht5A2zOnA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id D3439C43141; Wed,  5 Apr 2023 00:52:50 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217291] librt empty, man pages should not tell users to link
 with -lrt
Date:   Wed, 05 Apr 2023 00:52:50 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: sam@gentoo.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-217291-11311-iPHdKBRUwn@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217291-11311@https.bugzilla.kernel.org/>
References: <bug-217291-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-5.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,SPF_HELO_NONE,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D217291

Sam James (sam@gentoo.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |sam@gentoo.org

--- Comment #1 from Sam James (sam@gentoo.org) ---
It depends on one's libc (non-glibc implementations are free to need it sti=
ll)
rather than being obsolete altogether.

Ultimately, a configure test is needed.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
