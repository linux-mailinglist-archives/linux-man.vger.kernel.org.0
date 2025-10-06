Return-Path: <linux-man+bounces-4054-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAFEBBDD81
	for <lists+linux-man@lfdr.de>; Mon, 06 Oct 2025 13:19:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1C7164E1966
	for <lists+linux-man@lfdr.de>; Mon,  6 Oct 2025 11:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3A77230BD5;
	Mon,  6 Oct 2025 11:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Unnaadgp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D40233155
	for <linux-man@vger.kernel.org>; Mon,  6 Oct 2025 11:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759749566; cv=none; b=Dm/EFtkzsdVYqgxYmANMf+4uq1hxCr9r12oIuE2rA4aWBZkqfDCPXBMNU72IoimJVV5foCdv9oje0ZKMZcApPX5Fh9sigr4L+9Jj+sZ6NSSpv3qCWpaz3yM0rPky4JpQ40on15CI3BBtKrDTSky2CqLEKQAFe8mQvfSQ/PBwqeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759749566; c=relaxed/simple;
	bh=V5Jpn0xyPtpum9W026WiftFCqLUQoUc95lnF+7349fs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cRM88CRo+ZfHZWcAg36y2/v9jCiL58jVsO/IN5/cZxd8rgH1Zvs2w98mjJ6CitMtNsT4ILQFrZ9aKKUVGdQqh5mYen2d0BmqzJS3dosBL4BGE8tkvviMzZ6XPfrBdDd8Xn02Q7LuHyDb+pHFKJwgvYcXO0TYLsVSPdp3yjQWRVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Unnaadgp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D7A4C4CEF5;
	Mon,  6 Oct 2025 11:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759749565;
	bh=V5Jpn0xyPtpum9W026WiftFCqLUQoUc95lnF+7349fs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UnnaadgpzEyPHzk5xlg/1LYVwNdIpYXbp6704OaIu5D+Mcan3qt3LzpYkWevF8RM6
	 5GDOcBZg/D88vHTKZ9e1xOuqgkoHav8zoOPO+7feaEWRL8YfwsY2DDyJEC+2CT8Q22
	 S91I8WaHO90UEDc7RFDEpISLvk198/QYFLmorvgWGDjx4VxQP+KqhhItYx+J3fojkP
	 9yml8e338eJCeYhLgWEb8ABUmPF4IoZPfQUnEIR1m4e6VoZOW7ydpsd+aK70gO7oR2
	 Osr6nqEO2lwlRZBcKz1H1OY1xwrDgeJYQj8KjSrStbUfq4nyqY1UuLXBe30A6fLwjH
	 VemY40cHtC4hw==
Date: Mon, 6 Oct 2025 13:19:22 +0200
From: Alejandro Colomar <alx@kernel.org>
To: luca.boccassi@gmail.com
Cc: cyphar@cyphar.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple
 instances
Message-ID: <2hg43wshc3iklydtwx25ulqadzyuldkyi6wylgztzwendi5zhw@kw223cxay7qn>
References: <20251006103852.506614-1-luca.boccassi@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wj5mhthaa5rydx7n"
Content-Disposition: inline
In-Reply-To: <20251006103852.506614-1-luca.boccassi@gmail.com>


--wj5mhthaa5rydx7n
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: luca.boccassi@gmail.com
Cc: cyphar@cyphar.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple
 instances
Message-ID: <2hg43wshc3iklydtwx25ulqadzyuldkyi6wylgztzwendi5zhw@kw223cxay7qn>
References: <20251006103852.506614-1-luca.boccassi@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20251006103852.506614-1-luca.boccassi@gmail.com>

Hi Luca,

On Mon, Oct 06, 2025 at 11:38:12AM +0100, luca.boccassi@gmail.com wrote:
> From: Luca Boccassi <luca.boccassi@gmail.com>
>=20
> open_tree() with OPEN_TREE_CLONE is needed to apply a mount multiple
> times, otherwise EINVAL is returned by move_mount().
>=20
> Signed-off-by: Luca Boccassi <luca.boccassi@gmail.com>
> ---
> As requested by Aleksa on https://github.com/brauner/man-pages-md/pull/19
> and based on the 'fs' branch where move_mount(2) was added
>=20
>  man/man2/move_mount.2 | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/man/man2/move_mount.2 b/man/man2/move_mount.2
> index 13063ac1f..e3dfc1ea8 100644
> --- a/man/man2/move_mount.2
> +++ b/man/man2/move_mount.2
> @@ -457,6 +457,13 @@ which would otherwise cause the unbindable mounts to=
 be propagated
