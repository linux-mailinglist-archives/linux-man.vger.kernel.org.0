Return-Path: <linux-man+bounces-5460-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ADloNqyU+GnRwgIAu9opvQ
	(envelope-from <linux-man+bounces-5460-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 04 May 2026 14:44:28 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4204BD1C9
	for <lists+linux-man@lfdr.de>; Mon, 04 May 2026 14:44:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3671A300E6B5
	for <lists+linux-man@lfdr.de>; Mon,  4 May 2026 12:43:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 499E63D5227;
	Mon,  4 May 2026 12:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dx61mAd1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DCE3D47D7
	for <linux-man@vger.kernel.org>; Mon,  4 May 2026 12:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777898576; cv=none; b=f3NKXQH3eIAqg4aHiKNbjYEtdftX59hc9j/fsDESjDRXXvPJ7A2KxQc/tlNN0fGgnHrOxsTOSA2jRzFeaLd7dm2M//35beWWsY+J12nfyzfrMa068F2wVveX17W6HUzJhubFxCL8+GuaX8BcYk0tZHRSv3UPVcBrWaPZ6rM0+qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777898576; c=relaxed/simple;
	bh=e0B48FPRJjg7SFH1Lh8crFh8Y3ShEwNDNzwX7hN8B6Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RbmoKKbHfEqIx4/7FJPkJ+i0lJvD7FzJgji+HOIcFMEZ4cpJ8QUnY+/WdUSKQTykqHh0AtfNdJppln598Swb/ZpVsH6DBL4GIuu3tRVi/G/UAKVrH0QnTU2YB80u6QbJHVLqXGfrOvqIY1w90wQ48cCd0C/SI167xZEKcd7kF/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dx61mAd1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F30FC2BCB8;
	Mon,  4 May 2026 12:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777898575;
	bh=e0B48FPRJjg7SFH1Lh8crFh8Y3ShEwNDNzwX7hN8B6Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Dx61mAd1lQqpmvXPmlQN/y1fc/YK/1XOLchAS1l194iUHlrbA2hwbxhgQL0IZNClS
	 ircAmp5woKvISASMB/oQyf8/ntuINXE60xkoL1FMrh+c5n5uLXtEJd2hSz1hyKBJMW
	 wLE2Dvx/BGiLm/ZSqqMietyXFP7ZEEPKXA19G4gXA7dvEZyAkoJ7fY7m+JNnNSWHtd
	 PSD/9RiF3TXHcWJ0/4QU8sF5Fp4veONY1M4ALTt7ZGcA/6F6CyJo+ebepxZ5FVwcPZ
	 stqNeVBIRgngjob1UBxLYiAhde5jdpEFZ9+FCfVzZGHXtbQlSPt++hSxvYcbgfUpdK
	 Aqss9qYrXAd4Q==
Date: Mon, 4 May 2026 14:42:52 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Schneider, Robert" <robert.schneider03@sap.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH v1] man/man2/perf_event_open.2: ffix
Message-ID: <afiTPYb36pa7a8Pz@devuan>
References: <VI0PR02MB10873E01B8EE1A99CDFD03F0F8F342@VI0PR02MB10873.eurprd02.prod.outlook.com>
 <afe3MfB6E5aT0LB-@devuan>
 <VI0PR02MB1087335B7BD1EAC7E8A617C968F312@VI0PR02MB10873.eurprd02.prod.outlook.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qpqdkprduvbj2lpk"
Content-Disposition: inline
In-Reply-To: <VI0PR02MB1087335B7BD1EAC7E8A617C968F312@VI0PR02MB10873.eurprd02.prod.outlook.com>
X-Rspamd-Queue-Id: DF4204BD1C9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-5460-lists,linux-man=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sap.com:email]


--qpqdkprduvbj2lpk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Schneider, Robert" <robert.schneider03@sap.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH v1] man/man2/perf_event_open.2: ffix
Message-ID: <afiTPYb36pa7a8Pz@devuan>
References: <VI0PR02MB10873E01B8EE1A99CDFD03F0F8F342@VI0PR02MB10873.eurprd02.prod.outlook.com>
 <afe3MfB6E5aT0LB-@devuan>
 <VI0PR02MB1087335B7BD1EAC7E8A617C968F312@VI0PR02MB10873.eurprd02.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <VI0PR02MB1087335B7BD1EAC7E8A617C968F312@VI0PR02MB10873.eurprd02.prod.outlook.com>

