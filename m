Return-Path: <linux-man+bounces-33-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB767E8C69
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 20:57:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EFF6F1C204F3
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 19:57:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EDAC1D52C;
	Sat, 11 Nov 2023 19:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrxWv4ms"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3A51D524
	for <linux-man@vger.kernel.org>; Sat, 11 Nov 2023 19:57:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E151C433CA
	for <linux-man@vger.kernel.org>; Sat, 11 Nov 2023 19:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699732670;
	bh=i5495nr4p4tB4lIQCzziJdNq2yVvVi2Rf3CJq+m74d0=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=mrxWv4msdiPki5vLNCiyRHZEtoYjZgUXfMD7ZUTfKkGClFXlcqyjBqVt1gWCT13C2
	 2t38aUB40bGfFHbH3o9WtC3IUjEvGMKvixfBQNY05XfQRoxE8989b87qEGII/S7ckL
	 hXRuOnWzwGjOKpFXobPWmgOoy/U823Bge4RTJbkgxvQo28DUFbqCtrjqeeWGOv8zUQ
	 IIr9kcjhtOKtcq4Pod6Zi1poaIvWx87BSKHP2ySWrb+EpZcrfmaZb66Sp6YblmKzQk
	 nBBCpRIJLQaP2RuFqBl+cb6mPd8o2hoWx+TqSOpmuF69rsZcnlameJirORhIl56S1w
	 fAqn9e+Y+YVUg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 8A2C6C53BD4; Sat, 11 Nov 2023 19:57:50 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218105] Incorrect path name in description of creating a
 threaded cgroups tree
Date: Sat, 11 Nov 2023 19:57:50 +0000
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
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-218105-11311-3lBSEyz97d@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218105-11311@https.bugzilla.kernel.org/>
References: <bug-218105-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218105

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |alx@kernel.org

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
It seems it affects more text:


     The second way of creating a threaded subtree is as follows:

     (1)  In an existing cgroup, z, that currently has  the  type  do=E2=80=
=90
          main,  we  (1.1) enable one or more threaded controllers and
          (1.2) make a process a member of z.  (These two steps can be
          done in either order.)  This has the following consequences:

          =E2=80=A2  The type of z becomes domain threaded.

          =E2=80=A2  All of the descendant cgroups of x that were not  alre=
ady
             of type threaded are converted to type domain invalid.

     (2)  As  before,  we  make the threaded subtree usable by writing
          the string "threaded" to each of the domain invalid  cgroups
          under y, in order to convert them to the type threaded.

The 'y' in (2) also seems like it should have been 'z'.  Do you agree?

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

