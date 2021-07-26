Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C49703D6391
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 18:44:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238017AbhGZPsg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Jul 2021 11:48:36 -0400
Received: from mail.kernel.org ([198.145.29.99]:36182 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238945AbhGZPsV (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 26 Jul 2021 11:48:21 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 5E27060F5E
        for <linux-man@vger.kernel.org>; Mon, 26 Jul 2021 16:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627316930;
        bh=A0XTDn/xPlm9ygPyWiT9mHL0+UEsnZFj/fSv5XlkXHA=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=H3A706wmdTNflB2wIUztk89A5+rWWR4XtRQlRGzP2vf7dtyRRF30NwcM1WwLyK1HH
         45kILPddTuOkiO1WVjwqh0y6KVVc+7ljaPcOMFwlUyqkXoH0JaGmfkbb1S+lw8e5py
         4vkfpppFTzW65OnHKtsYWGMw4XbtX2zFoUJhD3S7UcomXd5rSi+pKWJgT92K9xgMc5
         lxTANwsznsA6gSQqY/1+p3Q9Vcfv92cZXvHsUEYVBmqGoujRZwweqxWgcWR6OIymBU
         qposXuK5GMgzLj4YX2THdv1ssvhmvwSHwdxnuSWGfqjSTv13x98jbbn4qC0ujvkJWf
         xDjEebXJDDmNQ==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 566B460186; Mon, 26 Jul 2021 16:28:50 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 211973] Wrong epoch date in inode(7)
Date:   Mon, 26 Jul 2021 16:28:50 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: thanhoangviet@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-211973-11311-BqLLaXOVag@https.bugzilla.kernel.org/>
In-Reply-To: <bug-211973-11311@https.bugzilla.kernel.org/>
References: <bug-211973-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D211973

VietThan (thanhoangviet@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |thanhoangviet@gmail.com

--- Comment #1 from VietThan (thanhoangviet@gmail.com) ---
Fixed by Alejandro Colomar Feb 27, 2021

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
