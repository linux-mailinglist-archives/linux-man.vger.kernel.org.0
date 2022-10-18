Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5096960339B
	for <lists+linux-man@lfdr.de>; Tue, 18 Oct 2022 21:55:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229885AbiJRTzn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 15:55:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229947AbiJRTzl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 15:55:41 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B21D492CFE
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 12:55:28 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id C72FCB82105
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 19:55:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D76DC433B5
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 19:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1666122925;
        bh=iu2KXayfJyfId1xfgm85ww32agNfuYEOJbHB7Dow/Ng=;
        h=From:To:Subject:Date:From;
        b=bEB6jY5WcqFt3ugPglVgPWcC+19Qxb27PvxhSPAm/pM/bHiCDPV+mf0O4NK7a8DuI
         yIGzqizCdhY7YJxpCEUvHdemakIDb1VG6TirnDSjFllgBm5X2H7591yx9KoZfKwsZD
         cr4xbjg9HfWNqRj3tjlRw3Rku9ws6dq7/VmnpArFiO/52C7LTAqXIa4+DBpN5ZCJ4m
         I+13DEcfPHKGPnsp5BXHRRq4fw2x+wPJ0MvYVmzNVk+0WsgnDjOw2k4A3jdXmrZyts
         7A7KJABOXRiXN7vEamgWrqRppLImTqFa/F+n7w3KQ6jU7wJfBoddI4ZPf4oBvC+14x
         HCPiGt65c/SdQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 67A78C433E4; Tue, 18 Oct 2022 19:55:25 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216603] New: Environment variable MANLESS is described wrong in
 man(1)
Date:   Tue, 18 Oct 2022 19:55:24 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: karttu+bugzilla@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-216603-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216603

            Bug ID: 216603
           Summary: Environment variable MANLESS is described wrong in
                    man(1)
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: karttu+bugzilla@gmail.com
        Regression: No

In an example for setting MANLESS environment variable, man(1) claims:

    For example, if you want to set the prompt string unconditionally
    to "my prompt string", set $MANLESS to '-Psmy prompt string'.

However, this is not not correct as man uses the entire MANLESS variable
as a prompt for less.  I'll demonstrate:

    $ MANLESS=3D'-Ps(prompt)' man man
    <ctrl-z>
    $ cat /proc/$(pgrep -P $(pgrep -f "man man"))/environ |
    tr '\0' '\n' | grep "^LESS=3D"

    LESS=3D-ix8RmPm-Ps(prompt)$PM-Ps(prompt)$

As seen, man(1) defines -Pm and -PM prompts using the MANLESS variable as i=
s.
The same applies to the command line option -r:

    $ man -r'-Ps(prompt)' man
    <ctrl-z>
    $ cat /proc/$(pgrep -P $(pgrep -f "man .* man"))/environ |
    tr '\0' '\n' | grep "^LESS=3D"

    LESS=3D-ix8RmPm-Ps(prompt)$PM-Ps(prompt)$

Option -r does not make the same claim, but it says:

    By default man sets the -ix8 options.

Which also is a bit outdated as we can see it sets -ix8R.

So in summary, at least the '-Ps' part should be removed from the MANLESS
description example.  Furthermore, option -r description could elaborate on
how LESS variable is formed (-ix8RmPm<MANLESS or -r>$PM<MANLESS or -r>$).

Note: Dollar sign in less prompt definition is an end-of-string marker.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
