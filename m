Return-Path: <linux-man+bounces-920-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 033E78C5C62
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 22:41:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B1AB32811E6
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 20:41:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F9091DDD6;
	Tue, 14 May 2024 20:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c04mmRcO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364B3365
	for <linux-man@vger.kernel.org>; Tue, 14 May 2024 20:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715719270; cv=none; b=Pa6q4rAuCk5N7AE4wY5zyOvaW/afi4UBATAl5q1YVjoDyORfw32AZp3L5E6RURyQe5hKAvZgRpRn7RyCVfmhH/szVyMCqwnnUbD36UpH2PSsdQJprn9fkkIqkMjzGYldTe1Xht/MODLO3bteYMxW9cKN20IyWHAMgHl/lZwAx78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715719270; c=relaxed/simple;
	bh=UGzzTDdjVOEJjtn5N4KCQBrK5k3m6UU21I6Gyp3aHIo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b+0OycoWToAkLWuCG/Az4n0InO0jqa1/sPtVOGivzsUYC1IedZN2lSe6UO6Vwnxm8KvZDhUc6W8kpT6hmOXDE7ie7iMrU1pXlBPHaliCL8MapJ2vBgyyE7EivxbB+gV63i/7SUrz2gpwIXsMGBc8yVZdWei5D3+gcfA26XMZMDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c04mmRcO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFD00C2BD10;
	Tue, 14 May 2024 20:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715719269;
	bh=UGzzTDdjVOEJjtn5N4KCQBrK5k3m6UU21I6Gyp3aHIo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c04mmRcOupL+l3GWRkF/HTlSpiCSesds3AYxxg27Nftjb9b8mAop4FvIV7hK9NJq5
	 1KXZ12Z1k9cUR+5YTVrIEohegx+C9IjjFlo1z6pzDl0SDDM01C7k7tKFhOdESasyiU
	 J6Po1vyXvFgnVCuntqc/EaVdnvmMZIIkMHeSWx4Z+izFu5ysAL5SjFY14TqdFdEYFw
	 2XsAQ6w6SpiHQnT992lW0HUFiQGZ/GSnwszZn+N7KgjkKhRn6XYQ9zIAJc025rFt5I
	 7kZT6PduPH5tNOoq/w8Lz0SsQlGDs0BmqdTb5elOsBCPPNxEkbKYbLBqt50yfZJTAH
	 V/DknHvPbLi3Q==
Date: Tue, 14 May 2024 22:41:05 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Matteo Croce <technoboy85@gmail.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH v2] proc.5: document 'subset' mount option.
Message-ID: <p64gkg7kmeucfprmmkofwzkg4vt76kwr4p6fpqc6dks75o3hzp@rrum4fdfa5ny>
References: <20240514192110.84881-1-technoboy85@gmail.com>
 <kum6or4dlxvb3t3td5jcssv7pzwnbr3sygsowq4aqm6yrf5crd@os52p4yb24kp>
 <20240514201538.7by4jdrrlhac3kmf@illithid>
 <CAFnufp1U8Tp2hpgAPi-aEhXdVVoUqeZdqbHd1RbYiu_OqQRLEA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ziogn32tqmscbswc"
Content-Disposition: inline
In-Reply-To: <CAFnufp1U8Tp2hpgAPi-aEhXdVVoUqeZdqbHd1RbYiu_OqQRLEA@mail.gmail.com>


--ziogn32tqmscbswc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Matteo Croce <technoboy85@gmail.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH v2] proc.5: document 'subset' mount option.
References: <20240514192110.84881-1-technoboy85@gmail.com>
 <kum6or4dlxvb3t3td5jcssv7pzwnbr3sygsowq4aqm6yrf5crd@os52p4yb24kp>
 <20240514201538.7by4jdrrlhac3kmf@illithid>
 <CAFnufp1U8Tp2hpgAPi-aEhXdVVoUqeZdqbHd1RbYiu_OqQRLEA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFnufp1U8Tp2hpgAPi-aEhXdVVoUqeZdqbHd1RbYiu_OqQRLEA@mail.gmail.com>

On Tue, May 14, 2024 at 10:25:50PM GMT, Matteo Croce wrote:
> Il giorno mar 14 mag 2024 alle ore 22:15 G. Branden Robinson
> <g.branden.robinson@gmail.com> ha scritto:
> >
> > Hi Alex,
> >
> > At 2024-05-14T21:54:42+0200, Alejandro Colomar wrote:
> > > > +.BR subset "=3D\fBpid\fP (since Linux 5.8)"
> > >
> > > This can be simplified as:
> > >
> > > .BR subset =3D pid " (since Linux 5.8)"
> >
> > It appears to me that all of the equals signs in mount options in this
> > page should be bold.  They are literal, after all...
> >
> > So this would simplify further to:
> >
> > .BR subset=3Dpid " (since Linux 5.8)"
> >
> > ...which might look almost non-mystical to man(7) novices.
> >
> > Regards,
> > Branden
>=20
> Could be, but that could be done all in once in a further refactor, I
> don't want to change the document style within this change.

Agree; a separate patch is better for that refactor.

And yep, the =3D is better as bold, since it's also literal.

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>
A client is hiring kernel driver, mm, and/or crypto developers;
contact me if interested.

--ziogn32tqmscbswc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZDzGEACgkQnowa+77/
2zIELw/9GAKbQr7MLO02TC6hA7fNDo0NSrLqGA6OtcvJ4er1GZQ7rRYydhIKynhT
8DxN77cSZpY3bHYkQQ9D/6wdC4EW7cj18RmSZiWGh/KACy0JZ9NV6WEUP57IZmgn
NMjrbpw9Ze7MXWv0s8ehq7ZHfwYpRyIhwCZKSG3FYhIyc0Vxt5zL02Aimth8d/T+
RqowxKEbMJl7eJyunUPMn8PWb3vG87wqfOoK1emqGM4Xv1JAHZvnnRZqUJRBUETF
8jpW3TJPen5M+GC9pQjo4WQFCyWctMtoD02HwAfAl7KWoxZHzhCvMBnzB30mK8gG
Yd3Shtyd2iYUUHnQhftjap0B8PBElJJHEZjkbU+PW76XxPkC/ltAnc6TRcFKSTHF
1htvc9nJqVf6kjLVDicrQyph9CFa6IBzzvfSP8qNaLGuqvs1zXgndyBggkbpw7ok
J5QNKj0cmOUen29SZK8tD779hvpx3m8n1L6RCm8BMLRd1zQXYW3eGr16i3k2sdwK
FDX9YDKb+uEsAwhNnrLMj+RvEiQyrE1k7d0uV2HKYH2p2i/oq/O6GLDKHbdiy0Rc
tvH9bfmAEaExnUvtvAL7XllCutE3ltKyBE1rQVYL5B7Y58oGhziGXRvrX/BU0YkG
B3FDWr4UY5kcgvnvpByAmozsM+XKEE81L/xP0pBl5ONH/+sPmNk=
=++FZ
-----END PGP SIGNATURE-----

--ziogn32tqmscbswc--

