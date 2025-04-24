Return-Path: <linux-man+bounces-2817-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 30537A9A27E
	for <lists+linux-man@lfdr.de>; Thu, 24 Apr 2025 08:42:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B84918979EB
	for <lists+linux-man@lfdr.de>; Thu, 24 Apr 2025 06:42:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B66531B4F1F;
	Thu, 24 Apr 2025 06:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWE5r1HJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77A7A1B0435
	for <linux-man@vger.kernel.org>; Thu, 24 Apr 2025 06:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745476925; cv=none; b=VTk7tFQWkYvnJF27T+NFmhBI9SYCRXFHJin77TZ0kJLc5lutT/+vmPzfaxqm6HFX4OGSRP579XDbzYx9qvTpns+AazBm3K+6t6oZHpLEQv8JzsCTredctQd6RgzZE0mn4L3hL2v7ccSOtmR96jU+wrlU9qCrGGmaLiYVbNkdyeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745476925; c=relaxed/simple;
	bh=U6GNyTUEUi6Z7hrqMS87YQdHOSsFIpqUGxXpb4oip2M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZVZFsqqjWuQUr8J/z6HCRkj9NjXRq6k5JOuvPfQe5DHihF53eIrmn9Ku9+k7C/ukgdxdfqwVxDLjB7NN6id06K75uUMHP6juC6t3M5VoGsTXZjaQwoNQoeFpw8zKjwEGE/uM8sFlPahFQpKXh20WT9Yyq4PCEnch468PZH/gtkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWE5r1HJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81CD4C4CEE3;
	Thu, 24 Apr 2025 06:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745476924;
	bh=U6GNyTUEUi6Z7hrqMS87YQdHOSsFIpqUGxXpb4oip2M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aWE5r1HJ5mwOy9cdxFPh4KJmBGbz4XT+zRA7BgTdNmAkYsVD605Z/W6IKIcIb8tr2
	 FiumZejeQ4DuBBZoVWnIvKf0kY7TigRV1IlbKi2bJElXtXxjybFLioFR+gdQxsjzIn
	 tljEbNOox17wJNMDCRJ6uLKv44PRGftRlSE+pBpxzBZmxXszi2ZMztZ3zmg9qFg+VL
	 sJSBIKnDl2qNyW3X+XSRdokKfjAe+QBT9UAStxVHfFKHc6EuQUH5V/uemmQ2uAb8LP
	 dpdFkp3KEOijvlUPHz1siUdemlYeKqnhkUxYy0vfqxoLKfd2+9gVyE663D34EDFdYO
	 uDxPmYzE/V5lQ==
Date: Thu, 24 Apr 2025 08:42:00 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?VGhpw6liYXVk?= Weksteen <tweek@google.com>
Cc: linux-man@vger.kernel.org, Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH] man/man2/memfd_secret.2: Update default state
Message-ID: <m5nal52wpruyn6vbjha6lgkta3ptoz7dltxs2h2po66mpdhm2c@3idehje65567>
References: <20250424022605.10485-1-tweek@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wai4zrmrve2rl426"
Content-Disposition: inline
In-Reply-To: <20250424022605.10485-1-tweek@google.com>


--wai4zrmrve2rl426
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?VGhpw6liYXVk?= Weksteen <tweek@google.com>
Cc: linux-man@vger.kernel.org, Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH] man/man2/memfd_secret.2: Update default state
References: <20250424022605.10485-1-tweek@google.com>
MIME-Version: 1.0
In-Reply-To: <20250424022605.10485-1-tweek@google.com>

Hi Thi=C3=A9baud,

On Thu, Apr 24, 2025 at 12:26:05PM +1000, Thi=C3=A9baud Weksteen wrote:
> In commit b758fe6df50 ("mm/secretmem: make it on by default"),
> memfd_secret was updated to be enabled by default.
>=20
> Signed-off-by: Thi=C3=A9baud Weksteen <tweek@google.com>

