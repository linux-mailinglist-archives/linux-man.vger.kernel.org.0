Return-Path: <linux-man+bounces-4411-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 235A7CBD590
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 11:20:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BFB2B300D00E
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 10:20:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4547C329384;
	Mon, 15 Dec 2025 10:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKauUsBv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040CD3168F8
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 10:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765794024; cv=none; b=mrxGDvYYkcP/BEvxoytItWjpKlolVkcu5e4jKR+avbt6fJq19uQdxzERMNOe1529GdZubW/WDW97Vqxy1y9oVVUaeN+S0RqkD4/AAAHW52B61IVWM3Jo5vbCforv5vl7pldfGLSViuq35epOI2jmKEBQfpMTiVguV97U6B2OBDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765794024; c=relaxed/simple;
	bh=YIxKGmrlnVS8F4e/Nrs4dB92c8GPNBiXeQps9iVeEtc=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=nk+I7MQ1ulN3VLuNcQ3mruOJibcDd65RfuoZmyF1/KyYNlgg4mmOY1A3LkiPrRFuO+rACXT/FmvShuzgeTIdxwSz/TgXSdmxocVOWCKmcyvNMAamKsUClMV6JEwPbTe/a3XiRxuut6/DFsTVl7AfWbXDKt4kqS2WukpnVS3SQfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKauUsBv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8769EC4CEFB
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 10:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765794023;
	bh=YIxKGmrlnVS8F4e/Nrs4dB92c8GPNBiXeQps9iVeEtc=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=fKauUsBv7fJTe2dOGHNZ1+Iz/LxKnvLseqYqaQ13gU91rHajUTUuSoP15em+k4wl8
	 EKOvmNVvMvIdCzYcmQVg//4TdCkT+SS5JUnbCTW9LkgJBMjz+3mZw3lUPVqI0D9mdd
	 O4l8vfYZoGjYQWKpYlo5Ti+omSpFyqMtw/Txu4JgQAHNmvT02eCt0iWOCoyIxFza9e
	 N1+5X1O/CJvnoNWNZu2k1eITPGYM6+mnUw9ZbJK0Jrj6/GDZFEKitgDW5MHujtbisG
	 mW5ur4mW22ua/33gTtg7CbuqzLvNedoynYbr23zyqRazLFtxAIYiZ9Ut9nH9q6BK5i
	 GG71N2n7kNtIQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 7C08BC53BC9; Mon, 15 Dec 2025 10:20:23 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220726] Patch of ioctl_vt (2), small clarification.
Date: Mon, 15 Dec 2025 10:20:23 +0000
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
Message-ID: <bug-220726-11311-AAgaFy6qKr@https.bugzilla.kernel.org/>
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

--- Comment #9 from Alejandro Colomar (alx@kernel.org) ---
(In reply to teika kazura from comment #8)
> Hi. Hiding my last post here is wrong, because mine was done outside the
> man-pages project.

This is part of the Linux man-pages project.  Look at "component" up.

> Manual pages are GPL'd and anyone can do anything as long
> as they obey the license.

You're of course free to do anything in your website.  But that license doe=
sn't
give you a right to publish anything in the project infrastructure.

> You don't have the right to do it. Everyone
> mistakes and that's ok, but lift it.

No.

>=20
> Also remember kernel bugzilla is not only for man-pages, and at least the
> kernel itself does not have any policy about the AI use.


> I know my post does
> not directly help any projects hosted here right now, but I'm not spamming
> either.

That's why I've hidden your manual page, and not your messages.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

