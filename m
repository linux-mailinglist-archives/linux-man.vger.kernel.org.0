Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30CA36033BB
	for <lists+linux-man@lfdr.de>; Tue, 18 Oct 2022 22:05:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229995AbiJRUFx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 16:05:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229965AbiJRUFw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 16:05:52 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 551B014039
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 13:05:51 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D03D7616CF
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 20:05:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 44C27C433B5
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 20:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1666123550;
        bh=NA33RFxatbJhLv3SsPfvRh4yXInHsFsdT0sMQL9L0Mw=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=SKxRm2tMezeW5oUmJ/6fiHQ1kQNkmJH5eMIUuuzGUV1BzMQWl3DEM9BM8doeRglSe
         I87NXAQ71snbJk3Bs+5bgJrBpLBiVPrAghLrKGx13wcCQfqBvIzEkh/uHUbP8P+KPd
         pSTUamX58GrhIHmaNAIKcBgvWJ1gx31P8LiHjE0uznHTEsFvmXH3adY9JxxQBE1PuI
         NZXz5dLf8dCg/fsBCwhZ3yxgRbyDsQJKXvpf3CLicUatwkMey08gEW2/nXxRBpIhI7
         bM5Ev16P3yhIHvZRenD+zK7aNv8DmnzzuxSQCmVuzuxNsGjZ7fHJc5eR93GVrRgYHv
         B04hTdHHOBU/w==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 2AFA5C433E9; Tue, 18 Oct 2022 20:05:50 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216603] Environment variable MANLESS is described wrong in
 man(1)
Date:   Tue, 18 Oct 2022 20:05:49 +0000
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
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-216603-11311-Btib6JuZiY@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216603-11311@https.bugzilla.kernel.org/>
References: <bug-216603-11311@https.bugzilla.kernel.org/>
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

--- Comment #1 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Hi Arttu,

On 10/18/22 21:55, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D216603
>=20
>              Bug ID: 216603
>             Summary: Environment variable MANLESS is described wrong in
>                      man(1)
>             Product: Documentation
>             Version: unspecified
>            Hardware: All
>                  OS: Linux
>              Status: NEW
>            Severity: normal
>            Priority: P1
>           Component: man-pages
>            Assignee: documentation_man-pages@kernel-bugs.osdl.org
>            Reporter: karttu+bugzilla@gmail.com
>          Regression: No
>=20
> In an example for setting MANLESS environment variable, man(1) claims:
>=20
>      For example, if you want to set the prompt string unconditionally
>      to "my prompt string", set $MANLESS to '-Psmy prompt string'.
>=20
> However, this is not not correct as man uses the entire MANLESS variable
> as a prompt for less.  I'll demonstrate:
>=20
>      $ MANLESS=3D'-Ps(prompt)' man man
>      <ctrl-z>
>      $ cat /proc/$(pgrep -P $(pgrep -f "man man"))/environ |
>      tr '\0' '\n' | grep "^LESS=3D"
>=20
>      LESS=3D-ix8RmPm-Ps(prompt)$PM-Ps(prompt)$
>=20
> As seen, man(1) defines -Pm and -PM prompts using the MANLESS variable as=
 is.
> The same applies to the command line option -r:
>=20
>      $ man -r'-Ps(prompt)' man
>      <ctrl-z>
>      $ cat /proc/$(pgrep -P $(pgrep -f "man .* man"))/environ |
>      tr '\0' '\n' | grep "^LESS=3D"
>=20
>      LESS=3D-ix8RmPm-Ps(prompt)$PM-Ps(prompt)$
>=20
> Option -r does not make the same claim, but it says:
>=20
>      By default man sets the -ix8 options.
>=20
> Which also is a bit outdated as we can see it sets -ix8R.
>=20
> So in summary, at least the '-Ps' part should be removed from the MANLESS
> description example.  Furthermore, option -r description could elaborate =
on
> how LESS variable is formed (-ix8RmPm<MANLESS or -r>$PM<MANLESS or -r>$).
>=20
> Note: Dollar sign in less prompt definition is an end-of-string marker.
>=20

The man(1) page is part of the man-db project, not the Linux man-pages.=20
Colin is the maintainer of man-db, so I CCd him.

Their website is:

<https://man-db.nongnu.org/>

However, I'm curious about the resolution, so if you report it again in=20
the man-db bug tracker (I guess that's their gitlab?  don't remember),=20
please CC me. :)

Cheers,

Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
