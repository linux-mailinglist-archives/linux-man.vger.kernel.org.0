Return-Path: <linux-man+bounces-2544-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 18434A4A515
	for <lists+linux-man@lfdr.de>; Fri, 28 Feb 2025 22:31:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 925AF189BBB5
	for <lists+linux-man@lfdr.de>; Fri, 28 Feb 2025 21:31:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E23931C5485;
	Fri, 28 Feb 2025 21:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOcjm2V/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F62623F360;
	Fri, 28 Feb 2025 21:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740778274; cv=none; b=GEA8ik000TDhluj2ehmekpcbzkgMX4QHqxN7oDJRx8225q4W2dOPZ8ZYsCxCJ0sBUwhYUosfID+3eqEaRihmwDcgdFty3M4En5B8/c6NpUby8RRniX6amxDG5rPGt7cpuJ1gUtgM5lq7VKiU2ryPk9OwuTDgRjdrGNVCh1Lyom4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740778274; c=relaxed/simple;
	bh=1FeM4TQWoQXkCHAfm6l+8OeMUfsgxz7+BuE0HsmcDZw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HZ9xeoWaAi1zo8Fhncp7ehLU5z6QV4pzfRXkYtnLOftEbeLsbePGRYRs+h7rTOfzmoRNq1fm6iH7SOkdU5x4U5EacGGzIIcZlQPximEpxA+Wtq2BEPFHu5gXQtkzWN/LDXu2cTFbGo81cr2aPlCWH5/cEaDhuDxTZgoxbJiNSWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOcjm2V/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1F7AC4CED6;
	Fri, 28 Feb 2025 21:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740778274;
	bh=1FeM4TQWoQXkCHAfm6l+8OeMUfsgxz7+BuE0HsmcDZw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oOcjm2V/iUfeeO9FAIPuWFtsfbRE5roW64dDX00iXkZNV+gQCfQhOhz3k2mU4h1yT
	 UnMp9ZDCXB+Wnf3ELGBTjVLNMQIBY2D3iIu0YoGlqlbCOJMVEBp8dY2WPJ0iGxwV1h
	 7DllqcNxUwJt3OFGUBLQ9iv/sRzw+v/LGdOPCdFF2vPm8LUf1WXzIJjtZzV5jd3HYh
	 7U5NCVfjKn3yAy3crclQGZjabqxsKZOQDmWtXKPRhR5clVHTbjBLav+5mBUwTx9Aj+
	 /ofpVH0NM3NfvUYt77DnWH9Wu1PgSGXAzADlV164MS41cLEecbcE3GXzcBDUhOeeaW
	 Kwe8jbqpPq00g==
Date: Fri, 28 Feb 2025 22:31:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Tahera Fahimi <fahimitahera@gmail.com>, Tanya Agarwal <tanyaagarwal25699@gmail.com>, 
	linux-security-module@vger.kernel.org, linux-man@vger.kernel.org, 
	Daniel Burgener <dburgener@linux.microsoft.com>
Subject: Re: [PATCH v2 1/3] landlock.7: Update description of Landlock rules
Message-ID: <tkuk274p54qgwobzwjah2oj6zm3n4anq7giy4uzhprutjvqz6x@dwpa3h4gekxq>
References: <20250226211814.31420-2-gnoack@google.com>
 <20250226212911.34502-2-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7wrxck6ohjec4fp6"
Content-Disposition: inline
In-Reply-To: <20250226212911.34502-2-gnoack@google.com>


--7wrxck6ohjec4fp6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Tahera Fahimi <fahimitahera@gmail.com>, Tanya Agarwal <tanyaagarwal25699@gmail.com>, 
	linux-security-module@vger.kernel.org, linux-man@vger.kernel.org, 
	Daniel Burgener <dburgener@linux.microsoft.com>
Subject: Re: [PATCH v2 1/3] landlock.7: Update description of Landlock rules
References: <20250226211814.31420-2-gnoack@google.com>
 <20250226212911.34502-2-gnoack@google.com>
MIME-Version: 1.0
In-Reply-To: <20250226212911.34502-2-gnoack@google.com>

Hi,

On Wed, Feb 26, 2025 at 10:29:10PM +0100, G=C3=BCnther Noack wrote:
> This brings it up to date with the wording in the kernel documentation.
>=20
> Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>

I'd like some more justification in the commit message.

