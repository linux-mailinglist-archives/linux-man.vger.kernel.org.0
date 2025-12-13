Return-Path: <linux-man+bounces-4404-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E530CBB0F5
	for <lists+linux-man@lfdr.de>; Sat, 13 Dec 2025 16:41:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 27CFD301B59B
	for <lists+linux-man@lfdr.de>; Sat, 13 Dec 2025 15:41:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92259289824;
	Sat, 13 Dec 2025 15:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/ubK5w5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5A2AD24
	for <linux-man@vger.kernel.org>; Sat, 13 Dec 2025 15:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765640487; cv=none; b=bxPBURk8zgST4vVQR7fGtQ5iMAGz1j+GyjLFujft+5AOZKqKnq/BhNixN0JrfjQaOiLQnvwrYZfOSHwUp//NSc3VScchA9Fdcx9949XTrLwmk9KWcai2MwGNcSUor9hfjf4N6C0Tlp0wqCpwv0xBtYyEDtULWdl0uZqRUwjU660=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765640487; c=relaxed/simple;
	bh=2L8qg8b0lm+1iEfsUK8tWnPgLoHns9D24Loq0XHEiy0=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=mrlRqJYQhPzzKF5HVZmVj5Zz2ZHVzb51OD/70vi6QjsU6tpuDU6HieT93gchISrjI63kd+Cj8PZsZHrvJawLLXOb1D0GDO/HSNo+Hpt8mNFTHoueO7DqpqHxV3ep5I8rPcLlqY93Ne4B1oFB4W70otZ01r9O3Am5CUjMgrWpeng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/ubK5w5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA21C116B1
	for <linux-man@vger.kernel.org>; Sat, 13 Dec 2025 15:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765640486;
	bh=2L8qg8b0lm+1iEfsUK8tWnPgLoHns9D24Loq0XHEiy0=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=f/ubK5w5Lqvpv7BO0nTvdRQBYfeErauS5U8wvZ9+ffCmVZoa9DFILcmm0NfIYRtrY
	 naakhFjHrNY7PgiZZlesvIAxDXyGgsg410PZFwpnQvWt4oWf4CY2y4k1CKuuRizdLp
	 TooJ9G/je8WFxFy8kpYvrGCv+1Xe94X9YQnI16Hbk/R+41bgltbFDYKIIKcf0bD5ZR
	 96F0wNF2+Lep4Y84OJ9+8EWMUQHnnkWcDE8EFW7mKBYTupbG3ZKNpMg+SxKrEKMs1W
	 vpdXIr05YpqIFBAEFZ7axKpJtXvAsSeOegUVyLmFcKw8q9JTOr/Ss0FAuB87muGQT7
	 rFhPTH/ut4/+Q==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id D07F3CAB780; Sat, 13 Dec 2025 15:41:26 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220726] Patch of ioctl_vt (2), small clarification.
Date: Sat, 13 Dec 2025 15:41:26 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx@kernel.org
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: INVALID
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-220726-11311-7VQ8DFQKuZ@https.bugzilla.kernel.org/>
In-Reply-To: <bug-220726-11311@https.bugzilla.kernel.org/>
References: <bug-220726-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

https://bugzilla.kernel.org/show_bug.cgi?id=3D220726

--- Comment #7 from Alejandro Colomar (alx@kernel.org) ---
Hi Teika,

On Sat, Dec 13, 2025 at 08:00:04AM +0000, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D220726
>=20
> teika kazura (teika@gmx.com) changed:
>=20
>            What    |Removed                     |Added
> -------------------------------------------------------------------------=
---
>  Attachment #308874|0                           |1
>         is obsolete|                            |
>=20
> --- Comment #6 from teika kazura (teika@gmx.com) ---
> Created attachment 309016
>   --> https://bugzilla.kernel.org/attachment.cgi?id=3D309016&action=3Dedit
> My version of vt_ioctl.2
>=20
> This is the third version of vt_ioctl.2. Unlike preceding versions this is
> not
> a patch, but the entire file. The second version was posted to the mailing
> list:
>
> <https://lore.kernel.org/linux-man/20251110.165618.2111633615163528521.te=
ika@gmx.com/T/#u>.
> The accuracy was justified in the post cited above (and follow up emails.)
>=20
> My contribution is released to the public domain. I don't post the
> corresponding patch, but it is based on the git HEAD as of today, i.e.
>
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man/m=
an2/ioctl_vt.2?id=3D9fbe82>.
>=20
> The project refuses my work to merge because of not complying with its po=
licy
> about the use of AIs. I believe my improvement helps, so hereby post for =
the
> community's sake.

We don't refuse to take your work.  You seem to refuse to follow our
policies.  You're welcome to do work that is clean of AI, and we'll
consider it.  But AI-derived code will not be accepted anywhere in this
project, including the bugzilla.  I've marked the attachment as private.


Have a lovely day!
Alex

>=20
> Best regards.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

