Return-Path: <linux-man+bounces-1984-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B90D69D0355
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:51:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F300283CFA
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A744D1422AB;
	Sun, 17 Nov 2024 11:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGTgjfLa"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B88224EA
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 11:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731844275; cv=none; b=s49VEK6OcpUNdRiTtMM/PIE7MqYSAHIJ/VHo4kFbdCl4EQSH4CKDsAXHVQHuWjBLihBYn3HfppfymG4mZSj4bCsLZIpA8JAd9NA6g5nGBIqRnAQvfjuVyOGMOMh5Dx/94tKwiTmqJNX2ULFscJlLOFoQN2knOExvEbcGsT6p6oA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731844275; c=relaxed/simple;
	bh=WANdvT8/V4NYWJ/B3U/wesTSNb51DXXTa1X09zsqvDs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ILr1aZnmkTQaPzTRwXbRGkfuNdOQKpAfdSUPYm0TuFmQLWK2TXhucO+ZlMd++GNzB1LOlmme5nZ226Mbrl4l5WXZHR/y0XfKQ7c5FpMlVR54lNG50Xu8u8FkuAKoBkKpLHm7h/lyLvdEPc+zmU6aqH+r2eoXWsPNhMZPUUl1W7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGTgjfLa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B7A8C4CECD;
	Sun, 17 Nov 2024 11:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731844274;
	bh=WANdvT8/V4NYWJ/B3U/wesTSNb51DXXTa1X09zsqvDs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aGTgjfLarSTkAJEy23CHq9qgHKFyTI/0Ea/8mtXOmp7VJmRrP31/HIMvOn58tz8bZ
	 KbZ5knFbWkEAft9Yx1ws17M1TKGW5uUqXl2KkGy3yxuA9rWvVl0nbWCKjhgCq70atk
	 tEXNhV5TeeTSDekpBFjyvHVSB9dVB92XTRyjej1EGuUb+c2B6txLPEmqirCKr29dIH
	 IL/jGAgx+hvxhr4qfHA2ryKwXZJTcthALlvW8S8SCvK4QEyStcT5FA009vT64hKyrr
	 p5/2PpP8RbxRHfqGPDxBPCI9rGECSubJaEHFdKlOdWOm3UKOyRB7lYLtyBggFi2Vpi
	 heUEUbvkKQTsQ==
Date: Sun, 17 Nov 2024 12:51:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page sched_get_priority_max.2
Message-ID: <urrcxpw4n7qyop3ubujedrvskeo4rx2aegbex6wp4lydplb5wc@jk4hjwvwnmwk>
References: <ZznJfy67cEKrL3PW@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="st3l4mpxgrkh4zds"
Content-Disposition: inline
In-Reply-To: <ZznJfy67cEKrL3PW@meinfjell.helgefjelltest.de>


--st3l4mpxgrkh4zds
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page sched_get_priority_max.2
References: <ZznJfy67cEKrL3PW@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJfy67cEKrL3PW@meinfjell.helgefjelltest.de>

On Sun, Nov 17, 2024 at 10:46:23AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    B<sched_get_priority_min>()  POSIX.1 =E2=86=92 B<sched_get_prio=
rity_min>(). POSIX.1
>=20
> "The range of scheduling priorities may vary on other POSIX systems, thus=
 it "
> "is a good idea for portable applications to use a virtual priority range=
 and "
> "map it to the interval given by B<sched_get_priority_max>()  and "
> "B<sched_get_priority_min>()  POSIX.1 requires a spread of at least 32 "
> "between the maximum and the minimum values for B<SCHED_FIFO> and B<SCHED=
_RR>."

Fixed.  Thanks!

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--st3l4mpxgrkh4zds
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc52K4ACgkQnowa+77/
2zIdGA/8C795UBZewC8iZSX1KLDvThoJHCB1yNCfMVxGXER/mA2iKHmo1zOQ63lL
ipdJ6QWmY1rGb5XeNpFMVaJbxIte4WxbXPu+ZBMN34SIq5jpvhELadNtwP7hsSNz
GDcLTQrfLLFi7n8PG206fmtcEKPHlxLOg1p+vrM2bHD4RGqtrkmta6zHznQc9ipm
lY6P/Up30wVR8hvPGc3wBnBYFxuE1t29RX8HhfCrf6Ty59pH1S7Jkm+BWoeB3Q0f
RKgYMXnDtdH4DNmiB5igQK6o9FiQM69K0zRlyWv/ZHAhPlN4lLaztqYBNSS3426h
YBuNsPl3RHJBqJjtgk0dzKNNbGQ7IvCgvlUqpS8iX/qrculMkch+SopL4pDJvA+Z
WnzLIq5B/dOre6vLRZUeS8Qt+4lHmXJ1ofFW9UjzGB+sLhc7lrHtoS9rHXTJKnty
jPz70CFKaV5h4pIVejEL0u4wuV0/2ReWfuHzuec3cT3ilDw91Nm4hPfdXdjH+758
hnx+M/pjQEYke0pWQCbCLLu3P6SxfZHk/5bEkyPYFszkRLLqfUURM1PnlmQnYW9G
9s52+rMz2iWTuHh8M19zlWivo21G9tWyY28qFcnhPx1XuwNFrQkDokJ7/YBNdIv9
PHUJq2eTHVssQc4Z/Te5mlQN50InaTJNu9PcvHz2Xf1E0lsajq8=
=/6ct
-----END PGP SIGNATURE-----

--st3l4mpxgrkh4zds--

