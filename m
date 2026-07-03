Return-Path: <linux-man+bounces-5694-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XQo6DNWWR2rgbgAAu9opvQ
	(envelope-from <linux-man+bounces-5694-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 03 Jul 2026 13:02:45 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 952A1701918
	for <lists+linux-man@lfdr.de>; Fri, 03 Jul 2026 13:02:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=UTwdtGht;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5694-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="linux-man+bounces-5694-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 20600302167E
	for <lists+linux-man@lfdr.de>; Fri,  3 Jul 2026 10:51:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 662193C8C7C;
	Fri,  3 Jul 2026 10:50:51 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265F23C8C48
	for <linux-man@vger.kernel.org>; Fri,  3 Jul 2026 10:50:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783075851; cv=none; b=rV6IHeJumVmwexVzxUtkdxzfm+CZ31yPBc3KY3ZLNLf97O5N8ypAh+JM3oUezd8Pu3yVNfVpDbXM0QboaHXSyigsANR0B16P73tIGgo6mDos4UjItFEbwMB+r/2OIgRcoCJmwAm78PZwGW+OO7ZpXqi65seW9SdN24KcfK1lDs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783075851; c=relaxed/simple;
	bh=Me17IBommnwu53WQdPcV+eQL66+X0CEU9rm4bHQlhM8=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Vo2kPFIfcVIV0nQWdRcWpwylQarnaJq5VcqVyNhISKig1iekdnIPWqo6rOret4/xa18z/FdTWNKxXtsQHbxx9IrJiBzU5CrCxRnxkFwIXzy2Dk4kBhQCJFHJZvVu0uRHoTYWeOGxbYDcew8GB27qLWy7H2xOEXCz9kaVo1M19wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTwdtGht; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8929C2BCB9
	for <linux-man@vger.kernel.org>; Fri,  3 Jul 2026 10:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783075850;
	bh=Me17IBommnwu53WQdPcV+eQL66+X0CEU9rm4bHQlhM8=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=UTwdtGhtSHxLVtVvUay8axRrhsM5liW/kJpvFOw5xR6wPr4TR9ei2cI2akHArwtBo
	 EMbWLJkJCFdZdwY0okRilWd4jpg8UV+TKDArMvBTwa0Oj6zk+8NVx5AB3t13CmGrFB
	 gyuiKrflLg6+gaxjUtBgHBC81apDHXZD7Q2RdczTwSdmHArl51vQWjzEOm/UeFY6bo
	 i4oiahhQhBY75YGoS+yX15CH1hDuuAu7FWSxWco57e43Lu7fLAN/3rmsCAi0TkHZxq
	 tQaZ9Xfv6Gz5vqGbo2thAeKQS+gbRj4fGpfS2mWvlTwKe4eUugVo6PWH481Vazy06m
	 RfY3F6Di7Heyw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id AC3E2C41613; Fri,  3 Jul 2026 10:50:50 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: =?UTF-8?B?W0J1ZyAyMjE3MTVdIOKAnG1ha2UgLVIgYnVpbGQtcGRmLXBhZ2Vz?=
 =?UTF-8?B?LXRyb2Zm4oCdIGZhaWxzIHdpdGgg4oCcd2FybmluZzogdGFibGUgcm93IGRv?=
 =?UTF-8?B?ZXMgbm90IGZpdOKAnQ==?=
Date: Fri, 03 Jul 2026 10:50:50 +0000
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
Message-ID: <bug-221715-11311-gAyLbNplm8@https.bugzilla.kernel.org/>
In-Reply-To: <bug-221715-11311@https.bugzilla.kernel.org/>
References: <bug-221715-11311@https.bugzilla.kernel.org/>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5694-lists,linux-man=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[bugzilla-daemon@kernel.org,linux-man@vger.kernel.org];
	FORGED_SENDER(0.00)[bugzilla-daemon@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_ONE(0.00)[1];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_NO_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,codeberg.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 952A1701918

https://bugzilla.kernel.org/show_bug.cgi?id=3D221715

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
Hi Jason,

On 2026-07-03T00:13:12+0000, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D221715
>=20
>             Bug ID: 221715
>            Summary: =E2=80=9Cmake -R build-pdf-pages-troff=E2=80=9D fails=
 with =E2=80=9Cwarning:
>                     table row does not fit=E2=80=9D
>            Product: Documentation
>            Version: unspecified
>           Hardware: All
>                 OS: Linux
>             Status: NEW
>           Severity: normal
>           Priority: P3
>          Component: man-pages
>           Assignee: documentation_man-pages@kernel-bugs.osdl.org
>           Reporter: jason@jasonyundt.email
>         Regression: No
>=20
> Created attachment 310413
>   --> https://bugzilla.kernel.org/attachment.cgi?id=3D310413&action=3Dedit
> A full log of what happens when I follow the steps to reproduce on my sys=
tem
>=20
> Steps to reproduce:
>=20
> 1. Open a terminal.
>=20
> 2. Make sure that you have a copy of the man-pages repository on your sys=
tem.
>=20
> 3. Change directory into the root of the repository by running this comma=
nd:
>=20
>         cd <path to repository>
>=20
> 4. (Optional) Make sure that you=E2=80=99re using the same set of depende=
ncies that I
>    used when I tried building man-pages by doing the following:
>=20
>         A. Make sure that the Nix package manager is installed by running
>         this
>            command:
>=20
>                 nix-env --version
>=20
>            If that command finishes successfully, then Nix is installed. =
If
>            that command gives you an error, then you need to install Nix.
>=20
>         B. Activate a dev shell that contains all of the dependencies for
>            building man-pages by running this command:
>=20
>                 nix --extra-experimental-features 'nix-command flakes'
>                 develop
>
> 'git+https://codeberg.org/JasonYundt/flake-for-working-on-man-pages.git?r=
ef=3Drefs/heads/main&rev=3Dd3e76acfbb2f036aa9215e930b624f80813b7f3e'
>=20
> 5. (Optional) Switch to a revision of man-pages that is known to have this
> problem by running this command:
>=20
>         git switch --detach a12be0058be628f50da69fb0efb2ed9b4422a699
>=20
> 6. Attempt to build the =E2=80=9Cbuild-pdf-pages-troff=E2=80=9D target by=
 running this
> command:
>=20
>         make -R build-pdf-pages-troff
>=20
>=20
> When I follow those steps to reproduce on my system, the build fails with
> these
> errors:
>=20
> > .tmp/man/man4/console_codes.4:420: warning: table row does not fit on p=
age
> 5
> > .tmp/man/man4/console_codes.4:778: warning: table row does not fit on p=
age
> 9
> > make: ***
> >
> [/home/jayman/Documents/Home/VC/space_afraid/Git/partially_mine/man-pages=
/Repo/share/mk/build/pdf/pages/troff.mk:30:
> > .tmp/man/man4/console_codes.4.pdf.set] Error 1
> > make: *** Deleting file '.tmp/man/man4/console_codes.4.pdf.set'

Yup; I'm not an expert in these things.  I've CCd BRanden, who knows
more groff(7) than I, and maybe he could send patches to have a clean
build.

Branden, would you mind having a look at `make -R build-pdf` and send
patches to fix the diagnostics we get?  It would also be nice to try
build-ps and build-html.


Have a lovely day!
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

