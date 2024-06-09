Return-Path: <linux-man+bounces-1055-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A1990172C
	for <lists+linux-man@lfdr.de>; Sun,  9 Jun 2024 19:28:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50F91280F55
	for <lists+linux-man@lfdr.de>; Sun,  9 Jun 2024 17:28:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BCC34653C;
	Sun,  9 Jun 2024 17:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBTq+iPV"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9151DDCE
	for <linux-man@vger.kernel.org>; Sun,  9 Jun 2024 17:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717954114; cv=none; b=DnbWgioyYy49xqBudatRmM+LAPfhtFC6BU9dW7HHuW4IngFmD6XBliXlBYJBV4/WbBC4sAGhAc9lZy8D4Td7ldUdkU5fjq3d09wDZ0f72PHC+1aEb8aBa4k8RjKpgRPy/Gu06+suOqxkeILpgit/odW9BwZu4HTd4iUYPLEZXCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717954114; c=relaxed/simple;
	bh=/FcuBlKlmY6DiCdum5Sfh7vxJ4NhhrX3HoKtDth3iCs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Lcq+J6fc9K5xncAxOaUQVMcWfQycL4x1/KmJz9WUkj+qKJLOwozB34MGPIlm5ZTMe0861zx7DO9b8p/ToRj3i9TUkDUbz/ua1rJxVwYRM604CYTKjtPGp6r+8mdhbxOJ2qsgYEL5su2HQd3hel6p6U/xI7qtqzYFDwbLk4AiWB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBTq+iPV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9AF7C2BD10;
	Sun,  9 Jun 2024 17:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717954113;
	bh=/FcuBlKlmY6DiCdum5Sfh7vxJ4NhhrX3HoKtDth3iCs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LBTq+iPV9VjVK/VIkz/rbmo8yH/c8qIRSJBdNI5EtA2KGvaz+ETd/j4Js6z3pSPfF
	 S5QNCPmctu6+mkMKqM7ZFZX0idVNHLW5BPsIL/kNPZ6q+d1nafo4eLHLzx9nqxJT9T
	 efFQwbmBgwja5GTpUoIBcyysNFOo3SsDIJq+TRikkJ6x6t0mVAz7C7hyYB20ReBrHF
	 r6pIcasdCbqnr03pOdAya7x+Koh4ejk2AzS+CjTZ1ZQnAd/TZviPZbPmBhPDCcqMsd
	 qqPI6b6woRf0NATm9stPSWumhAv6pWdHj/QQTuCZFJMM4S/XYwwNOgQi6QdfQUoL6w
	 mmW8GxphmrfGg==
Date: Sun, 9 Jun 2024 19:28:30 +0200
From: Alejandro Colomar <alx@kernel.org>
To: ellie <el@horse64.org>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>
Subject: Re: Suggestion for clarifications on "man 5 proc" page regarding
 /proc/[pid]/self race conditions
Message-ID: <xauezc3fwfzty46wqqwm73kfkl5hrqekmkmgcuwfjuwotqzebl@7mpec3t5k3c6>
References: <e170ffa6-986a-4e55-9d44-27d7d7520151@horse64.org>
 <26bb3fce-6bed-452b-bf0e-5365f2bc7fa1@horse64.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t527kxoxmh3ry2px"
Content-Disposition: inline
In-Reply-To: <26bb3fce-6bed-452b-bf0e-5365f2bc7fa1@horse64.org>


--t527kxoxmh3ry2px
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: ellie <el@horse64.org>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>
Subject: Re: Suggestion for clarifications on "man 5 proc" page regarding
 /proc/[pid]/self race conditions
References: <e170ffa6-986a-4e55-9d44-27d7d7520151@horse64.org>
 <26bb3fce-6bed-452b-bf0e-5365f2bc7fa1@horse64.org>
MIME-Version: 1.0
In-Reply-To: <26bb3fce-6bed-452b-bf0e-5365f2bc7fa1@horse64.org>

