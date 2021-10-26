Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D82943B78C
	for <lists+linux-man@lfdr.de>; Tue, 26 Oct 2021 18:48:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237527AbhJZQvI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Oct 2021 12:51:08 -0400
Received: from mail.kernel.org ([198.145.29.99]:50688 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236433AbhJZQvF (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 26 Oct 2021 12:51:05 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id ADFED60F70
        for <linux-man@vger.kernel.org>; Tue, 26 Oct 2021 16:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635266921;
        bh=sSNeodp6BtmVqh80SZi3o5evlnQk0XhcPijFVR5bN/A=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=HVc/DtXb5dtzwG/4RJU8IkSjaoKE8RZvcswmLZIL4ksbUEj100YXtKIcgJCFfTTeS
         DCrjdmlxG4xcs/sxuNaaSx9V+W/nAi6C5wDnVVNJYXRPp0YDEeB8RKNT9YUlq8aU+F
         47omtOJmhce6HckD8rNXmMIiFq35XNrCoJGYoBHNfntlkRfD0MjJaK+o1ZNOq6gawA
         oCNiRta5e5R8aMJMjhYggKqtqivnYo7Pno1EDTFuFtBbekZ1oirMd56L0vm7k0A9Ts
         31wieGDUzelhAy/OV+AiB7kLtksOH7EncHtNOtJw/jWWRwBPM2/V4aTs07fFyoLBdw
         A3MiDiw8fM4og==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id A544061100; Tue, 26 Oct 2021 16:48:41 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214815] pow(3): underflow result can be -0.0
Date:   Tue, 26 Oct 2021 16:48:41 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: mwelinder@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-214815-11311-qj0kW5CaV2@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214815-11311@https.bugzilla.kernel.org/>
References: <bug-214815-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214815

--- Comment #2 from M Welinder (mwelinder@gmail.com) ---
Hmm...   In that case maybe we need glibc's opinion.

fwiw, I couldn't find anything relevant in the C standard either.

A quick test says Solaris also produces -0.0 in this case.  And -0.0 is a v=
ery
reasonable result for underflow from the negative side.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
