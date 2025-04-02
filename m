Return-Path: <linux-man+bounces-2726-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 575DCA796D6
	for <lists+linux-man@lfdr.de>; Wed,  2 Apr 2025 22:49:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E7F016F5BE
	for <lists+linux-man@lfdr.de>; Wed,  2 Apr 2025 20:49:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 233BF1F3FC2;
	Wed,  2 Apr 2025 20:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fH0h7VTd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6BE61F03CE
	for <linux-man@vger.kernel.org>; Wed,  2 Apr 2025 20:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743626951; cv=none; b=sC0H4F5FAYmPzJrXXxmHsmh6fVYmfSgazfNEO7U0MG0HAHdD7C6Cnv5PMMRmYHXNQubUmxHXIM54UILv/bVrX+azQ78fSy7cy7EqlTyjCsHDGJizxa0NtAUtz6Ckh/sxMO+fXobGP4ryF7VcSMDXHDc7d5mjdBJ5FHSpL5Jy9VA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743626951; c=relaxed/simple;
	bh=h9ZwR13vhtsW6mysSJedT/okuniqe+Ml9v4RVn57PLI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SVala14EHQyBYpmJ58A0xrGc2oC67hzWAh60NqZ3tCwRKRiVGbq2dBZsSIbW9Puu2BKXPElk+opkUqtQwCx1gLG4MaT3TVaqlI1ZXazU8tjqcRD/9IbyItZ6N4+1mAcf7Vj5UyaMtkiXnZhNgmhrnyGVH+QdMfq+cyP0SU/sb9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fH0h7VTd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DEDFC4CEF6;
	Wed,  2 Apr 2025 20:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743626951;
	bh=h9ZwR13vhtsW6mysSJedT/okuniqe+Ml9v4RVn57PLI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fH0h7VTd0WyiHOROni7EGbSLfKmx5UPIVazmDOt3bgxHmqDULEKs3s+4uxcBejv27
	 7R9ZkIZeh92CRJH8hZN4Kf3Vi98mutoAT2m97HzOOP3Llkqtpf8teIBKuhfKsJ1RbQ
	 5hFRtbfNLZgv+BaTepXSdAAqHtBgO+E6am8wG7f/5KomsOWm1rzjTfBaAAwNMmLfLO
	 n5/zC9Yaos7dX4Vgt41XjLU5kU6tKE2iN+sGx545FiVFEEeuodps0JQmdYqE4hU/B4
	 vbIERPj3nuED6EIDW3D8ATgGwWQh8bTloKwKewof0NJmLEq9qjg+j5Po9QkpBI4SOv
	 v9XwkgAkhiuKQ==
Date: Wed, 2 Apr 2025 22:49:08 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/3] fanotify: Document FAN_REPORT_FD_ERROR
Message-ID: <dkw5w7eswo2va4mn6pcpmzsh6ukxl2k4eo3tf6lzm4jdln27ci@jzrjro5tl573>
References: <20250331133959.1436376-1-amir73il@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qvtz6urgobuyrt26"
Content-Disposition: inline
In-Reply-To: <20250331133959.1436376-1-amir73il@gmail.com>


--qvtz6urgobuyrt26
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/3] fanotify: Document FAN_REPORT_FD_ERROR
References: <20250331133959.1436376-1-amir73il@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250331133959.1436376-1-amir73il@gmail.com>

Hi Amir,

On Mon, Mar 31, 2025 at 03:39:57PM +0200, Amir Goldstein wrote:
> This flag from v6.13 allows reporting detailed errors on failure to
> open a file descriptor for an event.
>=20
> This API was backported to LTS kernels v6.12.4 and v6.6.66.
>=20
> Cc: Krishna Vivek Vitta <kvitta@microsoft.com>
> Reviewed-by: Jan Kara <jack@suse.cz>
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

Thanks!  I've applied the patch.


Have a lovely night!
Alex

