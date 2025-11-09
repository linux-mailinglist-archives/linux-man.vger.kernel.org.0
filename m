Return-Path: <linux-man+bounces-4268-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 87482C43D5F
	for <lists+linux-man@lfdr.de>; Sun, 09 Nov 2025 13:22:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2EFA24E06AE
	for <lists+linux-man@lfdr.de>; Sun,  9 Nov 2025 12:22:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27CF82EC088;
	Sun,  9 Nov 2025 12:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZE2Bt0ZG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC7C72EBDF2
	for <linux-man@vger.kernel.org>; Sun,  9 Nov 2025 12:22:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762690964; cv=none; b=PSqZ8bsN6Th6YKHd0Y7nc2j3W9DcNYUvy0eh7QZc7sjoZeIFbHTcwJ+0EqTtdMj6AnWNMyyc36tt0xdjG95j4i601wihXDQciZWO2krTrV070vNgXsYzUlrvaP47njnZ3QXHtJFaFPiu23QLAeZP6XqVh4HWfynT9DbUZQI5at4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762690964; c=relaxed/simple;
	bh=ZsMsnYO4lLJ2yqiucs98wgQh8f4AyBgnZ1tbfBdQfTo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mBDb2ed38djOYdBbUWExVfh/dTXQLVCvhAHPGnTNMPzTCkBkjgP5i0tWWawGto2TieQybKZH1/ygznDQnJ37seTeykYu6piEDvh3lvK8P+zO2UAXuPlZDHkq9TbPsJ+9uNh8Los3c5AWGlmLNDaNsH3EUfqpALcTTtHc5sc+iU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZE2Bt0ZG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE7CEC113D0;
	Sun,  9 Nov 2025 12:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762690964;
	bh=ZsMsnYO4lLJ2yqiucs98wgQh8f4AyBgnZ1tbfBdQfTo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZE2Bt0ZGsJDSu01x8KdKkvv2tB3yac5D1371GC6zLLipky0wS4MnUiCAn4qzy3SqW
	 MLSaRS4PgHBgvBP3R0ZdTVa/VrJ+6zB7BM74isnpjwtHUT7jWT1reVO7/z0iYO2R5S
	 EJAL34EtDVOCNbhmWLLUa2pJEpbWvuXzDQwNY+tT3guc+ooQrasSu0eeELtGWks0U1
	 Qk+i5D5nOLeyUl5N+L7kAmY4TsFRDqFOaYzoZ5ngMoyQjJ+DLOd+N5RwpKAjhSGjQg
	 ZT5UGeIJeochWMOzv8JHc2w6zxU9YJrrZr0LBTJ7EaCHd6MoaOpJlFuPcB7k7tjvBC
	 GFZUNvgRw7S/A==
Date: Sun, 9 Nov 2025 13:22:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: bugzilla-daemon@kernel.org, Carlos O'Donell <carlos@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [Bug 220723] New: the man page seccomp(2) instructs the user to
 include <linux/signal.h> and it causes conflicts
Message-ID: <pomfcbpghajossneqm3ugdeb7suatmbvhw5hk4j5zcoztty6os@i24vk4bcwgal>
References: <bug-220723-11311@https.bugzilla.kernel.org/>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="klnbl43duwcnyvna"
Content-Disposition: inline
In-Reply-To: <bug-220723-11311@https.bugzilla.kernel.org/>


--klnbl43duwcnyvna
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: bugzilla-daemon@kernel.org, Carlos O'Donell <carlos@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [Bug 220723] New: the man page seccomp(2) instructs the user to
 include <linux/signal.h> and it causes conflicts
Message-ID: <pomfcbpghajossneqm3ugdeb7suatmbvhw5hk4j5zcoztty6os@i24vk4bcwgal>
References: <bug-220723-11311@https.bugzilla.kernel.org/>
MIME-Version: 1.0
In-Reply-To: <bug-220723-11311@https.bugzilla.kernel.org/>

Hi Carlos,

On Wed, Oct 29, 2025 at 09:15:36PM +0000, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D220723
>=20
>             Bug ID: 220723
>            Summary: the man page seccomp(2) instructs the user to include
>                     <linux/signal.h> and it causes conflicts
>            Product: Documentation
>            Version: unspecified
>           Hardware: All
>                 OS: Linux
>             Status: NEW
>           Severity: normal
>           Priority: P3
>          Component: man-pages
>           Assignee: documentation_man-pages@kernel-bugs.osdl.org
>           Reporter: mpatocka@redhat.com
>         Regression: No
>=20
> The man page seccomp(2) instructs the user to include these files:
>=20
>        #include <linux/seccomp.h>  /* Definition of SECCOMP_* constants */
>        #include <linux/filter.h>   /* Definition of struct sock_fprog */
>        #include <linux/audit.h>    /* Definition of AUDIT_* constants */
>        #include <linux/signal.h>   /* Definition of SIG* constants */
>        #include <sys/ptrace.h>     /* Definition of PTRACE_* constants */
>        #include <sys/syscall.h>    /* Definition of SYS_* constants */
>        #include <unistd.h>
>=20
> However, the include file <linux/signal.h> defines sigset_t and struct ti=
meval
> and they clash with the glibc definition. <linux/signal.h> should be chan=
ged to
> <signal.h> in the man page.

