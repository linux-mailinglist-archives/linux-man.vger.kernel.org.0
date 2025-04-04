Return-Path: <linux-man+bounces-2744-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2F4A7BFBA
	for <lists+linux-man@lfdr.de>; Fri,  4 Apr 2025 16:41:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 04EB63BE382
	for <lists+linux-man@lfdr.de>; Fri,  4 Apr 2025 14:38:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96B9B1F4264;
	Fri,  4 Apr 2025 14:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mh3yeMoU"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBD61F4173
	for <linux-man@vger.kernel.org>; Fri,  4 Apr 2025 14:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743777483; cv=none; b=nqglBb0bUCKYw4wqkJibWji+41wkG3Hg96oDZ9rvp8xsC0jQnWykTFN6fwxGaVr/2++PwWWoHFEhrgR3a4hLdOMzdEdbfx09UFKmV1Tt6sHthdkgvgKxh0QG09w5yH33lODikQiJR5EwukAHHMRUx6k4JSW9u1zDjHYRV+wHdqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743777483; c=relaxed/simple;
	bh=H+4d2N4RPvTbrSz07Dflv1gc6iVP5/gCx6/b4dVvvVQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DPA5ctDUE5h5ENE84aFS59sk3cvtL3yQ4UXC4Zw/p2yXHvZQoYdAhuUUZ6CBgoJbfUlKsBjudrGrdvfOK3JMWNjbeNzSzj542Nq90uizt4YMb+HK2P0bun/uWK3BqjiMfMYT/AAiJdkM1HlbrDerTHpvGNPMqhHcvtVFk/71udo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mh3yeMoU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C43FAC4CEDD;
	Fri,  4 Apr 2025 14:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743777482;
	bh=H+4d2N4RPvTbrSz07Dflv1gc6iVP5/gCx6/b4dVvvVQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Mh3yeMoU0/o3XmMu9XWY5QPe2T/raiBBeNMAVdT03ntVgPlHY050yLjm0VmVmsyG7
	 lJ834pIUhZC/ntzrs85xZnwHNEuN3f5zOi/19OX1+b2By+QSzmDuS6b7KRKx63Fv9y
	 EmCkB1hESz/Kw+ozn7hFdSXFu8LwPsUc60jRuv99AloYlhiGJgztOkfJh7EvNiPAnp
	 vYwfMttzSOAo5hpi9kcE7xwao1oLv77YBmo/ger3fPfFed/sCImYsN4rYfGeWMM7Ne
	 ZgkeyFTFfx1n6qcqfFWz2NLCtEtoq9re647HvO7H/QCTaB0rtVjRGFk2lZAYSmkc27
	 yMwJA4ed3PPqA==
Date: Fri, 4 Apr 2025 16:37:59 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] fanotify: Fixes for documentation of FAN_FS_ERROR
Message-ID: <6yjm4sm3l6mr5ilg7vucjhurai4zsyd2zqlat5eveiylvedeib@ezcizyb6qtat>
References: <20250404104723.1709188-1-amir73il@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n3mwecj7pmbvfkbk"
Content-Disposition: inline
In-Reply-To: <20250404104723.1709188-1-amir73il@gmail.com>


--n3mwecj7pmbvfkbk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] fanotify: Fixes for documentation of FAN_FS_ERROR
References: <20250404104723.1709188-1-amir73il@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250404104723.1709188-1-amir73il@gmail.com>

Hi Amir,

On Fri, Apr 04, 2025 at 12:47:22PM +0200, Amir Goldstein wrote:
> The order of FAN_FS_ERROR entry in the event section was rather
> arbitrary inside the group of fid info events.
>=20
> FAN_FS_ERROR is a special event with error info, so place its entry
> after the entries for fid info events and before the entries for
> permission events.
>=20
> Reduce unneeded newlines in the FAN_FS_ERROR entry.
>=20
> Cc: Jan Kara <jack@suse.cz>
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

Thanks!  I've applied this patch.


Have a lovely day!
Alex

