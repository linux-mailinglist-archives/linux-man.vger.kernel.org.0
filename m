Return-Path: <linux-man+bounces-2093-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FDE69E04BC
	for <lists+linux-man@lfdr.de>; Mon,  2 Dec 2024 15:23:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B2C431611B7
	for <lists+linux-man@lfdr.de>; Mon,  2 Dec 2024 14:21:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62B28202F7B;
	Mon,  2 Dec 2024 14:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqYolVzc"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EB1203717
	for <linux-man@vger.kernel.org>; Mon,  2 Dec 2024 14:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733149284; cv=none; b=Zehnk89T3u8kYt7HEyBYfnKuEpmb5VNakWzXox98GjwNlllhjDCkrhpaPk535gwBgQryVgHEZhOjsyUASvDhdo3mndC8K58+3IDuFtSHN20UPS69Et9RnJ3G7z/jqndQv6WO9Xv8CsRNoQ4OjPK/db4HAbFn+A/k8W0pT++Rw+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733149284; c=relaxed/simple;
	bh=wSctZrA9lVGIxKJ2F1ldB0RZ6xTRu7jOxQeez3ARPN4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oMVZECSHw/xAjthikE/14+PgZhpcxEmSTM6oGAfIwyZ03BSFKiaqXOA7S+M2SkJlvFjBph+PPOUGvVe9c4tV63P8Mc7AJuQAtXbq4KVgXoMwhaeOoJXPlauy0bs57p5BxEovGGi6pHe2PKU2njOQaJIKr1FJ83TBgsSbBhvBRSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqYolVzc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01C35C4CED1;
	Mon,  2 Dec 2024 14:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733149283;
	bh=wSctZrA9lVGIxKJ2F1ldB0RZ6xTRu7jOxQeez3ARPN4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EqYolVzcp3Vc3qKdIpmi62EmeR7JAWHQwJM4Wci8j+ukRzTLF1d5nRje2nxPkhyyR
	 whhY7IjEbPMOc1yl1ShlvBV6FbOwhKydL+ykb6qTA7D5PHoYSAYJZur0W0c+YgCYSM
	 hzQKzV5r3ssrst4uYR0GJRqmevz9t2vdMGjVsTjHVifvoQFP438KGiRm3fncbQTh3b
	 MDmjUXSVkxLVwca1Q7Pcx6JVXD7ZqvgSCSJJDKadguNpZZfrgWjQvQ7YirtPV2HFT6
	 DuJcUz7vnUI6mhuHLYAEwEyz474x3hAy86cP2KpfdJk5fCSYG2u5448IpBa8r79GXr
	 pr37WOQxAzb3w==
Date: Mon, 2 Dec 2024 15:21:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: Jann Horn <jannh@google.com>, linux-man@vger.kernel.org,
	Suren Baghdasaryan <surenb@google.com>,
	"Liam R . Howlett" <Liam.Howlett@oracle.com>,
	Matthew Wilcox <willy@infradead.org>,
	Vlastimil Babka <vbabka@suse.cz>, linux-mm@kvack.org
Subject: Re: [PATCH man-pages v2] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
Message-ID: <20241202142119.jdum36vancxhotxk@devuan>
References: <20241129155943.85215-1-lorenzo.stoakes@oracle.com>
 <CAG48ez308HQ1XOKtZM7pDVq8tG5LSnD-7jSx9NF79CpALwPD5g@mail.gmail.com>
 <7a4bf410-09b7-4d88-bd4e-aaae5282cb37@lucifer.local>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ydxapdr3ztqlv3xs"
Content-Disposition: inline
In-Reply-To: <7a4bf410-09b7-4d88-bd4e-aaae5282cb37@lucifer.local>


--ydxapdr3ztqlv3xs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH man-pages v2] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
MIME-Version: 1.0

Hi Lorenzo, Jann,

