Return-Path: <linux-man+bounces-2727-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D673A796E4
	for <lists+linux-man@lfdr.de>; Wed,  2 Apr 2025 22:54:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FD103B125F
	for <lists+linux-man@lfdr.de>; Wed,  2 Apr 2025 20:53:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E1E61F130E;
	Wed,  2 Apr 2025 20:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGAgMKdG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9E3193436
	for <linux-man@vger.kernel.org>; Wed,  2 Apr 2025 20:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743627246; cv=none; b=d41kUi3khsgWPxr1ra0JMJSV8VVXNcKHA3Y6i0RlZ8wLY3Ngx9QbYSENcgsj9dIRTrCPfHW7Ai2h/Ey/DVGF+mkK6cr15kYwtvlcsjJ6blPrq1cbTpNvhvrmU625M+nmmdlJXN2Dg/dpV6h4QrQ4ZLLy5MsiCR3fOR6BucTBr0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743627246; c=relaxed/simple;
	bh=3tgLWQTeAP0Zq8NeONgmx4TcYIg5xTWLCdoaiuH1bIs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sFZQv+6+Rc+CXfdF5dJmSmjRPhCHwqk9rbJNG9L491DbVZDRZdb5Nn4d9o0hdlxJSgpg33R17DDcaUrWIfpNq+ViY3GiB+NirzX/o9KonoDToTXqfg27ZsKkTG16yk0qSjbZ8rUJ4lUdBc9ySqyRMa/NXS/WpuSKMhDfOc4peE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGAgMKdG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC5E5C4CEDD;
	Wed,  2 Apr 2025 20:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743627245;
	bh=3tgLWQTeAP0Zq8NeONgmx4TcYIg5xTWLCdoaiuH1bIs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RGAgMKdGGBhBkbndcikM4GM6NjWjnHV5JUmOPQX32jR0O/nH7ImxNEVgI25IW3oER
	 hKgqBSVgm32jWTqCZKL+KxLXhLwOzB7NE+baTuEcDOWOWSgGLMEMlcSk8w75hFxWKW
	 LBQsHWKW02fNOz2rNOzrI7NiKzgPAecWaL7pbs3fL4Yt+9NMNH46tpHwjTpqj4Ba7o
	 dpxOHXX5mvaRnot/JDpTAjZZDfyNfqNIsUXca9a/+cHPh49gXDj/HGPW3q0ozai/zO
	 SOgKuxaj3fNd2/9d3/i8ZAEBd4E7VSHh1w4diVbhox8asr8AAf82vw2ii+wq8KK0PZ
	 Tu4k9Bu3f+v1g==
Date: Wed, 2 Apr 2025 22:54:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/3] fanotify: Fixes for documentation of FAN_FS_ERROR
Message-ID: <rylfwmbs4prqtctgpvex7d7p3efqtxmexyzbnyjcbtyo5pqrer@33rylwxb7zes>
References: <20250331133959.1436376-1-amir73il@gmail.com>
 <20250331133959.1436376-2-amir73il@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nnhmz5i26qpopjkq"
Content-Disposition: inline
In-Reply-To: <20250331133959.1436376-2-amir73il@gmail.com>


--nnhmz5i26qpopjkq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/3] fanotify: Fixes for documentation of FAN_FS_ERROR
References: <20250331133959.1436376-1-amir73il@gmail.com>
 <20250331133959.1436376-2-amir73il@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250331133959.1436376-2-amir73il@gmail.com>

Hi Amir,

