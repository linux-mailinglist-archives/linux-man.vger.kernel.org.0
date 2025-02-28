Return-Path: <linux-man+bounces-2545-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BAFA4A523
	for <lists+linux-man@lfdr.de>; Fri, 28 Feb 2025 22:37:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8DD29175C83
	for <lists+linux-man@lfdr.de>; Fri, 28 Feb 2025 21:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C54D91CD210;
	Fri, 28 Feb 2025 21:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eoj1i12p"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81EA523F38A;
	Fri, 28 Feb 2025 21:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740778643; cv=none; b=efXAKhBSQXwjOWjsg1Enb+TwRSSALgxjyYLYdZnLrwKY3PbgK3/fW8VmZf3AbOYdwfV1epyVc15CntQVKQ2FOG3N/2QG8PWUkOO0DIT6tGZ/6z3ZueyvTGGDfbhVxd6tMXd4K/jL26juky5QhH2RT8B7xnAO3EKFqg0fVLVcE1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740778643; c=relaxed/simple;
	bh=39DhMFcc9t/bgMBMhYQnpdzzC/bWhCs4iH2q6mpVztY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tgr5j7k7gZGs88BFWzZstH8VkikEgX9IMi+qkE5Mh64WKvQGogrHNgh7lcma2w2J1qQCNSPVRbYzk9ZOPS8ui6FDocLT/5csVRsEoP1Rifyt0MTwBUM6uiPWIhO9QAPMeDn1ZQMDT/9lOtNtFZYtzzh8cs5Yk75oBeqmAJkL0MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eoj1i12p; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB622C4CED6;
	Fri, 28 Feb 2025 21:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740778643;
	bh=39DhMFcc9t/bgMBMhYQnpdzzC/bWhCs4iH2q6mpVztY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Eoj1i12pLwB0Ips1HrPBlPiCXq6S0slfgAVkSEr0Bzr7ntHJ2aexxVGzQUtPOLDjP
	 3FFPUUJrZRg8Hd5l3XH38YFsCURefhrsBIITkLLEHd9gE1BcVwDKOMfeU6hP55upJd
	 15EZ1mpIwSxJ3cV6pS3C7BpqrOSZrVyTsxoW1xZdepPDa88ERKZDrWgBaZTwMLoD7+
	 OEOhc3qFL41e5GsmEWjKZqYEnUNGwn8BvBSNtxu5Bd5wLNkRrvPpY4N2Di5q5H5FdK
	 ej+K0q8ZFAaOBs16JO7hkurjnvMeeujGOzjMz7C3Iim5nmGrLaK/1zUr1BHayzp9G8
	 l2HVrhW4Ple0g==
Date: Fri, 28 Feb 2025 22:37:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Tahera Fahimi <fahimitahera@gmail.com>, Tanya Agarwal <tanyaagarwal25699@gmail.com>, 
	linux-security-module@vger.kernel.org, linux-man@vger.kernel.org, 
	Daniel Burgener <dburgener@linux.microsoft.com>
Subject: Re: [PATCH v2 3/3] landlock.7: Clarify IPC scoping documentation in
 line with kernel side
Message-ID: <eawpcooc5n4viv2yayt2nblmtnz6mmjixcznrbxputz6ge6w6c@4d46jzm4eego>
References: <20250226211814.31420-2-gnoack@google.com>
 <20250226212911.34502-4-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y3gdgspeoxjaztiq"
Content-Disposition: inline
In-Reply-To: <20250226212911.34502-4-gnoack@google.com>


--y3gdgspeoxjaztiq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Tahera Fahimi <fahimitahera@gmail.com>, Tanya Agarwal <tanyaagarwal25699@gmail.com>, 
	linux-security-module@vger.kernel.org, linux-man@vger.kernel.org, 
	Daniel Burgener <dburgener@linux.microsoft.com>
Subject: Re: [PATCH v2 3/3] landlock.7: Clarify IPC scoping documentation in
 line with kernel side
References: <20250226211814.31420-2-gnoack@google.com>
 <20250226212911.34502-4-gnoack@google.com>
MIME-Version: 1.0
In-Reply-To: <20250226212911.34502-4-gnoack@google.com>

Hi,

