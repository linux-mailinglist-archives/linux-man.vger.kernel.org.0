Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8FF22440E6A
	for <lists+linux-man@lfdr.de>; Sun, 31 Oct 2021 13:33:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229863AbhJaMgP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 31 Oct 2021 08:36:15 -0400
Received: from mail.kernel.org ([198.145.29.99]:34986 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229798AbhJaMgP (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 31 Oct 2021 08:36:15 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id D498560FC1
        for <linux-man@vger.kernel.org>; Sun, 31 Oct 2021 12:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635683623;
        bh=t83qKgQjUxtgYAPQECCyMHkZ4TzcTghf6lDnX8n2aPs=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=C7YCGW0hgaq3dJ90BQurHnMWA4oknDoaU/F/DXaLP2j69GDf4i4V1Hkb4o8j34LtA
         eKvqQGo3fe4JkQuaRmlt7kJge9uyYx2iw8tFAep4jVlgZSM74jIGsyYk9tVUEPlpua
         UpM6Vc0Ab5G8bPUMbCNOfDNQRjtmhmcEQFlZZdkPlrTi79O89DFjdBBFQFmgftRK2A
         uhHeCr0j7oM1EGC9GvixUshsQiWah84Nw2aqnG99wxQ369wyOzuHRSQqDKhw+JJTXy
         zl2LJ8le+SAyzPZ+lwIpLF2y7rmlyazDCVYRTtslSwqotsvYdCdLWl+kTrDuUBiFUj
         aYzKjKCZO9Ovw==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id CCBD760F46; Sun, 31 Oct 2021 12:33:43 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214873] man 2 fsync implies possibility to return early
Date:   Sun, 31 Oct 2021 12:33:43 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: sworddragon2@gmail.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: INVALID
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-214873-11311-wJr5YyKoLb@https.bugzilla.kernel.org/>
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

--- Comment #4 from sworddragon2@gmail.com ---
(In reply to Jens Axboe from comment #2)
> I don't know what the "see caches" mean in a few spots in the above
> text?

Dirty kernel cached data - as you described it.


(In reply to Jens Axboe from comment #2)
> If the device doesn't honor a cache flush (eg "all writes previously
> acked are now stable"), then there's nothing the kernel can do about it.

In such a case the kernel could still send out all dirty kernel cached data=
 -
but the manpage strictly states fsync() would return early here with "The c=
all
blocks until the device reports that the transfer has completed.". But in t=
he
previous sentences it states it would not.

I assume if a storage device falsely claims the transfer has been completed
fsync() would still send out dirty kernel cached data if any and blocks unt=
il
this is done as this would make sense. This ticket is about clarifying this=
 in
the manpage, e.g. if this assumption is correct the referenced sentence from
above could be changed to "The call blocks until dirty writes are sent out =
and
the device reports that the transfer has completed." or more appropriate if
needed.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
