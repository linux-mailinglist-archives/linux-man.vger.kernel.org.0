Return-Path: <linux-man+bounces-5545-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLJ1I7PpCmpt9QQAu9opvQ
	(envelope-from <linux-man+bounces-5545-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 12:28:03 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E65EA56AB19
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 12:28:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 026E9303457B
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 10:24:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84DA93DE427;
	Mon, 18 May 2026 10:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbOuJqud"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D2B3446C3
	for <linux-man@vger.kernel.org>; Mon, 18 May 2026 10:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779099869; cv=none; b=EYW08HxVmv16113+hftoSH0Ky6XBhvkLnnKD7iqKMj4tnH/8582obYauLVznRxX37riI1XBfKYthn84OaIUJsLhNmif47PtZuAGmet1/zMa87LaaUqOd7yXNIsi98kVqng4ebq2f6IxFWConPotuiWHdXinJSetu5OvxbJpVzKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779099869; c=relaxed/simple;
	bh=Vmwb834j6S/9uaJcDxij6N8vPE8nBolW9tz/SCDM3Vg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DGHZiYwFtPRj39EBakcMTDQNyWIZSSec1ON3YBYIzzuRsx+MISQMhHNZ3u+sowMHzF6aa8p/VkCz78MOJB44fqjbNKKSZoDJBHnITxGXbnUpoFvaXCulBdS0WOu27Fe0fu1VOU9uhZ5zpi+QjclFbTyIQjHftVc6tLCoYCfQHaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbOuJqud; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5433FC2BCC6;
	Mon, 18 May 2026 10:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779099869;
	bh=Vmwb834j6S/9uaJcDxij6N8vPE8nBolW9tz/SCDM3Vg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AbOuJqudIB5G+kHvtKLyVzG5UAt/cnd8kAstLNrxonlAl9I9gGoLrTZDo4HrpX0bm
	 Wt1sW2EsODZTqO5/EPx22kx3BUXWhi5IVIFSyydKArm1JaOkH2K4tN/jXtJRtxgNoP
	 /FgEDuA8ma1IPPHQE8T4SKwK+tYY+KGdNYVyYoV/1EldwxlSlOktWCIMYq76tZ2WB9
	 RSm5vloYahRnj58y2gnl0N2eHStGH28UnwzZVcQ1455wKzehbaIUDSgcXz25GgVs8H
	 1whODFsCtm8oloCsVuTaor3mPYYuDRmfd2qP8VKSsXY3eEqALlbX390xSMyhM4SsiH
	 KX7JIVrMxNQ0g==
Date: Mon, 18 May 2026 12:24:25 +0200
From: Alejandro Colomar <alx@kernel.org>
To: funsafemath <funsafemath@proton.me>
Cc: linux-man@vger.kernel.org, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [PATCH] man/man2/seccomp_unotify.2: Document
 SECCOMP_IOCTL_NOTIF_SET_FLAGS and SECCOMP_USER_NOTIF_FD_SYNC_WAKE_UP
Message-ID: <agrlIOYqEMDSdIFK@devuan>
References: <agqooRyZy65sjFtl@nix-mail>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3yrpuazjlsipp7vf"
Content-Disposition: inline
In-Reply-To: <agqooRyZy65sjFtl@nix-mail>
X-Rspamd-Queue-Id: E65EA56AB19
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5545-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,proton.me:email]
X-Rspamd-Action: no action


--3yrpuazjlsipp7vf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: funsafemath <funsafemath@proton.me>
Cc: linux-man@vger.kernel.org, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [PATCH] man/man2/seccomp_unotify.2: Document
 SECCOMP_IOCTL_NOTIF_SET_FLAGS and SECCOMP_USER_NOTIF_FD_SYNC_WAKE_UP
Message-ID: <agrlIOYqEMDSdIFK@devuan>
References: <agqooRyZy65sjFtl@nix-mail>
MIME-Version: 1.0
In-Reply-To: <agqooRyZy65sjFtl@nix-mail>

Hi,

On 2026-05-18T06:50:47+0100, funsafemath wrote:
> Document the SECCOMP_IOCTL_NOTIF_SET_FLAGS ioctl(2) operation and its onl=
y flag,
> SECCOMP_USER_NOTIF_FD_SYNC_WAKE_UP, which advises the scheduler to move t=
he
> supervisor to the CPU on which the target process is executing for faster
> context switches.
>=20
> <https://lore.kernel.org/r/20230308073201.3102738-5-avagin@google.com>
>=20
> Signed-off-by: funsafemath <funsafemath@proton.me>

The patch looks mostly good.  See a minor comment below.


Have a lovely day!
Alex

