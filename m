Return-Path: <linux-man+bounces-3912-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B91B8D79F
	for <lists+linux-man@lfdr.de>; Sun, 21 Sep 2025 10:37:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AFA27189BB13
	for <lists+linux-man@lfdr.de>; Sun, 21 Sep 2025 08:37:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AF1324336D;
	Sun, 21 Sep 2025 08:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciG89hfB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE157246763
	for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 08:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758443805; cv=none; b=UgwLYZEGMGWrOUGC217GUf+pBOb4VEiAKpJ33GNhXAXt1AKwUsJVWHU4r6J5djO85qoxmGqzuMGIpNI+u1rAmKJ/1lvt//gvy2TeciDaPFhAiBq0xsHcxBECann3ZpSBKDH78R133jqpM7kFHqRPh0EmASdxtFGmeYlMc8OPNQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758443805; c=relaxed/simple;
	bh=7dSZ/7nmht6ndZGG8ZxZniPV2IeqnxVaWh9k+4pCMNY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KRsDh8NPCYVmPZkcYZ1k9mBSLPvuBppAYUyZz0zb43i6ACEERuRSQm4W6oT4/1DxQV1GhjTrMgf+yWv+mzoUSkH/z4BO284KxoZw6pkP/zfXGEWYHm/8TtrRbezwCiavtuhH5QZaM75nuzsyNovvHjOAiU9vZ35iQACKhzw887c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciG89hfB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC8F4C4CEE7;
	Sun, 21 Sep 2025 08:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758443805;
	bh=7dSZ/7nmht6ndZGG8ZxZniPV2IeqnxVaWh9k+4pCMNY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ciG89hfBjGWYetVRx/tFydqalXvYePBw0cXfoQ/D5vxJgmIgcH5mngX6HIin7iDKi
	 F7OSmP1xHAbIdqI4T4LPNHHnefTT9jKogmcOXvAaqpa5xJV2M98ehmllz3DdEy78GA
	 dVUox52H6/dOsF8BmA/nx+x2phw5fxI013zLpdjaL5Yz3RbskdKaVizQKbiCTjDMKe
	 Um3prQ3nyx7+U0+LZKW/IbJW5ML/GIm6CdoK1iiLbDhppd8/Y3aT62RZG1dnpIXak5
	 +nRX7KamE3SDcB3sdYFjCV7GVueF4dsyGmQs6TcOHGFI9yhqq22j6W/So38YlW/ZKm
	 n+H1ziCuzLKrA==
Date: Sun, 21 Sep 2025 10:36:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: =?utf-8?Q?P=C3=A1draig?= Brady <P@draigbrady.com>, coreutils@gnu.org, 
	linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <bj4r4qq2xznfcr355p3fyyovswrbepco7rwyrgzlps3hezskw6@zrriag3wpau7>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com>
 <53jjjhuovjnbju4ex56hwoke2zz5rshxr6qjeqe3tidgcls4sw@zfnfbdktmtpb>
 <4e842b01-5251-495a-9a49-1ce59676acc9@draigBrady.com>
 <jcxx3nfilug5tfk7ktgr4n4sw3nsvympz7tslsblqlqxbm6ou3@hu34rdpdtajr>
 <87o6r4zy73.fsf@gmail.com>
 <nry5d4nhpdnujv63wyzxvuwkowzladgeqvjcqpm5yubd6p6xn2@qhce56dl465s>
 <87tt0w7mnv.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wxzcwx636qkxdvm4"
Content-Disposition: inline
In-Reply-To: <87tt0w7mnv.fsf@gmail.com>


--wxzcwx636qkxdvm4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: =?utf-8?Q?P=C3=A1draig?= Brady <P@draigbrady.com>, coreutils@gnu.org, 
	linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <bj4r4qq2xznfcr355p3fyyovswrbepco7rwyrgzlps3hezskw6@zrriag3wpau7>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com>
 <53jjjhuovjnbju4ex56hwoke2zz5rshxr6qjeqe3tidgcls4sw@zfnfbdktmtpb>
 <4e842b01-5251-495a-9a49-1ce59676acc9@draigBrady.com>
 <jcxx3nfilug5tfk7ktgr4n4sw3nsvympz7tslsblqlqxbm6ou3@hu34rdpdtajr>
 <87o6r4zy73.fsf@gmail.com>
 <nry5d4nhpdnujv63wyzxvuwkowzladgeqvjcqpm5yubd6p6xn2@qhce56dl465s>
 <87tt0w7mnv.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <87tt0w7mnv.fsf@gmail.com>

