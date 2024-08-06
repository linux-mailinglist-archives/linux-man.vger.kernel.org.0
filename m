Return-Path: <linux-man+bounces-1578-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A5B948CB7
	for <lists+linux-man@lfdr.de>; Tue,  6 Aug 2024 12:20:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D1B928602E
	for <lists+linux-man@lfdr.de>; Tue,  6 Aug 2024 10:20:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB2B81BDAAE;
	Tue,  6 Aug 2024 10:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZgulIj7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C66B1BDA86
	for <linux-man@vger.kernel.org>; Tue,  6 Aug 2024 10:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722939602; cv=none; b=GW007BGVDuZE+0udOYpl2UWcUBI3WSAGtdXjiA1iU/UVhTw45H6Mu61pcH9d2C4K57XI3JoqMCfay2g1C5qYPyhheYu0bvS9LyrLyOosieUEU2ibgU4OJBpVI9AsZH8Ny6IjzMQEkue+n+g3wrOh+ZNfMQiRQdSfT7liH8xJLgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722939602; c=relaxed/simple;
	bh=5Jb2PRFKoKgv+nlCMwlYhNXUZrdr78wGUz+90uC+c1c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EtgTqLLG+avf1UT5hPQmFgdo6iK8mf8Z4UkI0oereNY4/lCFv+1ew2gIB5eLICF067oa99ds3h37mlxciMfG49vnfVfMHEh8TMztoUPcqwHD16L6QjQNFsWV13mlioCqNhzl2zwEGV88cOY0cwP9bq7c/yx1QeKy/VVGjCbiXZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZgulIj7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E3FBC32786;
	Tue,  6 Aug 2024 10:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722939601;
	bh=5Jb2PRFKoKgv+nlCMwlYhNXUZrdr78wGUz+90uC+c1c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pZgulIj7Fkqwp43JF1q0Mnqe2JmWkMLFv4Xmb/bJJgZX+D+UDIzpmAabCE5J5NmjF
	 ElxM6PLlG5yMPbD6tEwWC12NkPJHpHlObLWkmvR2EzDqPBF0EyZXMg0S6tNbggf4KV
	 UkyAsG6iko/Un4QTcPsrFfzdJ7SbgveabCkmsy9ekrSLL+CiKUvr4UId469I5zkjeL
	 UWzRoaEjAl3ppTbCVxbmsCDnxx1W6GsB46NuXwyBX0cBDEbvg+F7LkmvWEsj7GV9kr
	 Ov8bh4UtaaZbiHzMeWTbIHLbiA5NntkFoC0ZbmFo2PlrT12YSzcrG8O0o4ESdtcpiC
	 z0xEZP0lKKHgA==
Date: Tue, 6 Aug 2024 12:19:58 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Konstantin Meskhidze (A)" <konstantin.meskhidze@huawei.com>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, linux-man@vger.kernel.org, Artem Kuzin <artem.kuzin@huawei.com>, 
	yusongping <yusongping@huawei.com>
Subject: Re: [PATCH v3 1/2] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
Message-ID: <rvzol7iujgcb22fd6wcfohtjkpnpdsjyzlxx7uecdhw5od4t7a@dtzcxfwonjyq>
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-2-gnoack@google.com>
 <7558cd6d-199d-608e-ee18-293036461526@huawei.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q4tybne2q2okz7vf"
Content-Disposition: inline
In-Reply-To: <7558cd6d-199d-608e-ee18-293036461526@huawei.com>


--q4tybne2q2okz7vf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Konstantin Meskhidze (A)" <konstantin.meskhidze@huawei.com>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, linux-man@vger.kernel.org, Artem Kuzin <artem.kuzin@huawei.com>, 
	yusongping <yusongping@huawei.com>
Subject: Re: [PATCH v3 1/2] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-2-gnoack@google.com>
 <7558cd6d-199d-608e-ee18-293036461526@huawei.com>
MIME-Version: 1.0
In-Reply-To: <7558cd6d-199d-608e-ee18-293036461526@huawei.com>

Hi Konstantin,

You didn't write anything in this message, right?  Was it an accident?

Have a lovely day!
Alex

On Tue, Aug 06, 2024 at 11:38:57AM GMT, Konstantin Meskhidze (A) wrote:
>=20
>=20
> 7/23/2024 1:19 PM, G=C3=BCnther Noack =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > Landlock ABI 4 restricts bind(2) and connect(2) on TCP port numbers.
> >=20
> > The intent is to bring the man pages mostly in line with the kernel
> > documentation again.  I intentionally did not add networking support to=
 the