> ---
>  man/man2/seccomp_unotify.2 | 36 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
>=20
> diff --git a/man/man2/seccomp_unotify.2 b/man/man2/seccomp_unotify.2
> index a5c1a4423..70b2996a9 100644
> --- a/man/man2/seccomp_unotify.2
> +++ b/man/man2/seccomp_unotify.2
> @@ -27,6 +27,7 @@ .SH SYNOPSIS
>  .BI "int ioctl(int " fd ", SECCOMP_IOCTL_NOTIF_ID_VALID, __u64 *" id );
>  .BI "int ioctl(int " fd ", SECCOMP_IOCTL_NOTIF_ADDFD,"
>  .BI "          struct seccomp_notif_addfd *" addfd );
> +.BI "int ioctl(int " fd ", SECCOMP_IOCTL_NOTIF_SET_FLAGS, unsigned long =
" flags );
>  .fi
>  .SH DESCRIPTION
>  This page describes the user-space notification mechanism provided by the
> @@ -881,6 +882,41 @@ .SS SECCOMP_IOCTL_NOTIF_ADDFD
>  ioctl(notifyFd, SECCOMP_IOCTL_NOTIF_SEND, resp);
>  .in
>  .EE
> +.\"
> +.SS SECCOMP_IOCTL_NOTIF_SET_FLAGS
> +The
> +.B SECCOMP_IOCTL_NOTIF_SET_FLAGS
> +operation (available since Linux 6.6)
> +\." commit 48a1084a8b7423642b5f17ca6202f6f277c5392b

Typo; you meant .\"
It's also repeated below.

Interestingly, this seems to also hide it as a comment, although
troff(1) prints a warning saying that something is wrong:

	alx@devuan:~/tmp$ cat comment.man=20
	.TH comment 7 2026-05-18 experiments
	.SH Name
	comment \- trying different comments
	.SH Description
	Here goes one comment:
	.\" foo
	Comment ended.
	.P
	Here goes another comment?
	\." bar
	Comment ended.
	alx@devuan:~/tmp$ groff -Tutf8 -man -rCHECKSTYLE=3D3 -rLL=3D64n -ww commen=
t.man=20
	troff:comment.man:10: warning: name '"' not defined
	comment(7)      Miscellaneous Information Manual      comment(7)

	Name
	     comment - trying different comments

	Description
	     Here goes one comment: Comment ended.

	     Here goes another comment?  Comment ended.

	experiments                2026=E2=80=9005=E2=80=9018                 comm=
ent(7)

I'm curious about what happens in the roff(7) language for this to work
as a comment.

> +is used to modify the behavior of the seccomp user-space notification me=
chanism.
> +.P
> +The third
> +.BR ioctl (2)
> +argument,
> +.IR flags ,
> +is a bit mask that includes zero or more of the following flags:
> +.RS
> +.TP
> +.BR SECCOMP_USER_NOTIF_FD_SYNC_WAKE_UP " (since Linux 6.6)"
> +\." commit 48a1084a8b7423642b5f17ca6202f6f277c5392b
> +Advise the scheduler to move the supervisor to the current CPU.
> +.IP
> +In workflows where the target and supervisor wait for each other
> +(do not execute in parallel),
> +this flag makes the context switches a few times faster.
> +.RE
> +.P
> +On success,
> +this operation returns 0;
> +on failure, \-1 is returned, and
> +.I errno
> +is set to indicate the error.
> +This operation can fail with the following errors:
> +.TP
> +.B EINVAL
> +An invalid value was specified in the
> +.I flags
> +argument.
>  .SH NOTES
>  One example use case for the user-space notification
>  mechanism is to allow a container manager
> --=20
> 2.52.0
>=20



--=20
<https://www.alejandro-colomar.es>

--3yrpuazjlsipp7vf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoK6NMACgkQ64mZXMKQ
wqnKkA//YnQ74ack/GmvjoaBPGj3cW0/2naRnReIsdDZ3De0gQmpCBJxed218kOZ
AdXJa760S6BFRc+XXgnLqW6ZAkDvmD7Z2Cm+1NXLzn5h5W+9pk2ACo8ELA07cr5O
nsL1dul2Xe5mCGIqRv+7kZU+A79+8TWIQ1DMvFe3N06GA6YlrJPHDbhz1spFcf72
4XovAzMAJu6ID38y1dvT3Fq1G/FZ6w7HwUFMxy2OgXyO4llL5xCY5edpAkc2xIlw
b+pLxQnaMMDq/qe+31UEayD/Inh+wQ6o7fFfknM1r3Cl03KXCSSJkv1TjA9geec1
pD3Ne7p2OWEY5I7w6a91eN6eIEuJ+9VbOtOVDvlS5y0LKsg8KSouUSI4o71uTnJv
+089U6um7cXPUeN+C9TAMHZNUqNGyL+upafsn+MDAM+si+ZBY7lnjMdnWgoDvjc7
wVZqESG58f2oX88XkA4ppnl6T3Wbjs3pO6g8tJopl+rhErF5L0IKgsK8f8IXOc6l
Y5zbiL/b1Tqg2cIVmwYv6YSXZyhjfe75XEWs/7yO+ylxeNcVrfaa9h7jYM0n8vJU
5MFeYN0a3nNE6mOOec7X+X3U4sK9GXl81kEu6nJgrky+cZ/kdU8PnsnF7d6FXYBK
VxcP33+NveYzgkny8MGiXKvitysWsrBnjn3pbmxkhZgV9az4EMU=
=cF2l
-----END PGP SIGNATURE-----

--3yrpuazjlsipp7vf--