> ---
>  man/man2/fanotify_mark.2 | 44 +++++++++++++++++++---------------------
>  man/man7/fanotify.7      |  6 +++---
>  2 files changed, 24 insertions(+), 26 deletions(-)
>=20
> diff --git a/man/man2/fanotify_mark.2 b/man/man2/fanotify_mark.2
> index f02a182da..a6d80ad68 100644
> --- a/man/man2/fanotify_mark.2
> +++ b/man/man2/fanotify_mark.2
> @@ -362,29 +362,6 @@ Create an event when a marked file or directory itse=
lf is deleted.
>  An fanotify group that identifies filesystem objects by file handles
>  is required.
>  .TP
> -.BR FAN_FS_ERROR " (since Linux 5.16, 5.15.154, and 5.10.220)"
> -.\" commit 9709bd548f11a092d124698118013f66e1740f9b
> -Create an event when a filesystem error
> -leading to inconsistent filesystem metadata is detected.
> -An additional information record of type
> -.B FAN_EVENT_INFO_TYPE_ERROR
> -is returned for each event in the read buffer.
> -An fanotify group that identifies filesystem objects by file handles
> -is required.
> -.IP
> -Events of such type are dependent on support
> -from the underlying filesystem.
> -At the time of writing,
> -only the
> -.B ext4
> -filesystem reports
> -.B FAN_FS_ERROR
> -events.
> -.IP
> -See
> -.BR fanotify (7)
> -for additional details.
> -.TP
>  .BR FAN_MOVED_FROM " (since Linux 5.1)"
>  .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when a file or directory has been moved from a marked
> @@ -418,6 +395,27 @@ Create an event when a marked file or directory itse=
lf has been moved.
>  An fanotify group that identifies filesystem objects by file handles
>  is required.
>  .TP
> +.BR FAN_FS_ERROR " (since Linux 5.16, 5.15.154, and 5.10.220)"
> +.\" commit 9709bd548f11a092d124698118013f66e1740f9b
> +Create an event when a filesystem error
> +leading to inconsistent filesystem metadata is detected.
> +An additional information record of type
> +.B FAN_EVENT_INFO_TYPE_ERROR
> +is returned for each event in the read buffer.
> +An fanotify group that identifies filesystem objects by file handles
> +is required.
> +Events of such type are dependent on support
> +from the underlying filesystem.
> +At the time of writing,
> +only the
> +.B ext4
> +filesystem reports
> +.B FAN_FS_ERROR
> +events.
> +See
> +.BR fanotify (7)
> +for additional details.
> +.TP
>  .B FAN_OPEN_PERM
>  Create an event when a permission to open a file or directory is request=
ed.
>  An fanotify file descriptor created with
> diff --git a/man/man7/fanotify.7 b/man/man7/fanotify.7
> index adbed2c3e..68e930930 100644
> --- a/man/man7/fanotify.7
> +++ b/man/man7/fanotify.7
> @@ -415,9 +415,6 @@ A child file or directory was deleted in a watched pa=
rent.
>  .B FAN_DELETE_SELF
>  A watched file or directory was deleted.
>  .TP
> -.B FAN_FS_ERROR
> -A filesystem error was detected.
> -.TP
>  .B FAN_RENAME
>  A file or directory has been moved to or from a watched parent directory.
>  .TP
> @@ -445,6 +442,9 @@ A file or directory that was opened read-only
>  .RB ( O_RDONLY )
>  was closed.
>  .TP
> +.B FAN_FS_ERROR
> +A filesystem error was detected.
> +.TP
>  .B FAN_Q_OVERFLOW
>  The event queue exceeded the limit on number of events.
>  This limit can be overridden by specifying the
> --=20
> 2.34.1
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>
<https://www.alejandro-colomar.es:8443/>
<http://www.alejandro-colomar.es:8080/>

--n3mwecj7pmbvfkbk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfv7sYACgkQ64mZXMKQ
wqmHAQ/+PbQNz6+0g6aDidXg2SZS18zFnh0oE5MKQvA0IlBf4n4dSEHWcS9BNjar
cH3Vhd8J+Yt0oXnG4aJ7tNf88hb21e6l5BdYmEzeZBMYoi3SccllJeOcfr2wONVS
ANfhRAFCbbsLj5PuDErWn8LRsawJaV40JF5lTLIpzVB09i5J46NUhYJHNvRSwAzo
CUT+h0T2yGuujmiQ4VkGJQGNPB6bxNB7hGJgJUIrTGoWUw8ORT9hcXfLdBnMMwVH
RPD49S7wCzxDT6M9apFI2tgweJnab5kKzEXpbaMutPEYHZONJQcu1praS3DBqWRg
FJXCzJaperdW3bYIJru624o1qqi80m0aF579APr+zTLbMm5tOXpc5The9S7/9xbH
Luqwq09qb6zoN0vedq/SuW1Luq83mFec/xcmoWS2OJt41EW3S0hq+3tpdfrzOhGO
rRL7ehCc9ICK+j234wQsNc3NDzKyZkvn7VoIb6IfQ9Vo90J8TK77/s6E3GnXmZI6
Plr3f175xg86rPN32b83zHLRJSloNBvbkj99+2gI+TEYxzcP6Xuyz1N9/cApG7e0
GbfnZgklu83v/8wVMI6QZzs4mmFsu4LOvaMSBd6P1tHjU6GEggKgsdT15jqXYmdU
cvs7uz8aHdjIlqF/3IqS+e57qMCp/s7bQXEVbHEOotV3d6hwS6M=
=iTk7
-----END PGP SIGNATURE-----

--n3mwecj7pmbvfkbk--

