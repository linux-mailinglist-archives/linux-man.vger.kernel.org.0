Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B80174443B3
	for <lists+linux-man@lfdr.de>; Wed,  3 Nov 2021 15:35:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230282AbhKCOiY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Nov 2021 10:38:24 -0400
Received: from mail.kernel.org ([198.145.29.99]:43830 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230472AbhKCOiX (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 3 Nov 2021 10:38:23 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 50C396109F
        for <linux-man@vger.kernel.org>; Wed,  3 Nov 2021 14:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635950147;
        bh=1rt25y8YaY+SNq/vRG77voTXnBKoHEQgREBsjB93IBs=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=NU06q4H5OpQbVQPO8XxFwE9JTwKYfKbSZROFKsokvJmbCHnHX/xyxC/7TRnyEmGZi
         R7de1wdcZSdjVuXtPTkv/ZRjCk0ze59lzqxF9TgBnUjEheqLmSGUS2ck2s2jzsT6cu
         iFx+xKseURQpZrk2SMtS1GyDjk4tOXFnyE7+oq/z3YeZ8lMjVqN5VohnF53a0XFLlH
         pkp+BzLXfjZsABt7u6gsYk//prLC78D23+Euc5ecFNfH0vPDVTTsbgYibUnlYGp/sD
         fxtNEvNPgMtJK7Ehqj5QYu1PYP7Cwu0Cpk6HvrsjPinxQgjSfkiVs2ntbt3k0eQxqm
         H7+v35Uk71TUg==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 4658161105; Wed,  3 Nov 2021 14:35:47 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214931] General Grammatical Errors In
 /Documentation/process/2.Process.rst
Date:   Wed, 03 Nov 2021 14:35:46 +0000
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
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-214931-11311-2C2ihTVX1H@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214931-11311@https.bugzilla.kernel.org/>
References: <bug-214931-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214931

Alejandro Colomar (man-pages) (alx.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |alx.manpages@gmail.com

--- Comment #1 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Hi Hunter,

Thanks for the report.  However, the man-pages are separate from the kernel
documentation, so the report should go to a different component (I don't kn=
ow
which one, sorry).

Cheers,

Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