Hi Collin,

On Sat, Sep 20, 2025 at 04:02:28PM -0700, Collin Funk wrote:
> > This is what I'd use in a command:
> >
> > 	Usage: foo [OPTIONS] FILE
>=20
> Interesting, I like the documentation in --help. Regardless, it is part
> of the GNU Coding Standards [1]:
>=20
>     The standard --help option should output brief documentation for how
>     to invoke the program, on standard output, then exit successfully.
>     Other options and arguments should be ignored once this is seen, and
>     the program should not perform its normal function.
>=20
> My reading is that the mention of "documentation" implies more than a
> usage line. One can try to change the standards through the
> bug-standards@gnu.org, but I do not think you will have much luck in
> this case.

Yup, I don't intend to change that.  It's just my personal preference.

> >> Writing all of that in groff would be a pain. More of my time would be
> >> spent understanding the syntax than it would be focusing on the conten=
t.
> >> Texinfo's syntax is much more readable and easy to remember. And the
> >> HTML and PDF output look nice to read.
> >
> > I volunteer to maintain the man(7) source.  To me it's quite
> > comfortable.  When you get used to it, it's not bad.  The syntax is
> > actually quite simple.  You don't need to learn the full roff(7)
> > language; the man(7) macros are quite small compared to it.  mdoc(7) is
> > much more complex than man(7), for comparison.
>=20
> mdoc is the format mandoc uses for the different BSD man pages, correct?

Yes, the BSDs use mdoc(7) instead of man(7).  Some Linux projects also
use it (for example, nginx), but they're minoritary.

> > The PDF output of man(7) also looks nice.  Please have a look at the
> > PDF book of the Linux manual pages:
> > <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/man-page=
s-6.15.pdf>
> >
> > Or you can read single-page PDFs by running pdfman(1), which some
> > distros already package, or you can find pdfman(1) in the man-pages.git
> > repo (it's a shell script).
>=20
> It looks good,

I'm glad you like them.  :)

> but I still prefer the Texinfo PDFs.

Makes sense.  I don't intend to replace that.  I think it would be nice
to provide both.  Some details might not be necessary in the manual
pages, I agree, so they can be a short version of the info manual, but
the current ones are too lacking, IMO, and having them tied to --help
makes it hard to make them useful, since I also wouldn't want to expand
--help much more than what it currently is, and also maintaining
generated manual pages is less than ideal.


Have a lovely day!
Alex

>=20
> Collin
>=20
> [1] https://www.gnu.org/prep/standards/standards.html#g_t_002d_002dhelp

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--wxzcwx636qkxdvm4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjPuRIACgkQ64mZXMKQ
wqkd0RAAkkPUEbclKihH38+fmAsnQ8ETN90ii62JL7Qm1+mauvbpmqSq6exWsui6
tlNtP3MLQoJg9978GXk4TWJdkTvTuzboojM6HSTwPIeHvyvBwXFZWvvyTwK/y73n
pEBGBwAprkG2LhJUm9kGrxqLTJ44+mxOZaO2n1ovoQS8SHSTI1Lrtr6M50Tkh+aG
DGrgrDKwbVSSWAW5T/vniA/h4h/km/E1/SfgToWvg42zUDrZACrS8NUSFZhLpACo
eOCjwU/AaemcAjVUne2APE9eXECq6JDswJBdXjLCdfET+s4rHbL23PQuMKOJ5FWx
utQTB5k5TVevR1LhMMLNTKopwxM6m2+Yt8B3sBFuzm2GdbDXdMKTUnFw9MqZAAXx
vCQLffzM3n2cppIf2Nf+tzwrWM6thPq6b0UX0Nz3nUEgPBp86rUMA3V1a97J9mPu
rduYVEn2oriBvNpYIs0Vpvrpd3AXdqPy5aBTppcoHVPrj8Q58nyaT54bMugx90pI
nBvRbmuYRY5TUDrVr9rGdqshad1PTgXVRgNBVx0iJm/ozhhCvkNcg/Wjhj786rCa
pNLy/kuM+u+c9OGTP2o4cXR/8fo6wvZVzzNINlhmSsJsDrxbX1f7zLODd1INMSQk
IfQY9D6Epk5+MvDxpak4uYlCOWEzLO8qRehjRoeP2vyMmNr7/HU=
=yoSS
-----END PGP SIGNATURE-----

--wxzcwx636qkxdvm4--

