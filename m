Return-Path: <linux-man+bounces-2141-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8609F1CFD
	for <lists+linux-man@lfdr.de>; Sat, 14 Dec 2024 07:17:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 49702169268
	for <lists+linux-man@lfdr.de>; Sat, 14 Dec 2024 06:17:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70BC73A1CD;
	Sat, 14 Dec 2024 06:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="ca1W4kDz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BC8738F91
	for <linux-man@vger.kernel.org>; Sat, 14 Dec 2024 06:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734157049; cv=none; b=JHe2Hfk5/3m7S+lAOBkjWQ9PVcQpwK+QRlHIQDiNZ2Brmtd1QXAowHiy3Yiwwuz/yLkWv1o6IS4PwgEmVergXEjvhUcHcdJGqWGYx7bX1cJwP8mhBNgHevXZLsH977iHCUU6eHEKCg/1d2pgjLRS6gxNFDI00X2xPHCEHYx2tyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734157049; c=relaxed/simple;
	bh=GFyzQd0hEM1H83pFztT36lrrvn6rXeLRUgCyyOhybQ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Hkf8o/n2qvmgVqyrkGup700oBzxI9n3a4Xe4FSnRv5TVb2CnybskU72m89IZpVJyhBFoyYiKNggOeeNRNsGwGsVdL4dkY7EdngnOz3K0hThabtcXbrDwox9QHNkWN/AV+vpoXjB1aPY+4TkB9daQwFimJsjU+wjruSneRfWCJdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=ca1W4kDz; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1734156735;
	bh=w4nZDP6sDAyFOGIgWSPOL3+t4bWgK/Y2ra567GwMQ+0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ca1W4kDz/3cUynLQI7VKEZS9J4ybzcQyMBxlxVOFzilB9LLifocUL1zMltV4qXxEO
	 sOcO7poHPSqEPk4D8BiX8DiFq34/cTtve/QbHmz0o7+YcLVJ5PIYjIm1OCuogVXvnW
	 yuZ40LAQXyhGW5BDKchcxkdpK0ewabe5iI3lwk9fb2nWNoZlms0QaqbdmrC9xroodV
	 RsnPiu2w/aPcYEAH7neIWhhArXWWtlnmAgzIKpowfp+RpCuATNrGUj+ymSy/Dby66w
	 ncPHDx/V28m8TkICLdbj0Q9Jp4tVh9bHMkClLgc9W97EOaENaWx3gMm+i7ke/oN1bP
	 JZOikVVhzcKew==
Original-Subject: Re: names of ISO 8859 encodings
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: Bruno Haible <bruno@clisp.org>,
  Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
  Mario Blaettermann <mario.blaettermann@gmail.com>
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200C2.00000000675D21BF.00089C15; Sat, 14 Dec 2024 06:12:15 +0000
Date: Sat, 14 Dec 2024 06:12:15 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Bruno Haible <bruno@clisp.org>,
  Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
  Mario Blaettermann <mario.blaettermann@gmail.com>
Subject: Re: names of ISO 8859 encodings
Message-ID: <Z10hv4ogO2TzgJ6D@meinfjell.helgefjelltest.de>
References: <3678665.hdfAi7Kttb@nimes>
 <20241214003716.gnockyne6qh7jpml@devuan>
 <20241214005654.vhpp4c46p7sw4zjr@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-564245-1734156735-0001-2"
Content-Disposition: inline
In-Reply-To: <20241214005654.vhpp4c46p7sw4zjr@illithid>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-564245-1734156735-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Branden,
hello Bruno,
hell Alejandro,
Am Fri, Dec 13, 2024 at 06:56:54PM -0600 schrieb G. Branden Robinson:
> At 2024-12-14T01:37:16+0100, Alejandro Colomar wrote:
> > On Sat, Dec 14, 2024 at 01:23:09AM +0100, Bruno Haible wrote:
> > > Commit 3ed1de0ddccb42bae4151c7225d3fddeab04ff43 should better
> > > be reverted, IMO. The ISO organization or their *standards* can
> > > be renamed to whatever names; what matters here is what the
> > > *encoding* is commonly referred to.

