Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A19FC4680E2
	for <lists+linux-man@lfdr.de>; Sat,  4 Dec 2021 00:46:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354420AbhLCXuW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 3 Dec 2021 18:50:22 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:58010 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S1354388AbhLCXuW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 3 Dec 2021 18:50:22 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 066FD1C2E;
        Sat,  4 Dec 2021 00:46:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1638575212;
        bh=uChACdNgn+5MR86v+BBbZSg/8iyoGYd7bx14jkHf7j4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=jkDMGkdRDPdoPK2sLpOPXrGPtOr906CwfiCJ1AQvSArCZja+BhoAuugD7kmH5ZKvU
         sKJWE6VM3e8oxqzYC0kmO++08uzMAEc8LHwdd2ivI884xUjgoQRrlB+x5uJMUq7zlT
         6v1Uxfp/nbxpwp2OytwA5URKvOf1h00PsxzWZwpr3wOyW36RhEa2NwdIyVWlEH+Dgm
         t/PQ2HHtsE4DHY7L7ZGqnc5//Ut1RYcJt0wsVrmvbW/z1WmI5qzv3NXk8tLDu8hARX
         yh0gacF7qx83eZnh1KihIofwoYlqdUjB2TE0KfsUHT/8nvrur0qx2TiGiTXVkpSh8Q
         xlpYv0mRw9B0g==
Date:   Sat, 4 Dec 2021 00:46:50 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 3/4] clock_getres.2, clock_nanosleep.2, io_getevents.2,
 nanosleep.2, poll.2, sched_rr_get_interval.2, select.2, sigwaitinfo.2,
 timer_settime.2, timerfd_create.2, utimensat.2, mq_receive.3, mq_send.3,
 pthread_tryjoin_np.3, system_data_types.7: correct struct timespec::tv_nsec
 type for x32
Message-ID: <20211203234650.advb5m3bh3labgp5@tarta.nabijaczleweli.xyz>
References: <ec1dcc655184f6cdaae40ff8b7970b750434e4ef.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
 <de0b63287590038675ef723e052ec1d765f7c59b.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
 <c2b59b57-ed75-3530-3ac7-13c187700410@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="lnhoz4tca4orgqij"
Content-Disposition: inline
In-Reply-To: <c2b59b57-ed75-3530-3ac7-13c187700410@gmail.com>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--lnhoz4tca4orgqij
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Mon, Nov 29, 2021 at 01:31:48PM +0100, Alejandro Colomar (man-pages) wro=
te:
> >     (a) is always sizeof=3D=3Dtime_t+8, and
> >     (b) has tv_nsec as __syscall_slong_t
> >         *and* !is_same<__syscall_slong_t, long>
> >         if using ILP64 syscalls on an LP32 system, i.e. on x32.
> I guess you meant LP64, not ILP64?
> AFAIK, glibc doesn't support ILP64.
Yes, good catch! Def. a typo.

> But this would be a simpler commit if we only had one definition.
I was going to suggest it originally, but held up because, well,
before writing this patchset I didn't even know about
system_data_types.7, and it seemed that most other declarations are
in-line (which is sensible, I think, and in line with the common
use-case).

> Do you agree in changing the whole patch set in that (IMO simpler) way?
I mean, IMO in-line is better to use, but a struct this short and
relatively confusing when you actually unroll the types
makes sense to be banished.

So, just so we're clear on the direction of this before I re-write
a lot of these sections, do these (cherry-picking a few):
  clock_getres.2:
    The res and tp arguments are timespec(3) structures, as specified in
    <time.h>.
  mq_receive.3:
    This value is an absolute timeout in seconds and nanoseconds since
	the Epoch, 1970-01-01 00:00:00 +0000 (UTC),
	specified in struct timespec(3).
  pthread_tryjoin_np.3:
    If the timeout expires before thread terminates, the call returns an
	error.  The abstime argument is a struct timespec(3), specifying an
	absolute time measured since the Epoch (see time(2)).
  + adding timespec(3) to the SEE ALSO sexions
Sound about right?

Best,
=D0=BD=D0=B0=D0=B1

--lnhoz4tca4orgqij
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmGqrGgACgkQvP0LAY0m
WPFsVQ//fvQnS3o0hBnQzc4NqMh+Ef6qwEecwkhC0YRadpEmVQWDY4RP4LPR8TDR
VvcFr9dYD8Ga6BZwPFocwze1Iy7uPIWTPoLF4eMRQpVjIdoQ7NvME62Tw0qYiRDL
s4ZL2/6E6w+nk0Gxxqr05Haq9y2GUfHbaEeD8EKaoHGQmTfDpUUJJSqhySdrosUb
G9KFP1eXHInoWiueZey1ORXh4Uw4QXjNZe3bWfGBN9feaV0lViR5JOsrZcopmVc+
ThjV/RCqg1/mwM4jlab4k/KZ++h7AKbSWsGsQSbglihVp7JKd0S2nEf0nvwvDMF8
moPShBYYnriIcV5cajUz6OWH/bEG3cGXBepa4hbudaaaJKFvfSuVuc2+b6757lhU
KLf4yz0kOEHlqml2QHjEvUaL0dEbhsNuXCsgonxYJqBWbSK1fyqp5I5CJUiCW7kN
6a9EpisE/iF+AApHsOTwZKliWpOjFbmRl6yr1Biaj38GYIYKDPZ+RN6+K1bf4Ylo
EycSFaUXnTBaIv4iw3DPWx7uoeNqFnJvFiJAbV1Lh3mbNrAspVzdYCdzG8dBdTKM
HoR84rAkAWrDOdkg3nfB/UyjOimy8JgsuwUEncdPjEP33HHpcSMm/kJYNnBO7tDe
UKB8qop/bl3q4zpk6enIYWeK10+rZb2drmL61KL9wRQtPMm6JdY=
=ZrUN
-----END PGP SIGNATURE-----

--lnhoz4tca4orgqij--
