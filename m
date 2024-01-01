Return-Path: <linux-man+bounces-329-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB9F8213A3
	for <lists+linux-man@lfdr.de>; Mon,  1 Jan 2024 12:53:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F832282813
	for <lists+linux-man@lfdr.de>; Mon,  1 Jan 2024 11:53:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31FFF2112;
	Mon,  1 Jan 2024 11:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hysB2p10"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE85820FD
	for <linux-man@vger.kernel.org>; Mon,  1 Jan 2024 11:53:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71BF5C433CA
	for <linux-man@vger.kernel.org>; Mon,  1 Jan 2024 11:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704109987;
	bh=tzphcDqL8wJyq0p615+wPb711/cFCg3Rf9J8s63+HlA=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=hysB2p10m39z05fOpbpbkH9kAggoyooc3sSbaBRy9jBO921TAuwNrGww0Txqj05US
	 wCwSKh9QDO0CvUWWbQYErjeusChE2S0JA2PrXecitUsOAzo8iHW/9T0+Hz7fhcE3rB
	 OQRCu5iScYz7ZmrOI5+unHrCYhA4+qvlJ1LJviTx6ozfk8LS3CEX/kCNzoSWFYTBm4
	 AfFyg1j5blReSD+wh7snFgR88qkpd+nZorYDqOGZS9OIFiIK2l+Jz1KCK4K/W965ho
	 z5mxFoZ9Dm50Frvikw53a5khC7WrGDa6X9/pAlSDnddfSZY5kLR1p+R1RWo5vtmqj1
	 SJw/1YW03cCKA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 5A685C53BD2; Mon,  1 Jan 2024 11:53:07 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218018] dl_iterate_phdr should mention Elf64_Phdr (in addition
 to Elf32_Phdr).
Date: Mon, 01 Jan 2024 11:53:07 +0000
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
Message-ID: <bug-218018-11311-QQI3ephEIy@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218018-11311@https.bugzilla.kernel.org/>
References: <bug-218018-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218018

--- Comment #4 from Alejandro Colomar (alx@kernel.org) ---
On Wed, Dec 27, 2023 at 04:47:48PM +0000, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D218018
>=20
> --- Comment #2 from Paul Pluzhnikov (ppluzhnikov@google.com) ---
> (In reply to Rajesh from comment #1)
>=20
> > Do you think the following would be helpful.
>=20
> Sure.
>=20
> > Replacing "These program headers are structures of the following form:"
> with
> > the following
> >=20
> > The ELF program header is described by the type Elf32_Phdr or Elf64_Phdr
> > depending on the architecture. Following is an example of 32 bit
> > architecture. Refer to elf (man elf) for more information on 64 bit
> > architecture.
>=20
> I suggest deleting the last 4 words, i.e.
>=20
>   Refer to elf (man elf) for more information.
>=20
> since "man elf" describes both Elf{32,64}_Phdr in a bit more detail.

I suggest creating link pages Elf32_Phdr(3type) and Elf64_Phdr(3type)
both of which link to elf(5).

>=20
> --=20
> You may reply to this email to add a comment.
>=20
> You are receiving this mail because:
> You are watching the assignee of the bug.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