On Sat, Jun 08, 2024 at 12:23:11AM GMT, ellie wrote:
> Dear Alejandro Colomar,
>=20
> I finally wrote a patch against the latest man pages, see file attached.
> Hopefully this is in a format that allows you to integrate it well.
>=20
> Some quick notes:
>=20
> 1. The "make" process aborted with an error, I couldn't use it to verify.
> However, pandoc seems to think my formatting is correct.
>=20
> 2. I still don't know if open("/proc/self/exe") has any internal race
> conditions on rename, like any more regular symlink. My text simply assum=
es
> it doesn't. Maybe some expert might want to double-check?
>=20
> 3. You can freely use my patch, no attribution needed. However, if source
> info is desired, you can supply "Ellie <el@horse64.org>" for that.

Can you please provide a patch formatted by git-format-patch(1)?  It
should have a commit message, author, and all that.

>=20
> Regards,
>=20
> Ellie
>=20
> PS: The error that "make" gave me was this one, in case anybody finds this
> useful: "TROFF .tmp/man/man2/s390_sthyi.2.cat.set
> troff:.tmp/man/man2/s390_sthyi.2:124: warning [p 2, 1.8i]: cannot adjust
> line"
>=20
> On 12/12/23 9:47 AM, ellie wrote:
> > Dear Alejandro Colomar,
> >=20
> > I hope I'm emailing this to the correct place, I found this contact
> > information on https://man7.org/mtk/contact.html regarding man page
> > feedback:
> >=20
> > I'm suggesting that the "man 5 proc" page is expanded with a section
> > clarifying /proc/[pid]/self race conditions, I described details and
> > even made a text suggestion here:
> >=20
> > https://bugzilla.suse.com/show_bug.cgi?id=3D1216352
> >=20
> > (The text suggestion might be wrong, however, since I don't actually
> > know what the exact technical state of this is.)
> >=20
> > Regards,
> >=20
> > ellie



--=20
<https://www.alejandro-colomar.es/>

--t527kxoxmh3ry2px
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZl5j4ACgkQnowa+77/
2zL7rQ//Si7LzrpCgqRvZu9wL0tTUN87mvzCM41gQFsalUR5z6elyPyc1IYD+qWr
mFW6b5TQLhsejMzWq67IYZcROBiOo3Veu6mCKaFOBE7fCh6yNyqbB+dmmh4XLtjN
LLIBZbQ8wOAWF1bKl0wTzqNqLeOJ2Lw5FOM88RE4SBq5XTTL5g0WMXhSyA0sNvd4
8Ig7xe2Ol5qnB2YWEot5050H3j+wbBObI6E2Xs5dSASaEtLO0jgpf4ch6ZNOPBTx
LzcTEA6t7JBGmfquDaWudClx3l3mMmDYiWULh6rzHFFm9iYoZBcL3Yu/HIuijtpg
znvk+aHWUEi+0dyikKR32UBmwidaLi1+6/LiPw/aeoBpDE49+XoYWvNhnUa7gK+o
Thec+ov5/x9SxdnvoRQLOJvLjHF2FZ0p+/3luhrijmaW7eZ5KPCmzyRLH6/PqGBf
9A4PDtCbNqoiRAKq3j7H7/gZ8tTnATDBgfSYUkgsFEwiWwg01WKFyJn97CQT6BGq
ToiEt3ErMeyQ/KUMpC/jxh4LKat0DIOuXerVhx7RN7RFTn2JjT1TXeFYD5NNFO4q
TsU9EJP83CjWSONVeXyphx8jUFiIu3vOCOQ2QQFLGuyNswalWhcbmYImUjNM3gDy
OyQYBqUOCzh6YRwNE/fW+n00hBRFgDkAul4MrKz7y/XwvHkBt3U=
=3UMh
-----END PGP SIGNATURE-----

--t527kxoxmh3ry2px--