> > usage example in landlock.7 - I feel that in the long run, we would be =
better
> > advised to maintain longer example code in the kernel samples.
> >=20
> > Closes: <https://github.com/landlock-lsm/linux/issues/32>
> > Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>
> > Reviewed-by: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
> > Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
> > ---
> >   man/man2/landlock_add_rule.2       | 74 ++++++++++++++++++++++++++----
> >   man/man2/landlock_create_ruleset.2 | 12 ++++-
> >   man/man7/landlock.7                | 23 ++++++++--
> >   3 files changed, 94 insertions(+), 15 deletions(-)
> >=20
> > diff --git a/man/man2/landlock_add_rule.2 b/man/man2/landlock_add_rule.2
> > index 7a83bb303..489e9c354 100644
> > --- a/man/man2/landlock_add_rule.2
> > +++ b/man/man2/landlock_add_rule.2
> > @@ -20,15 +20,14 @@ Standard C library
> >   .BI "            const void *" rule_attr ", uint32_t " flags );
> >   .fi
> >   .SH DESCRIPTION
> > -A Landlock rule describes an action on an object.
> > -An object is currently a file hierarchy,
> > -and the related filesystem actions
> > -are defined with a set of access rights.
> > -This
> > +A Landlock rule describes an action on an object
> > +which the process intends to perform.
> > +A set of rules is aggregated in a ruleset,
> > +which can then restrict the thread enforcing it, and its future childr=
en.
> > +.P
> > +The
> >   .BR landlock_add_rule ()
> > -system call enables adding a new Landlock rule to an existing ruleset
> > -created with
> > -.BR landlock_create_ruleset (2).
> > +system call adds a new Landlock rule to an existing ruleset.
> >   See
> >   .BR landlock (7)
> >   for a global overview.
> > @@ -42,10 +41,15 @@ identifies the structure type pointed to by
> >   .IR rule_attr .
> >   Currently, Linux supports the following
> >   .I rule_type
> > -value:
> > +values:
> >   .TP
> >   .B LANDLOCK_RULE_PATH_BENEATH
> > -This defines the object type as a file hierarchy.
> > +For these rules,
> > +the object is a file hierarchy,
> > +and the related filesystem actions
> > +are defined with
> > +.IR "filesystem access rights" .
> > +.IP
> >   In this case,
> >   .I rule_attr
> >   points to the following structure:
> > @@ -74,6 +78,45 @@ is an opened file descriptor, preferably with the
> >   flag,
> >   which identifies the parent directory of the file hierarchy or
> >   just a file.
> > +.TP
> > +.B LANDLOCK_RULE_NET_PORT
> > +For these rules,
> > +the object is a TCP port,
> > +and the related actions are defined with
> > +.IR "network access rights" .
> > +.IP
> > +In this case,
> > +.I rule_attr
> > +points to the following structure:
> > +.IP
> > +.in +4n
> > +.EX
> > +struct landlock_net_port_attr {
> > +    __u64 allowed_access;
> > +    __u64 port;
> > +};
> > +.EE
> > +.in
> > +.IP
> > +.i allowed_access
> > +contains a bitmask of allowed network actions,
> > +which can be applied on the given port.
> > +.IP
> > +.i port
> > +is the network port in host endianness.
> > +.IP
> > +It should be noted that port 0 passed to
> > +.BR bind (2)
> > +will bind to an available port from the ephemeral port range.
> > +This can be configured in the
> > +.I /proc/sys/net/ipv4/ip_local_port_range
> > +sysctl (also used for IPv6).
> > +.IP
> > +A Landlock rule with port 0
> > +and the
> > +.B LANDLOCK_ACCESS_NET_BIND_TCP
> > +right means that requesting to bind on port 0 is allowed
> > +and it will automatically translate to binding on the related port ran=
ge.
> >   .P
> >   .I flags
> >   must be 0.
> > @@ -89,6 +132,12 @@ is set to indicate the error.
> >   .BR landlock_add_rule ()
> >   can fail for the following reasons:
> >   .TP
> > +.B EAFNOSUPPORT
> > +.I rule_type
> > +is
> > +.BR LANDLOCK_RULE_NET_PORT ,
> > +but TCP is not supported by the running kernel.
> > +.TP
> >   .B EOPNOTSUPP
> >   Landlock is supported by the kernel but disabled at boot time.
> >   .TP
> > @@ -111,6 +160,11 @@ are only applicable to directories, but
> >   .I \%rule_attr\->parent_fd
> >   does not refer to a directory).
> >   .TP
> > +.B EINVAL
> > +In
> > +.IR \%struct\~landlock_net_port_attr ,
> > +the port number is greater than 65535.
> > +.TP
> >   .B ENOMSG
> >   Empty accesses (i.e.,
> >   .I rule_attr\->allowed_access
> > diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_cre=
ate_ruleset.2
> > index 105e9b062..ca635ddbc 100644
> > --- a/man/man2/landlock_create_ruleset.2
> > +++ b/man/man2/landlock_create_ruleset.2
> > @@ -41,6 +41,7 @@ It points to the following structure:
> >   .EX
> >   struct landlock_ruleset_attr {
> >       __u64 handled_access_fs;
> > +    __u64 handled_access_net;
> >   };
> >   .EE
> >   .in
> > @@ -52,6 +53,13 @@ is a bitmask of handled filesystem actions
> >   in
> >   .BR landlock (7)).
> >   .IP
> > +.I handled_access_net
> > +is a bitmask of handled network actions
> > +(see
> > +.B Network actions
> > +in
> > +.BR landlock (7)).
> > +.IP
> >   This structure defines a set of
> >   .IR "handled access rights" ,
> >   a set of actions on different object types,
> > @@ -143,8 +151,8 @@ was not a valid address.
> >   .TP
> >   .B ENOMSG
> >   Empty accesses (i.e.,
> > -.I attr\->handled_access_fs
> > -is 0).
> > +.I attr
> > +did not specify any access rights to restrict).
> >   .SH STANDARDS
> >   Linux.
> >   .SH HISTORY
> > diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> > index 652054f15..52876a3de 100644
> > --- a/man/man7/landlock.7
> > +++ b/man/man7/landlock.7
> > @@ -189,6 +189,19 @@ If multiple requirements are not met, the
> >   error code takes precedence over
> >   .BR EXDEV .
> >   .\"
> > +.SS Network flags
> > +These flags enable to restrict a sandboxed process
> > +to a set of network actions.
> > +This is supported since the Landlock ABI version 4.
> > +.P
> > +The following access rights apply to TCP port numbers:
> > +.TP
> > +.B LANDLOCK_ACCESS_NET_BIND_TCP
> > +Bind a TCP socket to a local port.
> > +.TP
> > +.B LANDLOCK_ACCESS_NET_CONNECT_TCP
> > +Connect an active TCP socket to a remote port.
> > +.\"
> >   .SS Layers of file path access rights
> >   Each time a thread enforces a ruleset on itself,
> >   it updates its Landlock domain with a new layer of policy.
> > @@ -339,6 +352,9 @@ _	_	_
> >   2	5.19	LANDLOCK_ACCESS_FS_REFER
> >   _	_	_
> >   3	6.2	LANDLOCK_ACCESS_FS_TRUNCATE
> > +_	_	_
> > +4	6.7	LANDLOCK_ACCESS_NET_BIND_TCP
> > +\^	\^	LANDLOCK_ACCESS_NET_CONNECT_TCP
> >   .TE
> >   .P
> >   Users should use the Landlock ABI version rather than the kernel vers=
ion
> > @@ -439,9 +455,10 @@ and only use the available subset of access rights:
> >    * numbers hardcoded to keep the example short.
> >    */
> >   __u64 landlock_fs_access_rights[] =3D {
> > -    (LANDLOCK_ACCESS_FS_MAKE_SYM << 1) \- 1,  /* v1                 */
> > -    (LANDLOCK_ACCESS_FS_REFER    << 1) \- 1,  /* v2: add "refer"    */
> > -    (LANDLOCK_ACCESS_FS_TRUNCATE << 1) \- 1,  /* v3: add "truncate" */
> > +    (LANDLOCK_ACCESS_FS_MAKE_SYM  << 1) \- 1,  /* v1                  =
*/
> > +    (LANDLOCK_ACCESS_FS_REFER     << 1) \- 1,  /* v2: add "refer"     =
*/
> > +    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v3: add "truncate"  =
*/
> > +    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v4: TCP support     =
*/   Double "LANDLOCK_ACCESS_FS_TRUNCATE  << 1", I think its a mistype here.
> >   };
> >   \&
> >   int abi =3D landlock_create_ruleset(NULL, 0,

--=20
<https://www.alejandro-colomar.es/>

--q4tybne2q2okz7vf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmax+M4ACgkQnowa+77/
2zLXbQ/8DReAFc77hJti4FLEXF/r7FDW8Jch5cywRmoqMTuUonI8TmFS+RvJ8MkL
dtx0ijoCWaPAg4mwR2d4Wly6N9Ks0wxVuoSk8DXYHhChIQHowSzyKTcbTkYhdd66
C8Pc6tR5uK16G8nC41SOqHlHB4t1abUJdxLNgZRAX3moNxtYWgttn1JuakgFYoBb
+eMqNtHrxkO3z7Un/VE067GZSvS6NyGr+4NrwAfEWzpKmWUy4FIMtsz6+u8KF3sR
GyDwbV44RXNALtiRJHO3ze7p3X8ImKb2mJ71JdNqG4EeQfhaUvU0If20iJFIqdEO
Sdmn8bU2AADKNcT7XJfonyf2fLlz32DbiUhRg+OQzdS+0lGvWYGYKkeQE4gGaFTE
M5TlvK4Nqcipn1TEUu0hrrbKF/08gx2KVdsmXfPTN7ao5nQOj4BnnX3vQeweN/7J
jyj4LQkbxGTIrpiwCqMvqhbEOMv4TDa2rKfOOvwi4YtSC4tt5hdNBuV8HbImRF2b
GUEnQSOyQHC8QZbNUCXicdA4PN2DLPIzT9WHRDi3fTeoJHeeEpm6fvVp1hbDPhVB
su7WRhTa9xEz81YzAvYzmYik24gpSxMFIN12IOq1U3CFnr62JZit1pLJCCwSPBWP
azXYxso2IxpIFJ3Xr2qPkJU0mLnwtW6bg99PQNRM04+5aNiL0W0=
=5L9L
-----END PGP SIGNATURE-----

--q4tybne2q2okz7vf--

