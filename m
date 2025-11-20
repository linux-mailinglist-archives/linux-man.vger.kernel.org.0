Return-Path: <linux-man+bounces-4301-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E36C4C744FF
	for <lists+linux-man@lfdr.de>; Thu, 20 Nov 2025 14:43:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 539F130395
	for <lists+linux-man@lfdr.de>; Thu, 20 Nov 2025 13:37:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3109433F395;
	Thu, 20 Nov 2025 13:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svAms6WA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E515033F389
	for <linux-man@vger.kernel.org>; Thu, 20 Nov 2025 13:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763645804; cv=none; b=cu7iaC/irMQ2elDtEduSOt2qALydl1gAAM0YoM7DKHtl9SQqp/PLITDQNg+ZbvLV6Jyk2gHZKaV2+yQxRl42JPFx+Ji2LrsDhF4XZXrm3odmu97tXS+/qAmpvj0MRlL8xcY8+cTsBFrSPEUI67sf81RXJqMVtZ78u58XjZJRZIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763645804; c=relaxed/simple;
	bh=QHCf89quOb0uJL9e9hlY5XQQWMTkBt2sJbQm7Pqgg/A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KMHwRSMeflqVQ20ZvctyMwXxaZoCXa0CpqAOiRBDeEawpL9ozwNQpyp37mAygE15rF5xrS7MeccewfkGiqD04vmSoYfJm1XiH+VLBxE7vYJA4JeocCePxu5DVuNtfwwDZRIhEsKGWw2Jbhr9dzkM3XnG8YaYQ8AsI5zsRJtl/ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svAms6WA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84F74C4CEF1;
	Thu, 20 Nov 2025 13:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763645803;
	bh=QHCf89quOb0uJL9e9hlY5XQQWMTkBt2sJbQm7Pqgg/A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=svAms6WAGHb79ucWT/kWRlw+813eydk+0LmrqJg7UmrPD2nTx5G48xggIj04A4z1L
	 dIz4shyDZ5Ll7Hk1nf/OiijuxafUMYRNsTeMQfTTR4F8/4XUg4RjVciSnl7RAgVQU5
	 PxZTP1gInEIPVktTuD7r0k2RZMMEQ+jMEf3x/LfViYfhXMj6JkV+xt9DLWH01Y6awX
	 GXWCmd7Ku0ik/4lo4aXbOGWApSBEPUmr3ztNWs7S1mKNk3bux4UhHSerURTRNGvLMU
	 0PAU7nZwO3o5iERj9G/aO8P45YU9JfdPuWXsFWfaS3kGONWqd9upbgL48/27PYC6Gm
	 GARTRf0vv41LA==
Date: Thu, 20 Nov 2025 14:36:39 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man <linux-man@vger.kernel.org>, 
	"Andries E. Brouwer" <aeb@cwi.nl>, Vincent Lefevre <vincent@vinc17.net>
Subject: Re: Status of restoration of copyright statements to the man-pages
 source files?
Message-ID: <unavr5u2uynqfvj7iymgvsptq4k5s5b4ex7havl36zro4bbua4@fqpjhnsuu5ln>
References: <4d829996-690c-4411-bb75-207ef1239b49@redhat.com>
 <b6prio6ck56jekesw5v5gmmzrkfqdtjqwaq5jzgugkhy7tznc6@jhag73ju3qq3>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6tj3hekmkmdhks25"
Content-Disposition: inline
In-Reply-To: <b6prio6ck56jekesw5v5gmmzrkfqdtjqwaq5jzgugkhy7tznc6@jhag73ju3qq3>


--6tj3hekmkmdhks25
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man <linux-man@vger.kernel.org>, 
	"Andries E. Brouwer" <aeb@cwi.nl>, Vincent Lefevre <vincent@vinc17.net>
Subject: Re: Status of restoration of copyright statements to the man-pages
 source files?
Message-ID: <unavr5u2uynqfvj7iymgvsptq4k5s5b4ex7havl36zro4bbua4@fqpjhnsuu5ln>
References: <4d829996-690c-4411-bb75-207ef1239b49@redhat.com>
 <b6prio6ck56jekesw5v5gmmzrkfqdtjqwaq5jzgugkhy7tznc6@jhag73ju3qq3>
