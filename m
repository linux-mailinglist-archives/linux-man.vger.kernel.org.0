Return-Path: <linux-man+bounces-2693-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7836EA76137
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 10:18:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D04CB3A6AE8
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 08:17:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28925157A5A;
	Mon, 31 Mar 2025 08:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1ONHfwH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCF0641AAC
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 08:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743409079; cv=none; b=U7c5QJFghTmQF8TXBii8lzRRlct50tpzK8yRPGBa7CYw3SbN9JxiOpwNpyfu85qi1Aj2LuYvgZ/E/Y+Ss64UN134u3KmxXNCSqU81EGmRVU3v8YJb/5LPpfeBtGnjo2zRiUYPIo0jr1PxMepHCKLNO+FvbQ0F77yu2sGW82fTQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743409079; c=relaxed/simple;
	bh=momboR6IJBOFrgulpgN4ThYr043e60J1xE/W1yC1fxE=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=RxPoIwOQbcAhOEqMJjFB2pDoorgTrq+zUwegfpvVGaekNuMadBNGEdeTbJ5i3p5Vvb/bjDrpK1Wbv7EFCouYIEPKyVipyXG42llrJpb8VsXvZP4qWUkIjU1ER5eOXXMlryqk5h1ig9H8GWCb15ksIwsSnUS9O2pnEF9rDSfBsTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1ONHfwH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4924DC4CEED
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 08:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743409079;
	bh=momboR6IJBOFrgulpgN4ThYr043e60J1xE/W1yC1fxE=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=P1ONHfwHdPcbIOIdjcNKwwXXOSkO2tEgr8rhDeMOGFTH1lS5PL3w5llEgPj9yJaEV
	 SVYebCisolwUr5fabRdqeMHSEPIbZkDczpi36BwdbTVtYkYK49cxjl+XNmDBXI/EjT
	 5klHqQFmOX3LKPt+Rb+gV3l1J7OanfzRVuvhbfA1n1g1KeGAGwt+0F1ekXCY7DJpu1
	 0qc0GSFSzoBfibwf1SB0IUZRKhK52TFxCOBmXx4uqN0hd4rdvvpJjXW2dGw4eAAvb+
	 pR2p5Rcnjn25l3A5FNsMJr5TuFuDR9iGs8FmmLwHa/UMwUlabTMzHMkY9lnpBWNWzd
	 yt5YeG9UOQZ8A==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 366ABC53BC9; Mon, 31 Mar 2025 08:17:59 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219822] mount option lazytime is independent of
 strictatime/relatime/noatime
Date: Mon, 31 Mar 2025 08:17:58 +0000
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
Message-ID: <bug-219822-11311-9Lr79Eh4eI@https.bugzilla.kernel.org/>
In-Reply-To: <bug-219822-11311@https.bugzilla.kernel.org/>
References: <bug-219822-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D219822

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
Hi,

On Wed, Feb 26, 2025 at 04:55:40PM +0000, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D219822
>=20
>             Bug ID: 219822
>            Summary: mount option lazytime is independent of
>                     strictatime/relatime/noatime
>            Product: Documentation
>            Version: unspecified
>           Hardware: All
>                 OS: Linux
>             Status: NEW
>           Severity: normal
>           Priority: P3
>          Component: man-pages
>           Assignee: documentation_man-pages@kernel-bugs.osdl.org
>           Reporter: cquike@arcor.de
>         Regression: No
>=20
> According to a message from Theodore Ts'o ([1]) the lazytime option in mo=
unt
> is
> "independent" of the other atime behaviours.
>=20
> I see that the man page explains what lazytime does but it is not clearly
> stated that it can be combined with other options like strictatime or
> relatime.
>=20
>=20
> [1] https://www.spinics.net/lists/linux-fsdevel/msg86233.html

Would you mind sending a patch to the mailing list and CCing Ted and any
one (or any list) else that would be interested?
See also:
<https://web.git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTR=
IBUTING>


Have a lovely day!
Alex

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