> ---
>=20
> Changes from v1:
> - Added RVB
> - typo and format fixes
>=20
>  man/man2/fanotify_init.2 | 28 ++++++++++++++++++++++++++++
>  man/man7/fanotify.7      | 14 ++++++++++++++
>  2 files changed, 42 insertions(+)
>=20
> diff --git a/man/man2/fanotify_init.2 b/man/man2/fanotify_init.2
> index fa4ae9125..bf573c6fa 100644
> --- a/man/man2/fanotify_init.2
> +++ b/man/man2/fanotify_init.2
> @@ -364,6 +364,34 @@ so this restriction may eventually be lifted.
>  For more details on information records,
>  see
>  .BR fanotify (7).
> +.TP
> +.BR FAN_REPORT_FD_ERROR " (since Linux 6.13 and 6.12.4 and 6.6.66)"
> +.\" commit 522249f05c5551aec9ec0ba9b6438f1ec19c138d
> +Events for fanotify groups initialized with this flag may contain
> +an error code that explains the reason for failure to open a file descri=
ptor.
> +The
> +.I .fd
> +member of the
> +.I fanotify_event_metadata
> +structure normally contains
> +an open file descriptor associated with the object of the event
> +or FAN_NOFD in case a file descriptor could not be opened.
> +For a group initialized with this flag, instead of FAN_NOFD,
> +the
> +.I .fd
> +member of the
> +.I fanotify_event_metadata
> +structure will contain a negative error value.
> +When the group is also initialized with flag
> +.BR FAN_REPORT_PIDFD ,
> +in case a process file descriptor could not be opened,
> +the
> +.I .pidfd
> +member of the
> +.I fanotify_event_info_pidfd
> +structure will also contain a negative error value.
> +For more details, see
> +.BR fanotify (7).
>  .P
>  The
>  .I event_f_flags
> diff --git a/man/man7/fanotify.7 b/man/man7/fanotify.7
> index a532a963a..fd16bf294 100644
> --- a/man/man7/fanotify.7
> +++ b/man/man7/fanotify.7
> @@ -335,6 +335,13 @@ file status flag is set on the open file description.
>  This flag suppresses fanotify event generation.
>  Hence, when the receiver of the fanotify event accesses the notified fil=
e or
>  directory using this file descriptor, no additional events will be creat=
ed.
> +.IP
> +When an fanotify group is initialized using
> +.BR FAN_REPORT_FD_ERROR ,
> +this field will contain a negative error value in case a file descriptor
> +could not be opened and
> +in case of a queue overflow, the value will be
> +.BR \-EBADF .
>  .TP
>  .I pid
>  If flag
> @@ -679,6 +686,13 @@ Once the event listener has dealt with an event
>  and the pidfd is no longer required,
>  the pidfd should be closed via
>  .BR close (2).
> +.IP
> +When an fanotify group is initialized using
> +.BR FAN_REPORT_FD_ERROR ,
> +this field will contain a negative error value
> +in case a pidfd creation failure and
> +in case of a terminated process, the value will be
> +.BR \-ESRCH .
>  .P
>  The fields of the
>  .I fanotify_event_info_error
> --=20
> 2.34.1
>=20

--=20
<https://www.alejandro-colomar.es/>
<https://www.alejandro-colomar.es:8443/>
<http://www.alejandro-colomar.es:8080/>

--qvtz6urgobuyrt26
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmftosMACgkQ64mZXMKQ
wqmRLg/6A57olnQS+YamTEERNLWXHNwsrGOMve8BevLEy5tmzpT1oEDMaaYOW+4m
5AkoiUAIz0yZZEqUe9n1HVqhAjWqbcMJegarC0TXzl4Rl5dspYqpj0bhspGBhkUo
VDp3Rd4bib1rKkrU/NkUI374ZCutuZhuOAAg/BdPl7DB2ggfshDQJccsOw5850oz
3/nIP8uexdSV/y3+WHG9CNq1miJaPUQH2tO/Li2EG6T2l2KHUX5KxhQG4NqSgVnA
amD80ajSLd3tiFizAmqmS7+FjQncWh2G+6I3L4br+ZoFG6yYH+fgV2vXswiDfdBg
FzF9bOT7sYyme1pOLL4/SdjesrIeDgZjlQsOkdUsG8u8QNtTQN6XnxtF4Y/6A04U
X7hmN9Xu/Lw7r254ZNiP1SP2Iu77Wn91pcv6cP+oWrHruVqtbDy6y+jLyMVUyncx
//5vCofNr9qtPPH0Fic+WsZh5CT0bXb1a10DaCpZABJWeRiQui2SMY4DEDvO9wbm
62lVZJB58FJThvtd2AkhMaknwXlyIUKoFUBTW6Q9VWfcTbI+VltWixnx7DYCkpud
u4DhvHcY5kQjAYuPMqsK3bTS4jNxlFTat9AIstsNTjuc4QaGqYPKdMLk8sHWnFvp
+WXb+UIL1Rn2O2Btj1K7Wqpnr6wioR/yA8ULMTGScbx4onGQ0Gg=
=nuXo
-----END PGP SIGNATURE-----

--qvtz6urgobuyrt26--

