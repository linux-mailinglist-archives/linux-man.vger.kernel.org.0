Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA2F768A8EC
	for <lists+linux-man@lfdr.de>; Sat,  4 Feb 2023 09:15:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231499AbjBDIPt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 Feb 2023 03:15:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbjBDIPs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 4 Feb 2023 03:15:48 -0500
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E5F43C31
        for <linux-man@vger.kernel.org>; Sat,  4 Feb 2023 00:15:47 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id C8546CE2E0D
        for <linux-man@vger.kernel.org>; Sat,  4 Feb 2023 08:15:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 19E8DC4339C
        for <linux-man@vger.kernel.org>; Sat,  4 Feb 2023 08:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1675498544;
        bh=ewWMkUjcrXPWHLcNzk1nOx02fSqcdHpA8PBAcclCNx4=;
        h=From:To:Subject:Date:From;
        b=ZbNptR8vfvYfjEiOSBDxDrQ1MpjVYiZpHMtKYUvF4HScOMCQaGktTgSgOzNLhSny7
         /WYgLNCk6g1y2geZvYtqkSID6RhRfWxqV1AmZo3UtH030XxnDsQErmxAYODDWUnVa+
         v2MM1bCKczA38r0zBhd3AstL4svHJlQu2XkXflXyiTviGD6qWj32BJx86tRxaZFBVB
         j8psuQc7aBoR1jO4Bb3tbVgCxts5rTbG3GxgXozE/7jTSFA/5apDQa4DZd6vSA5l63
         PVBDgXUG6smMIlAbzHFeVnOb8geSxCO/EJ7gHuwgNd8p8PF8u2igHHUMY55abu+6cJ
         DEKjulmHkYUkQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 05FD4C43145; Sat,  4 Feb 2023 08:15:44 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217001] New: Undocumented behavior of ptrace(2) when a seized
 process gets SIGCONT
Date:   Sat, 04 Feb 2023 08:15:43 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: takahashi.shuhei@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-217001-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217001

            Bug ID: 217001
           Summary: Undocumented behavior of ptrace(2) when a seized
                    process gets SIGCONT
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: takahashi.shuhei@gmail.com
        Regression: No

When we use ptrace(PTRACE_SEIZE) to attach to a process, sending SIGCONT to=
 the
tracee causes the tracer to get notified with PTRACE_EVENT_STOP with SIGTRA=
P,
but this behavior is not documented in the ptrace(2) man page.

The man page says:

> PTRACE_EVENT_STOP
> Stop induced by PTRACE_INTERRUPT command, or group-stop,
> or initial ptrace-stop when a new child is attached (only
> if attached using PTRACE_SEIZE).

Here's code to reproduce the behavior (in Rust):

https://github.com/nix-rust/nix/pull/1996/files#diff-65efa0db9bf3f9cbccfee8=
c987cb6c98ecf77576e0b46a87cab7ec4cfcbff172R324

I saw this behavior is explained in the following stackoverflow entry.
https://stackoverflow.com/a/49468347

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
