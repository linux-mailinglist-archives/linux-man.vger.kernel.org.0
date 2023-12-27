Return-Path: <linux-man+bounces-304-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7348E81F089
	for <lists+linux-man@lfdr.de>; Wed, 27 Dec 2023 17:41:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0943A1F22FAF
	for <lists+linux-man@lfdr.de>; Wed, 27 Dec 2023 16:41:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A38382576B;
	Wed, 27 Dec 2023 16:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SItF4Pdd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D37346430
	for <linux-man@vger.kernel.org>; Wed, 27 Dec 2023 16:41:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9F12C433C8
	for <linux-man@vger.kernel.org>; Wed, 27 Dec 2023 16:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703695309;
	bh=59b7nA8onj1P4WW2eDVEDMYm4ZjiYHUG2sd735ehkd4=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=SItF4PddvoduXDydKnt0DzR5vqP7uWwImV/qlHjNnt0F683fJZslHHTCkDGwqXG6B
	 ByBbCrSg/D5beiey4qXikT0a50xHPTsAI94YrdJ5H5XHHKjLTmIhv8Jxo0sEzXZjQU
	 mXjFHIetuWIkUkcNnkqBRgoB9JVH+8ij5lf5lxwxOrpm9u7TEmbqHoiUCbdYBE+uno
	 qB6Njh7f++QzapTq1KeFO4DBpkAAM4uaKJJ8OoNwA3amD6SErTUvwCuSdBcd0p9/s8
	 Qo3y8S5AuQD6Yfky4Vf9p2bY3iQIiKZAiYPxJwpAy4hLi9bsidVG3GLC+vsCp5btJD
	 Yr9pVaS/4BKyg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id D2859C53BD2; Wed, 27 Dec 2023 16:41:48 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218018] dl_iterate_phdr should mention Elf64_Phdr (in addition
 to Elf32_Phdr).
Date: Wed, 27 Dec 2023 16:41:48 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: r.pandian@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-218018-11311-djl3NOtVOy@https.bugzilla.kernel.org/>
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

Rajesh (r.pandian@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |r.pandian@gmail.com

--- Comment #1 from Rajesh (r.pandian@gmail.com) ---
(In reply to Paul Pluzhnikov from comment #0)
> dl_iterate_phdr should mention Elf64_Phdr (in addition to Elf32_Phdr).
> Currently the man page says:
>=20
> These program headers are structures of the following form:
>   typedef { ... } Elf32_Phdr;
>=20
> which is obviously wrong for 64-bit binaries.

Hello Paul,

Do you think the following would be helpful.

Replacing "These program headers are structures of the following form:" with
the following

The ELF program header is described by the type Elf32_Phdr or Elf64_Phdr
depending on the architecture. Following is an example of 32 bit architectu=
re.
Refer to elf (man elf) for more information on 64 bit architecture.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

