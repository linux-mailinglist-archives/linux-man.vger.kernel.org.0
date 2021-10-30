Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 86F904409E6
	for <lists+linux-man@lfdr.de>; Sat, 30 Oct 2021 17:17:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232006AbhJ3PT4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 30 Oct 2021 11:19:56 -0400
Received: from mail.kernel.org ([198.145.29.99]:49984 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231985AbhJ3PTv (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 30 Oct 2021 11:19:51 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id CDB1861077
        for <linux-man@vger.kernel.org>; Sat, 30 Oct 2021 15:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635607040;
        bh=tGmD9ff5YQmvO22FbXndpG47+39gjCUGo69qJs/8CKU=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=I35uHc7iSPGWwoS42KH8DE2CRbnDXMmU3luSSUCqpRS1sDA4AYvnDwZqLeHaer5sV
         AqvVG9kmsevx/eIzJGaY8HyCHV+dPjL1r1JSlxzCdX5QctWOAKcOT2GNyvg06hsiDE
         cVeXwD4uUl9P5TMPtga+ft1rt2leco2LeTMQWDgwmSBdktvUFmV3dLUtiNe3IL0dB9
         Xna02MloZN6WmKIkt2LyromQw71H6IpkpDXGP4xNV+nNQW13cGqBYPKKuPxZ3J+AY2
         yl0GbuX+zQj16e18PAj+sviXonR0JLYG6z6UDo7GEPciEovJVWhrOZwdTgk7FNu9Lc
         O4uA+2F8awm/A==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id C992960F48; Sat, 30 Oct 2021 15:17:20 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214873] man 2 fsync implies possibility to return early
Date:   Sat, 30 Oct 2021 15:17:20 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: axboe@kernel.dk
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-214873-11311-B46zflctE9@https.bugzilla.kernel.org/>
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

--- Comment #2 from Jens Axboe (axboe@kernel.dk) ---
On 10/30/21 6:05 AM, Alejandro Colomar (man-pages) wrote:
> [CC +=3D LKML and a few kernel programmers]
>=20
> Hi,
>=20
> On 10/29/21 23:25, bugzilla-daemon@bugzilla.kernel.org wrote:
>> https://bugzilla.kernel.org/show_bug.cgi?id=3D214873
>>
>>              Bug ID: 214873
>>             Summary: man 2 fsync implies possibility to return early
>>             Product: Documentation
>>             Version: unspecified
>>            Hardware: All
>>                  OS: Linux
>>              Status: NEW
>>            Severity: low
>>            Priority: P1
>>           Component: man-pages
>>            Assignee: documentation_man-pages@kernel-bugs.osdl.org
>>            Reporter: sworddragon2@gmail.com
>>          Regression: No
>>
>> The manpage for the fsync system call (
>> https://man7.org/linux/man-pages/man2/fsync.2.html ) describes as flushi=
ng
>> the
>> related caches to a storage device so that the information can even be
>> retrieved after a crash/reboot. But then it does make the statement "The
>> call
>> blocks until the device reports that the transfer has completed." which
>> causes
>> now some interpretation: What happens if the device reports early comple=
tion
>> (e.g. via a bugged firmware) of the transfer while the kernel still sees
>> unsent
>> caches in its context? Does fsync() indeed return then as the last
>> referenced
>> sentence implies or does it continue to send the caches the kernel sees =
to
>> guarantee data integrity as good as possible as the previous documented =
part
>> might imply?
>>
>> I noticed this discrepancy when reporting a bug against dd (
>> https://debbugs.gnu.org/cgi/bugreport.cgi?bug=3D51345 ) that causes dd to
>> return
>> early when it is used with its fsync capability while the kernel still s=
ees
>> caches and consulting the fsync() manpage made it not clear if such a
>> theoretical possibility from the fsync() system call would be intended or
>> not
>> so eventually this part could be slighty enhanced.
>>
>=20
> I don't know how fsync(2) works.  Could some kernel fs programmer please=
=20
> check if the text matches the implementation, and if that issue reported=
=20
> should be reworded in the manual page?

I don't know what the "see caches" mean in a few spots in the above
text? In simplified terms, fsync will write out dirty data and then
ensure that it is stable on media. The latter is your cache flush, if
the underlying device is using some sort of writeback caching. When the
flush is issued, there is no more dirty kernel cached data.

If the device doesn't honor a cache flush (eg "all writes previously
acked are now stable"), then there's nothing the kernel can do about it.
It would not even know. The only way to know is if a powercut comes in
after a flush, and once power is restored, the media contains stale
data.

There is no issue here. If your storage device is lying to you, buy
better storage devices.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
