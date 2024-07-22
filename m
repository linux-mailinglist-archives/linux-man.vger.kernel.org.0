Return-Path: <linux-man+bounces-1511-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9294939505
	for <lists+linux-man@lfdr.de>; Mon, 22 Jul 2024 23:00:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A6102822F6
	for <lists+linux-man@lfdr.de>; Mon, 22 Jul 2024 21:00:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE88825757;
	Mon, 22 Jul 2024 21:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="or/4D8VW"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9048D1CD37
	for <linux-man@vger.kernel.org>; Mon, 22 Jul 2024 21:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721682016; cv=none; b=HZrGeI5pOvZZo+EzI6KY0pdBy2hBTPY0ghVZ9OD2dEt3WbyCoGjsGe9onhJ+fWp1dXnMLtNRAoQa4Dqy1aexKF8+Db3E3Ja++6MWbuCxCbNOExXinOLXvW7VD2WpsD9fcrN6tC9GEwX7tWtCqeh06x1+M5L7tM0TP3VGI83hTlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721682016; c=relaxed/simple;
	bh=gtcrRtGj8uW2cQs4eRfeV6E1IWOy2IVM0XWXHOue0RM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kLWA55+oUawWoekpjeUE69wNKjz1tO2/MYQ63jD0+HrDQ7T5i0u8NwHTbGj9CAho64C0Gla7qKUSOXZPnetPHdNkqaoi2s3LnT0k83n/Wjs82YfkmJQV55ANNxFP984A4bkKAh2advPBv3x5mDHXdnWGrE9CCQw8jd+SrkBQiI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=or/4D8VW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EEABC116B1;
	Mon, 22 Jul 2024 21:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721682016;
	bh=gtcrRtGj8uW2cQs4eRfeV6E1IWOy2IVM0XWXHOue0RM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=or/4D8VWiYePYES12vzVVO84xF213IUrZ3Pn6j14shwYZH3VWZAzBGO68iaARZ++Y
	 fcE12UE9IYt2hVv0twB2AZrESBFCTrFwf66onV8hOBslCIE8PBNFZyBv3L2ufXkAag
	 Li10mFJ+Wal+8qmp4RSe2nWiV6VF/mzL8pPMc53b4s5sJ8NkkuUtan1RkzqCWj8hJA
	 c3W0NzATVspdpv9pnuTMXSv1UTdWLi+Cim/6lafIbDQiFI57pMw1D7E+QeBP1yTTb3
	 p2mSnPwQu8igSu7R8LrXyJrZ7a/ebuXRO0BQGFxzLiqoRB2GliJLaYdIw24kLkFV/1
	 LgpFF2I4QtM2A==
Date: Mon, 22 Jul 2024 23:00:13 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 4/5] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
Message-ID: <ljaijaj3fv6ye5plzma27r7fej2q3z4endo7s5aksm26pc44vy@p2mgcdz3l75u>
References: <20240719133801.3541732-2-gnoack@google.com>
 <20240719133801.3541732-6-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rl4w4jexwa7olbcj"
Content-Disposition: inline
In-Reply-To: <20240719133801.3541732-6-gnoack@google.com>


--rl4w4jexwa7olbcj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 4/5] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
References: <20240719133801.3541732-2-gnoack@google.com>
 <20240719133801.3541732-6-gnoack@google.com>
MIME-Version: 1.0
In-Reply-To: <20240719133801.3541732-6-gnoack@google.com>

Hi G=C3=BCnther,

On Fri, Jul 19, 2024 at 01:38:01PM GMT, G=C3=BCnther Noack wrote:
> Landlock ABI 4 restricts bind(2) and connect(2) on TCP port numbers.
>=20
> The intent is to bring the man pages mostly in line with the kernel
> documentation again.  I intentionally did not add networking support to t=
he
> usage example in landlock.7 - I feel that in the long run, we would be be=
tter
> advised to maintain longer example code in the kernel samples.
>=20
> Closes: https://github.com/landlock-lsm/linux/issues/32
> Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>
> Reviewed-by: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
> Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
> ---

I've applied patches 1, 2, and 3.  I applied some tweaks to 3, which
might be the reason why this doesn't apply.  Would you mind rebasing
4 and 5?  Thanks!

Have a lovely night!
Alex