Would you mind reviewing this?


Have a lovely day!
Alex

>=20
> How to reproduce: Try to compile this program:
>=20
> #include <linux/seccomp.h>
> #include <linux/filter.h>
> #include <linux/audit.h>
> #include <linux/signal.h>
> #include <sys/ptrace.h>
> #include <sys/syscall.h>
> #include <unistd.h>
>=20
> #include <stdlib.h>
>=20
> int main(void)
> {
>         return 0;
> }
>=20
> You get these errors:
> In file included from /usr/include/x86_64-linux-gnu/sys/select.h:33,
>                  from /usr/include/x86_64-linux-gnu/sys/types.h:179,
>                  from /usr/include/stdlib.h:395,
>                  from seccomp.c:9:
> /usr/include/x86_64-linux-gnu/bits/types/sigset_t.h:7:20: error: conflict=
ing
> types for =E2=80=98sigset_t=E2=80=99; have =E2=80=98__sigset_t=E2=80=99
>     7 | typedef __sigset_t sigset_t;
>       |                    ^~~~~~~~
> In file included from /usr/include/linux/signal.h:5,
>                  from seccomp.c:4:
> /usr/include/x86_64-linux-gnu/asm/signal.h:16:23: note: previous declarat=
ion of
> =E2=80=98sigset_t=E2=80=99 with type =E2=80=98sigset_t=E2=80=99 {aka =E2=
=80=98long unsigned int=E2=80=99}
>    16 | typedef unsigned long sigset_t;
>       |                       ^~~~~~~~
> In file included from /usr/include/x86_64-linux-gnu/sys/select.h:37:
> /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h:8:8: error:
> redefinition of =E2=80=98struct timeval=E2=80=99
>     8 | struct timeval
>       |        ^~~~~~~
> In file included from /usr/include/x86_64-linux-gnu/asm/signal.h:7:
> /usr/include/linux/time.h:16:8: note: originally defined here
>    16 | struct timeval {
>       |        ^~~~~~~
>=20
> --=20
> You may reply to this email to add a comment.
>=20
> You are receiving this mail because:
> You are watching the assignee of the bug.

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--klnbl43duwcnyvna
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkQh5EACgkQ64mZXMKQ
wqn8Zw/+KRt3gDjomG+QtIMjtTcJ7aguAUdxNcGchN0+u9fhNJ8AU0lXz/+jNJcO
Nhb9LFfyY4whC6y4lSVsnXC1b4TMJISaA37FyeC2dTwn7MxJL7K4yLybbU7uRe5Q
8U7r8UnDRwv//U9B1/o2J8DC1k0cjw9T6v8b1HyflsjqtLf05+BshygIZ2/b2+nf
83UX80INbhVcTrt+eOqYFKmsXZ6QmX1SL71FMHhtzGJ6VBb7vzrYc0QjHRiiQVSB
CDusNcrTJAVljRhUTJcU/sE1VQyz+hyg+Gh7UpewT2XcNalKUte7pi3+nN6JX2G8
qPjAe0vGsF1+JNQQ3HKSv+3omXnuG6Z3mirccfDIqFxD6b5awQQMzkJbuUbygzq4
TCj16NT92y0aU+yK0z3pFtSM6mt5plY/9WqOM9RIzqb2Son38RM7Qpdmiv6Rzl+o
ZGwTd6m4GJTdL1nLRwNX/0Mn5gtcjMZ0/z/xrBdaF4HlE8QOupnFadq7ZHOnAk0i
PEclHXdTR4LcWoVPlzXWSM7866+c2oavkRaKxxXk4iNxMS7aE3HDm+gXkTuBjese
5R8LVUZxtrGfuFT0EfC5jHvKAXIEUAIVqybwI5zr4/1jbAJM4JVaKxTS9P0e3HKq
4lLzucUCkhPW0JQSE8H0GJr5nFhvDjFfUpIWDPjqGlt3MbJzkYs=
=UXiz
-----END PGP SIGNATURE-----

--klnbl43duwcnyvna--

