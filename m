Return-Path: <linux-man+bounces-4236-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 66394C243E9
	for <lists+linux-man@lfdr.de>; Fri, 31 Oct 2025 10:48:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE4B73B90C5
	for <lists+linux-man@lfdr.de>; Fri, 31 Oct 2025 09:45:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA1D52F60DB;
	Fri, 31 Oct 2025 09:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8aPt3S/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 893CC1E9B3D
	for <linux-man@vger.kernel.org>; Fri, 31 Oct 2025 09:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761903927; cv=none; b=Uk8c8bLyx/CJO++PFNbvpsFG6Ufn76zu0kT/1KSbGNkBS/e0DRATJXztL2IbqycVLHhrWMisuCH7SFNlAcjcSg7vVAFZWQ3Ja4WOzQQfYxjT5R2mUZkm5KOKq94vRe2hFN2Y4XQmDTjjYXUa15WRWJephK8Om0CaDt6eBsgCcKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761903927; c=relaxed/simple;
	bh=Dbkz4xNvnuz6/33QRmTW4u8OllI5vRQX1UK9RTPdq9E=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=T7b5l+nt5ry64gt2njrQYgP5Xb4gsxNYjho0gg4oE9C+G6IukFLOjd4r66l30+wSDR50GjvDSVjnG/eSpSYxWZhVe3zCMjs01PLUYZqrPuyPHfEalN72M5BY6p7rSOcaq3hVQ7srraf88c0pa6AvG7oVfrEIAqzQFi+RaWN58ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8aPt3S/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3EBDC4CEFB
	for <linux-man@vger.kernel.org>; Fri, 31 Oct 2025 09:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761903927;
	bh=Dbkz4xNvnuz6/33QRmTW4u8OllI5vRQX1UK9RTPdq9E=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=V8aPt3S/mKFKV2YtuaTxNmLETxNXvVa5g2TJolBu1SbJn1oMHjROUhpnHCeHACosc
	 BY2/yKtm4pEssQgnLOxjEVIPXGNvWD43dYkFCHy7TvNwA4n7DL5hUgHTugkF1OAdq8
	 knM+IDhzqUT0LwTumRcRekT7Vc/2AsPuJKqYGXo4+PQXnKGRdViWlpwO2jCs3eSpib
	 PasVA5KTT6yiv3fid56i0C2SsyJ70MJa35rdO02BFLx2JQzv55ayjv4e/yHeFYmr1p
	 4D1a+16Rrhj7hdzWsco1DGmnvHX8xSxZXL4535mbnV3M0ViOy+zjME/8A8A6wKOSCz
	 E2aPprIMEIx/g==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id EBD20C41612; Fri, 31 Oct 2025 09:45:26 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220726] Patch of ioctl_vt (2), small clarification.
Date: Fri, 31 Oct 2025 09:45:26 +0000
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
Message-ID: <bug-220726-11311-VT0Y6QVktj@https.bugzilla.kernel.org/>
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

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
Hi,

On Fri, Oct 31, 2025 at 04:41:33AM +0000, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D220726
>=20
>             Bug ID: 220726
>            Summary: Patch of ioctl_vt (2), small clarification.
>            Product: Documentation
>            Version: unspecified
>           Hardware: All
>                 OS: Linux
>             Status: NEW
>           Severity: normal
>           Priority: P3
>          Component: man-pages
>           Assignee: documentation_man-pages@kernel-bugs.osdl.org
>           Reporter: teika@gmx.com
>         Regression: No
>=20
> Created attachment 308874
>   --> https://bugzilla.kernel.org/attachment.cgi?id=3D308874&action=3Dedit
> Patch of man/man2/ioctl_vt.2
>=20
> Let me submit a patch of the man page ioctl_vt (2), which clarifies a bit.
>=20
> I also have a comment in this page about the struct vt_mode in VT_SETMODE=
. It
> has the member "waitv", which does not seem to be meaningful any more tod=
ay.
>=20
> It is because among all files in the kernel source drivers/tty/, it is on=
ly
> refered once, in vt/vt_ioctl.c, in the line:
>=20
> vc->vt_mode.waitv =3D 0;
>=20
> --=20
> You may reply to this email to add a comment.
>=20
> You are receiving this mail because:
> You are watching the assignee of the bug.

Would you mind sending the patch to the mailing list?  Please see

        $ cat CONTRIBUTING
        Name
               Contributing - instructions for contributing to the project

        Synopsis
               Mailing list, patches, lint & check, style guide, bug report=
s,
               and more.

        Description
               The main discussions regarding development of the project,
               patches, bugs, news, doubts, etc. happen on the mailing list.
               To send an email to the project, send it to Alejandro and CC=
 the
               mailing list:

                   To: Alejandro Colomar <alx@kernel.org>
                   Cc: <linux-man@vger.kernel.org>

        Files
           CONTRIBUTING.d/git
               Instructions for configuring git(1).

           CONTRIBUTING.d/mail
               Instructions for sending emails to the project

           CONTRIBUTING.d/patches/
               Instructions for contributing patches

           CONTRIBUTING.d/bugs
               Instructions for reporting bugs

           CONTRIBUTING.d/lint
               Instructions for linting manual pages

           CONTRIBUTING.d/external_pages
               Pages imported or generated from other projects

           CONTRIBUTING.d/style
               Preferred layout of manual pages and style guide notes

        See also
               <https://www.kernel.org/doc/man-pages/missing_pages.html>

and

        $ cat CONTRIBUTING.d/patches/patches
        Name
                patches/patches - instructions for contributing patches

        Description
                If you know how to fix a problem in a manual page (if not, =
see
                <CONTRIBUTING.d/bugs>), then send a patch in an email.

                Configure git(1) for this project.  See <CONTRIBUTING.d/git=
>.

                Send logically separate patches.  For logically-separate
issues,
                send separate emails.  For related issues, send a patch set
with
                a cover letter that gives an overview of all of the patches,
and
                each patch should be a reply to the cover-letter mail.  We
                recommend using git-format-patch(1) for preparing the patch=
es.

                Patches should contain a description alongside the diff.  A
diff
                without a description is mostly useless.  See
                <CONTRIBUTING.d/patches/description>.


Have a lovely day!
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

