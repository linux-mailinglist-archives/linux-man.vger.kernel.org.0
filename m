Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B955544F00B
	for <lists+linux-man@lfdr.de>; Sat, 13 Nov 2021 00:38:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231998AbhKLXlD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Nov 2021 18:41:03 -0500
Received: from mail.kernel.org ([198.145.29.99]:57902 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229674AbhKLXlD (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 12 Nov 2021 18:41:03 -0500
Received: by mail.kernel.org (Postfix) with ESMTPS id 0692C61054
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 23:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1636760292;
        bh=q9ixt0SxX/dJDE9uQQJ5ce/fUhU3/6+lrAu8NJH9i20=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=i5a25Ryiyulr2JjbCxouACdAaOmzkaDesI/VQLewa3bTcp9C4ecQy0lVMgDE4Y3Xk
         XuUpnkmOEvvyh9g4ZUfvGlLZ2iIkTHFH4xhUPwBlERzBwoGCOCvZiLGtue1ik+iK+c
         nVweuHeV5gLhDygfcBfgq1joNOeRPLJGPikGw53hZzE86tbHKozAMU+yc4vXykhQob
         6mweyaT0aCkC95D9FBItmO7eY5kYvWdojsLUTWioybNyZ2WuaL5HoWVyH9etVyOivo
         6Fm9COKYpLBC82S6KByB+tiKcQLHaI+5IrKj8C02XToh+d77ZANu7rRzRuS618kEpa
         8YJIJDomqC1kQ==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id ED7826112D; Fri, 12 Nov 2021 23:38:11 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214873] man 2 fsync implies possibility to return early
Date:   Fri, 12 Nov 2021 23:38:11 +0000
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
X-Bugzilla-Status: REOPENED
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-214873-11311-spabRAKl3f@https.bugzilla.kernel.org/>
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

--- Comment #8 from sworddragon2@gmail.com ---
(In reply to Jens Axboe from comment #7)
> The kernel will ensure that _all_ dirty cache is flushed out to the devic=
e,
> and then it will issue a flush command. That's all the kernel can do, and=
 it
> will not leave dirty data unwritten for that mapping when fsync(2) is
> invoked.

That is pretty clear and now I would say the mentioned sentence should be
indeed being updated but...


(In reply to Jens Axboe from comment #7)
> The man page clearly states that the
> call blocks until the device has told you that the data is stable.

This would probably go better with an example: Userspace requests 600 MiB t=
o be
written to an external storage device. fsync(2) has been called, 500 MiB ha=
ve
been sent to the storage device and 100 MiB are still in the dirty kernel
cached data. At this point due to a slight firmware-bug the device falsely
signals the transfer has been completed (but might not reject further recei=
ved
data). The referenced sentence in the manpage strictly claims fsync(2) retu=
rns
here despite the kernel still having 100 MiB dirty kernel cached data while=
 the
part before claims the 100 MiB would also have been flushed - that is the
conflict I'm claiming about here.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
