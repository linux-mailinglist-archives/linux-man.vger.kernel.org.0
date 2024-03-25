Return-Path: <linux-man+bounces-691-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8487988A7D1
	for <lists+linux-man@lfdr.de>; Mon, 25 Mar 2024 16:56:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B1A6B1C36C05
	for <lists+linux-man@lfdr.de>; Mon, 25 Mar 2024 15:56:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B286153BD4;
	Mon, 25 Mar 2024 13:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjylfwDx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFDD4145353
	for <linux-man@vger.kernel.org>; Mon, 25 Mar 2024 13:26:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711373196; cv=none; b=okIEbqyIdKvkTKBti8uNWB4+XRokTKj+wARxUNdSrbQ8/skEQKbx6LpmzLKiwLHjsWPn5mplrhNuLNOxxe2ViAg4y4BQPZpRJWbOlyNgkXFInFIZOFf+H/6F38IEKvI7X/RO4FXT+HIenfju1MN9Uv5LlYvkHyIYZEcK9QSC650=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711373196; c=relaxed/simple;
	bh=vtZeZxUcm+LraqlFzUmlnVDHiNd/XA3omIJMtIYGlh0=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ddFPgvOWj56ch3JI84Yuom6ais5gBXi8G/nInhTRtqbssKVbpptBls+F2WcVniAQucT+AgHPa2q+p6NFAGDREud9LQfjSz76qukrZIJ4vAVdvNDK2WMFhnEaWGdOtRWk2W0TuxqkdZjHQPwdQb1QZoo5fZn9P6v/0+IMniOX9SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjylfwDx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E0B8C433C7
	for <linux-man@vger.kernel.org>; Mon, 25 Mar 2024 13:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711373195;
	bh=vtZeZxUcm+LraqlFzUmlnVDHiNd/XA3omIJMtIYGlh0=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=VjylfwDxGR5rPW473ILrkdBlD2GU5HP6Gf0xL5LIrjCDo5aRvawq/JLLLVvPWxy9l
	 6ib8uuaNmD8szwFJS13v86USwlYGXDSmhAdLJwmKy03WOy2m72PXqZ5ikFCc+TauA8
	 Pxpw9RH1dmMsV8UcDJoLfecs54NqvQUdFDpdM8B1heOV2wByZV//0qV+iIrGg2Dlbw
	 ufrBtU43ybyCDM8p4k8M4PY6VESsusSrar5wV7FyzFlpLsMRSZSi05XSmRB5UgtQCj
	 xxgNeNDnNSRlpcz8LvBqpaEnIU+qnB5CS8trpBzW7iX0BCKH0N/u7TpSmAXJ4fcG7k
	 RIBJ38LMaV7nQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 676BDC53BCD; Mon, 25 Mar 2024 13:26:35 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 214885] random.{4,7} [man-pages 5.13] do not reflect changes to
 /dev/random semantics since kernel 5.6
Date: Mon, 25 Mar 2024 13:26:35 +0000
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
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-214885-11311-JkrqzVa7mS@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214885-11311@https.bugzilla.kernel.org/>
References: <bug-214885-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D214885

--- Comment #4 from Alejandro Colomar (alx@kernel.org) ---
Hi Mingye,

On Mon, Mar 25, 2024 at 12:44:08PM +0000, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D214885
>=20
> Mingye Wang (arthur200126@gmail.com) changed:
>=20
>            What    |Removed                     |Added
> -------------------------------------------------------------------------=
---
>  Attachment #304322|0                           |1
>         is obsolete|                            |
>=20
> --- Comment #3 from Mingye Wang (arthur200126@gmail.com) ---
> Created attachment 306038
>   --> https://bugzilla.kernel.org/attachment.cgi?id=3D306038&action=3Dedit
> Patch set as of 2024-03-25
>=20
> I am not functioning well enough to do man pages right now. The attached
> tarball contains the current progress of my tree. It contains three patch=
es
> suitable for the current HEAD at c6a68aef7334f32ffffb74050702b8b53b064f37:
>=20
> * The first is basically #304322, which changes a bunch of things. It's b=
een
> e-mailed, but I honestly don't recall whether I've done the requested
> changes.
> * The second is a small change. It has also been emailed, and I also don't
> know
> if the formatting issues have been fixed.
> * The third is new. It addresses a pool size change and a
> write_wakeup_threshold obsoletion. It could have addressed the obsolete
> "urandom_min_reseed_secs" too, but I don't want to hunt down when it appe=
ared
> and when it stopped working.

Thanks!  I don't take patches from bugzilla.  Would you mind sending the
patches following  the instructions in
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING>?

Have a lovely day!
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

