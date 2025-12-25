Return-Path: <linux-man+bounces-4531-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E985CDD5A9
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 07:06:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CEBE63009F94
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 06:06:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E10A2D3A60;
	Thu, 25 Dec 2025 06:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="tm9j+8tp"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBE9276038
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 06:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766642803; cv=none; b=lgBqyPIC1yurIlSOWccA/YZiNlQTMRojMYc7zGK2boIGUn5pE1Hp62XCPuzpqZPcWRinkks90oDTWK+B4g53EzEivKHbh+Hks5/4f8kaijiYfjikEyLso35qIy3plz6tPWtes4/dI7Cx2U2Omt3EPhb6fRDVIull8LVhlug+nzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766642803; c=relaxed/simple;
	bh=XNYh8UdWJWskpnuC8bIYeTwsRdL7h6e4ck/tdtRXYmM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tS0q61u1kZrjbwHKNeYVu0YVa91Wtb7rlsXfV6ki2nSqg31YvARDh8M/bS5/CoEwc+zdcJs3z+zD0E7rMAeeBBkxyrhHb2F0kEnpAFMXLzZK6HeDrDhRCJvOwiHxQuu1TkylzLQZ0JrfSDOAqceMEIX7CW1nHzKMs1PqQx7/9/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=tm9j+8tp; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766642800;
	bh=sFfoNtffgtzE90QqRqDjMJC5lGKohG7FzNhv6s2Gq6s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=tm9j+8tpoi+/GekhloH5SWf6E6QirPujZrLzZDHQ0LRO40nrsgbaj5sZwzIWMZ9TM
	 /BYMuX6VL5m9dnRaM290mZWCshz+UTm29vnPSFKeCRVUpm0ByD2icnEZTHrpLLgsp3
	 7MO8J9i12Z9vRVPtz2ejKzll3EBWOvr/pZbdScl1gM+Rf2qkKG2moRWdBkjlLblrIy
	 N0g0arUdlLqc5Nx437NWBtM+7VOmhuRqP/3WmNzCcy2CKfVAn4vuI/aojSw8F8ER2l
	 jO+3Od9z89RSPk/wpRoUystZspGW4Kf1My2Vezkw096Uyyvk8sktI0IlyuxUhcj+qg
	 It1+nyXl2cvww==
Original-Subject: Re: Issue in man page mknod.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200D3.00000000694CD470.003F3F02; Thu, 25 Dec 2025 06:06:40 +0000
Date: Thu, 25 Dec 2025 06:06:40 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page mknod.2
Message-ID: <aUzUcM0dIDgNHx18@meinfjell.helgefjelltest.de>
References: <aUv63WkdjBYbXoSc@meinfjell.helgefjelltest.de>
 <aUwHa051I7BDgWb4@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-4144898-1766642800-0001-2"
Content-Disposition: inline
In-Reply-To: <aUwHa051I7BDgWb4@devuan>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-4144898-1766642800-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
Am Wed, Dec 24, 2025 at 04:32:26PM +0100 schrieb Alejandro Colomar:
> Hi Helge,
>=20
> On Wed, Dec 24, 2025 at 02:38:21PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    This is the man page of B<mknod>, what is "like B<mknod>()" s=
upposed to refer to? Itself?
>=20
> The text is in the subsection mknodat(), so it says that mknodat() is
> like mknod().
>=20
>=20
> Cheers,
> Alex
>=20
> >=20
> > "If I<path> is relative and I<dirfd> is the special value B<AT_FDCWD>, =
then "
> > "I<path> is interpreted relative to the current working directory of th=
e "
> > "calling process (like B<mknod>())."

Ok, I see, thanks!

Greetings

        Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-4144898-1766642800-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmlM1HAACgkQQbqlJmgq
5nDmtRAAr6Jgy2hf6ONPuuMBrOUmfu7hDo7DBIEQ+/InJKur5MRqU/8KNtwSxhFz
m4TnIPZo4HvorXUKeTHYAahKF4MGqfwOeZYC8jeOQyLpM3rYWnjU8AbncFrKN5+3
141q6LjOwI9OrWYHHDrczA726XE9+AzilG/bqfd586UYrBZKL1Zm7pTOvs60/4bn
YG64tHyo5P9ElVghraU4DovssgGmA7K/uhRbAaf4IRfFIiz/3PWD4SXgTs4E12Nz
w8L0OpEvBL8dJwSWE0EiROo7AzbsDfXbQBP6+8E2s1lUM495xc05QGIX2UXFmNwJ
WEgC4mgbxqFTNTBneTng7vsQEyn+TC8aem6Xcd/CSnyP/8uhV2NQYwtZqzCnBJN8
XpQrZIr0ml0VXA+VDTf7W18XEFt0tizX9+sDSr38WDk73UKp0qJakp4FsV0zJDif
qQi1gt9H835eizBrWr+poJAvHRHXtyELz9qBXIipkwXiId2XucUlDifwRpcRTmdy
rfcLLmqKKKf4Ly+Gi4edj+z4SR/PxzC5ZsZLdR2EhAvlcKdIJ2zpc8IjnVxa1Z0b
D7l4vQDIxSflMV5BZWXetRe8E9O5DQjP+IfhndfXVYvJAMZNDLKeozPfYVVEAAei
ShRWq6Wgx8PhyQoQvgfIy5e9aC9SY8cP2oiQQDeiudy47ehDmDA=
=TpVk
-----END PGP SIGNATURE-----

--=_meinfjell-4144898-1766642800-0001-2--

