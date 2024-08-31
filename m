Return-Path: <linux-man+bounces-1746-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A7A967391
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 00:27:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5374EB2166B
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 22:27:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E24C16F27D;
	Sat, 31 Aug 2024 22:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7TcT4q2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D69314C5A9
	for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 22:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725143262; cv=none; b=ScdbzkbEuIE1T93zh+Ew7xLxhb1es6DbOVqWGXJW0e8UU4akg+cftdivvGAqbO235DFxAjUARkqzdO6pSGe6wG5sayL+hS8W15N0H87AJ1EWtySZ5SRqVhRoFVYK+AndQggY6q6SJOUR6tFo8Glrpfj2agd5d7S6LgXRK9tNerE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725143262; c=relaxed/simple;
	bh=lPIVeepvWnvsKKZoGVImD6j/kdZd4inv0Rm0zaEXVtc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BBjwx9KG/gcy83B+s3467SrNSGwlWRQTdwtkrpyXnJnsBIyScX60rS5sAoiWkWqR25gYe0wn36Qj0eHSItH67AfD7CtbWtGLxfgLXnkUMHSqf9OGsvOus0oL8k8K7TjHpg6AvRXkdHo/Fb/mDhU3IEdLKn3/76zVt6wmDC+/OVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7TcT4q2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1135C4CEC0;
	Sat, 31 Aug 2024 22:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725143261;
	bh=lPIVeepvWnvsKKZoGVImD6j/kdZd4inv0Rm0zaEXVtc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I7TcT4q2H3fH6MqXNQSUcOGqXpN5Oq6/7q0tyN6vonG8LpTGY9vRKp2MFWVHSc2/t
	 hBW0V9UvCRJXnqHvr8VB45QZ2ODzxAi2nyiBfH47p2eoE+rsp7LcRuqoufONxOdQVq
	 PiKtPDD2Cul5xQ3cpmE8pbV4hcS9ZwFi5ZTeD/9fFBn7kDT3XbD/6EMCedJVCCaE5r
	 aUDS6Ih2v8QffLKTG7SSBADhHlvkR7aWoM+e6sEYVBXdrUS0f4CWy2DZ2S6BgQKY5k
	 jMD8hXzBkecp4Eim1HzLlB2ciJJrIZ9AzuVT4XNcWbeAbIxLjP5g2iTvG8gMZUMqjc
	 ZQfnTZF/6nm2A==
Date: Sun, 1 Sep 2024 00:27:38 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/5] stdio.3, signal-safety.7: srcfix
Message-ID: <zza4c2qlbpbpn62lg5mbcutcjnbeaiwrosvpe2s3hlvbyjjdzc@3xb6pb2wa5v5>
References: <m74zkuysq5s2jgqm3usgr3eoj3qanyewqu2nqwrwxghhm2rqgm@pezvgfvx5o7u>
 <ncv4wczkcxldrdy3doqzae44vsouevafkwwszx5uh4pulwwlnr@v4keelsw2v7o>
 <dg74uszi4ni5mtr2cxznqgdj57hgdh7pmzktiog6vyzvyttpep@r3qenmyr3cop>
 <20240831212321.qhuqc4g3iqdhuzqr@illithid>
 <tfgnb73vim5h5eb7jo7hzfqdc3vilxwdg3zenovywjikzlthom@jilf525zjzow>
 <20240831221759.l7jkn56nm2fzmbiw@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ht72aeoif6cvu4ku"
Content-Disposition: inline
In-Reply-To: <20240831221759.l7jkn56nm2fzmbiw@illithid>


--ht72aeoif6cvu4ku
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/5] stdio.3, signal-safety.7: srcfix
References: <m74zkuysq5s2jgqm3usgr3eoj3qanyewqu2nqwrwxghhm2rqgm@pezvgfvx5o7u>
 <ncv4wczkcxldrdy3doqzae44vsouevafkwwszx5uh4pulwwlnr@v4keelsw2v7o>
 <dg74uszi4ni5mtr2cxznqgdj57hgdh7pmzktiog6vyzvyttpep@r3qenmyr3cop>
 <20240831212321.qhuqc4g3iqdhuzqr@illithid>
 <tfgnb73vim5h5eb7jo7hzfqdc3vilxwdg3zenovywjikzlthom@jilf525zjzow>
 <20240831221759.l7jkn56nm2fzmbiw@illithid>
MIME-Version: 1.0
In-Reply-To: <20240831221759.l7jkn56nm2fzmbiw@illithid>

Hi Branden,

On Sat, Aug 31, 2024 at 05:17:59PM GMT, G. Branden Robinson wrote:
> At 2024-08-31T23:43:01+0200, Alejandro Colomar wrote:
> > Any advances with git-send-email(1)?
>=20
> No--I'm still stuck on neomutt 20201127.

I think that if you use --thread with git-format-patch(1), (or configure
it via the change I showed), you'll be able to use neomutt(1) as you're
doing now.  The generated patches should contain pre-set In-Reply-To
headers which refer to the first patch, which will have a pre-set
Message-ID.  Please check.

Cheers,
Alex

>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es/>

--ht72aeoif6cvu4ku
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbTmNoACgkQnowa+77/
2zIP2Q/8DsxM/2GCI+ZC40EdS1ZelVvbMawqw7ZNV7eBLWjPls2y2vPz0F1iaUQs
gBUV0THR6s1jwQlRT/7jl3yN5Hx1FeSOISftqJnxZdhuPWiGleH3FfUubyr85mmZ
FFm1R1tTWiih8TTJ/7XkTueHTOVdCMihOvvDlrAylvF9w87GnoAxCEN90walW/0I
kDgTsrIQU87Bpn6b1QwjMydelu2nBhvIyE5jTmgNhssbOUC/d2hNoXBomW4B2yEo
J7jOEOc3/yig2fw89Und7mzDLyHCCWm43z4y0dPf9ATNeASZlqY93/9PNxM7ihsF
oOV//du56UfowybduHqq0ay3lLyIQEBngxBgoGhj47+s2DxPChOim/sbS+esNIZf
PWLm6vr50YZM/8sfLY44KTfeIAC6eOhTtgcpCfp7yOH0oniA6XemTDfPruePePFj
e6ZSooI+FPbHTXUVBjDvHy1MGfVlQmNnyBH/nMxYf0FzTr+niM4A0+NhM4l4O/Ge
yQCAmwV+PwxVus/mzZhe3VfgiYL56W0ImhcG9CPluGxIFxk13lBIl0g+EsZjloVu
vxsjXi/9Uyf3HPsgvX7DvfTCviibUlFMenloIe+O+/tyz9c99Euvd/60i/A/7jNk
N4LWZI92rNnPWJo39LO7mmDOApiLCLI5vulqZNp6XmNePbn83/I=
=27kp
-----END PGP SIGNATURE-----

--ht72aeoif6cvu4ku--

