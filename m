Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 431F044EDDC
	for <lists+linux-man@lfdr.de>; Fri, 12 Nov 2021 21:22:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230235AbhKLUZO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Nov 2021 15:25:14 -0500
Received: from mail.kernel.org ([198.145.29.99]:50464 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235542AbhKLUZM (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 12 Nov 2021 15:25:12 -0500
Received: by mail.kernel.org (Postfix) with ESMTPS id A11D860F46
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 20:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1636748541;
        bh=0vwpGR6obZvXnAkrQp5aQ5BQ3q82c4haCQPmj2eKcGg=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=TOHnbAZz9hq+qiSNg1EZ8zSii76if872ePIm6UsP29WWaPNZgzus/5qd0MZb7zABm
         MhsDsRL6E07ynmVesoMKAWmRNkmUf3moEun2P7esKy1bZMyBWxMyg0H+ZB4EQjUBoh
         uQHKQCtRYj4RQPGSfdQ71Vq+izLWaI4I/yqI5AOHVRRUJCtU+ylCuPz7eadTUWVBs9
         ctOJ2cc8AA6Dj0YiaVzn35ysVjz9uj+9VeLgsxybgxN0wLGWnUO29odJeTXoHHzEvq
         AyvWlC1cywk3Bh6SpDq5/5e3WWulmqtrJKa8kZ6zm9pwveoNWNjLRcTXVIrCXrsrmb
         pgxxlJuY3Eftw==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 985946112E; Fri, 12 Nov 2021 20:22:21 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214873] man 2 fsync implies possibility to return early
Date:   Fri, 12 Nov 2021 20:22:21 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: alx.manpages@gmail.com
X-Bugzilla-Status: REOPENED
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-214873-11311-kSZRltLWzy@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214873-11311@https.bugzilla.kernel.org/>
References: <bug-214873-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214873

--- Comment #6 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
[Add CCs]

Hi Jens,

On 11/8/21 00:24, bugzilla-daemon@bugzilla.kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D214873
>=20
> sworddragon2@gmail.com changed:
>=20
>             What    |Removed                     |Added
> -------------------------------------------------------------------------=
---
>               Status|RESOLVED                    |REOPENED
>           Resolution|INVALID                     |---
>=20
> --- Comment #5 from sworddragon2@gmail.com ---
> This ticket was closed pretty fast after comment #2 so I could not write
> comment #4 before closing this ticket and now it seems due to it being cl=
osed
> it does not receive attention anymore. Thus I'm reopening this ticket so =
that
> comment #4 can be evaluated if this makes changes to the manpage valid.
>=20
> But if you think there is really nothing that needs to be changed feel fr=
ee
> to
> close this ticket again as I then won't bother about it here anymore.
>=20

That comment (and the previous) was directed to you, but since you're=20
not CCd in this bugzilla issue, you didn't receive it.  Could you please=20
have a look at it.

I also CCd the same other emails as in my previous email, since some of=20
them may want to have a look at it too.

Thanks,
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