On Mon, Dec 02, 2024 at 02:05:54PM +0000, Lorenzo Stoakes wrote:
> On Fri, Nov 29, 2024 at 07:13:22PM +0100, Jann Horn wrote:
> > On Fri, Nov 29, 2024 at 4:59=E2=80=AFPM Lorenzo Stoakes
> > <lorenzo.stoakes@oracle.com> wrote:
> > > Lightweight guard region support has been added to Linux 6.13, which =
adds
> > > MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
> > > call. Therefore, update the manpage for madvise() and describe these
> > > operations.
> > [...]
> > > +.TP
> > > +.BR MADV_GUARD_INSTALL " (since Linux 6.13)"
> > > +Install a lightweight guard region into the range specified by
> > > +.I addr
> > > +and
> > > +.IR size ,
> > > +causing any read or write in the range to result in a fatal
> > > +.B SIGSEGV
> > > +signal being raised.
> >
> > Single-word nitpick: Maybe remove the word "fatal"?
> >
> > I think the term "fatal signal" normally refers to a signal that is
> > guaranteed to terminate the task (that's how the signal handling code
> > uses the term, more or less); but a SIGSEGV caused by VM_FAULT_SIGSEGV
> > can AFAIK be handled by a userspace signal handler.
> >
> > SIGKILL is the one signal that is always fatal; the kernel can also
> > send other signals in an always-fatal way, like with force_fatal_sig()
> > or force_exit_sig(), but those are not used for VM_FAULT_SIGSEGV.
> > (Those functions are mostly for cases where we can't continue because
> > something is in an unsafe state, like if a signal return failed and
> > the register state might now be messed up.)
>=20
> I think there's a bit of a disconnect between the meaning of a fatal sign=
al
> in userland and the kernel, from the kerne's perspective as per
> fatal_signal_pending(), it is, as you say, SIGKILL.
>=20
> From a user's persepctive, and as per sig_fatal(), it is one that is, by
> default, fatal if not handled.
>=20
> So I think here it's fine to say 'fatal' in the latter sense, and the fact
> we immediately mention SIGSEGV clarifies in what sense we mean 'fatal'.
>=20
> The intent here also is that a user would treat this as a fatal event, a
> thread that accesses a guard area is accessing memory that it shouldn't.
>=20
> However I also see it from your perspective, I mean we say what signal
> we're sending so it's not hugely necessary and eliminates a possible
> confusion.
>=20
> Not sure if Alejandro has any objection to this turn of phrase?

I agree with Jann.

With your interpretation, fatal SIGSEGV is redundant, as SIGSEGV is
always "fatal" in that sense.  It's better to just say SIGSEGV.

In Jann's more formal interpretation, fatal SIGSEGV means a different
thing.

I prefer just SIGSEGV.

>=20
> From my perspective I don't think it's too problematic to leave it in, but
> if it's easy for Alejandro to pull out I have no objection.
>=20
> If people feel strongly + Alejandro would find it easier, I could just se=
nd
> a v3 with it removed.

Yeah, please send a v3.  Thanks!

Have a lovely day!
Alex

>=20
> Thanks, Lorenzo

--=20
<https://www.alejandro-colomar.es/>

--ydxapdr3ztqlv3xs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdNwl8ACgkQnowa+77/
2zL4Gg//SKZyZOS6vaJ2Y29L/sN5g6Sv+0YlX6V0zXh3PxB9X9dK61QNo4+8HClx
0bJ8Fn/VkBznzF5qY/f3F2M54+QybK1Heq+eW5OV6MnImYSH2Bhy7KefoSG9dYzx
veya5nuZbjQWTOGzQXioSGUpZ4U9ls1rFtBJqJTqH0SDHDeMOOd7z2nbdKBHsshe
GLOaeIFOscitpyarg6RAtgv59vVOBgOI0XikTsfwghJmSfsX9riHDEV6Oe4KkxBU
6mA8BOkX7WJijRpwk28JTTkuDM9ZMTxSnxUvGu5q/LbaGPSnRZruCxgHv1cDun68
GOmNLWNtVgKxZrJzPqYzbbs7rUF8GZ3DzIxlvBgHMwCyrjC0oOumy5CFVTnlpBqL
U4aoyTTINevg1pI2KN1DD6MtOB4P4dgplWPIEk7Ggp4nY+unZe35u2ZrJUbPzQmz
cFMhTUENhldFuUFS8M5z2XUSlnnzzVMg7v4kjhMDZ+Q8nJHZhLjtpk5CflTRuPIO
SUzHoIGCnColBE9462xLzsuIli5LMVvSfdAkJd4URkOiBUNzN3wK0ZxUV4L9CHE2
nAdAB4c/S8LUurzYLpv9zH4VWyeMtpie0RjHEaFFMdAI6VgO84ttyLp0kjtQv2j+
ps5CWU+7I/pRmk7XLPhuu+ECw/nnjrVV70SwhUcsxEuVRLVZjPU=
=Cdw2
-----END PGP SIGNATURE-----

--ydxapdr3ztqlv3xs--