On Mon, Mar 31, 2025 at 03:39:58PM +0200, Amir Goldstein wrote:
> FAN_EVENT_INFO_TYPE_ERROR was missing from the list of info types.
>=20
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
> ---
>=20
> Alejandro,
>=20
> This unrelated cleanup was plit out of the FAN_PRE_ACCESS
> patch and I have also added some extra cleanup in preparation for
> adding mount events.
>=20
> If you were going to re-organize the section describing the different
> extra event info types, maybe better doing this after merging the new
> types from v6.14: FAN_EVENT_INFO_TYPE_RANGE and FAN_EVENT_INFO_TYPE_MNT.
>=20
> Thanks,
> Amir.
>=20
>  man/man2/fanotify_mark.2 | 44 +++++++++++++++++++---------------------
>  man/man7/fanotify.7      |  7 ++++---
>  2 files changed, 25 insertions(+), 26 deletions(-)
>=20
> diff --git a/man/man2/fanotify_mark.2 b/man/man2/fanotify_mark.2
> index 47cafb21c..1d132fa1a 100644
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

You forgot the .IP in the moved text.


Cheers,
Alex

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
> index fd16bf294..614410cd9 100644
> --- a/man/man7/fanotify.7
> +++ b/man/man7/fanotify.7
> @@ -395,9 +395,6 @@ A child file or directory was deleted in a watched pa=
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
> @@ -425,6 +422,9 @@ A file or directory that was opened read-only
>  .RB ( O_RDONLY )
>  was closed.
>  .TP
> +.B FAN_FS_ERROR
> +A filesystem error was detected.
> +.TP
>  .B FAN_Q_OVERFLOW
>  The event queue exceeded the limit on number of events.
>  This limit can be overridden by specifying the
> @@ -510,6 +510,7 @@ The value of this field can be set to one of the foll=
owing:
>  .BR FAN_EVENT_INFO_TYPE_FID ,
>  .BR FAN_EVENT_INFO_TYPE_DFID ,
>  .BR FAN_EVENT_INFO_TYPE_DFID_NAME ,
> +.BR FAN_EVENT_INFO_TYPE_ERROR ,
>  or
>  .BR FAN_EVENT_INFO_TYPE_PIDFD .
>  The value set for this field
> --=20
> 2.34.1
>=20

--=20
<https://www.alejandro-colomar.es/>
<https://www.alejandro-colomar.es:8443/>
<http://www.alejandro-colomar.es:8080/>

--nnhmz5i26qpopjkq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfto+oACgkQ64mZXMKQ
wqkGjw//SDgu5h6gB/DOL77xOEOuVTVc3Ca5JCNCIXPIAIix2iDcJTIkB0UEeRDS
OUQvHz6gjlK3dwftzHRkxziWfUzc5iY34E9VBLyLNCbQcvY00xeJgJMj9z/wXCDj
Nl7o6Ty5lDsRIBDsYRc5Ok4d3zBLDg1s0PseOHZkzhb0SvZfT84ACDqYpwezY4g5
BSmsvFAOigs8vuC6NlTH/iGn6ugiLkE7rOlUfWWa7RgmnO2KjNy6UDs7w7nb9yU/
HO0H4C/+35gdd3o4mvpMZ/XK2KFsYXCZ6mLcgo6LGORAI95ke0C/88Hb3iLnEtHX
cKMSShD9gpjTUUd7FUfdavzbgUoYBx5E5YH39oq9I5s3mZlAoCVauvEQ8QtB3E8D
IDymNvscdSKgjOZ02H/3q2G0gUgS2xzF+j64RgLFLUykNxFxxu1m4z2Cgsv7MNZX
8fPVNgPJDAD9sLYrEDBjqBF6n6M3ev2jglevanB3/0UgDtFYr27jsF4ewTMEdkS7
3sTz3DD9NRyAaLwOoAysiJcLqNqGs/d1RbSO63gVjbokq8NU6vMMff5tFolCZgnK
NVBSYL1EJEwn29kEf3exEv30nfcutqH6IAjpYwT8ERZHOOKueKzHDy0svdRRE1OH
enSl9+hpn1aJCVbBSgSwP0YihdVjzZt7yQ2PH11w8X901TrMbaw=
=bab2
-----END PGP SIGNATURE-----

--nnhmz5i26qpopjkq--

