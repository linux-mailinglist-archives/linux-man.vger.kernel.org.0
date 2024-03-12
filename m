Return-Path: <linux-man+bounces-572-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A3A8798CA
	for <lists+linux-man@lfdr.de>; Tue, 12 Mar 2024 17:20:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 59E8E1C215B6
	for <lists+linux-man@lfdr.de>; Tue, 12 Mar 2024 16:20:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6F0F7D409;
	Tue, 12 Mar 2024 16:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2tnzueG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1F77D3F9
	for <linux-man@vger.kernel.org>; Tue, 12 Mar 2024 16:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710260410; cv=none; b=q7HN5wfvMkXVCNGHSVCoanBpGD9aD9NkcDb3xyG3cx/4kAatfF6NHCMQmCQubQlJSlLydXvx6N/SvHZRtfweMd/SAYTFcqBFXV7cqMhpVnO7sF3ubeUV5aXbl+OTTk1/FWUTq7OiYuEu+8jn5u8aAJVuFut2S1VyngagWJCxeZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710260410; c=relaxed/simple;
	bh=8XV19QnJdDVv/DwdxfLLHFY+iVuZViiJp8CjR2HIE7c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TeAR/mWigJqfaOHuIW/imL7KkMSRM9A/s1xZOlNgrwKdE/pjwm2UrnTNflK0MbDzuFVVfruRHHOyqmLW1QgdJRWStbpQvO+SEj/FtNGIzE+ra+tK1mJkl8ciO6CeD0KLfUa4JQQWfzzPUZYqDwolEbYD4zfj4xBLJDQtIBIDm6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2tnzueG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E467C433F1;
	Tue, 12 Mar 2024 16:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710260410;
	bh=8XV19QnJdDVv/DwdxfLLHFY+iVuZViiJp8CjR2HIE7c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D2tnzueGh89L9d/GShBsOBcUDMgQDeg8kM8Et81wCrgNbPBGGstPKmUie1EwXcbP8
	 829YC4YVAgbscXoBKuPgEhpOHqtTGNnTUdeMPb3iAx3nzGs7ZnTrycn91xNquKaJKL
	 lAD69ZOFvvxG/5fLNOIk6uFqOnBk0Yg/sTzYbYPxRQfgFh4ZwTldO4I4/O4Z5Lty3d
	 PcwDlknwzWEr2sUkhYWXIegsQbNwaiLA5hwYlX4cKcIgUiN8YQr1wxYaa6tp9xDV+h
	 XpPe5HWeQ0LWI8OI71GsBw/CsQIcpGY8AaG0WzsUQ+bH65yOrHxAYyXeMc+b+B2RL/
	 JKxSri/NpdTTQ==
Date: Tue, 12 Mar 2024 17:20:06 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org, branden@debian.org
Subject: Re: Bogus index in man-pages book from other projects
Message-ID: <ZfCAtl5Q-F2uPJM4@debian>
References: <ZeyMlGwA7MNDZIfj@debian>
 <2306955.zFelfHtBYS@pip>
 <ZfBi5PSZXPDpygXB@debian>
 <1873292.UaS1mDKzQr@pip>
 <ZfB52IQowBB9zVU7@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9yRqDoPOZFoHcNeW"
Content-Disposition: inline
In-Reply-To: <ZfB52IQowBB9zVU7@debian>


--9yRqDoPOZFoHcNeW
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 Mar 2024 17:20:06 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org, branden@debian.org
Subject: Re: Bogus index in man-pages book from other projects

On Tue, Mar 12, 2024 at 04:50:47PM +0100, Alejandro Colomar wrote:
> 	alx@debian:~/src/shadow/shadow/build/man/ru$ tail man1/gpasswd.1
> 	=D1=81=D0=BE=D0=B4=D0=B5=D1=80=D0=B6=D0=B8=D1=82 =D0=B7=D0=B0=D1=89=D0=
=B8=D1=89=D0=B0=D0=B5=D0=BC=D1=83=D1=8E =D0=B8=D0=BD=D1=84=D0=BE=D1=80=D0=
=BC=D0=B0=D1=86=D0=B8=D1=8E =D0=BE =D0=B3=D1=80=D1=83=D0=BF=D0=BF=D0=B0=D1=
=85
> 	.RE
> 	.SH "=D0=A1=D0=9C=D0=9E=D0=A2=D0=A0=D0=98=D0=A2=D0=95 =D0=A2=D0=90=D0=9A=
=D0=96=D0=95"
> 	.PP
> 	\fBnewgrp\fR(1),
> 	\fBgroupadd\fR(8),
> 	\fBgroupdel\fR(8),
> 	\fBgroupmod\fR(8),
> 	\fBgrpck\fR(8),
> 	\fBgroup\fR(5), \fBgshadow\fR(5)\&.
>=20
> So it might be due to having two references in the same line.  I suspect
> maybe the updated regex has some issues?

Ahh, I tought there was a group(5) page in shadow, but there isn't.  And
since you only parse that pattern at the begining of a line, it didn't
try the second one.  Let's ignore these small and rare glitches, I guess.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--9yRqDoPOZFoHcNeW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXwgLYACgkQnowa+77/
2zKp0A//XSZ2btREmLVZbZ8p8PyaW0An4iiQ55QzNgFQZXc43mt+g3/CbDyvL10H
rSUvyYAbK4Ge/jk8eFa3WEq/jb6X/oC5UGcrr+RLtsIdWfL/p8UkOqSZ5qxZRHm0
Ranznqdt6NDvd/+scCsNC9/vWBPNsbS7JL58FP1hiT7Gp1MTarVLqHfnPLTv/+L+
cZCp23vdZP6fA0Bgkcoe7x3h8jHmR84PVLz9tMrvw/0ovwYrtjLQhR+Dx3HAOLH9
UEdvOT1UnKnMa5WdBkIdaWp05gE5sm9j4FzpAV1JLgGuug48TjBKB/7WlaFo66C7
4pj+0+SKhXSP9mVd7G1MoA6mHgQH6RsOERYDggyOxmoo+Gfk3Ra0anEFP6JB85Xs
fU/+zeMF53W0+BU0WCct0o/GyzMqUByUI8qdudfWzUwF2E9HsZuekx99qtrt/ssa
F/b3loRKmbISQan/6vR5dC7i1DcoNhbxj0dLWnCRN1rCMw5RXP1L7lnLNbQk8u6x
w0rgVoaAGuQI1/2uJcyjnheZAXWgtYGlDJI+V4Mt4SWct/W0GkWYKHBYrIoTJfYh
rAmls0sPQHm9kIy0g47aStYkuPu9DJzla9GE6cQKM/VPMhJjopagfCVZGvGNXilh
Qe5zzeQJUtEmRrJZPHLEu/Qjki1u88tDTFt9Sk1/eLBuQWTcQf0=
=3vMe
-----END PGP SIGNATURE-----

--9yRqDoPOZFoHcNeW--

