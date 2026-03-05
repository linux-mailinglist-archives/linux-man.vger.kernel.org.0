Return-Path: <linux-man+bounces-5240-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJo9MoAHqmlwJwEAu9opvQ
	(envelope-from <linux-man+bounces-5240-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 05 Mar 2026 23:45:20 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F8D219079
	for <lists+linux-man@lfdr.de>; Thu, 05 Mar 2026 23:45:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CB352300B99D
	for <lists+linux-man@lfdr.de>; Thu,  5 Mar 2026 22:45:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE2A63644A4;
	Thu,  5 Mar 2026 22:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdXyWX/F"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1FB235F166
	for <linux-man@vger.kernel.org>; Thu,  5 Mar 2026 22:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772750717; cv=none; b=qNVgD9pm3OjDKYF7ZR5wgkCcrze2MzXrtsi9HHDtw4qhy6gy1lgEJgzZy5ZlKKtJ9Eejv2uNPfqIvoCPJdLPCHB7UCdoJV1j816BHVvyMlpXRKqfnwU06FVZGdah02PgX36VV5ZyLXjtQoWWf+G93d0KrVgSECd0AGIdcjBCpks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772750717; c=relaxed/simple;
	bh=g5Ujyk5wPfnNUwoF31SxnfUZhGHv9JE/klfFBplqDnE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jtSWmPsFCzxTUg06GeTcgGqMdbEgaUccffCFKf8SRz7s3SHsRUTiAPhAgCpY9RKR6scItmoM2Ywa24NmQbgulKL2C5Ocxlfvuzx5rMjChVCCSDRBf8+QuVV3T+mIgbM4ivRiuAbHCrD8fK0J6lp/doMV6tpL3VWivS4/giifBHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdXyWX/F; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A061AC116C6;
	Thu,  5 Mar 2026 22:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772750717;
	bh=g5Ujyk5wPfnNUwoF31SxnfUZhGHv9JE/klfFBplqDnE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sdXyWX/FPKTQAZRMB40kgnU8WukorsvFGjAo075aqlNr2QaPT/68+Wth8YLjMjM+z
	 LMq8uS9Lz0JdYs556U/xXl62UUy4/dumfb3ilInsdQDRY7OPmBrcJ+9HpfYBcG43MT
	 NlkZHjqjSI8PFu8VNQZNnGSBNclds3ncW73DPbvX2s/OPOicfDzaclkZv3xyujE1tJ
	 N6zzLQ+4ZSInD00mez0RCk21s0o46/fvSrHfAzZrc1c+opFVOv8UTtRTV31FlxlALC
	 iJLov4u+CR+uPxYi+BrymqD/sPFwgV9XD8F1Gi3sb/C1mSBJwryvC4YhPcEFj0itD+
	 WMEZcUEqp4FpA==
Date: Thu, 5 Mar 2026 23:45:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] man/man2/statmount.2: Document STATMOUNT_BY_FD
Message-ID: <aaoGRLXhJfpUz04o@devuan>
References: <aZzuI5pPe19gFvPf@devuan>
 <ef5a337e52f904d7eeb1e3fa82a09b04b46a4860.1772075365.git.b.sachdev1904@gmail.com>
 <aahG1Mb0oRBEG6sy@devuan>
 <aam6Yn6ZJhM9PQup@devuan>
 <20260305222431.geycb2pof2k7sdba@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3pekj7ljrpa5uamk"
Content-Disposition: inline
In-Reply-To: <20260305222431.geycb2pof2k7sdba@illithid>
X-Rspamd-Queue-Id: 31F8D219079
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5240-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action


--3pekj7ljrpa5uamk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] man/man2/statmount.2: Document STATMOUNT_BY_FD
Message-ID: <aaoGRLXhJfpUz04o@devuan>
References: <aZzuI5pPe19gFvPf@devuan>
 <ef5a337e52f904d7eeb1e3fa82a09b04b46a4860.1772075365.git.b.sachdev1904@gmail.com>
 <aahG1Mb0oRBEG6sy@devuan>
 <aam6Yn6ZJhM9PQup@devuan>
 <20260305222431.geycb2pof2k7sdba@illithid>
MIME-Version: 1.0
In-Reply-To: <20260305222431.geycb2pof2k7sdba@illithid>

Hi Branden,

On 2026-03-05T16:24:31-0600, G. Branden Robinson wrote:
> [CC list trimmed way down since this is a *roff/formatting issue]
>=20
> Hi Alex,
>=20
> At 2026-03-05T18:19:30+0100, Alejandro Colomar wrote:
> > BTW, Branden, I'm getting a diagnostic from groff:
> >=20
> > 	TROFF		.tmp/man/man2/statmount.2.pdf.set
> > 	! (troff -mandoc -Tpdf -wbreak -rS12 -rU0  <.tmp/man/man2/statmount.2.=
pdf.troff 2>&1 >.tmp/man/man2/statmount.2.pdf.set) \
> > 	| grep ^ >&2
> > 	.tmp/man/man2/statmount.2:155: warning: table row does not fit on page=
 2
> >=20
> > But the PDF looks good to me.  Would you mind looking at that page and
> > telling me what you'd do with that diagnostic, and whether I should care
> > about it?
>=20
> I can't reproduce this diagnostic with groff 1.23.0 or 1.24.0.

Huh...  I'm reproducing it on my server, but not on my desktop.
On my server, I have:

	GNU troff (groff) version 1.23.0.1254-19a18

On my desktop, I have:

	GNU grops (groff) version 1.23.0.2695-49927

