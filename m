Return-Path: <linux-man+bounces-658-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DA987E44B
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 08:49:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A48271C20A28
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 07:49:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5212722F17;
	Mon, 18 Mar 2024 07:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdmE30Ys"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D4022F0E
	for <linux-man@vger.kernel.org>; Mon, 18 Mar 2024 07:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710748165; cv=none; b=lQCKs9MTL7odoZU2OiPqKGxac4klrumu53O8G9h39lCR2OJxRZ4rwdXbszSbvDdliu5aFjJG5QlmlJCTJQdn7FHkkn81m1LqqidK3yQQJT/0IffPX/JfoTxveWQ/7UJ0s4btrHL0pyMEO+fXS1mxCiNUR/eJzB5EP6GXJmaQMQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710748165; c=relaxed/simple;
	bh=kw7ggxTvySTDJCWODxPjDv1EAbvZXvatYQCXm323JHg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oRlvMOMCtVuVsusvWon0U/zO39EtVp4kbi6qPMwGN8YAo5B7rrnB3kaKSAwMQMH5BMTPBHR1qq4CbBzIaeZSHlxQFwsCffpsbX12NrbVAqS10xhVFTCokyqN40W20xuDPu2iAoFvJCwXPiUOS84XQRUuoY37uq4+DGQDgMkI8dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdmE30Ys; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32086C433F1;
	Mon, 18 Mar 2024 07:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710748164;
	bh=kw7ggxTvySTDJCWODxPjDv1EAbvZXvatYQCXm323JHg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fdmE30YsdQECt26s3hOS+7KdtCxA6AK6FJnp74pjIV55AMkPKrnzZ/05jOF2ckF0D
	 zxVBBneIyMUieCVZ6r3MVVqxTvMNzrbOToXV3/jpBDuRRB+lWpNEZZuB7njz8CbLmi
	 hDSHFgSHsFI7P45htKsTLwk2no7hgFD6X7UeCdQbi/vb0uH/uZYdh/kEW9OH9l4KPM
	 xPE1KWUeGcyMLprhJcOWQV+dbmyEu2JxiVR24qdhGb1EtWkKGHA6f2TkSCUEhf+odV
	 UWQ5KQb+wE+H7ibEWm/Pv1e26OZ3LoVDNQOsm0Ln4t2V94KI9qGWLsWRkLhBEU0QOa
	 NCSKPG8Gzhzvw==
Date: Mon, 18 Mar 2024 08:49:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jing Peng <pj.hades@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] bpf.2: wfix
Message-ID: <ZffyApxQnYuheTlR@debian>
References: <CAL+Ps4Q7Y_R=oVG3082Jd_6zAzMEZvx3gR+m+j5Abyc9rvw74w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i0zugHDGjf2rDqH+"
Content-Disposition: inline
In-Reply-To: <CAL+Ps4Q7Y_R=oVG3082Jd_6zAzMEZvx3gR+m+j5Abyc9rvw74w@mail.gmail.com>


--i0zugHDGjf2rDqH+
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 Mar 2024 08:49:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jing Peng <pj.hades@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] bpf.2: wfix

Hi Jing,

On Sun, Mar 17, 2024 at 07:48:24PM -0400, Jing Peng wrote:
> Signed-off-by: Jing Peng <pj.hades@gmail.com>

Patch applied.  Thanks.

Have a lovely day!
Alex

> ---
>  man2/bpf.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man2/bpf.2 b/man2/bpf.2
> index 9b8e81fa2..69e1cd933 100644
> --- a/man2/bpf.2
> +++ b/man2/bpf.2
> @@ -1143,7 +1143,7 @@ provided in the kernel source tree.
>  .P
>  Since Linux 4.15,
>  .\" commit 290af86629b25ffd1ed6232c4e9107da031705cb
> -the kernel may configured with the
> +the kernel may be configured with the
>  .B CONFIG_BPF_JIT_ALWAYS_ON
>  option.
>  In this case, the JIT compiler is always enabled, and the
> --
> 2.41.0

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--i0zugHDGjf2rDqH+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX38gEACgkQnowa+77/
2zIUaQ//VHE6nkQqYSoEOYuOx1MFsoA2Sl4BjyojwvQsLXqtxS638ETXwXcJo71a
CegJdF3xK0Kd4rqHkqnNUioGkeCfuZXaDezYnCpXDNy5WY/Fwgzjdx5rKWHXJkCE
8nbWnFztVBzcEjWX3lMb2o2r1VU8m150tjAiZWi1e+E+D9tojNgTNP2VQmoexPN2
iaPRtPn23QB1oEE1Ddzn0CG3X/CJR9HZVzxL8QpE6oBo3Dilyp8MXJspcJ+uC2TJ
4dnfoMrx8Wvh/YeBmJZXNHcGr3KT2SRMCJtWDtBsJBZCkCsQOjr9hdGAdQiY8ag/
aOD97AnKXy2a2PH+g81EqXWkgbMlCF6cirazlB00NxQ4yebtMVtL4uMznyxUomjf
hyihii/EXJ5hZnnQlpLEaUnftfOvDOMrUyK1BErIxRyIwWfLcjLzsM7Nc3LoY0rQ
rsk7YyXzID2ZgS9E2WMPdybibQfroCFEx/Jp2uIcG9ik8awH9qorvIzmHCbhUYXM
BUhX0YvCRaBJXyLfD6aPvLvzK0PxRT/l39us75te9BxzyHG6IVt7KobKgplU/VDP
qDNxP26X0onhmrGUG0psCnZbeDKaLfAb/zULJYH+f4ntxc1zUqXat8c3+SDfw004
+Y4U5kOUJavkZegkY6rpbrMcjPRq7jLdpWFa1+XYIbRVOyTMKU8=
=HVJd
-----END PGP SIGNATURE-----

--i0zugHDGjf2rDqH+--