MIME-Version: 1.0
In-Reply-To: <b6prio6ck56jekesw5v5gmmzrkfqdtjqwaq5jzgugkhy7tznc6@jhag73ju3qq3>

Hi Carlos,

On Wed, Nov 19, 2025 at 10:50:14PM +0100, Alejandro Colomar wrote:
> Hi Carlos,
>=20
> On Wed, Nov 19, 2025 at 04:14:10PM -0500, Carlos O'Donell wrote:
> > Alejdandro,
> >=20
> > What is the status of restoring the removed copyright notices?
>=20
> I'm going to do it soon.  I was prioritizing some GCC patches these days
> because of the Stage 3 deadline.  Copyright is the next large thing I'll
> do.  I expect it to be done before the end of year, and certainly before
> the next release.
>=20
> > At the end of June we concluded with the following:
> > https://lore.kernel.org/linux-man/u2ogua4573d2xm2p2oiuna67kydkr3e26pt6l=
ixeidezdw34dg@nvn64na3cptt/
>=20
> Yup.
>=20
> I met with Michael Kerrisk in Paris, and we discussed this.  He didn't
> like the change and asked me to revert, so I'll revert it for those that
> haven't given express consent.

I've created a list of people who gave consent for the transformation of
their copyright notices.  I've included the Message-ID of the email in
which I understand they gave their consent.  Some of those emails were
sent to me privately.

I'll revert the change for people not included in this list.

	Stephan Mueller <stephan.mueller@atsec.com>
	Message-ID: <52939046.zMMnDpVMM9@tauon>

	Stephen Kitt <steve@sk2.org>
	Message-ID: <20250509150459.06f9fab7@heffalump.sk2.org>

	Marko Myllynen <myllynen@redhat.com>
	Message-ID: <CAC9tSfZGRZPe001qLA3p3U8vcpxkeBgLLVoT-Z9M2gcbJVbPdw@mail.gmai=
l.com>

	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
	Message-ID: <c684271a-9c1c-4c91-9ef8-db44cb924320@efficios.com>

	Carlos O'Donell <carlos@redhat.com>
	Message-ID: <d9b988f8-ebd9-4a0e-aa27-cab14f1f3a96@redhat.com>

	Josef Bacik <josef@toxicpanda.com>
	Message-ID: <CAEzrpqcsZHpcjNzCRhuXnkfEivv1HPNEwu79YUikszBijtz2uA@mail.gmai=
l.com>

	"Serge E. Hallyn" <serge@hallyn.com>
	Message-ID: <20250509134320.GA703704@mail.hallyn.com>

	=D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>
	Message-ID: <53bvrkso3m5lgdvxmx4qmncyxq6xuu6ohrnt3bl7j5f3mbqlzb@tarta.nabi=
jaczleweli.xyz>

	Thorsten Kukuk <kukuk@suse.de>
	Message-ID: <658e1be26d1a1e35876d61ae8a3144a1@suse.com>

	Michael Haardt <michael@moria.de>
	Message-ID: <20250509135518.HdQYC%michael@moria.de>

	Heinrich Schuchardt <xypron.glpk@gmx.de>
	Message-ID: <38C59C54-AB13-47B9-B10C-790EA3AC4C06@gmx.de>

	Carsten Emde <C.Emde@osadl.org>
	Message-ID: <f94e2c11-d5c5-4ff3-a5ba-85790316cb1d@osadl.org>

	"Robin H. Johnson" <robbat2@gentoo.org>
	Message-ID: <robbat2-20250509T153512-150386020Z@orbis-terrarum.net>

	Greg Banks <gbanks@linkedin.com>
	Message-ID: <CH4PR21MB4267A5A17BDD166BE6994827A18AA@CH4PR21MB4267.namprd21=
