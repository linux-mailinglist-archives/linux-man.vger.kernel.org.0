Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5B5D6DB725
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 01:28:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229456AbjDGX2j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 19:28:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbjDGX2j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 19:28:39 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34401E051
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 16:28:38 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C5060653B9
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 23:28:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2EC78C4339C
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 23:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1680910117;
        bh=dI4bd9VCmkTwi7p5JcwnbROS5Ztx3llfrH7PkDXID94=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=Lue3jVxkYT4AWir8VhIhoAodlXLTkRepQz7CW7t0qHbeJmLnxv+U0J/UbbLSq6UPI
         lP9froym2opy+FH8Z6FWMnwNOT9Ke/s1IEFLZ7lSZnSXfLhZnxXkmuHX8raX3gC+39
         7OLPCX8jzIKrP+UVxV1SXgRM+6ed0yz3YG3oWIQEjQ3XFDBwe63wH13Pi8DEHVNqu/
         LhU0FoTsfTwks8ymuRPvkUZftTvgxCkVuAzz2YSp41ygL0d/Ddc/ijFmDjERLLevfZ
         VicpZ3viL3U1MLgsC7lq1SthqllilaFnb02+RCfQffD7C8pGZIDOLjyrXDfjzuDunD
         7Vp/psUWIeDPg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 0BCC0C43141; Fri,  7 Apr 2023 23:28:37 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217291] librt empty, man pages should not tell users to link
 with -lrt
Date:   Fri, 07 Apr 2023 23:28:36 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: alx@kernel.org
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: INVALID
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status cc resolution
Message-ID: <bug-217291-11311-e6ShTufJun@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217291-11311@https.bugzilla.kernel.org/>
References: <bug-217291-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D217291

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
                 CC|                            |alx@kernel.org
         Resolution|---                         |INVALID

--- Comment #3 from Alejandro Colomar (alx@kernel.org) ---
On 4/5/23 07:02, bugzilla-daemon@kernel.org wrote:
> I'm not sure the man-pages project really concerns itself with non-glibc
> libc's.

It does.

> Of course you're right that a project that wants to be portable to
> multiple libc's will need configure tests (or equivalent). But that doesn=
't
> mean that a project that aims to document how to use glibc shouldn't tell
> users
> how to use it.

POSIX says that we should use -lrt, so I document that.  If glibc makes it
easier by putting everything in -lc, that's sugar for us, but unless the
entire world follows glibc in that, or at least POSIX, I prefer to document
POSIX.

>=20
> My suggestion is that the man pages I mentioned above should have languag=
es
> like clock_gettime and friends already have. That is, from
> https://www.man7.org/linux/man-pages/man3/clock_gettime.3.html :

I should rather fix clock_gettime(3) to show only what POSIX requires, which
is -lrt.  I just didn't find the time to compare all the pages with POSIX.

What's the benefit of removing -lrt?

>=20
> Link with -lrt (only for glibc versions before 2.17).
>=20
> Or in the current repo:
>=20
> .SH LIBRARY
> Standard C library
> .RI ( libc ", " \-lc ),
> since glibc 2.17
> .PP
> Before glibc 2.17,
> Real-time library
> .RI ( librt ", " \-lrt )
>=20
> (Not sure why one needs to explicitly tell to link with libc (-lc) and th=
us
> how
> this is an improvement over the older version published on the web page (=
and
> in
> most Linux distros man pages), but I digress)

Consistency.  If you see -lc, you know where it is.  If you don't see it,
then there are two options: either it is in libc, or the author forgot to
document where it is.

Also, while it's often unnecessary to specify -lc, it may in some corner ca=
ses
be
necessary, so I prefer specifying it.

Thanks for reporting!  However, I don't agree with the report :)

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
