Return-Path: <linux-man+bounces-1510-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3619394FE
	for <lists+linux-man@lfdr.de>; Mon, 22 Jul 2024 22:52:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9FEC41F2195D
	for <lists+linux-man@lfdr.de>; Mon, 22 Jul 2024 20:52:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 450BD328DB;
	Mon, 22 Jul 2024 20:52:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="juzXg9WI"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0516628379
	for <linux-man@vger.kernel.org>; Mon, 22 Jul 2024 20:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721681564; cv=none; b=VC1XfOkI1XK+X++ka4oiwksoT+zoYuuOgi6bCr+MiMDKV0KYveg382SCq4cv2u3Gp5Z42KdDi5RBlJS3oP/l5PCk4/8GEu8RCtaOuqeJx+RJL8bK2Qgp0M3q/yPj8Swrex5yJ16+L5P9JvkRFa2mBjOp2sGzHlymBp9etmpz9SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721681564; c=relaxed/simple;
	bh=dY2dsW6XO1zmLlVoYT3giJPmN8IiJT4a6mrBGuFVTKs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KuTValuHX9VT1zOzZ0QcbHEco8mJaZ7gZXF91LOdeXZval6AhBNbASepS0S5y5gDHXggkvZJhs7I4qQwSFSBr24JycAn9t3zfYhcyQX87V3q9xWgeVRkWOBG6m/jsTXAg0sXmlLr6Q9UR5heVSlNO3trws6khH7Fnis/IMuZc74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=juzXg9WI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98D12C116B1;
	Mon, 22 Jul 2024 20:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721681563;
	bh=dY2dsW6XO1zmLlVoYT3giJPmN8IiJT4a6mrBGuFVTKs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=juzXg9WIi7pTsqDX96nLcucSBNV75NpK9qdULshA204rDgH3HFeOfgb+7cWSS2jeS
	 vWxxTFtolbGuvGClZ5PPh3ojKSHG5i15LBzli9unePICCcz0SQtDoVb5WUU79Vb+Uf
	 KZyylH7r9zTO4KduxJJQFVyzJg4HNi2tRkjYFzaoGzaGeM64x+2gI9Qat/Eqe7IzGH
	 di80ExICtLE0Dl5sMFqN4S/fXbaC8w7cneYeLQ09ENNf/nhRKIgYITUnwYPapqCtvZ
	 1AOK36EmE5F7yz222C03PVQqtfJakMhqOAvj0YfXe6NQy2GEY8U3eQc9vZVq8pxGUB
	 b800z/lp2GrVg==
Date: Mon, 22 Jul 2024 22:52:40 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/5] landlock.7, landlock_*.2: wfix
Message-ID: <to74w6l6sgoucuawgbjxblgxosdylms7lvhtz6khwzqedu36gl@jlo36pjmymem>
References: <20240719133801.3541732-2-gnoack@google.com>
 <20240719133801.3541732-3-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zmyyj5up4ajqri42"
Content-Disposition: inline
In-Reply-To: <20240719133801.3541732-3-gnoack@google.com>


--zmyyj5up4ajqri42
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/5] landlock.7, landlock_*.2: wfix
References: <20240719133801.3541732-2-gnoack@google.com>
 <20240719133801.3541732-3-gnoack@google.com>
MIME-Version: 1.0
In-Reply-To: <20240719133801.3541732-3-gnoack@google.com>

Hi G=C3=BCnther,

