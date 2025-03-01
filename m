Return-Path: <linux-man+bounces-2548-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8FCA4AB51
	for <lists+linux-man@lfdr.de>; Sat,  1 Mar 2025 14:46:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 87AA01716CF
	for <lists+linux-man@lfdr.de>; Sat,  1 Mar 2025 13:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A738C2FC23;
	Sat,  1 Mar 2025 13:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoZoHQcn"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676B763A9
	for <linux-man@vger.kernel.org>; Sat,  1 Mar 2025 13:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740836767; cv=none; b=dHSTOLaqzGakGlTdqj4EXR1H6TRXSRQr3BUCyrrKYKRSacaMZd7Db624VlHa94rD4DLGqptsUcimD7PFMg6RKQ3EI14V4NaSQBDZFvYHdzQJzhkkFbmyR/KHd7UY8/0zZCOEodLRErnrxn+NID2RxfRrFJdg9YWqATztH/OFZQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740836767; c=relaxed/simple;
	bh=U5NlLkatq6UFh8R6uuj2zZUwQzTAzkQKPvNVMFLoeX4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CQdFPWEDOe9M9T+6gc8RYNuwtrIeMErBSQYym4ocwRYiEBthPEMrZu1cK6Kgfhw2WIU79iMZTfYDXOAujaG+2ytknO0LkLlYVVUuJYNbF1rO5qJhrI5aXp8DS4sq2VC12IOu9nccDreVlQOpq3JJHXkhA/zX7klJx0FAlKbb/+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoZoHQcn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63531C4CEDD;
	Sat,  1 Mar 2025 13:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740836766;
	bh=U5NlLkatq6UFh8R6uuj2zZUwQzTAzkQKPvNVMFLoeX4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aoZoHQcnooPInmxfKHtXtSXZ04ZVo38IZf2rPMR/l5AJjr9e/GFEVKLPdTeIu2t80
	 urRz7XZ13FwO1jQvwrOD4Vnpgv8OIa6oP+cuZNk+oRvecrJS/3R+8l9hmUcmNG97G4
	 PwojVSWSshyjGoLEV2crZAk+mkCMzon2nCozulTW04iXS26KbCwH7oPyferl/TFW2R
	 yk9p8znJVDxI5EsR197r+NlqhRxDViRjhbaFFLb+4hjZQvzumTWNvjgzg/5osxztkF
	 Xx4IYBdkPkuRNrKpHg8ubpcmEJ/sjUxCiy4zS0hfPzatQ/XTKditCKH8xn3yaHoAfo
	 /I2TqIsTfgdkQ==
Date: Sat, 1 Mar 2025 14:44:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely.gcc@gmail.com>
Cc: rahl <rahl@everwhe.re>, linux-man@vger.kernel.org, 
	gcc-help@gcc.gnu.org
Subject: Re: Incorrect const in futex(2) example code
Message-ID: <ehgu6ozyc6mhmsp2vcheluwqwoho5e4ar3gpba6aoywuqn6xuq@3au5clsivokn>
References: <64CE143F-78B6-4A90-A6DF-2D1C8361902D@everwhe.re>
 <mvkhetitsgpcyces7ctq6vvkp5ma2jni7j2ybl6sdrmyme2dxh@qhuw576ud7v6>
 <05F97E03-03EF-4B21-88B3-7F94018CCF6F@everwhe.re>
 <CAH6eHdSoRGJ-g8yLymvNH6NKrNFgTFryshBunHgexxiep6NiUA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="amc3g3fnqwqcqbtn"
Content-Disposition: inline
In-Reply-To: <CAH6eHdSoRGJ-g8yLymvNH6NKrNFgTFryshBunHgexxiep6NiUA@mail.gmail.com>


--amc3g3fnqwqcqbtn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely.gcc@gmail.com>
Cc: rahl <rahl@everwhe.re>, linux-man@vger.kernel.org, 
	gcc-help@gcc.gnu.org
