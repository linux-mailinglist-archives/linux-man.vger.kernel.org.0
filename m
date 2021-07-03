Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CC463BAA14
	for <lists+linux-man@lfdr.de>; Sat,  3 Jul 2021 21:01:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229854AbhGCTEZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jul 2021 15:04:25 -0400
Received: from mail.kernel.org ([198.145.29.99]:38952 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229813AbhGCTEX (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 3 Jul 2021 15:04:23 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 891366188B
        for <linux-man@vger.kernel.org>; Sat,  3 Jul 2021 19:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1625338909;
        bh=7eioJuElMrhQofFqwR4YlBFdNPclN1UXeN9BU4sx5NM=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=uEXCCvh9G3h8YWF2S/8upajitOutLmaZG3cG3pPycFc9T6DYD2tAHC/zstiT86L/5
         Zax7XljTzxUgfhXNbUF6I7GBm0odSqKEajiLKyXW5pYylg5fpdGbI4g/SyOST7BkQy
         BYw2mh2Pfsjx5rnoBze0hCk7IXDvICr6cz89RdgUrXbwv4f1jamzPmUP8oWP7G2iqJ
         a1SosNfnbrWqf08J3ZGH4wjFtx0OeQP8aoiQC2Kl6O8n7BcQBIHDrCigpMWxadogs4
         r1spRz7cpWP2sE/9xoW6bQ7SMSQgGM9n8KSLf0HeouYCP8HD4CRe/2w85csPxOqCTO
         k9e/mYIwxtkDg==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 8386C61182; Sat,  3 Jul 2021 19:01:49 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 213577] kernel_lockdown.7 seems to be incorrect about
 automatically enabling lockdown mode in secure boot mode
Date:   Sat, 03 Jul 2021 19:01:49 +0000
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
Message-ID: <bug-213577-11311-F9yHeDq1SP@https.bugzilla.kernel.org/>
In-Reply-To: <bug-213577-11311@https.bugzilla.kernel.org/>
References: <bug-213577-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D213577

--- Comment #1 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Added a few CCs.

On 6/25/21 8:58 AM, bugzilla-daemon@bugzilla.kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D213577
>=20
>             Bug ID: 213577
>            Summary: kernel_lockdown.7 seems to be incorrect about
>                     automatically enabling lockdown mode in secure boot
>                     mode
>            Product: Documentation
>            Version: unspecified
>           Hardware: All
>                 OS: Linux
>             Status: NEW
>           Severity: normal
>           Priority: P1
>          Component: man-pages
>           Assignee: documentation_man-pages@kernel-bugs.osdl.org
>           Reporter: peter@typeblog.net
>         Regression: No
>=20
> As of the time of posting, the kernel_lockdown.7 manpage [1] contains a
> description about how lockdown mode is enabled by default when using EFI
> secure
> boot:
>=20
>> On an EFI-enabled x86 or arm64 machine, lockdown will be automatically
>> enabled
> if the system boots in EFI Secure Boot mode.
>=20
> I have not followed lockdown development upstream recently, but it seems =
that
> as of today the feature described above is still a downstream patch shipp=
ed
> by
> some distributions like Fedora [2][3]. If this is the case, then including
> this
> statement in the man page would be inappropriate, since it would not appl=
y to
> other distributions such as Arch Linux which do not include said patches.
>=20
> [1]:
>
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/man7/ker=
nel_lockdown.7#n31
> [2]:
>
> https://src.fedoraproject.org/rpms/kernel/blob/rawhide/f/Patchlist.change=
log#_205
> [3]:
>
> https://gitlab.com/cki-project/kernel-ark/-/commit/5850c93175b9d2e1081873=
f4bbe08dead202cb08
>

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