=2Eprod.outlook.com>

	Sam Varshavchik <mrsam@courier-mta.com>
	Message-ID: <cone.1746807943.344622.14798.1000@ripper.email-scan.com>

	Bill O. Gallmeister <bgallmeister@gmail.com>
	Message-Id: <B2ED8AD9-7DE1-45AC-AD34-DC4CFB168137@gmail.com>

	Kees Cook <kees@kernel.org>
	Message-ID: <202505090930.726717E3A3@keescook>

	Christoph Lameter <cl@gentwo.org>
	Message-ID: <3b12f92f-3223-488d-6481-f8f010258d12@gentwo.org>

	Andrew Morton <akpm@linux-foundation.org>
	Message-Id: <20250509141935.ca5d5f154867815a67043627@linux-foundation.org

	Oron Peled <oron@actcom.co.il>
	Message-ID: <5681932.rdbgypaU67@sodium>

	Tycho Andersen <tycho@tycho.pizza>
	Message-ID: <aB4bk7udjMKo336Q@tycho.pizza>

	Goldwyn Rodrigues <rgoldwyn@suse.de>
	Message-ID: <ctmjbulmw4mufufga2yngtdaosoielokxcwmtezg2iv45f3whe@jbpr4gelhc=
hs>

	Sean Young <sean@mess.org>
	Message-ID: <aCGqMIVCU2Wwtc2x@gofer.mess.org>

	Dave Martin <Dave.Martin@arm.com>
	Message-ID: <aB4N4eD1gbZi6Cao@e133380.arm.com>

	Stefan Hajnoczi <stefanha@redhat.com>
	Message-ID: <20250512185159.GJ141177@fedora>

	Thomas Gleixner <tglx@linutronix.de>
	Message-ID: <87wmalk5wx.ffs@tglx>

	Bill Pemberton <wfp5p@worldbroken.com>
	Message-ID: <c8616ad9-dd8f-43e2-8d70-fbd42aa557ab@worldbroken.com>

	Nanno Langstraat <nal@ii.nl>
	Message-ID: <19af811e-ad9a-432d-8ba0-3dcf7cd62485@ii.nl>

	Tomas Pospisek <tpo@sourcepole.ch>
	Message-ID: <0a7d6858-3ecd-2a77-69bc-497df658f44d@sourcepole.ch>

	Josh Triplett <josh@joshtriplett.org>
	Message-ID: <aCKGvbHHRoS87ioM@localhost>

	Florent Revest <revest@chromium.org>
	Message-ID: <CABRcYmLmW32ErsaxsYEikbdPEa4UtHLP6RdUD+6CimFcvMV3rw@mail.gmai=
l.com>

I think I'll only revert proper copyright notices, and not other notices
such as "Foo Bar fixed X".


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--6tj3hekmkmdhks25
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkfGWEACgkQ64mZXMKQ
wqmAXw//VJ4X/Y7bTqmmNlWTs1VyPubXweGb3MdiLxTjp2kEjaBfkMNKAFuC5bqZ
hT8n7eY+G9eKEDKVHrosDYi1lttD5tH2DqUl8Jnf2OgmoC5uA4Trz0rAjwygyLCn
Z/FmIztugJSUsblBgipU+sKxqF/AzouN0wbQezrx0Qrrd/I68fCtlGa8MSk2LFQL
DN46HNpvxCEIdW/Jz8E1sG6uzn+fx0rPmLPSH7G/uWQ9sFE8taOMvS4ueuC3cLw6
iuD5Otua0FIqgk1Hs82cUe3tKO1Hsl6CxnZPFBMRmyopLFANWQXYmj7weV8Fnj7o
8roK0++My4zBPNOu7bi7uJcK7nW57l6UprmuuaK10pfUnMcEODwIp/L/nnThAIAZ
BkdOFqBXQxuT78WKkA77aNSj80uGSADIAIoL1KLl9KYelwVSI6vy10Lq/hs5GBU2
JN3+eoTgoeYGuTn4vsrjY1zrhWs+Ct+Xmgt6RywCN3fhT+175Mf3aG5msSqIGJnS
DjECtldTTcWtxprt4bbjMSyrMCvLlRWrE0NI6X9bdZaYpNhAn9dBa/4H1Va6ZNOW
GfR/3BI32fdSOjDTYwN1mMZD5YhN9xeY7F71HZ+aq266aZJvuJ/+KiNwEKE+I6LC
y3nwJDtdpQXgyd4aUTO17RbeSHWNhghxuIa7YRAhZoJMQrzD99I=
=SRXN
-----END PGP SIGNATURE-----

--6tj3hekmkmdhks25--

