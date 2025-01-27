Return-Path: <linux-man+bounces-2300-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D961A1D9F4
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 16:53:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D9A851622A4
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 15:53:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F2C886333;
	Mon, 27 Jan 2025 15:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mt96lvOq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD0F189F36
	for <linux-man@vger.kernel.org>; Mon, 27 Jan 2025 15:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737993173; cv=none; b=pbwVE8+ehvkId9dWSLD+8cfzgrK0MUwzpMsgA7HwFXqZ6pbjBMuf7l9AxvnVHG0eZ9VAxQywDtYEPDT3qCrSupGueThEbAmSmMqvPpJVCiU0vO9ZHfcInRMdWdtbhghwLXmcb5q9pCNJ7UqKLtymv/+taJHx4X/9ihmQfsGFXYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737993173; c=relaxed/simple;
	bh=M3pJPBTOaBfG1iryr0vBAPFDLL124kpb8dlWdm99Whc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JrNnQ4DI9y9NzTaJYvLqpUdkP9VrvQzoAqUR8MVuUXKyGiTvqsrbOLVI6J1fzrLOPzpj9l98it/oFyKj2cScCuG/Cgpi+YHuM2CsA3OELKuLDR4l0cnOtv9qrIvY4fDFG8L7lzUpVoor/QX+ArpEzoPGonosgI33iFTX2Oe/gzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mt96lvOq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3447C4CED2;
	Mon, 27 Jan 2025 15:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737993172;
	bh=M3pJPBTOaBfG1iryr0vBAPFDLL124kpb8dlWdm99Whc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mt96lvOquuYGplgcYthrv4J9JwH0lO4xbZd0ZWsr8tPsijV4B6/e2NuGQfr/0b55w
	 p3GpxqKg4lj+WR4xXQtqIi93My+AAiLJSzBIpxCtEjLipLt6ii6LnPg7gfaJ5qUb2V
	 mvD8zy9/0aL7vY6lEVG2eyfwfHOModKqzpHa9bCBisLjcaQx13z9jmGINlICmsyKs7
	 LqBayYjA10fYypwLXsLwVaan/1iquyYEiISFtlD6BA1EZ9SKIbXFGqEyQFKrZdFuhH
	 tVpe7Y9M64XOGypU6muS3tA2u1+QvaPpUDGnUmnz96NxytG99MTYpCSAx1SBpI0GEu
	 Oj5+WRdl5sZkg==
Date: Mon, 27 Jan 2025 16:53:10 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: Re: man/man7/pathname.7: Correct handling of pathnames
Message-ID: <barhqqli6kccy6sntknt444bwees3jbwy6quyapd4l24juz5th@l4cj3yhfrms5>
References: <kvezw2xintnc5cv3ijqefahwt4i3rzczcidp4krmxsafr4azsb@nvbkzgciq3vm>
 <cf6lfplzm5hkmo7lkuyuw6blw4zemrsrhhlucjr4vpwns7m4nu@7pfcxat7bgue>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dzxxwkcvn44yeqbc"
Content-Disposition: inline
In-Reply-To: <cf6lfplzm5hkmo7lkuyuw6blw4zemrsrhhlucjr4vpwns7m4nu@7pfcxat7bgue>


--dzxxwkcvn44yeqbc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: Re: man/man7/pathname.7: Correct handling of pathnames
References: <kvezw2xintnc5cv3ijqefahwt4i3rzczcidp4krmxsafr4azsb@nvbkzgciq3vm>
 <cf6lfplzm5hkmo7lkuyuw6blw4zemrsrhhlucjr4vpwns7m4nu@7pfcxat7bgue>
MIME-Version: 1.0
In-Reply-To: <cf6lfplzm5hkmo7lkuyuw6blw4zemrsrhhlucjr4vpwns7m4nu@7pfcxat7bgue>

Hi Jason, Florian,

On Mon, Jan 27, 2025 at 09:50:49AM -0500, Jason Yundt wrote:
> On Mon, Jan 27, 2025 at 12:22:49PM +0100, Alejandro Colomar wrote:
> > Hi Jason,
> >=20
> > I think the recommendation to use the current locale for handling
> > pathnames isn't good.
> >=20
> > If I use the C locale (and I do have systems with the C locale), then
> > programs running on that system would corrupt files that go through that
> > system.
>=20
> I agree.  I think that this is just a limitation of the design of
> UNIX-like systems.  As long as users are allowed to choose different
> locale codesets, mojibake will always be possible.  Sometimes, you just
> have to temporarily switch to a different locale in order to make things
> work.  For example, I was trying to run some old Japanese software a
> while ago, and I had to add a Shift-JIS locale to my system in order to
> get it to work.
>=20
> > Let's say you send me Mar=C3=ADa.song, and I download it on a system
> > using the C locale.  Programs would fail to copy the file.
>=20
> Not necessarily.  pathname(7) says =E2=80=9CPaths should be encoded and d=
ecoded
> using the current locale=E2=80=99s codeset in order to help prevent mojib=
ake.=E2=80=9D
> In many cases, you don=E2=80=99t need to encode or decode a pathname.  He=
re=E2=80=99s a
> program that copies a file without encoding or decoding any pathnames:

Right.  But then, when do you need to do encoding?  Programs will either
receive the pathname from the command line, or read it from some file,
or create one of its own.

When creating a path of its own, it should restrict itself to the
Portable Filename Character Set, so encoding shouldn't be a problem.

When reading pathnames, they'll already be encoded suitably.

