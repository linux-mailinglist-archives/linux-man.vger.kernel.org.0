Return-Path: <linux-man+bounces-2967-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A4315ABAEBD
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 10:19:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 47D15176C85
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 08:19:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3783D205513;
	Sun, 18 May 2025 08:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbdAnWbP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69F72D052;
	Sun, 18 May 2025 08:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747556372; cv=none; b=qgdWJiBA5cKXLFBr3rjUl8omtT7CvcXyvYmPyx9S1W/9IB1pTyGpziB0WMCuR9cPfCd/XNW/LCiAWAg79OXBKc8olvFkW1KwAmAQ5Kt6mUARRc8b20VCcHlp8YB46dLS2qqK2wvm7ZZa1jBqgZdlBnpz33GGQ9vNS8K4TQhtTNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747556372; c=relaxed/simple;
	bh=St0REcPoC1URggSqzWnqCzz5Xon7mkpizyt4L5luUKM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=scLHsrU79dIDbzBd3ID9rlqGLofnJFN9k2rBWspso1oVzut9Mnsqnr/eSOUOUuUL06NdGQEKUFlEHSbZlzq0owdBk28qcHcIP+o8UZtIER4TZlIVNpyv3XSumNpzXvYrWwPPd+RQe6pGR0XfZV98jKfw0wy0dQ16gg1gj/fmJJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbdAnWbP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7B84C4CEE7;
	Sun, 18 May 2025 08:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747556371;
	bh=St0REcPoC1URggSqzWnqCzz5Xon7mkpizyt4L5luUKM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QbdAnWbPJsdDmIUXa8gAGLZm8O0h6od8QCFfeawZDFhbGcNgD2NxCPfxook5XBf1m
	 2UPYBcieSNCI9o57a7tgzh2cQ682BThX+zulKlPXBhxYzD2pvYy4r05+i2y1bGOMMk
	 tqZEwZX5U8p6c0CP0XY/6Irm10BmJYPGHlDoZ7KQceObd+KmcTm9Y/Ku2mIGR6ZbN5
	 4DUmRu1ogVv1l+SSi+kgDbGskECRsWcZa0hVQmF3+5MYwmjNVmsLox3xz2NNPVIO2h
	 7O/21EVOzbJNrV4fQkCS8b5W2k2S0dvczX9fpezhhJTLabgCnjuwo9UxHiw8gwvsIN
	 ZcRFT8USiwFOg==
Date: Sun, 18 May 2025 10:19:24 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Peter Xu <peterx@redhat.com>
Cc: linux-man@vger.kernel.org, linux-mm@kvack.org, 
	linux-kernel@vger.kernel.org, Andrea Arcangeli <aarcange@redhat.com>, 
	Kyle Huey <me@kylehuey.com>, Robert O'Callahan <robert@ocallahan.org>, 
	Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, 
	Axel Rasmussen <axelrasmussen@google.com>
Subject: Re: [PATCH v2 2/2] UFFDIO_API.2const: Add an entry for
 UFFDIO_FEATURE_MOVE
Message-ID: <jtrv3ronvwituh5dpxexujkpzmtjyzioa3dkeil3yerg3hpuf5@tsudd5pnpkhc>
References: <20250514172630.569788-1-peterx@redhat.com>
 <20250514172630.569788-3-peterx@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kao3nfvkyjbaav2k"
Content-Disposition: inline
In-Reply-To: <20250514172630.569788-3-peterx@redhat.com>


--kao3nfvkyjbaav2k
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Peter Xu <peterx@redhat.com>
Cc: linux-man@vger.kernel.org, linux-mm@kvack.org, 
	linux-kernel@vger.kernel.org, Andrea Arcangeli <aarcange@redhat.com>, 
	Kyle Huey <me@kylehuey.com>, Robert O'Callahan <robert@ocallahan.org>, 
	Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, 
	Axel Rasmussen <axelrasmussen@google.com>
Subject: Re: [PATCH v2 2/2] UFFDIO_API.2const: Add an entry for
 UFFDIO_FEATURE_MOVE
References: <20250514172630.569788-1-peterx@redhat.com>
 <20250514172630.569788-3-peterx@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20250514172630.569788-3-peterx@redhat.com>

Hi Peter,

On Wed, May 14, 2025 at 01:26:30PM -0400, Peter Xu wrote:
> Add the entry for UFFDIO_MOVE ioctl in UFFDIO_API man page.
>=20
> Fixes: d7dec35a3b19 ("man/man2/ioctl_userfaultfd.2, man/man2const/UFFDIO_=
MOVE.2const: Document UFFDIO_MOVE")
> Reviewed-by: Suren Baghdasaryan <surenb@google.com>
> Signed-off-by: Peter Xu <peterx@redhat.com>

Thanks!  I've applied the patch.


Cheers,
Alex

> ---
>  man/man2const/UFFDIO_API.2const | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/man/man2const/UFFDIO_API.2const b/man/man2const/UFFDIO_API.2=
const
> index aca27dc5c..682df4316 100644
> --- a/man/man2const/UFFDIO_API.2const
> +++ b/man/man2const/UFFDIO_API.2const
> @@ -205,6 +205,12 @@ ioctl.
>  If this feature bit is set,
>  the write protection faults would be asynchronously resolved
>  by the kernel.
> +.TP
> +.BR UFFD_FEATURE_MOVE " (since Linux 6.8)"
> +If this feature bit is set,
> +the kernel supports resolving faults with the
> +.B UFFDIO_MOVE
> +ioctl.
>  .P
>  The returned
>  .I argp->ioctls
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--kao3nfvkyjbaav2k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgpmAwACgkQ64mZXMKQ
wqn5ug/8DVdXtUmjtN+vJiClI/peAmbtWFzdrkqPv0C5n17IfrLgT+SFIblQ5fk6
YRMARWgFAtcs+Sia5R2rgFBuRQdsx+Jt1B65Tu1Q8NHvTXt4ASmYphQ6ZmcZuBhb
Lvj55xk3z7qK1Lcm7MRORllq028PrvMX2+gFbXuefSaM1+9YmZ0tZXokKS5yzbAV
Ev90l15tVddZu+njYc+FM+DyZkzc9hEFYxdzcCZIxS1zucnI2X0cDbHQo+XWwSu+
F9uDelW/GUs4BTs1O4DHWasze/4C0tA/SFCBMGFJzDbhJTfgGAZigoxSEHyWu5/d
i/gkc1sByMm4KyQsAG8hfa4XXrzhf6hj4fH0lZSMagWyGdb+jqwF+f9irhyz5d5n
SaVhzMa6kjYfILHbnT48sSC4Lud2O8JfvtHWQXwjLuJ7u3Zy0cCaUbzaytsbdRML
TG1XeJgEir6WdrPPR+ltiyh11avvwxagKaY0naf3Bs+Rb4eyzoKPI0LmRjJ/Tmrt
m1W77T0NY6wl0Ulpkb+En0VgVdSoDkoCE7nkWL9kyEwRDO8nJI519q+ljRtPFRRC
tgpEwmktRNR7wh+UDkUICkoTxy1d1qH8dQZ1gmWRkdHrKO9tZlY06R8WC2L62WWd
K8beCEeTLeOCl2ltf+oDx9a/Ef6HcS+VkWhAiD4YjuMXN7TMiHA=
=q41J
-----END PGP SIGNATURE-----

--kao3nfvkyjbaav2k--