Subject: Re: Incorrect const in futex(2) example code
References: <64CE143F-78B6-4A90-A6DF-2D1C8361902D@everwhe.re>
 <mvkhetitsgpcyces7ctq6vvkp5ma2jni7j2ybl6sdrmyme2dxh@qhuw576ud7v6>
 <05F97E03-03EF-4B21-88B3-7F94018CCF6F@everwhe.re>
 <CAH6eHdSoRGJ-g8yLymvNH6NKrNFgTFryshBunHgexxiep6NiUA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAH6eHdSoRGJ-g8yLymvNH6NKrNFgTFryshBunHgexxiep6NiUA@mail.gmail.com>

Hi Jonathan, Rahl,

On Sat, Mar 01, 2025 at 11:59:35AM +0000, Jonathan Wakely wrote:
> On Sat, 1 Mar 2025 at 11:36, rahl <rahl@everwhe.re> wrote:
> >
> > On 28 February 2025 20:57:50 UTC, Alejandro Colomar <alx@kernel.org> wr=
ote:
> > >On Fri, Feb 28, 2025 at 10:13:04AM +0000, rahl wrote:
> > >> I noticed that 'const' is used for both 'one' and 'zero' variables in
> > >> the Examples section demo code of manpage 'futex(2)'.
> > >>
> > >> The variables are both used in calls to
> > >> 'atomic_compare_exchange_strong()' where the 'const' is discarded as
> > >> it may write to the 'expected' parameter during a "failure" case.
> > >
> > >I don't understand what that function is.  It doesn't have a manual
> > >page, and it's neither in /usr/include.  It doesn't appear in the GCC
> > >manual either.  And it's not described in ISO C.
> > >
> > >What is that function?
> > >
> > >I'd like to understand what we're calling to be able to understand how
> > >the calling code is wrong.
> >
> > atomic_compare_exchange_XXX() are defined in stdatomic.h

Ahh, it's a compiler library.  Now I can find it.

	alx@debian:~$ find /usr/lib/ 2>/dev/null | grep stdatomic.h
	/usr/lib/gcc/x86_64-linux-gnu/14/include/stdatomic.h
	/usr/lib/llvm-19/lib/clang/19/include/stdatomic.h
	alx@debian:~$ find /usr/lib/ 2>/dev/null | grep stdatomic.h | xargs grepc =
-n -B1 atomic_compare_exchange_strong
	/usr/lib/gcc/x86_64-linux-gnu/14/include/stdatomic.h-178-
	/usr/lib/gcc/x86_64-linux-gnu/14/include/stdatomic.h:179:#define atomic_co=
mpare_exchange_strong(PTR, VAL, DES) 			   \
	  atomic_compare_exchange_strong_explicit (PTR, VAL, DES, __ATOMIC_SEQ_CST=
, \
						   __ATOMIC_SEQ_CST)
	--
	/usr/lib/llvm-19/lib/clang/19/include/stdatomic.h-149-
	/usr/lib/llvm-19/lib/clang/19/include/stdatomic.h:150:#define atomic_compa=
re_exchange_strong(object, expected, desired) __c11_atomic_compare_exchange=
_strong(object, expected, desired, __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST)

> > and were introduced in C11 (ISO/IEC 9899:2011 I believe).

