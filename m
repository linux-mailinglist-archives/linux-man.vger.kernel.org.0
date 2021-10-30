Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 108F04408AA
	for <lists+linux-man@lfdr.de>; Sat, 30 Oct 2021 14:05:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231840AbhJ3MIC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 30 Oct 2021 08:08:02 -0400
Received: from mail.kernel.org ([198.145.29.99]:58514 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231886AbhJ3MIB (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 30 Oct 2021 08:08:01 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id CA6BA60FC4
        for <linux-man@vger.kernel.org>; Sat, 30 Oct 2021 12:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635595531;
        bh=7APYYEYuGcNLgvNyCqtQUXtjM8xH19kT/lvPRsFyE00=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=GYnlpK6yaLWj92jcM3s53uX3zknm9BwfurL5036FDISIqz6TTRgCkLnDR/uQrS3wA
         +BJhKtV+Mc795e0u4LitMQshvKqLt74UMFsSx13exEQUfk7HC4/hn2KEoAQk57Gu6I
         4VO+Lim8iMfOkxWOWI1M92vj/6HVUUPqwf4T7IEOHmY/uB1Kvy6KK2ix5lIQi9SrlC
         Vzdm0EniEcSHvz3OC1Y+mCXm/sUXICNtcfZmWuv8h8dRxTW19pFueefsgmyjOpjmYq
         Nwk8utn1wapGWBAcs9PFQzD7y3RP41LH66d5KuQMzAd3ln55EB1VNhswliOpxDLJSI
         S2dXohqdfnbWA==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id C158660F00; Sat, 30 Oct 2021 12:05:31 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214873] man 2 fsync implies possibility to return early
Date:   Sat, 30 Oct 2021 12:05:31 +0000
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
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-214873-11311-DMaOMgDlyO@https.bugzilla.kernel.org/>
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

--- Comment #1 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
[CC +=3D LKML and a few kernel programmers]

Hi,

On 10/29/21 23:25, bugzilla-daemon@bugzilla.kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D214873
>=20
>              Bug ID: 214873
>             Summary: man 2 fsync implies possibility to return early
>             Product: Documentation
>             Version: unspecified
>            Hardware: All
>                  OS: Linux
>              Status: NEW
>            Severity: low
>            Priority: P1
>           Component: man-pages
>            Assignee: documentation_man-pages@kernel-bugs.osdl.org
>            Reporter: sworddragon2@gmail.com
>          Regression: No
>=20
> The manpage for the fsync system call (
> https://man7.org/linux/man-pages/man2/fsync.2.html ) describes as flushing
> the
> related caches to a storage device so that the information can even be
> retrieved after a crash/reboot. But then it does make the statement "The =
call
> blocks until the device reports that the transfer has completed." which
> causes
> now some interpretation: What happens if the device reports early complet=
ion
> (e.g. via a bugged firmware) of the transfer while the kernel still sees
> unsent
> caches in its context? Does fsync() indeed return then as the last refere=
nced
> sentence implies or does it continue to send the caches the kernel sees to
> guarantee data integrity as good as possible as the previous documented p=
art
> might imply?
>=20
> I noticed this discrepancy when reporting a bug against dd (
> https://debbugs.gnu.org/cgi/bugreport.cgi?bug=3D51345 ) that causes dd to
> return
> early when it is used with its fsync capability while the kernel still se=
es
> caches and consulting the fsync() manpage made it not clear if such a
> theoretical possibility from the fsync() system call would be intended or=
 not
> so eventually this part could be slighty enhanced.
>=20

I don't know how fsync(2) works.  Could some kernel fs programmer please=20
check if the text matches the implementation, and if that issue reported=20
should be reworded in the manual page?

Thanks,

Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
