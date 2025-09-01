Return-Path: <linux-man+bounces-3797-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A09B3DBE7
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 10:07:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9962B4E1B5C
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 08:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D955D2EE272;
	Mon,  1 Sep 2025 08:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhTDg/uD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A2EE247291
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 08:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756714025; cv=none; b=mx6BHxmAQ3DqCNA4vT4Qo9x8kKA3vxua8Rs6xjtGOPyFSR+4BZuLXKyizn3jNiltArY/DnajJWtrtClBOLVcXBM8BeIeoGQR5DqLTmVxTphKRICxPbmXgNww0LTopnEmNodyOq0fX1DK5hC8U9tcCPokchwFEMJQSbfu+NnA60k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756714025; c=relaxed/simple;
	bh=XHdKc3TfROZ0p5rrFSg+N1BSDbP11Gtn3+dY9Aol0S0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UOtcxRpxiqaBoBt95FBZuFPAANtUrjXu7yeY/17Gp/cUPA1UdQPsAHgOxz1sZSc59wvaHIzCzRJ6jYEhHfZ2nedZqBAqRPGfblm37kyC5eePzWCN99xiTV4bS56jalaltHgwgh6RF3iTvDwWEIj0TE3+hdIP6rBKJ/gtFqDSMSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhTDg/uD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00EF2C4AF0B;
	Mon,  1 Sep 2025 08:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756714025;
	bh=XHdKc3TfROZ0p5rrFSg+N1BSDbP11Gtn3+dY9Aol0S0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jhTDg/uD/I+KEkt6ECG02Kd5pKJ32sS3MkT0b5TTElwwxaq7fTA2oaLRbeMnvnIrn
	 +fzrKTCPlPPilyyEQUoJWTaX1RJ7OYK+Cuwe9VzBaNjjB0KqNJN8FehRREQ0wFDjys
	 4kNwrgFhv57E8bI3thPyM8SkJC+FNBhZcpssfSbwARHQ+BzQD6hQkCzS7y8nQx0ITX
	 QR/MjaotJRrIDWbpNBUkgWS5ifUqv42suleJkMRbEeDwODSCpqRZVf379vaGwgYwt1
	 q/0XMgoIYMAmu1sMt4ZudeF0nX7bdRCSg9b6G5owLvjhNO4tdB8iotlIsyPVB+rRPm
	 W0uPKS5WbLx4w==
Date: Mon, 1 Sep 2025 10:07:00 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page utmp.5
Message-ID: <spfrrd3elus6kks3qglpjduqspgwuzkpr67rrwqzihkpto57u2@imkzoerxdkh5>
References: <aKsmQ6bm3NpMYRGu@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c5fj2lesfpikzlgx"
Content-Disposition: inline
In-Reply-To: <aKsmQ6bm3NpMYRGu@meinfjell.helgefjelltest.de>


--c5fj2lesfpikzlgx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page utmp.5
References: <aKsmQ6bm3NpMYRGu@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmQ6bm3NpMYRGu@meinfjell.helgefjelltest.de>

On Sun, Aug 24, 2025 at 02:48:35PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:   (B<getsid>(2)B<),> =E2=86=92 (B<getsid>(2)),

Thanks; fixed!


Cheers,
Alex