On Wed, Feb 26, 2025 at 10:29:12PM +0100, G=C3=BCnther Noack wrote:
> * Clarify terminology
> * Stop mixing the unix(7) and signal(7) aspects in the explanation.
>=20
> Terminology:
>=20
> * The *IPC Scope* of a Landlock domain is that Landlock domain and its
>   nested domains.
>=20
> * An *operation* (e.g., signaling, connecting to abstract UDS) is said to
>   be *scoped within a domain* when the flag for that operation was set at
>   ruleset creation time.  This means that for the purpose of this
>   operation, only processes within the domain's IPC scope are reachable.
>=20
> Link: https://lore.kernel.org/all/20250226211814.31420-4-gnoack@google.co=
m/
> Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
> ---
>  man/man7/landlock.7 | 73 ++++++++++++++++++++++-----------------------
>  1 file changed, 35 insertions(+), 38 deletions(-)
>=20
> diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> index 30dbac73d..42cd7286f 100644
> --- a/man/man7/landlock.7
> +++ b/man/man7/landlock.7
> @@ -357,46 +357,43 @@ which means the tracee must be in a sub-domain of t=
he tracer.
>  Similar to the implicit
>  .BR "Ptrace restrictions" ,
>  we may want to further restrict interactions between sandboxes.
> -Each Landlock domain can be explicitly scoped for a set of actions
> -by specifying it on a ruleset.
> -For example, if a sandboxed process should not be able to
> -.BR connect (2)
> -to a non-sandboxed process through abstract
> +Therefore, at ruleset creation time,
> +each Landlock domain can restrict the scope for certain operations,
> +so that these operations can only reach out to processes
> +within the same Landlock domain or in a nested Landlock domain (the "sco=
pe").
> +.P
> +The operations which can be scoped are:
> +.P

Redundant P before TP.

> +.TP
> +.B LANDLOCK_SCOPE_SIGNAL
> +This limits the sending of signals to target processes
> +which run within the same or a nested Landlock domain.
> +.TP
> +.B LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET
> +This limits the set of abstract
>  .BR unix (7)
> -sockets,
> -we can specify such a restriction with
> -.BR LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET .
> -Moreover, if a sandboxed process should not be able
> -to send a signal to a non-sandboxed process,
> -we can specify this restriction with
> -.BR LANDLOCK_SCOPE_SIGNAL .
> +sockets to which we can
> +.BR connect (2)
> +to socket addresses which were created
> +by a process in the same or a nested Landlock domain.
> +.IP
> +A
> +.BR sendto (2)
> +on a non-connected datagram socket is treated as if it were doing an imp=
licit
> +.BR connect (2)
> +and will be blocked if the remote end does not stem
> +from the same or a nested Landlock domain.
> +.IP
> +A
> +.BR sendto (2)
> +on a socket which was previously connected will not be restricted.
> +This works for both datagram and stream sockets.
>  .P
> -A sandboxed process can connect to a non-sandboxed process
> -when its domain is not scoped.
> -If a process's domain is scoped,
> -it can only connect to sockets created by processes in the same scope.
> -Moreover,
> -If a process is scoped to send signal to a non-scoped process,
> -it can only send signals to processes in the same scope.
> -.P
> -A connected datagram socket behaves like a stream socket
> -when its domain is scoped,
> -meaning if the domain is scoped after the socket is connected,
> -it can still
> -.BR send (2)
> -data just like a stream socket.
> -However, in the same scenario,
> -a non-connected datagram socket cannot send data (with
> -.BR sendto (2))
> -outside its scope.
> -.P
> -A process with a scoped domain can inherit a socket

This text seems to have been added in patch 2/3.  Why is it being
removed in the same set?


Cheers,
Alex

> -created by a non-scoped process.
> -The process cannot connect to this socket since it has a scoped domain.
> -.P
> -IPC scoping does not support exceptions, so if a domain is scoped,
> -no rules can be added to allow access to resources or processes
> -outside of the scope.
> +IPC scoping does not support exceptions via
> +.BR landlock_add_rule (2).
> +If an operation is scoped within a domain,
> +no rules can be added to allow access
> +to resources or processes outside of the scope.
>  .\"
>  .SS Truncating files
>  The operations covered by
> --=20
> 2.48.1.711.g2feabab25a-goog
>=20

--=20
<https://www.alejandro-colomar.es/>

--y3gdgspeoxjaztiq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfCLI0ACgkQ64mZXMKQ
wqnA4w/9EPkbIZOqFlQpV9Vossf4XWgmr+T3Bz56sl2CH543Yur7iQcnUm7JMvN4
lfBQOGRAu0jw9u++edbhDB70D7oazyzShYO3tbo937oLftNSk/reW4J2CkoMH6We
NaX1n1v6WX68K7TVR/DXlA/l02OBNoT3s4AZnGlxvZ/d3vTpaVgE5vIzsTXOPVr1
ozbh1AHylGBpFAd1y4w+KEZSc7RMlwI+XRd67vKeEt7xjKuPedupxrt+LoaynNx/
AE2QG7zcJ1qmKY9DJc9E77o83qbQL+OXij3oL9eg/USQ1IGWLXx7mUA3a4RFjxqr
H3GPO3L8BX9+laClIeWuKvAlB0v3EsbE8YLXgEFarY1He0NKs/DEe1fimMAeRvk1
Y2N60yyf9IA0n4R0QHerGI6GBBjsIQ3NTqHkbrc9Ddc8C4IFBFMOdo2PiHUVSJtr
7MTXmHAxqf3qkI12lLL+eT+/5F/4XmpLEDeUI0V71YCqqNzWEB1OPWfBq1I3gYLn
D+t+ZRExJjgWG9BLnOkg+/cCpVgMENJboElRu/Fmq4jobFqEfLdkenbiCEgdEdH4
KOStXZQyF5a3OietnvhUPFim0nFLkMdfTrtS8rs00ZwBP1MGPR3WUVqUsS8r72xE
9fQM46UXOZd95dqJtA3XP/3gWqdBhBPAOfDqROGr2GaIRhX1Ya4=
=ZAX/
-----END PGP SIGNATURE-----

--y3gdgspeoxjaztiq--

