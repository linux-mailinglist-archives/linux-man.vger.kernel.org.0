Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D0E743B691B
	for <lists+linux-man@lfdr.de>; Mon, 28 Jun 2021 21:30:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236576AbhF1Tcv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Jun 2021 15:32:51 -0400
Received: from mail.kernel.org ([198.145.29.99]:37646 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236567AbhF1Tcr (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 28 Jun 2021 15:32:47 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 2CEBB61C97
        for <linux-man@vger.kernel.org>; Mon, 28 Jun 2021 19:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1624908621;
        bh=ks5E2KotITyJWWK9CC8rrlvwBHMsU2lv7ryPwz+bE2M=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=Dt/KF8pgefXF0VqplC2N4RV9RHma3atgMDi4VQNXtmtf7tiZUNsVxkr9wv0JhTxwS
         TisCSDtgHU3xeV1Zua8Fw0sUYsHUs+j7Rjf8cVfzDJsSFDrYTypJmuQC2LFNwdF5tR
         m+ddt7avZvO8ypG2lxPoJ2wkpkAI9yPHfHHJ0GebvKb59xpkcVTYTcyg0jAvXQVn3s
         pD/n0R1p++epiO0RHnVxX3qxnK5Iu1+8Lf8WEE1JsNrUqbQLfUbW9FOinLj9u6yXE3
         +uL2SW1VApCWSq3dTGbWMyMJWgXrPMUFbPt3djmnHCOMFCVLItqr5Tuf4kcT5bgyB+
         w8scJnoRxhTWg==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 1FD33612A5; Mon, 28 Jun 2021 19:30:21 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 213013] getopt.3: further clarify behaviour
Date:   Mon, 28 Jun 2021 19:30:20 +0000
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
Message-ID: <bug-213013-11311-GxcSpQSkXg@https.bugzilla.kernel.org/>
In-Reply-To: <bug-213013-11311@https.bugzilla.kernel.org/>
References: <bug-213013-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D213013

--- Comment #5 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Hi James,

Sorry for the delay!

(In reply to James Hunt from comment #4)
> Thanks again for reviewing. I've updated the patch but I still think it
> needs to be "spelt out" that two plus symbols may be required since that
> avoids any confusion.

Okay.

> Also, I'm afraid I'm using a webmailer so submitting patches to a mailing
> list is going to be painful for me, whereas this bugzilla is quick and ea=
sy
> (and doesn't require me to register,

BTW, you don't need to subscribe to <linux-man@vger.kernel.org> to post the=
re
:-)
But, I understand the rest.

> format mails in particular ways, plus
> of course to manage a ton more emails ;) But if the real action is happen=
ing
> on the ML, I wonder if in the future it might be possible to forward all
> bugzilla activity automatically to the ML rather than _vice versa_?

Yes.  After you said these, I remembered that I asked about that some time =
ago.
 The ML was subscribed again to this bugzilla activity :)

Now the review:

Could you please use '.IR ...' instead of '\fI...\fP...'?

See this extract from man-manpages(7):

[[
       The preferred way to write this in the source file is:

           .BR fcntl ()

       (Using this format, rather than the use of  "\fB...\fP()"
       makes it easier to write tools that parse man page source
       files.)
]]


> Thanks again for your help.

Thank you!

Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
