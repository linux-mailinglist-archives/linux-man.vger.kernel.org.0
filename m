Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 522BD39C38D
	for <lists+linux-man@lfdr.de>; Sat,  5 Jun 2021 00:49:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229873AbhFDWvf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Jun 2021 18:51:35 -0400
Received: from mail.kernel.org ([198.145.29.99]:46142 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229774AbhFDWve (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 4 Jun 2021 18:51:34 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id F29F8613DE
        for <linux-man@vger.kernel.org>; Fri,  4 Jun 2021 22:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1622846988;
        bh=NA3zB2ktUdEysRgPOA1gEcyJp1/vdS+h7voT81ptyrQ=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=qojMqD8tDN6mHk8BePGq5gBLGwoH2wsDraYJew7/039ZukqlARlaFJ7YPfN7au9ll
         k9Vf5enCF2yuherb7JG58G2g8RA7uNEmCQyZACn6bknbziK9agtwEBNdVQbXNrj7V+
         nPwF5hFo3IK/DeVcmUeJqMb/ILlcamcAhMUHFx/GxQGaC9sN0ZxInM49od2WFnw4G/
         5vq4jGtPq0pPL1fxIOZ+tUJPdykapExBbxKy4rPGgGZg3f5ymdefq4opUKC6Ikyh8f
         FSqnELocA4CvpMMU3e0kqbCz0Kff2uPLDPaMhws0YjZYJVd3bfBLq5fmEEO+3U0U58
         U7sMLQP19JCag==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id E6D106108D; Fri,  4 Jun 2021 22:49:47 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 213341] Man Page for ferror/feof has bad information in "Return
 Value" Section
Date:   Fri, 04 Jun 2021 22:49:47 +0000
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
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: OBSOLETE
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status cc resolution
Message-ID: <bug-213341-11311-Qk5jPVTuO4@https.bugzilla.kernel.org/>
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

Alejandro Colomar (man-pages) (alx.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
                 CC|                            |alx.manpages@gmail.com
         Resolution|---                         |OBSOLETE

--- Comment #1 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
This was fixed a few weeks ago in my tree :)

See
<https://github.com/alejandro-colomar/man-pages/commit/9e1f28a8595ce90e7905=
635faf8542cf8bd674b6>.

It's not yet merged into Michael's tree, though.

Anyway, thanks,

Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