Thanks for the patch!  See some comments below.

> ---
>  man/man2/memfd_secret.2 | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
>=20
> diff --git a/man/man2/memfd_secret.2 b/man/man2/memfd_secret.2
> index 322d67a41..2eb6db599 100644
> --- a/man/man2/memfd_secret.2
> +++ b/man/man2/memfd_secret.2
> @@ -182,12 +182,15 @@ or spawn a new privileged user-space process to per=
form
>  secrets exfiltration using
>  .BR ptrace (2).
>  .P
> -The way
> +Before Linux 6.5,
> +.\" commit b758fe6df50daf68fef089d8f3c1cd49fc794ed2
> +there was some concern that
>  .BR memfd_secret ()
> -allocates and locks the memory may impact overall system performance,
> -therefore the system call is disabled by default and only available
> +allocations and memory locking had an impact on system performance,
> +therefore the system call was disabled by default and only available
>  if the system administrator turned it on using
> -"secretmem.enable=3Dy" kernel parameter.
> +"secretmem.enable=3Dy" kernel parameter. Since Linux 6.5, the system

Please use semantic newlines.  See man-pageS(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
       In the source of a manual page, new sentences should be  started
       on  new  lines,  long  sentences  should  be split into lines at
       clause breaks (commas, semicolons, colons, and so on), and  long
       clauses  should be split at phrase boundaries.  This convention,
       sometimes known as "semantic newlines", makes it easier  to  see
       the effect of patches, which often operate at the level of indi=E2=
=80=90
       vidual sentences, clauses, or phrases.

> +call is enabled by default.

Does this mean that there's no concerns about performance anymore?  Or
that security reasons are more important than performance?

I would move the entire paragraph to the HISTORY section.


Have a lovely day!
Alex

>  .P
>  To prevent potential data leaks of memory regions backed by
>  .BR memfd_secret ()
> --=20
> 2.49.0.805.g082f7c87e0-goog
>=20

--=20
<https://www.alejandro-colomar.es/>

--wai4zrmrve2rl426
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgJ3TEACgkQ64mZXMKQ
wqkKxQ/9H3Ap1P25XnAL8RnUp1MDVqtlqi7i5mvOU64eyZD8mKeiHWF7mJ17qq/c
6TqTBLmx+5ROraiMnera+PfGMJBnzhgcVXiSBCwXKhtPxFngsPGd1X0nArU7BrId
JgJUEA3+9Vw3p2U+NkdrGJA/Db1ENPM64KFIyRYnHs2/0Y/3ggcpwHSUgBdcApl5
MgPs5cT5UC8yE28jRXQmsP4ELqn+B8BXJvqLVnPGClgQjELdNTgXYJ3yDJI9K7Sa
vN06SU2kmDzUb3D0Y2A8Nv9rJSnILMsRotb6DHmJ7Vvl+CqHrwnkxvb7uCnqQYFV
/jS3Moo3iOzWOkuG00Ma969m8v8rdKHi3T6V/1lcHPy/1Q4i1kr2/TMjSa7kUMVR
X/+agxL1jYyEkUiTMzhNXeXuJe+YWH37hX2vjARN8aM2ah18YGDPFlhw5kcrjCnK
F3fxmT/ig9oHpkWG8AemqZPF4HMhZG7g79iC0t8DTL1BjIDC55kQzrMvI/U++ZKV
UJaaOcZZVdevQNa46nLVzMd2niKI9kvwEvDWZngq0SVkBS+1TSiLy3fCRqkKnpbN
wqeHHN3fsiifRj/8iVTFh1y74Z2TP9ZZxo+8E3eQaqdFiMMifL21dU2Ui8oUQjB/
NVlSTHaNxcupJx7psLIivFss0DJhdRBp5e3WgwOpR02jQCBKY5o=
=hY4p
-----END PGP SIGNATURE-----

--wai4zrmrve2rl426--

