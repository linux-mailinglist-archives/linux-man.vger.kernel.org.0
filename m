Return-Path: <linux-man+bounces-189-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE12D7FEF48
	for <lists+linux-man@lfdr.de>; Thu, 30 Nov 2023 13:40:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CA48BB20DD6
	for <lists+linux-man@lfdr.de>; Thu, 30 Nov 2023 12:40:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D4FB3AC20;
	Thu, 30 Nov 2023 12:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1qgjSoE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F114E4778D
	for <linux-man@vger.kernel.org>; Thu, 30 Nov 2023 12:40:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 211F9C433C8;
	Thu, 30 Nov 2023 12:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701348020;
	bh=vjAxLHE4Qpr3Pcd3/ne9WLGhR6GUlJgmrfQ4e4sF1r8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O1qgjSoEUosxGtpAYigTuSMNzz5NYc/Pjn8fTTC6IiD54md+prxPH+d9UWXg7OWz+
	 E3pAr5MSRa5/07194PS9tjQRIUPIE0ppJthTrSlTp2ShygWyEtKSk4ibsAp+gFRH6y
	 FzSbZcJiE5wHkb2d4CgP177As4fcKUhXttv787OVu+EPtbZZNSkhrc0TZmchH6ToD+
	 GPHFLB0DeFiCeuByX959CDcKH3erR/mDLiDi+ivEKNkm+bnE6SbH25x1YKsolFracr
	 kmgN888D6URqMbLrCGX2liM6rXs5Xyb7S4NXF3/WUaFQXKpCISwVZ6g+9rBHjZ/350
	 i/CKXxlHgMOSA==
Date: Thu, 30 Nov 2023 13:40:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: GNU C Library <libc-help@sourceware.org>,
	Linux man-pages <linux-man@vger.kernel.org>,
	Iker Pedrosa <ipedrosa@redhat.com>,
	shadow <~hallyn/shadow@lists.sr.ht>,
	Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: strtol(3) setting of errno
Message-ID: <ZWiCsBkRpOLEc1Y3@debian>
References: <ZWhUR9AqoSLKeT46@debian>
 <87cyvrv4bl.fsf@oldenburg.str.redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hAMQJ/rSOKFu9kb5"
Content-Disposition: inline
In-Reply-To: <87cyvrv4bl.fsf@oldenburg.str.redhat.com>


--hAMQJ/rSOKFu9kb5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 30 Nov 2023 13:40:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: GNU C Library <libc-help@sourceware.org>,
	Linux man-pages <linux-man@vger.kernel.org>,
	Iker Pedrosa <ipedrosa@redhat.com>,
	shadow <~hallyn/shadow@lists.sr.ht>,
	Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: strtol(3) setting of errno

Hi Florian,

On Thu, Nov 30, 2023 at 01:00:30PM +0100, Florian Weimer wrote:
> * Alejandro Colomar:
>=20
> > Now I realize that commit was probably wrong, and one needs to check
> > both errno and the return value to determine that the call failed.  Can
> > you please confirm what the correct specification of strtol(3) is?
>=20
> The most detailed specification we have is the one that is in POSIX.

Since POSIX doesn't specify, I assume it allows setting errno on
success, as with any other libc function.  That includes setting errno
on a successful call that returns 0.  Which means that the errno check
must check for the specific errno values that actually mean an error of
this function.

I'll update the page.

Thanks,
Alex

>=20
> Thanks,
> Florian
>=20

--=20
<https://www.alejandro-colomar.es/>

--hAMQJ/rSOKFu9kb5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVogrAACgkQnowa+77/
2zKjug//ar8MJ1cKKKUMV3ByHSHaafrmJln6ieGBmWn+M16VV41mvy+rQkQa+pXI
gboxsH+E5Br/mARFPdMLIJZSY7Ised2GfVXr6rTcRAv541e2PV3rjTVpfXBoCpME
TLy+ZGyvBemVxJALFPNfWtZRl9JQ7GL6kjY3RhxoAAOl01cRGhwMUaysSrDPcjTL
Gu2OLA7WbDu6EiWzLkkG4aKRCfIehRX2aJfvdLG99Y2bTIWvqtqd+rjNzafJH63T
hF/TgsAwuNQVH4a9Hy1RQ/g6hJYBoPelw0v7sEFTHV6IwUnVnGRb5N+w/WCFcjdl
KyaASSo3ZLWxHQVICU78yguhLbaOJGDc+Gh5d4CNqaPLyyMurpKFZ5jxsk6PIjak
xjnmCe69UZqvkdg43lM7Asqodsubdp6iHbJcoYtwRV8BsUJqqvRDXXP2Uk0YXNgB
I6KUzTS/gmqSi4KmGdj7EAEWSOlYHlBCPVG+dwECuf7bEl8fjRNSCjSuEwGeEFXZ
1l/CrRQ0ynIP8cstq8AAUbffA3UTdDFe1haTSgYvN1HBjQBI2ICFQjah2MaQakq7
YRC6TEaAHTIJ8OMoHijKMNAJvYushKYGFD3OEt1YDjQup8ZBwExgKwvIbl/p5pbd
F0WGI9TvC0Z8SgAN+BquL3+0PQ06MZgRm5sXeAwNmuR67bKfr48=
=WC8n
-----END PGP SIGNATURE-----

--hAMQJ/rSOKFu9kb5--