>=20
> "/* Values for ut_type field, below */\n"
> "\\&\n"
> "#define EMPTY         0 /* Record does not contain valid info\n"
> "                           (formerly known as UT_UNKNOWN on Linux) */\n"
> "#define RUN_LVL       1 /* Change in system run-level (see\n"
> "                           B<init>(1))\\ \n"
> "*/\n"
> "#define BOOT_TIME     2 /* Time of system boot (in \\f[I]ut_tv\\fR) */\n"
> "#define NEW_TIME      3 /* Time after system clock change\n"
> "                           (in \\f[I]ut_tv\\fR) */\n"
> "#define OLD_TIME      4 /* Time before system clock change\n"
> "                           (in \\f[I]ut_tv\\fR) */\n"
> "#define INIT_PROCESS  5 /* Process spawned by B<init>(1)\\ \n"
> "*/\n"
> "#define LOGIN_PROCESS 6 /* Session leader process for user login */\n"
> "#define USER_PROCESS  7 /* Normal process */\n"
> "#define DEAD_PROCESS  8 /* Terminated process */\n"
> "#define ACCOUNTING    9 /* Not implemented */\n"
> "\\&\n"
> "#define UT_LINESIZE      32\n"
> "#define UT_NAMESIZE      32\n"
> "#define UT_HOSTSIZE     256\n"
> "\\&\n"
> "struct exit_status {              /* Type for ut_exit, below */\n"
> "    short e_termination;          /* Process termination status */\n"
> "    short e_exit;                 /* Process exit status */\n"
> "};\n"
> "\\&\n"
> "struct utmp {\n"
> "    short   ut_type;              /* Type of record */\n"
> "    pid_t   ut_pid;               /* PID of login process */\n"
> "    char    ut_line[UT_LINESIZE]; /* Device name of tty - \"/dev/\" */\n"
> "    char    ut_id[4];             /* Terminal name suffix,\n"
> "                                     or inittab(5) ID */\n"
> "    char    ut_user[UT_NAMESIZE]; /* Username */\n"
> "    char    ut_host[UT_HOSTSIZE]; /* Hostname for remote login, or\n"
> "                                     kernel version for run-level\n"
> "                                     messages */\n"
> "    struct  exit_status ut_exit;  /* Exit status of a process\n"
> "                                     marked as DEAD_PROCESS; not\n"
> "                                     used by Linux B<init>(1)\\ \n"
> "*/\n"
> "    /* The ut_session and ut_tv fields must be the same size when\n"
> "       compiled 32- and 64-bit.  This allows data files and shared\n"
> "       memory to be shared between 32- and 64-bit applications. */\n"
> "#if __WORDSIZE =3D=3D 64 && defined __WORDSIZE_COMPAT32\n"
> "    int32_t ut_session;           /* Session ID (\n"
> "B<getsid>(2)B<),>\n"
> "                                     used for windowing */\n"
> "    struct {\n"
> "        int32_t tv_sec;           /* Seconds */\n"
> "        int32_t tv_usec;          /* Microseconds */\n"
> "    } ut_tv;                      /* Time entry was made */\n"
> "#else\n"
> "     long   ut_session;           /* Session ID */\n"
> "     struct timeval ut_tv;        /* Time entry was made */\n"
> "#endif\n"
> "\\&\n"
> "    int32_t ut_addr_v6[4];        /* Internet address of remote\n"
> "                                     host; IPv4 address uses\n"
> "                                     just ut_addr_v6[0] */\n"
> "    char __unused[20];            /* Reserved for future use */\n"
> "};\n"
> "\\&\n"
> "/* Backward compatibility hacks */\n"
> "#define ut_name ut_user\n"
> "#ifndef _NO_UT_TIME\n"
> "#define ut_time ut_tv.tv_sec\n"
> "#endif\n"
> "#define ut_xtime ut_tv.tv_sec\n"
> "#define ut_addr ut_addr_v6[0]\n"

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--c5fj2lesfpikzlgx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi1VCQACgkQ64mZXMKQ
wqmNUQ//Z9iWJ6CFfP7twqg9dCfv/Jf64OMxM6JMVYmlqrhzJGDcmVJukrNa+OSY
iAjoRL9CT/eFjRP+3MjPDedsDU75vP4pfSa3AoqZVAAQHRMc/XHeKLN3NmxENYS7
L3QZUHYS/1wj/JZ3NnWpIL+26PRAD3TzX/H++uAoJADbjhqQ/zqbGLgm2q2wek07
Gg8WjWWRnHQ2JBobUETVfrIqvMtLb7HhVmz+PCAQEPr1Gb6H9Pk6yaa3HISOg1tn
yd6JMWaGNbuWDS1TmgNrO7HwkoTxjJSyiC4X/ZsDDatA8NoRhQWYeujHZvombE2j
A6beiM99MdZt5IVLvmqzIKadtj+lAglYyLILwCWS3KVCKxW5EZM6mlOjDc2L+6bL
EBYEz8/4G7okWH6khSWT/OX1KhRIL+lxV4Ek8AUhhJ6aV2nPrKcDG3xC5Ep30YSl
EvMVZELE7MaQt2OvPTLXWGpls/IZW8jGxnryZLG3+GWwtU4eBzHzZuB4OLlFmmkT
Mu0+AkAqLKductAzBtpzzSyuVhlHXSiu698qrt5yHpEuCmnWYUbY45/GJf+plzjs
UdLRHmmJJ9rwYnE0tg0qY0HFcB3ZMHKCJRVl+kL1iSTJV/dzuAnb/WsbA/LYgK4i
vRLAeQ/JUUCzy98O1kQjXU8/YfZFo65HuNinh7fXYWwIH32NEm8=
=G0er
-----END PGP SIGNATURE-----

--c5fj2lesfpikzlgx--

