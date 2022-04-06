Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 863694F5799
	for <lists+linux-man@lfdr.de>; Wed,  6 Apr 2022 10:16:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230007AbiDFH5A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 6 Apr 2022 03:57:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1455340AbiDFHzv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 6 Apr 2022 03:55:51 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07A71E9973
        for <linux-man@vger.kernel.org>; Tue,  5 Apr 2022 22:44:59 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 70A1860B17
        for <linux-man@vger.kernel.org>; Wed,  6 Apr 2022 05:44:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7080C385A8
        for <linux-man@vger.kernel.org>; Wed,  6 Apr 2022 05:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1649223897;
        bh=g2Z6K+J/Frfj4TMG4QU6WR6vT7gQCrCuHCoJ6duViCU=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=gnePVNxR36INkTp7U6lhFlzn5CaF3/Nu2QHcxKPG3oT0hkOzW4dt8W6RJceNaEA88
         lR9mA5fTo4kUKE35yaeaiemzas8tYQB2niZVeseEYPNrjB/L11tSxl2BlpLHS0lyyF
         a8+cHjpqvbx4349b9piU1HhZgbfaYNk0/xX1CK7wk8nSQ5gBbynUTJR8zYn2+38ABm
         RhFQq6Cfk+gqtk611r7H+2T8ErPafBBByuQIyKQnEhK7GnXuYaaRY/jU0mdyEtB9m0
         wUGfJZi4Y7mCgj0c6RWzL6KP5V0bVyFgfhPc7PldRU8f7oDeoNY3pQsm/O0XzsqA8j
         8qMrx/roGTC0A==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id BE5F4C05F98; Wed,  6 Apr 2022 05:44:57 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215769] man 2 vfork() does not document corner case when PID ==
 1
Date:   Wed, 06 Apr 2022 05:44:57 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: socketpair@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-215769-11311-NJVyNJ9hkz@https.bugzilla.kernel.org/>
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

--- Comment #9 from =D0=9A=D0=BE=D1=80=D0=B5=D0=BD=D0=B1=D0=B5=D1=80=D0=B3 =
=D0=9C=D0=B0=D1=80=D0=BA (socketpair@gmail.com) ---
GLIBC:
sysdeps/unix/sysv/linux/spawni.c

It uses clone(CLONE_VM | CLONE_VFORK | SIGCHLD) instead of direct vfork()
syscall.

Also, vfork() function implementation in glibc depends on architecture. On
x86it should be 1:1 i.e. it should call vfork() syscall directly. On some o=
ther
architectures, it calls clone() with flags.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