On Fri, Jul 19, 2024 at 01:37:58PM GMT, G=C3=BCnther Noack wrote:
> * Various wording fixes
> * List the same error code multiple times,
>   if it can happen for multiple reasons.
>=20
> Reviewed-by: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
> Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
> ---
>  man/man2/landlock_add_rule.2       |  9 +++++++--
>  man/man2/landlock_create_ruleset.2 |  6 +++---
>  man/man2/landlock_restrict_self.2  | 11 ++++++-----
>  man/man7/landlock.7                |  6 ++++--
>  4 files changed, 20 insertions(+), 12 deletions(-)
>=20
> diff --git a/man/man2/landlock_add_rule.2 b/man/man2/landlock_add_rule.2
> index d4ae8f2f6..fa0b1f109 100644
> --- a/man/man2/landlock_add_rule.2
> +++ b/man/man2/landlock_add_rule.2
> @@ -60,7 +60,9 @@ struct landlock_path_beneath_attr {
>  .in
>  .IP
>  .I allowed_access
> -contains a bitmask of allowed filesystem actions for this file hierarchy
> +contains a bitmask of allowed filesystem actions,
> +which can be applied on the given
> +.I parent_fd
>  (see
>  .B Filesystem actions
>  in
> @@ -92,7 +94,10 @@ Landlock is supported by the kernel but disabled at bo=
ot time.
>  .TP
>  .B EINVAL
>  .I flags
> -is not 0, or the rule accesses are inconsistent (i.e.,
> +is not 0.
> +.TP
> +.B EINVAL
> +The rule accesses are inconsistent (i.e.,
>  .I rule_attr\->allowed_access
>  is not a subset of the ruleset handled accesses).
>  .TP
> diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_creat=
e_ruleset.2
> index 618d54f37..871b91dcb 100644
> --- a/man/man2/landlock_create_ruleset.2
> +++ b/man/man2/landlock_create_ruleset.2
> @@ -23,7 +23,8 @@ Standard C library
>  A Landlock ruleset identifies a set of rules (i.e., actions on objects).
>  This
>  .BR landlock_create_ruleset ()
> -system call enables creating a new file descriptor identifying a ruleset.
> +system call creates a new file descriptor
> +which identifies a ruleset.
>  This file descriptor can then be used by
>  .BR landlock_add_rule (2)
>  and
> @@ -45,8 +46,7 @@ struct landlock_ruleset_attr {
>  .in
>  .IP
>  .I handled_access_fs
> -is a bitmask of actions that is handled by this ruleset and
> -should then be forbidden if no rule explicitly allows them
> +is a bitmask of handled filesystem actions
>  (see
>  .B Filesystem actions
>  in
> diff --git a/man/man2/landlock_restrict_self.2 b/man/man2/landlock_restri=
ct_self.2
> index d4e5e753c..f044c6b31 100644
> --- a/man/man2/landlock_restrict_self.2
> +++ b/man/man2/landlock_restrict_self.2
> @@ -20,7 +20,7 @@ Standard C library
>  .SH DESCRIPTION
>  Once a Landlock ruleset is populated with the desired rules, the
>  .BR landlock_restrict_self ()
> -system call enables enforcing this ruleset on the calling thread.
> +system call enforces this ruleset on the calling thread.
>  See
>  .BR landlock (7)
>  for a global overview.
> @@ -38,10 +38,11 @@ with multiple independent rulesets coming from differ=
ent sources
>  built-in application policy).
>  However, most applications should only need one call to
>  .BR landlock_restrict_self ()
> -and they should avoid arbitrary numbers of such calls because of the
> -composed rulesets limit.
> -Instead, developers are encouraged to build a tailored ruleset thanks to
> -multiple calls to
> +and they should avoid arbitrary numbers of such calls
> +because of the composed rulesets limit.
> +Instead,
> +developers are encouraged to build a single tailored ruleset
> +with multiple calls to
>  .BR landlock_add_rule (2).
>  .P
>  In order to enforce a ruleset, either the caller must have the
> diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> index 4a98f6549..652054f15 100644
> --- a/man/man7/landlock.7
> +++ b/man/man7/landlock.7
> @@ -58,7 +58,7 @@ and
>  .BR landlock_create_ruleset (2)
>  for more context.
>  .P
> -A file can only receive these access rights:
> +The following access rights apply only to files:
>  .TP
>  .B LANDLOCK_ACCESS_FS_EXECUTE
>  Execute a file.
> @@ -87,6 +87,9 @@ or
>  .BR open (2)
>  with
>  .BR O_TRUNC .
> +.IP
> +This access right is available since the third version of the Landlock A=
BI.
> +.IP
>  Whether an opened file can be truncated with
>  .BR ftruncate (2)
>  is determined during
> @@ -97,7 +100,6 @@ using
>  .B LANDLOCK_ACCESS_FS_READ_FILE
>  and
>  .BR LANDLOCK_ACCESS_FS_WRITE_FILE .
> -This access right is available since the third version of the Landlock A=
BI.

I think this would be better as a ` "(since Landlock ABI v3)"` in the
TP.  Feel free to send some patches for doing that consistently, if you
feel like.

Cheers,
Alex

>  .P
>  A directory can receive access rights related to files or directories.
>  The following access right is applied to the directory itself,
> --=20
> 2.45.2.1089.g2a221341d9-goog
>=20

--=20
<https://www.alejandro-colomar.es/>

--zmyyj5up4ajqri42
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaexpgACgkQnowa+77/
2zLqqBAAo59D3Lrll6vpz5jIPQwSgcWMqv0bEAdvXWp9WHiDSc+7wvTbc/vm0/2q
iJRJcORvh7hxvdd3QiPLH0TBkl2eMmfETmZwyYPCAoPxVdmlj5PbB56Z/yIb1p3j
sBHrZpdNZet/L0vg1SXgAQeFQ9YqUlkR/KZUj+J7nPpifsAiBLejZ6aRZMKluENh
kwT4RMFTi4fF/nMkEjq7Lss6KjpwfRFx/mYuphUemqZ7MBk1loaFqpIl80cXJpjo
cyVXj7qNsO4I1Acb3yxq+ZtjOOtzPQtRwMxU3Z3Km2VUHrzGuMXBtUGCTkOKlR81
YMusgkXD8cWNzt1787jfjyOWi+ZEC+MiY3teRfVYeTITd4UL81gbGBFF1vyinKSk
nuPldCP3oig2axF69qea6TqZeatfRC2ei0CcSLG37/LvvIFpS68Ht1fV8ABHMC7C
yQYLpMRXQjGJj/+CuBni+X7nMRWrFlmuIAlLFLWa1tJ5G0Pjfqol92alc+3WhAYS
jTS1vsxcve8AkR/MOt5ZvaJz0P9BwYItdo1DQcT6oB06tI8jhWr5TD8Xf+w25Q4m
WviyVHlJ1TirTuv5oy6sYNgrm9N3n9cC8G4nOXWjIQ3X/zyzGWQB8Gc5fG2uHM2x
4JXYOmZg5h8zH2g7wG1NFouQlQxniwPVQMKFwL5nQu+u7mw7k9I=
=Hpil
-----END PGP SIGNATURE-----

--zmyyj5up4ajqri42--