And indeed were introduced in C11 (I don't remember how I searched the
other day that I didn't find it).

	$ stdc C11 atomic_compare_exchange_strong
	_Bool atomic_compare_exchange_strong(volatile A *object, C *expected, C de=
sired);

> > The main online documentation for these that I'm currently aware of is =
at cppreference.
> > <https://en.cppreference.com/w/c/atomic/atomic_compare_exchange>
> >
> > >BTW, there seem to be other important bugs in that example program,
> > >which I don't understand either.  Would you mind having a look at those
> > >(I'm assuming that you seem familiar with these atomic APIs)?  See:
> >
> > You're right, there are more bugs. I'm however not so familiar with the=
se functions, but I do have some help.
> >
> > The errors in question relate to a missing _Atomic qualifier for severa=
l variables and function parameters.
>=20
> The futex.2 examples used to use the non-standard
> __sync_bool_compare_and_swap, which was correct. It was changed to use
> atomic_compare_exchange_strong by:
>=20
> commit 915c4ba36f9f71db88e7e7913b845d046996f485
> Author: Benjamin Peterson <benjamin@python.org>
> Date:   Tue Nov 13 22:53:41 2018 -0800
>=20
>    futex.2: Make the example use C11 atomics rather than GCC builtins
>=20
> That change was wrong and broke the examples, because C11 atomics are
> only usable on _Atomic variables. __sync_bool_compare_and_swap and
> __atomic_compare_exchange are usable with plain non-_Atomic types.

Thanks!  Should we just revert that commit, or do you think we can fix
the current program?  Do you think the C11 APIs are worth it?
Could you please review rahl's patch?

> > The documentation linked above should clarify this as well.
> >
> > It turns out these calls could be replaced with a compiler built-in (__=
atomic_compare_exchange_n) both for clang and gcc, which wouldn't have the =
above problem, and would also allow for the removal of 'stdatomic.h'. Howev=
er, this didn't feel too in keeping with manpage example code.
> >
> > The gcc docs are here:
> > <https://gcc.gnu.org/onlinedocs/gcc/_005f_005fatomic-Builtins.html>
> >
> > >> Attached is the trivial patch to remove the offending qualifiers.
> > >
> > >Please provide a complete patch, with a commit message.  See the files
> > >under <CONTRIBUTING.d/>.
> >
> > Rather than submit a separate email, I have attached a file
> > containing the full output from git-format-patch,

Yes, that's what I needed (I don't know why people strip the output of
git-format-patch(1); it's easier to just send it as is, I think).  :)

> > with the message being in what I believe is the expected format

Yes.  Please add to it the following tags:

	Fixes: 915c4ba36f9f (2018-11-17; "futex.2: Make the example use C11 atomic=
s rather than GCC builtins")
	Cc: Jonathan Wakely <jwakely.gcc@gmail.com>

> > - having read that an attachment is also an acceptable approach,
> > albeit perhaps not in email form.

Yes, it is.  What you sent this time is just fine.

Do you think I could improve that documentation that would have
prevented you from sending the first email with the stripped patch?
Do you think anything there is unclear and could be clarified?

> > If for some reason you feel it should be submitted as a separate
> > email I can do so.
> > This way seemed more prudent for now as this is my first such patch
> > and I'd like to get it right before having multiple threads in the ML.

You could still send as a separate email in the same thread with
git-format-patch(1)'s --in-reply-to flag (or git-send-email(1), which
has the same flag), which would have been fine, but this is okay too.

> >
> > Let me know if there are any further issues.
> > Cheers,
> >
> > rahl

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--amc3g3fnqwqcqbtn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfDD1EACgkQ64mZXMKQ
wqkgAg//RCdE1LejtzJDlQKCdUrjw6s180GCpbDF9AsUQzxAwqMIV71qZiSYVXdp
oWtYKqTV15oFJvGBjc39SwmMeImlPAikU+v28vyCMYrpsKnJHGX71iRh6C7T3l4v
x3NkDZ0m1T0gQ/w8AKrHowdOpW6KKzzQH91ZhspSUz1J1E3hEy537p7tVKmx2Yi+
1W5IuB3YCwj214MfD7lTq2SA5WtI9ChjY1Kb0QXwQkHD7/XhuM5hDAQu6HhK0gSF
Sv6P6+PpEBiwEH+MHIKge4KnimnEpxhexky093gBocI8NK9BCJKuyRxbuAhv/UUa
NX37pl2cdXMTeys6TLuXkoGhmtowe3hzcTNYFjdtyoZ/Kx/jOz6YjPQWFGxWnLZG
wBnkUlxZgR5AD1fVOwu/mwjgLZ1bLpzQVvfCoGPa+qy8RbejHeguNcNDExk6/GVK
mTSPmCazFmRgyDvKLgGlkNSnvNYKi04MvAD1wWwEC5Sh+w3Ae+L108WHNyQnpr6c
v2ontM4/smiN71OpavIJJJoV4qxZIdz1aAlWBUkAxs50u+fYOIYCN7jCChu7ZTK/
yi7v+shgvGFtvyAXoWXODLaZ/v9MrL2pZG6gz78OTi+5ZxnoSkiu2YtHccckrwLZ
7dtowk4t0m467Y4jKDFvaJMamrrHG7ebGunh6TVvkfaI9+QMzEU=
=Zv9k
-----END PGP SIGNATURE-----

--amc3g3fnqwqcqbtn--

