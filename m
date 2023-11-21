Return-Path: <linux-man+bounces-128-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C8A7F2D8A
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 13:48:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 93392B2128F
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 12:48:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03BB327467;
	Tue, 21 Nov 2023 12:48:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQs6lCiz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC340440E
	for <linux-man@vger.kernel.org>; Tue, 21 Nov 2023 12:48:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2E06C433C7;
	Tue, 21 Nov 2023 12:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700570883;
	bh=oBlawQmRInaQgpuVwqTEUsSAo+um8n3T6+oBcwKzTK0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SQs6lCiz0oZr6Wf1Fqwh42ZyOi/iEqIrGhcHKSHZx7Vq6HL7V4eMYnLkqqr1KKkZT
	 9XuVRSWSxLqCNZOt5Vc5lOAewT3TGe22EjoQ5uuVX9fqj6znDpPVQSSaBqUySpOqom
	 x127hA+PyiR1aQu6n0DwN0m/WKAUt7BVUU+54uBb71kZ1Se1j7n9iPnKeVahbv33Gw
	 Oiurp3MA2hqLudmZEw7IrZSdLwLr8I0MHuR0/Fj1LrWZ0BNHSe+wdteJmyx/GXXLMN
	 WfiqT3010Kw5J/XWf53NHNZQrW6bsW8PRt+8S3Rmv8fKh0VhO6m9+BONAtKvRr+KPD
	 dvZbDr9u3O6hg==
Date: Tue, 21 Nov 2023 13:51:25 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bagas Sanjaya <bagasdotme@gmail.com>
Cc: Seamus de Mora <seamusdemora@gmail.com>,
	Linux Manual Pages <linux-man@vger.kernel.org>
Subject: Re: Add sub-topic on 'exFAT' in man mount
Message-ID: <ZVyn1bGkfq5SjAQ0@devuan>
References: <CAJ8C1XPdyVKuq=cL4CqOi2+ag-=tEbaC=0a3Zro9ZZU5Xw1cjw@mail.gmail.com>
 <ZVvs3fgkANj9BSYh@devuan>
 <CAJ8C1XOZqA=T0z5eHTSdXvpMzBZKUmYs-9=bBUfy_Ok5wSUN5Q@mail.gmail.com>
 <ZVxSrmdVkalf3FL9@archie.me>
 <ZVyBmFI_TvmJkaN1@devuan>
 <ZVyXdZ0MYBFyr1xG@archie.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vViB5czFcw7WWMWS"
Content-Disposition: inline
In-Reply-To: <ZVyXdZ0MYBFyr1xG@archie.me>


--vViB5czFcw7WWMWS
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 21 Nov 2023 13:51:25 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bagas Sanjaya <bagasdotme@gmail.com>
Cc: Seamus de Mora <seamusdemora@gmail.com>,
	Linux Manual Pages <linux-man@vger.kernel.org>
Subject: Re: Add sub-topic on 'exFAT' in man mount

Hi Bagas,

On Tue, Nov 21, 2023 at 06:41:41PM +0700, Bagas Sanjaya wrote:
> > > On Mon, Nov 20, 2023 at 05:44:40PM -0600, Seamus de Mora wrote:
> > > > Uh, OK... stupid question first: Where is ./CONTRIBUTING?
> > >=20
> > > It is in man-pages.git tree [1].
> > >=20
> > > Thanks.
> > >=20
> > > [1]: https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree=
/CONTRIBUTING
> >=20
> > Yes, it is in the root of the source code repository.  Since you sent
> > the mail to the correct addresses (alx@ and linux-man@), I assumed you
> > had read at least the head(1) of that file, since it's the only place I
> > know that documents that.  I'm now curious: how did you know the
> > addresses to write to?
>=20
> Observing the mailing list [2] AND read that file in man-page.git tree.
> For the kernel proper, I always look in MAINTAINERS.

Ah, no, I was asking that to Seamus.  :)

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--vViB5czFcw7WWMWS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVcp80ACgkQnowa+77/
2zLydBAAm3P+byfC3OPbqonNEDXQ6M9uC4+H0yLcbuS6IvF8Gqx3ijy1S82vZwuv
za8cobD4Hng/hFlMI4Mw8dd7ij+cyHAcx4LF05tLC8CGwXRZdSo5FUNTMmlhfUPR
7OELbriWBn9U1MDqlYREiSxyHHLSkVGBkhFQmqU7RpbpmNsdmRy6UB5JcXK259iT
NOawhr/elPvDeJqS8pNa8k+lKRBnUwsHlQMciWbx/hOn57ZfBr7XY0BWCYF7WdP7
fIiS2ZTmn8fXPYr53rT8ia3j2BnXlUQPkFiAFzfl+ABD0FO3+QDOV+o5cdGBk5ph
9YFOK+CWUebZNmI8PUuVWBD0JkeoxfeGxLImKEmw4rivVH4ycfFi7q0Z1opeVwjB
XYW6q3FbVuCBEhcEwCuVUA7ojhxet6zJxW3MQxsZiP0h5Sl4TCHI64jF7rWHAz1x
ycbFZOT9oYPInQ0l3NTfK8oyk5P/+jPXdRhu8CbBLOWlSKM66LiMRGH/Gu/t1Mym
fmR6ZmrzfS0c8nkbbPRG+CY2s9OmVHlKhZmRc7exYyNR8SFAEhVFnjBeiGJgKlTM
XVeceU2ITjO9pIhaGh80JGb72KFNiUgA3B9qkcMIMywwVCehXIskhxiNKPaEThEl
ZfwhgX+7lfGL6hyz1inlGIQUti17nVXlbw7ue/kuTf/0FCFwO/A=
=6c9h
-----END PGP SIGNATURE-----

--vViB5czFcw7WWMWS--

