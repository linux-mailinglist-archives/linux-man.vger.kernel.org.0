Return-Path: <linux-man+bounces-1970-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 313719D032B
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:04:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB3922831CC
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:04:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FCC613AA5D;
	Sun, 17 Nov 2024 11:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnHQ31Ie"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18717E0FF
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 11:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731841471; cv=none; b=FBD/Exw+0eGW4lSRHFc2uYbIeI/2v/56SU5bUYYcG8n+RWJRCGd1xKmf4eWmKdZEEVLmjJWnkVe2AmN7CRG7H009sGDK4exg7pBrxjCd2ln80LVoJnDUtj4VULG3c6Mx1HZCxSFfUAAT7088tQ9NLFDK8M/V91i2r+jbqyj25kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731841471; c=relaxed/simple;
	bh=SztriQ2kyJ4GMPUmjOTBhlTjxjBm4Zsbk00QUKpEM9o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MO7rm/AfjxZ8sJb/FLauI4Ywn4JNzWiB+KGQhGcHktAWCPvCFred/6sDiR3Us5yuh9JDsbQGTH5cjYeRSpz6buL7fe5kIOWvZsuuGLw3+Nav6gvd4/BOXWQbcrj/2fQVAiIzQEVhiyMYYP8v0LN47L8tty40XSFdn95VG6mtwTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnHQ31Ie; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2A1EC4CECD;
	Sun, 17 Nov 2024 11:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731841470;
	bh=SztriQ2kyJ4GMPUmjOTBhlTjxjBm4Zsbk00QUKpEM9o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TnHQ31IeJ39D5xlA2DbS/P0tCec3q4AxcQjgESX4jeIi/WbOR5JLqfAQ0jnu3Als6
	 Qf5MQZbTJuDGhLy0ui15pWMCzFapwvkXjn1FCq9b9MqAmUNISmZFgg7em1KAGzpKmE
	 Xu9FHpDGqsnA5tI7ELrxWrHs0HtOf+1kxRPrly1TM4kDvvF0bcU7d20Df41Gksfmpi
	 zLy6K/o55nCKT+JWL74pabC+8xpWQjPlEFaDlKOtVEtXI7hV9wlIRVyqDEdJSdLmu+
	 Uy8CwI9MecafJ0MYY9kkd3odLK+Ddak3Kcv3jifMHpQWvqtQV9EugMvFSYuW/ZdNYc
	 +X5lXL4+esZww==
Date: Sun, 17 Nov 2024 12:04:27 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getrpcent_r.3
Message-ID: <y65shlzo76e6enllyqx6eh4kdhkfc3a656ayhw376hjqv23n2c@fhp3qe7fshoo>
References: <ZznJfcq7xl4n6oXL@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vumlpl7xifa67oj3"
Content-Disposition: inline
In-Reply-To: <ZznJfcq7xl4n6oXL@meinfjell.helgefjelltest.de>


--vumlpl7xifa67oj3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getrpcent_r.3
References: <ZznJfcq7xl4n6oXL@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJfcq7xl4n6oXL@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:21AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    I<result> =E2=86=92 I<*result> ?
>=20
> "On error, record not found (B<getrpcbyname_r>(), B<getrpcbynumber_r>()),=
 or "
> "end of input (B<getrpcent_r>())  I<result> is set to NULL."

Fixed.  Thanks!

Cheers,
Alex
=20

--=20
<https://www.alejandro-colomar.es/>

--vumlpl7xifa67oj3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc5zbsACgkQnowa+77/
2zIXJBAAgZ6kaiETe/gYtGaQuKMChqb1SMSMJPbJ37uVMkzP1xSbfYDAII4+xRjg
CPEBlPW1EgBKtkAj9iP9RQVO+8ZKqtDgnHx/J09VFcNVbDt4UCNWPt295ofgu0nB
cgAJ3gT1e9VRTNH2kC/pyYrnvuaQ6zRkp5r/etQA8RGHg4JFJ3x4C6IQlNaFuicC
H4tg+iUFKeMBW1BRKjUMbWYDYkKLTD7FdzKYiu9gyyQJuF8a9qNvgNkgFK74xG8N
qq+BJpXn4fb5nzbbx827t0FXyKE3sZ4BaXsjZQ6jzNd8g3vDP7MjV7edXeZtBV+Y
pU7ZYAe6B5DICjNy3vPt21zDGnB2cPUQSIL3+odBV5dg0TxLNv8J7piwq4k7caHr
i53QlwtBmiTwis2hzF4xEcQoRjjHuRamyToHvQZPc+kDOvcVTOfpPk7wVu7dA5GR
tvozR6yryajpb0HdNoAn7A9ThLv8+rAiCKIlTPtHf1/9b6Ws3vKnGobSjqAz0kTK
YR+i/GQNjSRVIn79mZ5IGm1elHOI/sN5sGHwURGcqjj1TlQYgqCjrXwK+nMa96ze
6L2sU2ggVFMA1LWQzti4nRT/rl6RinV2w7ugkIlgoyrkTZqKTRrWBo1YwqDHYjdV
SSnh7iSyWPg79aPpoJpZb66CQamM+BoUoXSiL9OZT9ROrU7293k=
=TjQ9
-----END PGP SIGNATURE-----

--vumlpl7xifa67oj3--