Hi Robert,

On 2026-05-04T10:57:13+0000, Schneider, Robert wrote:
> Hi Alex,
>=20
> Thanks for your hints and links! And for being kind even though you have =
everything documented =F0=9F=98=8A
> I broke my machine so I had to reconfigure git etc., I hope that I did no=
t forget anything.

Thanks!  For some reason, the patch didn't apply with git-am(1).
However, it applied with git-apply(1), so I was able to handle it.

>=20
> Robert
>=20
> ---------
>=20
> Fixes .TP list for PERF_SAMPLE_BRANCH_CALL_STACK.
>=20
> Fixes: bb7e6ff0 (2015-07-23; "perf_event_open.2: 4.1 PERF_SAMPLE_BRANCH_C=
ALL_STACK")

Heh, nobody has read that documentation in a decade!  :)
The commit that added the documentation was obviously wrong:

	$ diffman-git -U5 bb7e6ff0
	--- bb7e6ff0^:man2/perf_event_open.2
	+++ bb7e6ff0:man2/perf_event_open.2
	@@ -773,11 +773,14 @@ DESCRIPTION
	=20
		     PERF_SAMPLE_BRANCH_IN_TX (since Linux 3.11)
			    Branch in transactional memory transaction.
	=20
		     PERF_SAMPLE_BRANCH_NO_TX (since Linux 3.11)
	-                   Branch not in transactional memory transaction.
	+                   Branch not in transactional memory transaction.  PERF_=
SAM=E2=80=90
	+                   PLE_BRANCH_CALL_STACK (since Linux 4.1) Branch is part=
 of a hardware
	+                   generated call stack.  This requires hardware support,=
 currently
	+                   only found on Intel x86 Haswell or newer.
	=20
	      sample_regs_user (since Linux 3.7)
		     This bit mask defines the set of user CPU registers to dump on sampl=
es.
		     The layout of the register mask is architecture=E2=80=90specific and=
 described in
		     the kernel header arch/ARCH/include/uapi/asm/perf_regs.h.

> Signed-off-by: Robert Schneider <robert.schneider03@sap.com>

Thanks!  I've applied the patch.


Have a lovely day!
Alex

