Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46A0C427CD6
	for <lists+linux-man@lfdr.de>; Sat,  9 Oct 2021 20:51:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230264AbhJISx2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 9 Oct 2021 14:53:28 -0400
Received: from mail.kernel.org ([198.145.29.99]:51694 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230240AbhJISx1 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 9 Oct 2021 14:53:27 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 7A8EE61041
        for <linux-man@vger.kernel.org>; Sat,  9 Oct 2021 18:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1633805490;
        bh=db/lvH2hFRu6FRwfz5yV4FbXaR2AUQ6ov110dELteDc=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=X6QcVB8tSFeAx6kgaSOmIsuYOWBkfKRnqmzH1grk4PpU8s0Pf3V+5CaciN8/Uklgz
         /1qv7gRGSXGFdkVsTI5XqBR0dWVnu+LfCBmp/8jkxTI9BmMagUVNoCeNErHEv1lgoA
         8zWdVzMbJ7SjnGd76Cg+ADC65JQldcW3L/F+P6as4MUyfKZYosm9naXPNGx7en9KDb
         m86ADq9vedpPLgokK1WhAy+S24K2pY9BtgOqvN9cv4qfVeXqoM5wqEKAn/mXzxC1tN
         8L5rfYUQqqc7pitMJNnUOsXQ0j3L9yTT0IMBf+/AENWBGx/CarKmABZg9msVPoel9N
         PfoZCm35P20dg==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 73B7960FC4; Sat,  9 Oct 2021 18:51:30 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214661] THREAD_SIZE on x86_64 is 4*PAGE_SIZE, not 2*PAGE_SIZE
Date:   Sat, 09 Oct 2021 18:51:30 +0000
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
Message-ID: <bug-214661-11311-LCuPq2DS4r@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214661-11311@https.bugzilla.kernel.org/>
References: <bug-214661-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214661

--- Comment #1 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
CC +=3D LKML

Hello,

On 10/9/21 7:19 AM, bugzilla-daemon@bugzilla.kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D214661
>=20
>              Bug ID: 214661
>             Summary: THREAD_SIZE on x86_64 is 4*PAGE_SIZE, not 2*PAGE_SIZE
>             Product: Documentation
>             Version: unspecified
>            Hardware: All
>                  OS: Linux
>              Status: NEW
>            Severity: normal
>            Priority: P1
>           Component: man-pages

This is incorrect.

The internal kernel documentation is not part of the man-pages.
I checked to see if the manual pages need an update, but I couldn't find=20
anything about THREAD_SIZE:

alx@sqli:~/src/linux/man-pages$ grep -rn THREAD_SIZE
alx@sqli:~/src/linux/man-pages$

I can't edit the component, so maybe you need to close the bug and open=20
a new one in a different component.

Anyway, thanks for the report!

Alex


>            Assignee: documentation_man-pages@kernel-bugs.osdl.org
>            Reporter: me@ieevee.com
>          Regression: No
>=20
> According to '/root/linux/arch/x86/include/asm/page_64_types.h', THREAD_S=
IZE
> on
> x86_64 now is 4*PAGE_SIZE:
>=20
> #ifdef CONFIG_KASAN
> #define KASAN_STACK_ORDER 1
> #else
> #define KASAN_STACK_ORDER 0
> #endif
>=20
> #define THREAD_SIZE_ORDER       (2 + KASAN_STACK_ORDER)
> #define THREAD_SIZE  (PAGE_SIZE << THREAD_SIZE_ORDER)
>=20
> However, the Documentation/x86/kernel-stacks.rst shows that THREAD_SIZE on
> x86_64 is 2*PAGE_SIZE:
>=20
> Like all other architectures, x86_64 has a kernel stack for every
> active thread.  These thread stacks are THREAD_SIZE (2*PAGE_SIZE) big.
>=20
> I am not quite sure which is correct, Maybe the document needs an upgrade?
> Thanks a lot for any reply.
>

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
