Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 101BF4F69F6
	for <lists+linux-man@lfdr.de>; Wed,  6 Apr 2022 21:31:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231811AbiDFTdE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 6 Apr 2022 15:33:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232089AbiDFTcu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 6 Apr 2022 15:32:50 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4AEA197FA3
        for <linux-man@vger.kernel.org>; Wed,  6 Apr 2022 10:13:10 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5432561800
        for <linux-man@vger.kernel.org>; Wed,  6 Apr 2022 17:13:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A68C385A9
        for <linux-man@vger.kernel.org>; Wed,  6 Apr 2022 17:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1649265189;
        bh=W0Wo/Rv0yja6piKJhJ3/aO37/4jZG+qRGKgpQaRFoBE=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=mM4ebsP0EhL29HNl6wOoKNyounTS8e1bNINWvz/ipXpGjLMMuqNgBqDs0mWjjQhjC
         52ig0MRxRqjGSwPyW/46rtLF08mKh4Wgy2wDlnd60Ne5ATX9NiCcm6PnpUcdAwLUpf
         bsFWDBMui9XYMigaJ4YxmEmBp1zSMH/N3R0eBMzwUeiqt8ftvrhsoRFQYxD1inh8Hb
         8d+efsEW6AQlockw5O/kmR/OtrjcbhM1ToEvPznBlr9fCBxbYdsLhhpQq8nLIVZkmC
         057Ta7jjEvgAcJHk3weT+wNXzMtrGYPi21nxJILSpQI9jvhj1t9bi79T8vRjksTDD4
         NERmO/LPGBZzQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 88EE1C05FD4; Wed,  6 Apr 2022 17:13:09 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215769] man 2 vfork() does not document corner case when PID ==
 1
Date:   Wed, 06 Apr 2022 17:13:09 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: fweimer@redhat.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-215769-11311-TdK8U3qCW2@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215769-11311@https.bugzilla.kernel.org/>
References: <bug-215769-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D215769

Florian Weimer (fweimer@redhat.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |fweimer@redhat.com

--- Comment #11 from Florian Weimer (fweimer@redhat.com) ---
(In reply to brauner from comment #10)
> glibc does vfork() via inline assembly massaging. There's probably
> atfork handlers and a bunch of other stuff involved so it's difficult to
> do a remote diagnosis.

glibc does not run fork handlers for vfork.

> (And note that calling anything other than execve() or _exit() after
> vfork() is basically undefined behavior.)

Historically, glibc supports calling malloc after vfork, so that applicatio=
ns
can implement their own form of close_range by reading /proc/self/fd.

I wonder if we need to handle CLONE_NEWTIME in posix_spawn in some way. Sur=
ely
that clone(CLONE_VM | CLONE_VFORK | SIGCHLD) call should fail as well if vf=
ork
is blocked after CLONE_NEWTIME, so CLONE_NEWTIME probably breaks posix_spaw=
n.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
