Return-Path: <linux-man+bounces-3732-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9FBB352F6
	for <lists+linux-man@lfdr.de>; Tue, 26 Aug 2025 07:06:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F028E240F59
	for <lists+linux-man@lfdr.de>; Tue, 26 Aug 2025 05:06:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33D242877F0;
	Tue, 26 Aug 2025 05:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnlVJA1Q"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5AF3235354
	for <linux-man@vger.kernel.org>; Tue, 26 Aug 2025 05:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756184756; cv=none; b=sCRgacXzSp/38XX8+tqHrSZJewKp783kWxSgkLVCh8cMjAjK7nB/TKVEGpHrqDANDJr5BCemIwZ5yzWkAQxt5xZCpUskN2ZyVc8Dl+SHM3voJ2/36+5y4SJz3LOeHYKxXRmPufO3axCYkwl4xV46b/SyY8fYfXGavBK2WDt8pq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756184756; c=relaxed/simple;
	bh=tev6/7xXWZCoHQJYIBLUiVXbLMCCvij7Q5DHTmMaVBY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Rxvq+FKG3zwX6n/azKRPxUjj4TqOjV8hbJhO3PM8IJP4CIR8de+/EZ2CPo0+uE3B6zyJMcFTSdAnZxMy6tTgdqMj0qIsSosbqKfQVAjuA3Nc4QitTHcDNmgf8fjsCmxhJ2T0y7K0UpoO4I75tgZBHoAJgts+I7tKO7eGtKOsquM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnlVJA1Q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91552C4CEF1;
	Tue, 26 Aug 2025 05:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756184755;
	bh=tev6/7xXWZCoHQJYIBLUiVXbLMCCvij7Q5DHTmMaVBY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jnlVJA1QYo+hExU2lOqnWYdFyC22udS/N9VJM9HZExL5AVMswgUvV9nIQD93twY1J
	 hke8FUjL3b1IYl/YkxaNY6F9O3n7aTwdTIzLN/oEbwD3t+PXVlwPpzIW+KHWiWR9AD
	 eatQJvRa1SEbHhB21MzANCfVbhKEr2CQ52z+6zaKAfHxnvO/RnQO1A1ElFS5r9Vo6Z
	 aX471j/366nw5Fd2lvFSKHuWC0wCh74RlrBXv4wjbyLdMHVFEdg1Tcn8c7bdnBoWe0
	 SzU2bTKoDGs+355hiS7nXk2ZtRDpeMKoBiVBy1GP9e8L8aX+2LiQ9N6/gwJsa8mrJr
	 gRgiQzWYvxOIg==
Date: Tue, 26 Aug 2025 07:05:49 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, groff@gnu.org, 
	Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com, Colin Watson <cjwatson@debian.org>
Subject: Re: URL visibility on terminal devices (was: Issue in man page
 pathname.7)
Message-ID: <tal23nvlrjz4thsc4u2godehn25x6x4uiucky735te5ojsgygj@gga4etjwpo7n>
References: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
 <aj3eqcdmjd5rjcs7ng74prcysoumnpaooxxhwklglwyrpvpp3t@vm3rqullggpi>
 <aKyMnL1N6wwD77X7@meinfjell.helgefjelltest.de>
 <67todkk4wpqgskfy3s75uy7cbtahfpcaxymdse7pjzrjk72r7w@25dwgnvj5imm>
 <aKy3oVSyXS8_Xj5l@meinfjell.helgefjelltest.de>
 <3vzgdnoegfdc7lflbincypzzjl3hitatj3oan5maejqng75kb3@e3enbnrxo4lx>
 <20250825230420.2dl2kkchtmkwjge7@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vjdhzis7bhmfyi62"
Content-Disposition: inline
In-Reply-To: <20250825230420.2dl2kkchtmkwjge7@illithid>


--vjdhzis7bhmfyi62
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, groff@gnu.org, 
	Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com, Colin Watson <cjwatson@debian.org>
Subject: Re: URL visibility on terminal devices (was: Issue in man page
 pathname.7)
References: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
 <aj3eqcdmjd5rjcs7ng74prcysoumnpaooxxhwklglwyrpvpp3t@vm3rqullggpi>
 <aKyMnL1N6wwD77X7@meinfjell.helgefjelltest.de>
 <67todkk4wpqgskfy3s75uy7cbtahfpcaxymdse7pjzrjk72r7w@25dwgnvj5imm>
 <aKy3oVSyXS8_Xj5l@meinfjell.helgefjelltest.de>
 <3vzgdnoegfdc7lflbincypzzjl3hitatj3oan5maejqng75kb3@e3enbnrxo4lx>
 <20250825230420.2dl2kkchtmkwjge7@illithid>
MIME-Version: 1.0
In-Reply-To: <20250825230420.2dl2kkchtmkwjge7@illithid>