> ---
>  man/man2/perf_event_open.2 | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/man/man2/perf_event_open.2 b/man/man2/perf_event_open.2
> index df0a199e..ae588451 100644
> --- a/man/man2/perf_event_open.2
> +++ b/man/man2/perf_event_open.2
> @@ -1547,6 +1547,7 @@ .SS Arguments
>  .BR PERF_SAMPLE_BRANCH_NO_TX " (since Linux 3.11)"
>  .\" commit 135c5612c460f89657c4698fe2ea753f6f667963
>  Branch not in transactional memory transaction.
> +.TP
>  .BR PERF_SAMPLE_BRANCH_CALL_STACK " (since Linux 4.1)"
>  .\" commit 2c44b1936bb3b135a3fac8b3493394d42e51cf70
>  Branch is part of a hardware-generated call stack.
> --
> 2.43.0
>=20
> Robert Schneider (1):
>   man/man2/perf_event_open.2: ffix
>=20
>  man/man2/perf_event_open.2 | 1 +
>  1 file changed, 1 insertion(+)
>=20
> Range-diff against v1:
> 1:  bc30096a ! 1:  f2c247d1 [PATCH] man/man2/perf_event_open.2: ffix
>     @@ Metadata
>      Author: Robert Schneider <robert.schneider03@sap.com>
>=20
>       ## Commit message ##
>     -    [PATCH] man/man2/perf_event_open.2: ffix
>     +    [PATCH v1] man/man2/perf_event_open.2: ffix
>=20
>          Fixes .TP list for PERF_SAMPLE_BRANCH_CALL_STACK.
>=20
>     +    Fixes: bb7e6ff0 (2015-07-23; "perf_event_open.2: 4.1 PERF_SAMPLE=
_BRANCH_CALL_STACK")
>          Signed-off-by: Robert Schneider <robert.schneider03@sap.com>
>=20
>       ## man/man2/perf_event_open.2 ##
> --
> 2.43.0
>=20
>=20
> -----Original Message-----
> From: Alejandro Colomar <alx@kernel.org>=20
> Sent: Sunday, 3 May 2026 23:01
> To: Schneider, Robert <robert.schneider03@sap.com>
> Cc: linux-man@vger.kernel.org
> Subject: Re: [PATCH] man/man2/perf_event_open.2: ffix
>=20
> Hi Robert,
>=20
> On 2026-04-29T17:35:30+0000, Schneider, Robert wrote:
> > Fixes .TP list for PERF_SAMPLE_BRANCH_CALL_STACK.
> >=20
> > Signed-off-by: Robert Schneider <robert.schneider03@sap.com>
>=20
> Would you mind adding a 'Fixes:' tag?
>=20
> See <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CON=
TRIBUTING.d/patches/trailer#n16>
> and <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CON=
TRIBUTING.d/git#n46>.
>=20
>=20
> Have a lovely night!
> Alex
>=20
> > ---
> >  man/man2/perf_event_open.2 | 1 +
> >  1 file changed, 1 insertion(+)
> >=20
> > diff --git a/man/man2/perf_event_open.2 b/man/man2/perf_event_open.2=20
> > index df0a199e..ae588451 100644
> > --- a/man/man2/perf_event_open.2
> > +++ b/man/man2/perf_event_open.2
> > @@ -1547,6 +1547,7 @@ .SS Arguments
> >  .BR PERF_SAMPLE_BRANCH_NO_TX " (since Linux 3.11)"
> >  .\" commit 135c5612c460f89657c4698fe2ea753f6f667963
> >  Branch not in transactional memory transaction.
> > +.TP
> >  .BR PERF_SAMPLE_BRANCH_CALL_STACK " (since Linux 4.1)"
> >  .\" commit 2c44b1936bb3b135a3fac8b3493394d42e51cf70
> >  Branch is part of a hardware-generated call stack.
> >=20
> > Range-diff against v0:
> > -:  -------- > 1:  d597dc98 man/man2/perf_event_open.2: ffix
> > --
> > 2.51.0
>=20
> --
> <https://www.alejandro-colomar.es>

--=20
<https://www.alejandro-colomar.es>

--qpqdkprduvbj2lpk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmn4lEwACgkQ64mZXMKQ
wqldcxAAhUDDdH4sKi22q70ITngY76fG8kypBrgEWnX+1JBJ1cNz/xA+XO+To2EP
4jGaXjAuOAakOs7juT6QP7xfD2qxffXapFMqVsrh2ETSQA6FS6RZi5Q+rRrQ9+YV
pXq/NBm01+p2DkYjUtvLUoWWyqJy8ppG3CrEveUo2ZG7zsGYiRInoJx/jBMN+BwA
XBUXGRee/xXrIifHLWsau+TU2Hvd26eNtjQvD/Yfe08RFcyJXUi5DPFAo7Ty6udT
KniK1P5EMmOxvt0by7lAWmNQijo+4015fb76Gj4+ZxgSjcTfTjl5jQuUIIrvNAqf
8Rc04sE/Xcrp150SudimuwwiIgux65eG9cN7c7+f78vs7IQcO6xpjddzVfE6Qwv+
IyGL1VEUamR92/M9LFWIRX7nR38xTh3qvaLPCeKLy2Tm1LBQ2KoWiV5WaxHbx/cB
JhWKX0d0HgANqLFlJTpaxP0b+ylmDBQ34uDAFICLsBXnPvsIFvEytAemfttqi2oM
9rddTCVxKjXQKa7tgNyftuzXv8KIp0pYiEzeBybvIODm6nB02A2h+6IxG3yNTezZ
v49Zj1UFLVccVmjabZTkZjSmhFn4KCWfykvu1ADqSH4MkaR4WrvxHUhCcgqcbSpC
Pt8oARXcu+ia0QoAIJ2TySoxM6eJi9wAQJahndmzWzKCUBF76tk=
=/Ve5
-----END PGP SIGNATURE-----

--qpqdkprduvbj2lpk--

