Return-Path: <linux-man+bounces-305-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A182881F091
	for <lists+linux-man@lfdr.de>; Wed, 27 Dec 2023 17:47:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C06071C2132C
	for <lists+linux-man@lfdr.de>; Wed, 27 Dec 2023 16:47:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1EEA286AC;
	Wed, 27 Dec 2023 16:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZul+OqR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB5E45026
	for <linux-man@vger.kernel.org>; Wed, 27 Dec 2023 16:47:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2A89C433C8
	for <linux-man@vger.kernel.org>; Wed, 27 Dec 2023 16:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703695669;
	bh=6n8bLB3EjPeUNdT120syHj68fAsSGQ6XUGqrgZXc9LY=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=fZul+OqR0Y2qW73OyliBbeD+GndIPdCKS50lTgDvCJGs2sjsoUEIBNS1p4MwYIT/D
	 xygdvzSZOUYOANjgJhE0lZ6ir7x2gy9veH3d+4659rYssyyLBb5aSxWHAQ61HiHmJD
	 PFkQLNi11XxYQMpVXU7a9dtF9bmapY5rLyVOJ/CPWzG5mSt2NlfZyckoGnbqN3VJaH
	 zTbrsHAnt1Mrwl4X5b3nLbK6t0fnnuFeyL+4Cojdn6VUfYZMHpWIA8FpLVywdZFONT
	 +45V0OXf6XWpKOsVjunKQr1/OXi7+hn2VsUCWVFrZdvdYVhvCpVZAOD0ETxkD+CHY1
	 4DoLy/G9nIcgw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id DBB53C53BD0; Wed, 27 Dec 2023 16:47:48 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218018] dl_iterate_phdr should mention Elf64_Phdr (in addition
 to Elf32_Phdr).
Date: Wed, 27 Dec 2023 16:47:48 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: ppluzhnikov@google.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-218018-11311-B8AwJ7hI24@https.bugzilla.kernel.org/>
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

--- Comment #2 from Paul Pluzhnikov (ppluzhnikov@google.com) ---
(In reply to Rajesh from comment #1)

> Do you think the following would be helpful.

Sure.

> Replacing "These program headers are structures of the following form:" w=
ith
> the following
>=20
> The ELF program header is described by the type Elf32_Phdr or Elf64_Phdr
> depending on the architecture. Following is an example of 32 bit
> architecture. Refer to elf (man elf) for more information on 64 bit
> architecture.

I suggest deleting the last 4 words, i.e.

  Refer to elf (man elf) for more information.

since "man elf" describes both Elf{32,64}_Phdr in a bit more detail.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