>  man/man2/landlock_add_rule.2       | 74 ++++++++++++++++++++++++++----
>  man/man2/landlock_create_ruleset.2 | 12 ++++-
>  man/man7/landlock.7                | 23 ++++++++--
>  3 files changed, 94 insertions(+), 15 deletions(-)
>=20
> diff --git a/man/man2/landlock_add_rule.2 b/man/man2/landlock_add_rule.2
> index 530b45947..a0ab13419 100644
> --- a/man/man2/landlock_add_rule.2
> +++ b/man/man2/landlock_add_rule.2
> @@ -20,15 +20,14 @@ Standard C library
>  .BI "            const void *" rule_attr ", uint32_t " flags );
>  .fi
>  .SH DESCRIPTION
> -A Landlock rule describes an action on an object.
> -An object is currently a file hierarchy,
> -and the related filesystem actions
> -are defined with a set of access rights.
> -This
> +A Landlock rule describes an action on an object
> +which the process intends to perform.
> +A set of rules is aggregated in a ruleset,
> +which can then restrict the thread enforcing it, and its future children.
> +.P
> +The
>  .BR landlock_add_rule ()
> -system call enables adding a new Landlock rule to an existing ruleset
> -created with
> -.BR landlock_create_ruleset (2).
> +system call adds a new Landlock rule to an existing ruleset.
>  See
>  .BR landlock (7)
>  for a global overview.
> @@ -42,10 +41,15 @@ identifies the structure type pointed to by
>  .IR rule_attr .
>  Currently, Linux supports the following
>  .I rule_type
> -value:
> +values:
>  .TP
>  .B LANDLOCK_RULE_PATH_BENEATH
> -This defines the object type as a file hierarchy.
> +For these rules,
> +the object is a file hierarchy,
> +and the related filesystem actions
> +are defined with
> +.IR "filesystem access rights" .
> +.IP
>  In this case,
>  .I rule_attr
>  points to the following structure:
> @@ -74,6 +78,45 @@ is an opened file descriptor, preferably with the
>  flag,
>  which identifies the parent directory of the file hierarchy or
>  just a file.
> +.TP
> +.B LANDLOCK_RULE_NET_PORT
> +For these rules,
> +the object is a TCP port,
> +and the related actions are defined with
> +.IR "network access rights" .
> +.IP
> +In this case,
> +.I rule_attr
> +points to the following structure:
> +.IP
> +.in +4n
> +.EX
> +struct landlock_net_port_attr {
> +    __u64 allowed_access;
> +    __u64 port;
> +};
> +.EE
> +.in
> +.IP
> +.i allowed_access
> +contains a bitmask of allowed network actions,
> +which can be applied on the given port.
> +.IP
> +.i port
> +is the network port in host endianness.
> +.IP
> +It should be noted that port 0 passed to
> +.BR bind (2)
> +will bind to an available port from the ephemeral port range.
> +This can be configured in the
> +.I /proc/sys/net/ipv4/ip_local_port_range
> +sysctl (also used for IPv6).
> +.IP
> +A Landlock rule with port 0
> +and the
> +.B LANDLOCK_ACCESS_NET_BIND_TCP
> +right means that requesting to bind on port 0 is allowed
> +and it will automatically translate to binding on the related port range.
>  .P
>  .I flags
>  must be 0.
> @@ -89,6 +132,12 @@ is set to indicate the error.
>  .BR landlock_add_rule ()
>  can fail for the following reasons:
>  .TP
> +.B EAFNOSUPPORT
> +.I rule_type
> +is
> +.BR LANDLOCK_RULE_NET_PORT ,
> +but TCP is not supported by the running kernel.
> +.TP
>  .B EOPNOTSUPP
>  Landlock is supported by the kernel but disabled at boot time.
>  .TP
> @@ -111,6 +160,11 @@ are only applicable to directories, but
>  .I rule_attr\->parent_fd
>  does not refer to a directory).
>  .TP
> +.B EINVAL
> +In
> +.IR "struct landlock_net_port_attr" ,
> +the port number is greater than 65535.
> +.TP
>  .B ENOMSG
>  Empty accesses (i.e.,
>  .I rule_attr\->allowed_access
> diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_creat=
e_ruleset.2
> index 105e9b062..ca635ddbc 100644
> --- a/man/man2/landlock_create_ruleset.2
> +++ b/man/man2/landlock_create_ruleset.2
> @@ -41,6 +41,7 @@ It points to the following structure:
>  .EX
>  struct landlock_ruleset_attr {
>      __u64 handled_access_fs;
> +    __u64 handled_access_net;
>  };
>  .EE
>  .in
> @@ -52,6 +53,13 @@ is a bitmask of handled filesystem actions
>  in
>  .BR landlock (7)).
>  .IP
> +.I handled_access_net
> +is a bitmask of handled network actions
> +(see
> +.B Network actions
> +in
> +.BR landlock (7)).
> +.IP
>  This structure defines a set of
>  .IR "handled access rights" ,
>  a set of actions on different object types,
> @@ -143,8 +151,8 @@ was not a valid address.
>  .TP
>  .B ENOMSG
>  Empty accesses (i.e.,
> -.I attr\->handled_access_fs
> -is 0).
> +.I attr
> +did not specify any access rights to restrict).
>  .SH STANDARDS
>  Linux.
>  .SH HISTORY
> diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> index 652054f15..52876a3de 100644
> --- a/man/man7/landlock.7
> +++ b/man/man7/landlock.7
> @@ -189,6 +189,19 @@ If multiple requirements are not met, the
>  error code takes precedence over
>  .BR EXDEV .
>  .\"
> +.SS Network flags
> +These flags enable to restrict a sandboxed process
> +to a set of network actions.
> +This is supported since the Landlock ABI version 4.
> +.P
> +The following access rights apply to TCP port numbers:
> +.TP
> +.B LANDLOCK_ACCESS_NET_BIND_TCP
> +Bind a TCP socket to a local port.
> +.TP
> +.B LANDLOCK_ACCESS_NET_CONNECT_TCP
> +Connect an active TCP socket to a remote port.
> +.\"
>  .SS Layers of file path access rights
>  Each time a thread enforces a ruleset on itself,
>  it updates its Landlock domain with a new layer of policy.
> @@ -339,6 +352,9 @@ _	_	_
>  2	5.19	LANDLOCK_ACCESS_FS_REFER
>  _	_	_
>  3	6.2	LANDLOCK_ACCESS_FS_TRUNCATE
> +_	_	_
> +4	6.7	LANDLOCK_ACCESS_NET_BIND_TCP
> +\^	\^	LANDLOCK_ACCESS_NET_CONNECT_TCP
>  .TE
>  .P
>  Users should use the Landlock ABI version rather than the kernel version
> @@ -439,9 +455,10 @@ and only use the available subset of access rights:
>   * numbers hardcoded to keep the example short.
>   */
>  __u64 landlock_fs_access_rights[] =3D {
> -    (LANDLOCK_ACCESS_FS_MAKE_SYM << 1) \- 1,  /* v1                 */
> -    (LANDLOCK_ACCESS_FS_REFER    << 1) \- 1,  /* v2: add "refer"    */
> -    (LANDLOCK_ACCESS_FS_TRUNCATE << 1) \- 1,  /* v3: add "truncate" */
> +    (LANDLOCK_ACCESS_FS_MAKE_SYM  << 1) \- 1,  /* v1                  */
> +    (LANDLOCK_ACCESS_FS_REFER     << 1) \- 1,  /* v2: add "refer"     */
> +    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v3: add "truncate"  */
> +    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v4: TCP support     */
>  };
>  \&
>  int abi =3D landlock_create_ruleset(NULL, 0,
> --=20
> 2.45.2.1089.g2a221341d9-goog
>=20

--=20
<https://www.alejandro-colomar.es/>

--rl4w4jexwa7olbcj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaeyFwACgkQnowa+77/
2zJtRA/9Gm7GJFCOIkEXIbS9W4NH2u6PakUE0aNid8GBd6lM61R/+DrEPgtSOt0d
Z9dZYAZh9Vmlx6F9kDkJrjYOWOBC2Qo8mBLWd+wqnkWhJ0AhhKMIyoFBl4kj5Bfi
PN1OFCZBRa9cu3zlBMIDPU9EV6HTBgu9wFV8eOwoHm/xhJdjMc9v9sER4n26ucjM
I+EAnlSOKmioUadyyTt6jJKVx9DYLWVTNiRzoiouYR/vLhPOVnMG/XmwVqLGKpq+
SDjvo9jmSsFcNBgGRydRTlBvKobZrA5VVJJxRjfn5ZIB1meVYMdyW0NJa1p/z2Kf
HA7lJcv3y0/elJyp0bLkKX0tUmf7zYIgKuDUBqUMnTUFf5eea/PAAMYY2kjlPq9Y
PUzmpVWL5cBwCSKswFt+5reKIiWh1ocwI5I/C3ef4XWqKxKAHwjuipduN8jfNoFs
9cD/gmWcqRtIYJXIMla4NCkjMRH/D5yxqy2TE/JI1BMeU94EjqBvllPF0Y4Wmbb7
BsTKU7BimOgUUgatStXoZ/dYYvRX8P0k1eYMWu34a1AQoH2YiruABZwHQSTM9x0M
YU0KOcd6F2/mrzrQWBxEns2i8RnH76CS4s6fbkHY4tEeuGA6LIT3Ydh0ZtJdUTD4
/IDudlti+PR57wusdpHSObEpPU1cqY0abWJYPZA5CHWFNtS/hV8=
=0tva
-----END PGP SIGNATURE-----

--rl4w4jexwa7olbcj--

