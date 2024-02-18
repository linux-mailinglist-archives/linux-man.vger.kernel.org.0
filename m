Return-Path: <linux-man+bounces-453-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E825859710
	for <lists+linux-man@lfdr.de>; Sun, 18 Feb 2024 14:09:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B09431C20A40
	for <lists+linux-man@lfdr.de>; Sun, 18 Feb 2024 13:09:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8B6465BD5;
	Sun, 18 Feb 2024 13:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqftp/sq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 881997492
	for <linux-man@vger.kernel.org>; Sun, 18 Feb 2024 13:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708261743; cv=none; b=Qk5AtpXkdpzO/Gzha4FYKP5ckGeeoBaEYn5r5ibKUqHdVbZPwzupQm+2XLxCcBE9oOReTs/h5Z99MDlmqd4KMTWZfMFHKspKXnuvC9oT0+pcAFR0ACggEYNu/apljsfY7rAnpG4r5m1nZH0fGJzvFitmIPUj0hZ3oorhTlVBgHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708261743; c=relaxed/simple;
	bh=iOhiM05B5mESinvhQouiFxzmqfe4qcAo2MvvXBiUiqI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XfmKDPxZAa0qEPQ1+AcIqqEp0ZwMb9rmyfbNSWnmjmFx+QmFccfj0ka+zZsGISB3v7weQ5cB5oZTSWI4pRhqj9t/gzpj0woKi9Pf14y2Cs0UZxMCL5/ZmZDDFs1E3oPXiaQGC3wb5WdX6sANI1geHsSHtwBzsh8OMxeQPaFrxl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqftp/sq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4897CC433C7;
	Sun, 18 Feb 2024 13:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708261743;
	bh=iOhiM05B5mESinvhQouiFxzmqfe4qcAo2MvvXBiUiqI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uqftp/sqpr92sf5LAtogjdVNRr3j/IcQetTFHw5iDsTcpaV1MHAjTPB3dhB9ENFIY
	 JjXXoliDS9gJzkC9mA3ZEmjTbIqORxwCipbKRwjkIE5XxlZY8h5tX48tbp0iXIvafk
	 4Ss9fJVrx34lOQSdI9q1zrcQMVcKoUDe13BMlsePBLf/Vkz7Plg60ePtPR6aaYu+T3
	 TspU2OjoudFUlwpjpnvG3E2P446tq0cnlRibRb86EjiZJFfwDBnBP4OpoiezEG3S6W
	 9fX1fKlKzCQbKZHEJEDJZeUdPeTpVDGS81JyWjPfGivlD5Qhx6eJVPwhMie/WMJu9h
	 IxJ53rK81NXUA==
Date: Sun, 18 Feb 2024 14:08:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Wielaard <mark@klomp.org>
Cc: linux-man@vger.kernel.org,
	Alexandra =?utf-8?B?SMOhamtvdsOh?= <ahajkova@redhat.com>
Subject: Re: [PATCH v3] close_range.2: Add _GNU_SOURCE and unistd.h to
 SYNOPSIS
Message-ID: <ZdIBa2VRKK_06f9X@debian>
References: <20240212120704.1638500-1-mark@klomp.org>
 <ZdFY3PwhYhhIlUIg@debian>
 <20240218120035.GE16832@gnu.wildebeest.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="A+IXVgbizN43To6V"
Content-Disposition: inline
In-Reply-To: <20240218120035.GE16832@gnu.wildebeest.org>


--A+IXVgbizN43To6V
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 18 Feb 2024 14:08:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Wielaard <mark@klomp.org>
Cc: linux-man@vger.kernel.org,
	Alexandra =?utf-8?B?SMOhamtvdsOh?= <ahajkova@redhat.com>
Subject: Re: [PATCH v3] close_range.2: Add _GNU_SOURCE and unistd.h to
 SYNOPSIS

Hi Mark,

On Sun, Feb 18, 2024 at 01:00:35PM +0100, Mark Wielaard wrote:
> Note that there is now one line which is > 80 chars.
> You can fix that using this from the original fix,
> that splits and indents the comment on two lines:
>=20
> > > +.BR "#include <linux/close_range.h>" " /* Definition of " CLOSE_RANG=
E_* "
> > > +.BR "" "                                  constants */"

Ahhh, I see.  I'm using groff from git (what will be groff-1.24.0 some
day), which changes the default indentation from 7 to 5, which is why it
fits in the line for me.  Thanks for reporting that!  I'll fix it in a
moment.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--A+IXVgbizN43To6V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXSAWsACgkQnowa+77/
2zIBShAAlqN2EjQAldxo+RYsJiUd1mDi9bI9YjIjMtk2dpMX9PD1wJ4MZzGFABzg
v/FYT3qBxa1E00pvTBuA7EqOZ2GMZh+VUOWV5vTT8C5l2U4BXWupsppgFHPS+VdT
GcSWdaQ9DrfMPrYbAejVyC66oOC32sn1OnWbQ31wd/vMT5VU3a78T3d319ElbTM+
J6niYMS03AcwzHQfsw3ot1fFhAzz+Wu/TLgeMq/+VKxqtSabBpYW2UVJKFjewYMX
UEtlDyc17ij22xWgXuDglwbwJLelyL8c+QA9EauA+VrjeDtVUCFD2enLj1R3hJQM
gtbwnpvia8/lvCJZMa8FSRC4d0ySMZfvWJaGBoxfJ6Y36OoSdoyTMC21x7rBa6ql
qo1bYIHZkjHj6oPIAQY0FrWYMI+PauRM98GpA5W/twS9F4HuW38/WU6gF9XUmB7Q
eBm3Zcdtm47b4d9xVXajnODbr0j0wau8nql2VxiT/JJc9O26c6AKTyDokImtOzv3
ocdSODRwyQEa/Sy0r2Uw+sBPMBnCiRXvxSRshCvjhBKqcmWQALhgI1f4DE/EZ+Pc
2vH6/sDZle2OrouCPlzAKG1cgq3DuGTHiv/syiGH8UR3xm9wPKKqJUZWzJ8mClT2
43eAmoOTIaK9JFiBISzbleYIioUVQ9y4gpGUvpP0iVdZNXR4UV8=
=Lw4c
-----END PGP SIGNATURE-----

--A+IXVgbizN43To6V--

