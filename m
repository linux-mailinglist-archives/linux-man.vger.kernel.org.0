Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A9E73F793C
	for <lists+linux-man@lfdr.de>; Wed, 25 Aug 2021 17:41:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240779AbhHYPlx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Aug 2021 11:41:53 -0400
Received: from mail.kernel.org ([198.145.29.99]:38590 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231995AbhHYPlv (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 25 Aug 2021 11:41:51 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 81BE160F91
        for <linux-man@vger.kernel.org>; Wed, 25 Aug 2021 15:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1629906065;
        bh=G+wS3EMCP8/z6MeEYjViZZijyfAXowYrjypXvvM9hS0=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=SLyuFI7b0p8jSqZWL24di/3xePjobc0SjeRg8d8ZdxMyJQElLKcDQU8G852QN0Els
         ERtzQzrSJbnujt5mOvUjm8pRDg748aEd0sSPnZfgpn7XHtjJBAgyMXE3AslchP7SCp
         HBn5vIVSXoBFteRHK+/L0Icc51DBjEDjLNvBnOjB27d/IdLjIKuECwTxwzryQi0e4F
         +ZKqSbSKxdeTnfdEuii/Ppk1KI30E+cdbWZeBTBfp4tyNxbk2JetkVLVsjCoj4hjpw
         sPFnTH6YcYN8KLW8+7nNnG56qbKq5F2XAF75zjHm66DYG9wljoplJEwB0SjOUsoBDB
         Ax0LEA8g1rXww==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 7A42B61005; Wed, 25 Aug 2021 15:41:05 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214171] I am not sure why the definition of EAI_SYSTEM, from
 getaddrinfo, was changed from POSIX
Date:   Wed, 25 Aug 2021 15:41:05 +0000
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
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-214171-11311-IWSFU0oBPB@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214171-11311@https.bugzilla.kernel.org/>
References: <bug-214171-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214171

Alejandro Colomar (man-pages) (alx.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |alx.manpages@gmail.com

--- Comment #1 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
It seems reasonable to have doubts about if (ret =3D=3D EAI_SYSTEM && errno=
 =3D=3D 0)
can happen, with the current wording.

Perhaps we can use a wording similar to most pages' RETURN VALUE section:

[
EAI_SYSTEM  Other system error; errno is set to indicate the error.
]

This is more explicit in that "errno is _set_".

Hmm?

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
