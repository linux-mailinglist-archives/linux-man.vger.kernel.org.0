Return-Path: <linux-man+bounces-4321-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEC2C81DE2
	for <lists+linux-man@lfdr.de>; Mon, 24 Nov 2025 18:19:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8A1CC346386
	for <lists+linux-man@lfdr.de>; Mon, 24 Nov 2025 17:19:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB315199234;
	Mon, 24 Nov 2025 17:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYN2wnoz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659B9339A8
	for <linux-man@vger.kernel.org>; Mon, 24 Nov 2025 17:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764004768; cv=none; b=Ea4r6Fq5DgThm+EgzRx9uYw1P1vxL3zTE3l82719mZRotHaR7r4hNyptv673JGFWOfUOgRS7/u6D2bxltV+1A7daiE1CuGzT0lmpqs/QOkKh8YuG/GJ0saWbZsA0uPVE+arKcIVtlLtUYkbBYWCCHfT9BKi7XFz6EarDescUI3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764004768; c=relaxed/simple;
	bh=qbq9gomg3aa46SF58zLrSrXSdSNKNyHcGCqU3pXtXCc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LkQJOuLY8PWoGwzotYT+DLfNNC+FV2R03Mc+rUNjf6bhwkjWp6fgD1Vsb7CZCIIsYZY9DYaQ3IEYGSSk8CmRe9drG4oB80GvQS6Bgcwzt42KWYvJ2O2AmbbDty8IKyP5D5MStJ25ZxpeLhqBx0mx/CAp6kh/bhFEWnaRnsaWhTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYN2wnoz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B1F4C4CEF1;
	Mon, 24 Nov 2025 17:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764004768;
	bh=qbq9gomg3aa46SF58zLrSrXSdSNKNyHcGCqU3pXtXCc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hYN2wnozSHdTH93dtHSnzTveSGeG3KjVXiQXYegUP593CcuqdweWGWqAog2hmk0A6
	 BnGSb4tt8N47vvYGk2HH7/Ln6dJj3us9hMd7hFA4BqAC0oq4Ep1tvTAeHyUOwQ8oQ+
	 juPjECodw7GomUQ4DT7bDFynF6YmD5C6XqSVNMoJPRO/YOYJ1lnfteU4NPxy9Q3O/h
	 aS17yeHGqSp234WNXO7oSXFGkkEbPWfk+71eTeSwZj+aLJ4WcPMfKrYsPbH75A1mBR
	 g/xAPt1MT4b0QPal27u70ZQNNN8Qb+Vk1k48BKCs9zOID9JAtrkRNMxznsRgx9QasB
	 vZLLKKoPzmPHA==
Date: Mon, 24 Nov 2025 18:19:25 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page dir_colors.5
Message-ID: <uhce4rvskpdxpnyahjyqgg2sut23bu3yvjkbcpr2tl3o6nytz2@47kdgr4crb6c>
References: <aKsmRo9hmWxmRoVK@meinfjell.helgefjelltest.de>
 <zx3expupb737dl6mcau3bifc63rmwiunqczamhnayh3cdjmyln@i7nvoe3gdsct>
 <aLXGHfO12bR3JWa8@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hblkcsaktx2iil3u"
Content-Disposition: inline
In-Reply-To: <aLXGHfO12bR3JWa8@meinfjell.helgefjelltest.de>


--hblkcsaktx2iil3u
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page dir_colors.5
Message-ID: <uhce4rvskpdxpnyahjyqgg2sut23bu3yvjkbcpr2tl3o6nytz2@47kdgr4crb6c>
References: <aKsmRo9hmWxmRoVK@meinfjell.helgefjelltest.de>
 <zx3expupb737dl6mcau3bifc63rmwiunqczamhnayh3cdjmyln@i7nvoe3gdsct>
 <aLXGHfO12bR3JWa8@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aLXGHfO12bR3JWa8@meinfjell.helgefjelltest.de>

Hi Helge,

On Mon, Sep 01, 2025 at 04:13:17PM +0000, Helge Kreutzmann wrote:
> Hello Alex,
> Am Mon, Sep 01, 2025 at 09:51:52AM +0200 schrieb Alejandro Colomar:
> > On Sun, Aug 24, 2025 at 02:48:38PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    From this point I<> in msgid are incorrect (maybe similar i=
ssue as in groff_me.7.po?)
> >=20
> > I can't find any occurence of 'msgid' in dir_colors(5).  Not even in the
> > git history:
> >=20
> > 	$ git log --follow -S msgid -- man/man5/dir_colors.5
> > 	$
> >=20
> > I don't find any similar text in any other pages either:
> >=20
> > 	$ grep -rn point -C5 | grep msgid
> > 	$
> >=20
> > Could you please check?
>=20
> For translators, each paragraph in a po file is a msgid. This is the
> po represenation we translators see. Sorry, I missed to filter this
> out.
>=20
> So the report is, that starting with the paragraph=20
> Any character (octal notation)
>=20
> The paragraphs are set in italics, while this is looking in incorrect
> to the translator (which is not me).
>=20
> I hope this explains?

Thanks!  I understand now, I think.  I don't see paragraphs in italics;
only 'nnn'.  It may be another bug in the tool that creates the po file.


Have a lovely night!
Alex

>=20
> Greetings
>=20
>         Helge
>=20
>=20
> --=20
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--hblkcsaktx2iil3u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkkk50ACgkQ64mZXMKQ
wqkX8hAAp//hYRBURwWm2ZaoF536vSFaxinBFp2CNMFd9FZO5SK+mATXqUY2MIDu
DGQ7U5FMuhiLjnukbPobpqi0X8ickeA+oEKULw76on9JNRmhnfjW/5U8jBpLsPIg
qOZuXsqcZoup8d9Sw+7uVzNso2dwzwronwcWRoWtwawHG7MVDJoRhvgHoFbuR2h4
CrY/SGefDKDFEvW3DOasDTBOaQG6ahoWqqxvlCjjwu2YiMDXnPt+xAo2Am7hj9NQ
xeL7J6XTF1iderCityaqCiz5dFNZAi6ChvObEEDMhC+JLSOj8Sbb8NzJPrJ5UkDL
tef6JLjSvhJKersgCfLiN9cIAD129X2sMV1LBn0xpogY2mnt+fTuH0SbaT7XV9Cn
dGF/LhVHFsLWPX72/m9sFZ7ZrH/cFU9RdVWgozXL9S41oGMNJsHgvqJ/yxQtsVRi
xVqyd3IzydmfdhLbaCXr6yT/x0sBobgdHj1IXc2MQqUeqVHBZoJlmboMsSqZFlFT
bXNkYhysUovZLmBfuXVkTXgCscBaG3Z5Qkhmikc9Si34cMOQjppjlE763hSHqiym
Yxm+Xfh5c/HXj8RAbYJbHbRKPCxJfFd2+OpCahiO64or70Nt/RVQVv9BiYV1zCh0
4qXXd8jnj7cXh7UeayflrA7B3VFUYgGjnZd3YUsrrTaJUVbT/Cc=
=h3o4
-----END PGP SIGNATURE-----

--hblkcsaktx2iil3u--