I'll assume this is a fixed issue, since the newer groff(1) from my
desktop doesn't reproduce it.

>=20
> > 	.tmp/man/man2/statmount.2:155: warning: table row does not fit on page=
 2
>=20
> This warning means that a row of the table might be vertically
> encroaching into the footer margin; in extreme cases, might overprint
> the page footer itself; and in really loony cases, format text beyond
> the bottom of the page.

Yeah, that's what I was expecting, but the page renders fine, and I
don't see anything near the margins, which made it weird.

> My copy of the document is this one:
>=20
> 	commit 7178f0e15db66a3616a900fc8a4007466633159b
> 	Author: Bhavik Sachdev <b.sachdev1904@gmail.com>
> 	Date:   Thu Feb 26 08:40:16 2026 +0530

Yup, that's correct.

>=20
> $ ~/groff-1.24.0/bin/groff -t -ww -mandoc -Tpdf -rS12 -rU0 -z \
>   man/man2/statmount.2 2>&1 | grep . || echo NO DIAGNOSTICS
> NO DIAGNOSTICS
> $ ~/groff-1.23.0/bin/groff -t -ww -mandoc -Tpdf -rS12 -rU0 -z \
>   man/man2/statmount.2 2>&1 | grep . || echo NO DIAGNOSTICS
> NO DIAGNOSTICS
>=20
> As you can see, I've turned on _all_ warnings (`-ww`).
>=20
> Looking at the table source:
>=20
> $ sed -n '154,171p' man/man2/statmount.2
> .TS
> lB l.
> STATMOUNT_SB_BASIC      /* Want/got sb_* */
> STATMOUNT_MNT_BASIC     /* Want/got mnt_* */
> STATMOUNT_PROPAGATE_FROM        /* Want/got propagate_from */
> STATMOUNT_MNT_ROOT      /* Want/got mnt_root  */
> STATMOUNT_MNT_POINT     /* Want/got mnt_point */
> STATMOUNT_FS_TYPE       /* Want/got fs_type */
> STATMOUNT_MNT_NS_ID     /* Want/got mnt_ns_id */
> STATMOUNT_MNT_OPTS      /* Want/got mnt_opts */
> STATMOUNT_FS_SUBTYPE    /* Want/got fs_subtype */
> STATMOUNT_SB_SOURCE     /* Want/got sb_source */
> STATMOUNT_OPT_ARRAY     /* Want/got opt_{num,array} */
> STATMOUNT_OPT_SEC_ARRAY /* Want/got opt_sec_{num,array} */
> STATMOUNT_MNT_UIDMAP    /* Want/got uidmap{_num,} */
> STATMOUNT_MNT_GIDMAP    /* Want/got gidmap{_num,} */
> STATMOUNT_SUPPORTED_MASK        /* Want/got supported mask flags */
> .TE
>=20
> ...I don't see any reason why you should get that diagnostic.
>=20
> 1.  You're not using any text blocks.  Text blocks are formatted in a
>     diversion and contain (line) breaks, so they can get "tall".
>=20
> 2.  You're not using any other features to make a table row "tall", for
>     example by performing "local motion" with the `\v` escape sequence.
>     Formatting equations in a table cell is the more traditional means
>     of encountering this problem.
>=20
> Can you reproduce this problem from the command line, without using your
> Makefile?

Yup.  On my server:

	$ groff -t -ww -mandoc -Tpdf -rS12 -rU0 -z man/man2/statmount.2 2>&1 \
	| grep . \
	|| echo NO DIAGNOSTICS;
	man/man2/statmount.2:155: warning: table row does not fit on page 2

Using

	$ groff --version | tail -n1
	GNU troff (groff) version 1.23.0.1254-19a18


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--3pekj7ljrpa5uamk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmqB3kACgkQ64mZXMKQ
wqmoaBAAtXq5xurpnJ5KSngY02bGGMtpw68Vd3jQMlpsiBSo0oRbSgr7L1B0WJG4
BCxEuvJ1GtTNBuSeZAUVDiB1UQoWGxc175atOA10uB+ImsrykZLy0JQUlCCz/nWe
KasWiDxw4dR46WDjmxDRbRB0KWCelxIY9mByT3dYsShasJ3yAA5zhv6kJcOIik+Q
xjuH0nZ5TivT0r7w4IgtTL8KSbAmN4c8ovehp0zHuxXYYPvhYZGrlWiFuEI9n9XK
yie7LO7YAmzJCZnwF4ZPydnuooX+ilBOoxaSwIES3vnZuja40sgPgtkfKN4nQCP2
wgg4FiigsNotekcU04lwFpewvgazpCrNn2UiXZnoGBntx9OTdRA5xGiXuyQC4izI
PiiKyBKepRGm7UtehZfCJKbO4pBA2TVd1djfmpQcKy7FvIOWdEvrf+835Izfcm76
+nyqInnHx7C83BiU/fOLURkFPMh3b/LCfuNCxRS/1zCTIZ5n3lK4ljjzjgv++xmd
A6fpI4cNheU7Zz/Hnxedu4A56NWk3aVbKVfOm9Sz3iGI2c9laTvAkruVmVS0TlnW
brHWNeuUAKiFn4qK0noBSl8o6UUfEa27QfpywEI92ZJgSrPHUKxjIDIp7nUFXNU7
Rolim/jwfqv0LZ6LLAQM0mHOua/W9oLn67lFnVfh0NQc3sCXMp8=
=dJTA
-----END PGP SIGNATURE-----

--3pekj7ljrpa5uamk--