There is no "renaming" intended. It is just the proper name of the
standard, which is often (probably because of sloppiness) forgotten.
There are two organizations who joined forces to create these
standards: ISO and IEC. Dropping half of them is not very nice and so
far, precision is what is good about the (man) documentation. You
should be able to rely on the documentation. So why should you stop
short when giving credit and citing documents correctly? And yes, the
correct name contains "ISO/IEC"[1].

Of course, how you name them in your day to day communication is up to
you (and should be so), but in the documentation it should be correct.

Disclaimer: I'm editor of ISO/IEC standards, but not in the field of
character encondings.

> > > The *encoding* names are standardized by IANA:
> > > https://www.iana.org/assignments/character-sets/character-sets.xhtml
> > > The first ISO 8859 encoding there has the name
> > >   ISO-8859-1
> > > or
> > >   ISO_8859-1
> > > and the first among these is the preferred MIME name. So, please,
> > > in encoding names:
> > >   * revert the ISO -> ISO/IEC change,
> > >   * change the space after ISO to a dash/hyphen-minus.
> > >=20
> > > Likewise (partially) for commit d5e5db91ece5955b21ae1aedc03ba1d56d3cf=
423.
>=20
> Oy vey.  Helge Kreutzmann submitted a similar bug report to groff and I
> was planning to make the ISO -> ISO/IEC change to its man pages.

I'm not going into the business of valuating which standards should be
adhered to. But when referrring to the proper document the correct
name should be given IMHO.

> Also your point seems more strident than clear to me as regards the
> encoding name.  If I want to refer to character encoding _not_ in the
> context of a machine-parsed MIME datum, I trust you're not going to tell
> me I need to spell with an obnoxious hyphen-minus or underscore before
> the standard number ("8859")...?

My personal opinion is that correct typography is important, but on
quick reading I probably would not spot the differences amongs the
various dashes for example. So for me, having all the correct letters
is important and of course, to copy and paste text (e.g. code) where
necessary, even if that violates typography standards.

And yes, I'm well aware that Branden and Donald Knuth (and successors)
strive for well printed documents, and I'm glad for this.

Greetings

           Helge

[1] I carefully checked this. There are, of course, lots of standards
    purely from ISO (ISO 9001 comes to mind) and from IEC (e.g. IEC
    62443).

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-564245-1734156735-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmddIboACgkQQbqlJmgq
5nBnNw/+JVbBQ2wcf+O8jkcDY/tD4ES7d5CZ93zmGpEF2T+iGm+IH4z/x52OoL6N
OnMdCdtSrELLojgodIkn+cbzY4lYgfb5nvjhhXhrIkGvNBjfWj+kiUgcUNPoEjVJ
k2ivvEvO3qItm/BNdlTkBm1ReycSwWo8wPJcx8uF2T1rOZf4fEjipXn0BqNWOQvD
0tjajlQ/5S5tRK1JduetxoJ1phbueq+jsV4tEDAnkBl95Iiq5AFacQVe+5LMlimC
2OrlZfzMyh2ooCjBXwNX4Ssxcc4pvocjrn1NK4GjvJg5forcv7MeuKzGfAjgIIMe
3WZZsicd4Fqt4Tg57y5hDU8x4mMZcgYvw+6RA/1Z6SV4vrR2Vgo0YIazYBh3gKHM
tMxjt67xRLJpqIPTCAfFgl9uusx+2CIwsDXdcDhWOy0zLT8rGShp5rUAErM2Q0V+
AIR+TQgAxhHuH2R2r5W3ceBdZ57GOyT3u4JLRGRujVGIPFwqP0BFRKKk1K8LlX0R
81D53M7ShD9jwz0I3zCwMIGPB1dYZ4LyxoaBbCNf9rlz2Onxyda/rHh9VOfY/6Mo
hTMPkADSeNJeQR8K7AeMGCA2vlkY75bBJzT0h9b4mJoR3Mk3Vg9xAepmzF5+lqeB
AU4dOS4bCF/PI8+WBy8CWWhM3VCzQDr8Iq6Eige6Vvlq4nDHFwU=
=i8iM
-----END PGP SIGNATURE-----

--=_meinfjell-564245-1734156735-0001-2--

