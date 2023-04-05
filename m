Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5D736D7398
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 07:02:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236714AbjDEFCe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 Apr 2023 01:02:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229630AbjDEFCd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 5 Apr 2023 01:02:33 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 422E22D72
        for <linux-man@vger.kernel.org>; Tue,  4 Apr 2023 22:02:32 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DAB1C63AE3
        for <linux-man@vger.kernel.org>; Wed,  5 Apr 2023 05:02:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 40DB3C433EF
        for <linux-man@vger.kernel.org>; Wed,  5 Apr 2023 05:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1680670951;
        bh=l27HwxB2Xn3cEFPp3/mIdyElr/c+DMVqu01185cUV8E=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=pl+ZiEvjd88hEEGyhsQJfQHxa/rBmNybTR6iuAMqYliz713W91CygUKfNqIsDoDjX
         LQD44jS3SRPdeuvz0i4N1g0hTZTA+Y+yWfTVe4NN0lTRU/zDPaT5OcjRKaUWehyB1h
         dOZmOJ1h5yPUdwbvbs0xUJZakgRfqvqzVU5DRzJSImJic4nSXb+t/RcUeR9e2TTTHa
         D70IW7jwnOi404NdOHKU1j1rBA2xOg9APUC6ktHRchRGxIosCieuunF5t3QerK8Lfq
         fVvdOlln6iGoCx9KqLtAluREpAWrHKRh75QGh2A8JYXgp4b5v8bFLJU4+N8VvonfK5
         msHA7NssBbUaQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 3112FC43143; Wed,  5 Apr 2023 05:02:31 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217291] librt empty, man pages should not tell users to link
 with -lrt
Date:   Wed, 05 Apr 2023 05:02:30 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: blomqvist.janne@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-217291-11311-673JRNs521@https.bugzilla.kernel.org/>
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

--- Comment #2 from Janne Blomqvist (blomqvist.janne@gmail.com) ---
(In reply to Sam James from comment #1)
> It depends on one's libc (non-glibc implementations are free to need it
> still) rather than being obsolete altogether.
>=20
> Ultimately, a configure test is needed.

I'm not sure the man-pages project really concerns itself with non-glibc
libc's. Of course you're right that a project that wants to be portable to
multiple libc's will need configure tests (or equivalent). But that doesn't
mean that a project that aims to document how to use glibc shouldn't tell u=
sers
how to use it.

My suggestion is that the man pages I mentioned above should have languages
like clock_gettime and friends already have. That is, from
https://www.man7.org/linux/man-pages/man3/clock_gettime.3.html :

Link with -lrt (only for glibc versions before 2.17).

Or in the current repo:

.SH LIBRARY
Standard C library
.RI ( libc ", " \-lc ),
since glibc 2.17
.PP
Before glibc 2.17,
Real-time library
.RI ( librt ", " \-lrt )

(Not sure why one needs to explicitly tell to link with libc (-lc) and thus=
 how
this is an improvement over the older version published on the web page (an=
d in
most Linux distros man pages), but I digress)

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