> > Instead, I think a good recommendation would be to behave in one of the
> > following ways:
> >=20
> > -  Accept only the POSIX Portable Filename Character Set.
>=20
> This one isn=E2=80=99t quite a complete recommendation.  The POSIX Portab=
le
> Filename Character Set is just a character set.  It=E2=80=99s not a chara=
cter
> encoding.  If we go with this one, then we would need to say something
> along the lines of =E2=80=9CEncode and decode paths using ASCII and only =
accept
> characters that are in the POSIX Protable Filename Character Set.=E2=80=9D
>=20
> > -  Assume UTF-8, but reject control characters.
> > -  Assume UTF-8.
>=20
> > -  Accept anything, but reject control characters.
> > -  Accept anything, just like the kernel.
>=20
> These last two also aren=E2=80=99t quite complete recommendations.  If a =
GUI
> program wants to display a pathname on the screen, then what character
> encoding should it use when decoding the bytes?

Just print them as they got in.  No decoding.  Send the raw bytes to
write(2) or printf(3) or whatever.

> > The current locale should actively be ignored when handling pathnames.
> >=20
> > I've modified the example in the manual page to use a filename that's
> > non-ASCII, to make it more interesting.  See how it fails:
> >=20
> >=20
> > What do you think?
>=20
> I honestly don=E2=80=99t know what the recommendation should be.  Here=E2=
=80=99s what I
> would need to know in order to figure out what the recommendation should
> be.  A while ago, I asked this question on the Unix & Linux Stack
> Exchange [1]:
>=20
> > What does a locale=E2=80=99s codeset get used for?
> >
> > According to glibc=E2=80=99s manual:
> >
> > > Most locale names follow XPG syntax and consist of up to four parts:
> > >
> > > ```
> > > language[_territory[.codeset]][@modifier]
> > > ```
> >
> > For example, you could have a locale named zh_CN.GB18030 which would
> > use the GB 18030 character encoding, or you could have a locale named
> > zh_CN.UTF-8 which would use the UTF-8 character encoding.
> >
> > Here=E2=80=99s where I=E2=80=99m confused: let=E2=80=99s say that I swi=
tch from a zh_CN.UTF-8
> > locale to a zh_CN.GB18030 locale. In that situation, some things that
> > used to be encoded in UTF-8 are now going to be encoded in GB 18030.
> > Which things will now be encoded in GB 18030? Will stdin, stdout and
> > stderr use GB 18030? What about argv? What about filesystem paths?
> >
> > Technically, a program can do whatever it wants and ignore the locale
> > completely, but let=E2=80=99s assume that programs are doing the correc=
t thing
> > here. What is supposed to be encoded in GB 18030 if I use a
> > zh_CN.GB18030 locale?
>=20
> I didn=E2=80=99t get an answer to that question, so I asked it again on t=
he
> libc-help mailing list [2].  I got one response that was super helpful
> [3].  That response clearly said that paths should be encoded using the
> locale=E2=80=99s codeset.  If you think that answer was incorrect, then I=
 would
> like a very specific list of things that should and should not be
> encoded using the locale=E2=80=99s codeset so that I can add it to the gl=
ibc
> manual (and maybe the POSIX standard if I can figure out how to
> contribute to that).
>=20
> [1]: <https://unix.stackexchange.com/q/780404/316181>
> [2]: <https://sourceware.org/pipermail/libc-help/2024-August/006736.html>
> [3]: <https://sourceware.org/pipermail/libc-help/2024-August/006737.html>

Maybe Florian can comment.


Have a lovely day!
Alex

>=20
> > Have a lovely day!
> > Alex
> >=20
> > --=20
> > <https://www.alejandro-colomar.es/>

--=20
<https://www.alejandro-colomar.es/>

--dzxxwkcvn44yeqbc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeXq+AACgkQnowa+77/
2zJYxg//Q4PIZIthuJstV4wYRFe9GvTAHkjyjG0Ax6CU0p4E8lhNWd/xPrzRT0bo
IzVFprQqGm8pXwy+zU8YL5QJFBDopT+9X3VpkkPV8C06Cn++qZeBLHeBDb++tIwY
vTIP5z40mOY/xCGubXerpAoHrSB0xMRX3OaDOJ7f+O29OYDI6F93ciR+PQmwIzxo
bzCzSpvwqiPyvu3Punaue7EcUaEoZc7x5Dhj2U9sXcByNUkJ4/P54wE2vUpXmr4o
8Mitmi7zTSPO9gYjY14VH++tcZBNt41LQIDO7GwI0PnQl6Cu43hg8Xsv4GWL+sNE
fiOJtJGo8dktFdYofVgimKlo2yoih6nJ2uSMqDRUyMjRzc+SqE22mRrG4Hlx/fsg
E4fQkJS8gRV+VVkHq05kqxBFC3Yk7+WpxYlPeBzhxLEiZdannp6dsU+RBsuh5mj5
SMFO7ZErh7X4oZUUbEt3qoh6FE+TSQ3x1H5Ne+QzGEWStP6MYTnNHRX/HPTfa1cV
yQlDwcYz1PxDxiz+8Gc3FONUe7iMMF8HaYQolw6npGsaaMRCRA26JhCYWtQi7LVi
SkUzqx5yrinGrmjh0VcgAiF75WyF0cxACvascts1+3GK8ANobsaegsddMyulilf8
CslvA88ovrgdqJRYo2aAKTgmMnpNSRy6Gdsd2TayEa8onxP2X4Y=
=1dbA
-----END PGP SIGNATURE-----

--dzxxwkcvn44yeqbc--

