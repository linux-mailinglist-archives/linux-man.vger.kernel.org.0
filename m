Return-Path: <linux-man+bounces-265-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9E9814702
	for <lists+linux-man@lfdr.de>; Fri, 15 Dec 2023 12:34:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2CD6C1C22AB3
	for <lists+linux-man@lfdr.de>; Fri, 15 Dec 2023 11:34:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A9051F18C;
	Fri, 15 Dec 2023 11:34:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TP03eMWR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C9924B4A
	for <linux-man@vger.kernel.org>; Fri, 15 Dec 2023 11:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66ABC433CA
	for <linux-man@vger.kernel.org>; Fri, 15 Dec 2023 11:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702640046;
	bh=gcfmR4kcrDQwtg8pKyhLiQzSD+dKAz6SPjocbNgDFR0=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=TP03eMWRZTQD0bSZEHgeQE6/u3hxLVLCX5jyC6+CkORW8zFtvOWm+vSPDSNZw2qN8
	 o1rPf+yGLKfi1YT1JF8UHZMkX6UbJNsSu3ti4hKWHwzCt+lwV489En10XpQCiOBdRf
	 ACyylg8DmMB2NAfVEmNSr4CtQf4YzuQt20KAcCk+ExnXCfVx1lrcExXDjE8aVH6Lek
	 /+8GVoTCUiUnl0XeE01zF4SnEPRDZKUrwXPPlCC2jkUaKX4Bpv9Xb4aLXxmRjcHA+H
	 3csMfOvEzLDIi9x0yRAXnMyKtJvynZYbe/geZc+42gg/Rg2s7lSSzYx0tBDnW6EoTe
	 cKZSo01OYya+A==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id A32BEC53BCD; Fri, 15 Dec 2023 11:34:06 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218266] Need article about Linux shutdown process
Date: Fri, 15 Dec 2023 11:34:06 +0000
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
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-218266-11311-dqcPm2kKyI@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218266-11311@https.bugzilla.kernel.org/>
References: <bug-218266-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218266

--- Comment #3 from Alejandro Colomar (alx@kernel.org) ---
On Fri, Dec 15, 2023 at 11:24:41AM +0000, bugzilla-daemon@kernel.org wrote:
> No, this is too complex a topic and the current manpages content is clear=
ly
> not
> enough. This is not about using the shutdown command, but about the
> information
> necessary to build an rtl programming language. Perhaps some explanatory
> graphical files are also needed.

I meant in section 7, because that's the Miscellaneous Information
Manual.

The page for the command is shutdown(1).

In section 7 there are some pages that have that style of articles
explaining how to do something.  See for example the most recent
addition: string_copying(7).

>=20
> It is possible, of course, to dramatically simplify the task by making yo=
ur
> own
> patch for the kernel and describing it, but I think it would be better to
> describe how it works now on the part of the kernel developers. I have
> nothing
> to write about now - there is not enough information about the topic.

Ok.

Have a lovely day,
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