[CC +=3D Colin]

Hi Branden,

On Mon, Aug 25, 2025 at 06:04:20PM -0500, G. Branden Robinson wrote:
> Hi Alex & Helge,
>=20
> tl;dr: Learn and use the "-rU0" option when your terminal device doesn't
> support OSC 8 hyperlinks.
>=20
> groff_man(7):
>      -rU0     Disable generation of URI hyperlinks in output drivers
>               capable of them, making the arguments to MT and UR calls
>               visible as formatted text.  grohtml(1), gropdf(1), and
>               grotty(1) enable hyperlinks by default (the last only if
>               not in its legacy output mode).
>=20
> If you _never_ use a terminal device that supports hyperlinking...
>=20
> groff_man(7):
>      /.../share/groff/site-tmac/man.local
>             Put site=E2=80=90local changes and customizations into this f=
ile.
>=20
> Thus, Helge might add
>=20
> .if n .nr U 0 \" Format URLs on terminal devices.
>=20
> to his system's "man.local" file.

[...]

> > I can confirm.  Branden, is this a bug?  I think the Linux console
> > should print the URI as in the old days.
>=20
> I can't reproduce that behavior with groff 1.23.0 but I can with Git.
>=20
> And that's due to a deliberate change.
>=20
> NEWS[1]:
> *  Hyperlink support is now enabled by default on PDF and terminal
>    devices for an (man) and doc (mdoc) documents.  Instructions and
>    commented code for disabling it are in the "man.local" and
>    "mdoc.local" files.
>=20
> For the moment, groff's hands are kind of tied.  To get this feature to
> Just Work(TM) with no user involvement requires three things to happen.
>=20
> 1.  grotty(1) needs to become a terminfo application.  Lennart Jablonka

[...]

>=20
> 2.  Once we have a tricked-out, terminfo-aware grotty, we meet another
>     problem:
>=20
>     There is no terminfo capability advertising OSC 8 hyperlink support.

[...]

> 3.  Even once we have a grotty(1) that knows whether the terminal device
>     can render hyperlinks or not, we have yet another problem:

[...]

>     Thus, the formatted content of a document can depend on
>     properties of the output device in a new way, one more, uh,
>     "exciting" than the ~1972 binary choice of "is this an nroff device
>     [~terminal/typewriter]?" or "is this a troff device [typesetter]?",
>     or the ~1980 parameter "what is the name of the output device?"
>     (such as [Kernighan troff] "post", "l202", or [groff] "ps", "pdf",
>     "utf8").


Hmmmm, that sounds not good at all.  How about moving this to man(1)?
That is, man(1) knows whether it is being piped or not, and thus can
tell groff(1) to do OSC8 or not.  And even for the case of the terminal,
it is in a better position to pass the information to groff(1); we'd
still need points 1 (modified for man(1)) and 2, but not 3, which is
very ugly.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--vjdhzis7bhmfyi62
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmitQKYACgkQ64mZXMKQ
wqmxgxAAt5GFXjDQCPo54nUSfNNYw+USpfMXr4k4J0+3x3vWoThyFon6qM00owM/
Ir67uyUNUrV/g2yc6RODbs2fJ6KKF+pIHsgjm7dclUwDMUelzhTv0MtAqvXjnXwj
wGNyfa4UKmmDdwN8nwNtq7L1aVjFt3EEh5imt8L1qzzfAonHFJF2cD7gik+VbmA3
rz4DxWGYIS6wZ3X2oEGTZuY5c0aIcsNabimqkNIL98fYcxq/yEl+SRTv8RfSQK0P
Ki4/BFIcG8rlOn9qHOindWRK/x1xed7LoRxEqLNNUooUf+nWx4GY5Nl3Wmj/e6q+
t7TaZ1N8QLNKt9ferZWhqH0E3nt/fmtLi2koKE1tOrIsuLhQhIAR2WGNPi2nCbvL
H6PG9cIeKTmNQFF+EKA5/XHvY7fqzxmSoP7ULQHOrNKFgRqx6lIspjhGEf0nph79
kygKaioUCvi9RJcs+RNbVTfLrzZ50sX+ldTJmf2VU3NZ7LRfWOETnNBTWTivZG4+
vZZuUzXMF3+RBTUdD8JI1baryE+hwUYxTlI5K2fjlgJpDTlOOwI+rrCimSidQiln
YCm17eO8pP3bHBPUBn9bzSgmX9qDyfFvngplLfr+fYSyvWIFtZ5kVeeRYGyj2Rex
nvQrRxafqOFGkLBIsWKzj8jD6Gh/FVUIs7Fu0DHLtDp+xqlZ4As=
=b4un
-----END PGP SIGNATURE-----

--vjdhzis7bhmfyi62--

