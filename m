Return-Path: <linux-man+bounces-1141-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AB490478F
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2024 01:13:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38DE02857EE
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 23:13:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A199A155C9D;
	Tue, 11 Jun 2024 23:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpMsjFcZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6299E1553B5
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 23:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718147634; cv=none; b=p4zKVPkp+mVYvq6frQ+xa966Out/orgmnadR04qAsYzyoPXm5ZuznuB8Fl7JunaDVs5kSspFvWx0RxXh+Rie7KXxeqsaEcjFDobCcq8gukLY6iuEh1JXjHN51V0oAayesF4vpPDQ6wWdxymCanOGA73+w1kUsfDKiGiEaYgy1/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718147634; c=relaxed/simple;
	bh=Vr48SPEesvYXYA8VRDbsFGnbF7YNt6/KF8fUKGpu/0g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uIbunB+SgM5qp8Xqvf5FJg49xCC6+2cO7AY6HdQ76PyuPlKZ6W3jb24ZFH+S3OBwN1NDQ9j4ltFsgx15A65gyVYfq/tW4oZFweKlaPft9Q59tVZ0Wwc8TYKBUI+KmaHTR0u2yeFKTFgFJdD0yaagX4ktHJrJQhrF/eXPQiRZMDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpMsjFcZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E0D8C2BD10;
	Tue, 11 Jun 2024 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718147633;
	bh=Vr48SPEesvYXYA8VRDbsFGnbF7YNt6/KF8fUKGpu/0g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TpMsjFcZ1cO1Ug7/uhKH0n18O3ev8XOmmJzwQspwG4Kl3l+TKD8zkFz8Ouqjnnz5u
	 o0M8H76l+uVeyY8vyD4hvPZg2A7eUh9V1+YRXMRvhW9JSfeCFludj4iFCwbt2qhMuG
	 Kvk0/4j3rPk6KAbsXH5QWf1G2QWl3i3J8DJ/66Xv3iWTHQsYoU1Wgax7i3ITy4HQ80
	 uBT/G2L7mavhOAMNhK1KVv3qKaoC8Ou2Ge9X25lrHegwFJdi2EK1uya7wsaevQaoHB
	 I8Ud1oP92/jkgrptNYyDworZKxQvCwyvOTEA3Iy4XLWt30JvtOnnpTmLTq6KXiR6fK
	 g2o4WuromlQow==
Date: Wed, 12 Jun 2024 01:13:51 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 02/12] tzset: state vars unspecified if geographical TZ
Message-ID: <izj3lenrw6477riv5cie424jro7tmp6gywqi3xcclg26ut3jqm@hzets5i3vcki>
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
 <20240611153005.3066-2-eggert@cs.ucla.edu>
 <j5shpmuai76b6lmdlhbhkhmp6elftrqzytkq5cuyujqbvonpfc@rdotn2xryam3>
 <0cae0f46-3da4-48a8-9cd1-3632f92d3755@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c3dyiqck6q25i4ds"
Content-Disposition: inline
In-Reply-To: <0cae0f46-3da4-48a8-9cd1-3632f92d3755@cs.ucla.edu>


--c3dyiqck6q25i4ds
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 02/12] tzset: state vars unspecified if geographical TZ
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
 <20240611153005.3066-2-eggert@cs.ucla.edu>
 <j5shpmuai76b6lmdlhbhkhmp6elftrqzytkq5cuyujqbvonpfc@rdotn2xryam3>
 <0cae0f46-3da4-48a8-9cd1-3632f92d3755@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <0cae0f46-3da4-48a8-9cd1-3632f92d3755@cs.ucla.edu>

Hi Paul,

On Tue, Jun 11, 2024 at 03:30:54PM GMT, Paul Eggert wrote:
> On 6/11/24 13:53, Alejandro Colomar wrote:
> > > +The
> > > +.BR tzset ()
> > > +function initializes these variables to unspecified values if this
> > Can you confirm that the wording is precise?
>=20
> Yes, see:
>=20
> https://austingroupbugs.net/view.php?id=3D1816
>=20
> > If it initializes to unspecified values, I guess it's legal (IIRC) to
> > read them (even if useless).  Am I understanding correctly?
>=20
> Yes, so long as you've called tzset either directly or indirectly. If you=
've
> never called tzset then it is a gray area (are they initialized? it would=
 be
> strange if not, but the standards aren't clear).

Thanks.

> By the way, a FUTURE DIRECTIONS section of POSIX will plan to remove the
> variables (see the URL above). Perhaps you could add a FUTURE DIRECTIONS
> section?

Hmmm.  There's prior art in POSIX, so I guess we can use that name.
Wanna send a patch or two?  :)

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--c3dyiqck6q25i4ds
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZo2i4ACgkQnowa+77/
2zLm1Q/+MwX6o6pOhfP7Ui2fvI87J3wcBhNwWbeF5hK4PcDxVOXQpB+Rb5vJNcZP
H0iRKkqw9GyMjopVcYEWibd5CMcfm+sWYMWFOWirDmPsuc8bNbU1OP6hg/+/EJN0
hAW4c44A17dopDA1AZAts6DqoRK7xUyCLm3BP8r7AiH357hrEqsyc0NHRx4jK5Z8
WGFH/0NgMGVfjEJc4fmjnJIO/PMSxtxwqR3Y9Cev7RHlC13OfSLyGPoura4N449P
7jImdWnwz35OSC03cKMjq/Ap1wO+b+B58vjPDqtjAgFQvvOYmCeFlD0x8UrqhRGT
os02egcon+wy0B/CW5Zo46Zou2XWK4BOuAP+dsWNXq0UTE02WXbRVJK6bVNOuAJo
C6OimHZ0uxEhmJpYAnUF0Ym8BKmtVlaBZyK+hSfTBYmhV1CXOkC0sOJ7g+q1hgFj
ctbh4I7GwPKZnUJDzr7JHeLSUes6WY1TzMkojNE+sqXyZjJdkXGSHstgQ3ywu/Zg
fb5bfkaiPnyVDqa2k8HPd3427Ou9YpIodi/vxBc0qORsY0zagO8ubwwzvKGtM5Yg
dE8+85XOoxqZIeXWyNBfcjBNLg8pxMd1xFidZdkkQHCdqoYOgGhgGFH3Yy5thIJZ
AuKHIjqlzJBEdi1PHjo4iWCbHoP1f5A3Ehqk/GujRuGkQWBjQNs=
=v6lX
-----END PGP SIGNATURE-----

--c3dyiqck6q25i4ds--

