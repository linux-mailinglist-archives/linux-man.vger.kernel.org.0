Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7599539DED0
	for <lists+linux-man@lfdr.de>; Mon,  7 Jun 2021 16:31:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230269AbhFGOde (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Jun 2021 10:33:34 -0400
Received: from mail.kernel.org ([198.145.29.99]:50960 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230239AbhFGOde (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 7 Jun 2021 10:33:34 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 1DEC56108D
        for <linux-man@vger.kernel.org>; Mon,  7 Jun 2021 14:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1623076303;
        bh=p6xQv8MQ4IY1Bbo8E7DFCiRt3kJN51+3lWIWqWRqJEo=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=SzqDITGZcEBlP4+2QpGUomUpiSr8QEOwrQt0nPIXhise/K4+Jfhxy2fdiS2UMyOkP
         a9GXDR6FMDYbz1Tv8W8vjBmJwe0NWICh+9paf/6sTGy9N7ul0DBqE2ijQ6Ep9dXwRd
         dcuzvEed3wjiqQW7wdpz3FV6xLRD3gkcv1qgA27FbUS7lUdeZfyzBiOyDi5B1aMfXQ
         2acK1UbgEVrvKjFm3MoiKNsOrfxPZrVHKczjEj0prW/zWnWGlOuqRKysRXFFElGUwi
         dnxYQyFeVEnuk/inwmr6QDCgfKWPC1BaIpy4ZJQnPfj2hsip01lEQiA2OHj9OS1vwn
         6MZMld5Z2Demg==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 13CE0611CB; Mon,  7 Jun 2021 14:31:43 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 213341] Man Page for ferror/feof has bad information in "Return
 Value" Section
Date:   Mon, 07 Jun 2021 14:31:42 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: vulkur@protonmail.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: OBSOLETE
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-213341-11311-Ldr4m2ouQO@https.bugzilla.kernel.org/>
In-Reply-To: <bug-213341-11311@https.bugzilla.kernel.org/>
References: <bug-213341-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D213341

--- Comment #2 from Jake (vulkur@protonmail.com) ---
(In reply to Alejandro Colomar (man-pages) from comment #1)
> This was fixed a few weeks ago in my tree :)
>=20
> See
> <https://github.com/alejandro-colomar/man-pages/commit/
> 9e1f28a8595ce90e7905635faf8542cf8bd674b6>.
>=20
> It's not yet merged into Michael's tree, though.
>=20
> Anyway, thanks,
>=20
> Alex

Awesome, thanks.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