>  was attempted,
>  but one of the listed restrictions was violated.
>  .TP
> +.B EINVAL
> +The source mount is already mounted somewhere else. Clone it via

Please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man 7 man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.

To be precise, that would mean breaking the line after period in this
case.


> +.BR open_tree (2)
> +with
> +.B \%OPEN_TREE_CLONE
> +and use that as the source instead (since Linux 6.15).

The parenthetical in that position makes it unclear if you're saying
that one should use open_tree(2) with OPEN_TREE_CLONE since Linux 6.15,
or if you're saying that this error can happen since that version.
Would you mind clarifying?  I think if you mean that the error can
happen since Linux 6.15, we could make it part of the paragraph tag, as
in unshare(2).

alx@devuan:~$ man -w 2 unshare
/usr/local/man/man2/unshare.2
alx@devuan:~$ MANWIDTH=3D72
alx@devuan:~$ man -w 2 unshare | xargs mansect ERRORS | man /dev/stdin | gr=
ep -C3 'since Linux'
            Cannot allocate sufficient memory to copy parts of caller=E2=80=
=99s context
            that need to be unshared.

     ENOSPC (since Linux 3.7)
            CLONE_NEWPID  was  specified in flags, but the limit on the nes=
ting
            depth of PID namespaces would have  been  exceeded;  see  pid_n=
ame=E2=80=90
            spaces(7).

     ENOSPC (since Linux 4.9; beforehand EUSERS)
            CLONE_NEWUSER  was specified in flags, and the call would cause=
 the
            limit on the number of nested user namespaces to be exceeded.  =
 See
            user_namespaces(7).
--
            From  Linux 3.11 to Linux 4.8, the error diagnosed in this case=
 was
            EUSERS.

     ENOSPC (since Linux 4.9)
            One of the values in flags specified the creation  of  a  new  =
user
            namespace,  but doing so would have caused the limit defined by=
 the
            corresponding file in /proc/sys/user to be exceeded.   For  fur=
ther
--
            ID or the effective group ID of the caller does not have a  map=
ping
            in the parent namespace (see user_namespaces(7)).

     EPERM (since Linux 3.9)
            CLONE_NEWUSER  was specified in flags and the caller is in a ch=
root
            environment (i.e., the caller=E2=80=99s root directory does not=
  match  the
            root directory of the mount namespace in which it resides).


Have a lovely day!
Alex


> +.TP
>  .B ELOOP
>  Too many symbolic links encountered
>  when resolving one of
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--wj5mhthaa5rydx7n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjjpboACgkQ64mZXMKQ
wqltgg//SmTI0Pvs5d2yZtWDojE+YRDk7uqtpj2BBUf+oI8Wtl8OGM+yvf60I6KM
a7yMM+hH0WR+7VbfL3Afp/iuElXl8gZMVuqdUo4xGe+2+DAsn3rg4Xt8fIIYVjSJ
mH41TZL1xBix20ax/5VOiL/uYui3YaGxKOV5OcidzgfOIR63WFEUubVp2czjFyl8
XrfYGrjmoxNDeIg7btoSfv62LUTVYjJsm+il1K3Ai0VJIlmcjENvCHyJdpvjFRkr
d7A12FrW1aW+uIdB8ZeitGh7c4GVjd54VLo3oewC8//CpMHrkPphcxoy16wl87Do
taq4mjS00p7wNSR70A965scTLfpQtQUdCo6J3lnEiAS63IB1MRYOs72DbK53/YtY
gtB5rMpC7lko7Vw5/N6FO8iypkBWELT4J98ofUxJExD7Hz70fIwwnYyEZDD2zDvO
nTWOhjuz4Z2c6qeWmZh9kTfYAI4oiaaZpZwvmgxcGThWZRb4pdYgt44ClX9GHJPi
gppk94X3BUVUOaqJhV+5lMgwlN+SJOLq5YSNyZQQCUqtsTwJ1YU+CxPNhq+WkULB
x3ev2dxez1WwPQEhcMxRnS7o/CFAHpUpv0YTMjO7sP8OHz7CPRSzUEWHatHu3rW/
I8i4HxKOqn/vYb59B5zsiifFMyIK38bFpx8gG2JUzNOUtlZO19s=
=Tbj0
-----END PGP SIGNATURE-----

--wj5mhthaa5rydx7n--