> ---
>  man/man7/landlock.7 | 20 ++++++++++++++++----
>  1 file changed, 16 insertions(+), 4 deletions(-)
>=20
> diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> index c6b7272ea..11f76b072 100644
> --- a/man/man7/landlock.7
> +++ b/man/man7/landlock.7
> @@ -39,13 +39,25 @@ the running kernel must support Landlock and
>  it must be enabled at boot time.
>  .\"
>  .SS Landlock rules
> -A Landlock rule describes an action on an object.
> -An object is currently a file hierarchy,
> -and the related filesystem actions are defined with access rights (see
> -.BR landlock_add_rule (2)).
> +A Landlock rule describes an action on an object
> +which the process intends to perform.
>  A set of rules is aggregated in a ruleset,
>  which can then restrict the thread enforcing it,
>  and its future children.
> +.P
> +The two existing types of rules are:
> +.P

This will trigger a diagnostic due to being redundant before TP.

(Both P and TP are paragraphing macros, so you're theoretically creating
 an empty paragraph, which is just ignored by groff(1).)

> +.TP
> +.B Filesystem rules
> +For these rules, the object is a file hierarchy,
> +and the related filesystem actions are defined with
> +.IR "filesystem access rights" .
> +.TP
> +.B Network rules (since ABI v4)

Most of the pages use Roman for the parenthetical:

	$ grep -rn 'BR.*(since' | sort -R | head
	man7/ip.7:782:.BR IP_PKTINFO " (since Linux 2.2)"
	man2/set_mempolicy.2:109:.BR MPOL_F_STATIC_NODES " (since Linux 2.6.26)"
	man2/kexec_load.2:60:.BR KEXEC_PRESERVE_CONTEXT " (since Linux 2.6.27)"
	man2/perf_event_open.2:823:.BR PERF_SAMPLE_REGS_USER " (since Linux 3.7)"
	man2/perf_event_open.2:1522:.BR PERF_SAMPLE_BRANCH_COND " (since Linux 3.1=
6)"
	man7/socket.7:998:.BR SO_TIMESTAMPNS " (since Linux 2.6.22)"
	man2/perf_event_open.2:1537:.BR PERF_SAMPLE_BRANCH_CALL_STACK " (since Lin=
ux 4.1)"
	man2/clone.2:1303:.BR EINVAL " (since Linux 3.9)"
	man2/eventfd.2:52:.BR EFD_NONBLOCK " (since Linux 2.6.27)"
	man2/perf_event_open.2:912:.BR PERF_SAMPLE_CGROUP " (since Linux 5.7)"

> +For these rules, the object is a TCP port,
> +and the related actions are defined with
> +.IR "network access rights" .
> +.BR landlock_add_rule (2)).

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--7wrxck6ohjec4fp6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfCKx0ACgkQ64mZXMKQ
wqmezBAAhj+N75jLFP6PVhiG4E6vZaiCE2CUPLdTJ/XuY0ZX6wo8bFdpaqSgIgmX
UmYn0UBcnwQlKkP8PGFkV2VAmsybXWzU57vkS0pToZf7tmVXzvKGBaTqhqQ0q1j9
vHP7E/mwUrIQEtedrDcrRT2CO7WuYm2yryRLlIBENRQPZin8+Yn61Q7KJLGl+zvc
2T6SJEzMnKUeKpwZCjSbF9YZm42kt6k0S2WGqeWoSkIE5MOhJoG6dUcSB9Sv2B9Q
TVtLp82Q9Vk2tp6fVR5M+w/gJIXFEYZIjMGYK4f2kb1TlRaDn75dVAE/FFQS0tp6
05qW7M0XmUGQp+oJk90Iy1nPzn5IF9FKTUXaKEHM7PAaB13O3AOVKKo4Skpvpn3J
ZtZIfOTQ41Xh6g9CfVFOYl/v3MUB6rwP9asD+sCOPK8xI6dc2AcEZiJE0RaLva39
d02+NTnz8Xd07s2l7vYVJZ51Cy6DXtWt4eK/Idpe92wMqRBpz1yOGhoTvssP0wiz
eW8wf9XvZswQPCO3fI5dKKmWV60t7mgh71F0FtRxvVjrDkCxj7xyM9TA7PVUGnuZ
L4iw0Fjugc6vdj+O2DcpJVGmubZiih2MJV3EGUiXselpfHKoFJ/LKOi1USsLUzoE
FjG56DFhsiE1qLCB8w1yRo5HMXvixDfiqATYHRGcYcYAm2BU+7s=
=m+Ad
-----END PGP SIGNATURE-----

--7wrxck6ohjec4fp6--

