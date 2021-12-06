Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2909F46A696
	for <lists+linux-man@lfdr.de>; Mon,  6 Dec 2021 21:11:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349295AbhLFUPE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Dec 2021 15:15:04 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:44104 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S1349376AbhLFUPD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Dec 2021 15:15:03 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 528A41F0C;
        Mon,  6 Dec 2021 21:11:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1638821487;
        bh=QvkzwojCJP5kPBEZgxs3gdtsJTb9nLGgm1iu+fxij/k=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=hlvuES0nI55pNpnxwHhZ8iHlovso3+uzDxs4mBqStE6dT1Fszp/RAHPsZCYdRxZP7
         7H5rEGlNYHS9gGCxZ756SbyUimezCPzeBkv5IHyY5uWzvhLNKdNJx6w8kYKgp+hCe2
         nKby1BY0AIILPHXggFZHqu1d9t54PSkjzL29g35PkIej/dnz2zdi4XsUBlzKQLe6TE
         O7TYGr7VxHB5I8JXyZqkKwij3LBktPEgWI51/7Y5dEaOcAXXpKxXWcKXPc73hCrPfh
         mOqDhYRMkiRgF6IRcxPxFzLBsGADBk4NW4RnnF4aDgSFlvZ6R18T/p8uEuSEgiamkS
         wcwmgCWkTSURg==
Date:   Mon, 6 Dec 2021 21:11:26 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: [PATCH v2 0/4] timespec(3) migration
Message-ID: <cover.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
References: <8d80e54b-6881-ee5e-0d14-305b510a28b1@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ebdkkivnhem26plj"
Content-Disposition: inline
In-Reply-To: <8d80e54b-6881-ee5e-0d14-305b510a28b1@gmail.com>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ebdkkivnhem26plj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 06, 2021 at 08:18:26PM +0100, Alejandro Colomar (man-pages) wro=
te:
> I think I slighly prefer "in a timespec(3) structure".
> However, I only slightly prefer that and don't really care that much, and
> will leave the final decision up to you.
It turned out very easy to rearrange all the pages to use this,
so they're all "timespec(3) structure" or "timespec(3) structures".

I've taken an additional liberty in stripping off
"as specified in <time.h>" from clock_getres.2: _nanosleep doesn't say
it, and they both live in <time.h> anyway.

=D0=BD=D0=B0=D0=B1 (4):
  clock_getres.2, clock_nanosleep.2, io_getevents.2, nanosleep.2,
    poll.2, sched_rr_get_interval.2, select.2, sigwaitinfo.2,
    timerfd_create.2, timer_settime.2, utimensat.2, mq_receive.3,
    mq_send.3, pthread_tryjoin_np.3, sem_wait.3: replace in-line struct
    timespec declarations with "timespec(3) structure" references
  system_data_types.7: standardise on struct timespec fields comments to
    ucase w/tv_nsec range
  system_data_types.7: correct struct timespec::tv_nsec type for x32
  system_data_types.7: note that struct timespec::tv_nsec being long
    long on x32 is an extension

 man2/clock_getres.2          | 15 +++------------
 man2/clock_nanosleep.2       | 14 +++-----------
 man2/io_getevents.2          | 14 ++++----------
 man2/nanosleep.2             | 16 ++++------------
 man2/poll.2                  | 14 ++++----------
 man2/sched_rr_get_interval.2 | 16 ++--------------
 man2/select.2                | 14 ++++----------
 man2/sigwaitinfo.2           | 14 ++++----------
 man2/timer_settime.2         |  8 ++------
 man2/timerfd_create.2        | 11 ++++-------
 man2/utimensat.2             | 14 ++++----------
 man3/mq_receive.3            | 14 ++++----------
 man3/mq_send.3               | 14 ++++----------
 man3/pthread_tryjoin_np.3    | 16 +++++-----------
 man3/sem_wait.3              | 15 ++++-----------
 man7/system_data_types.7     |  9 ++++++++-
 16 files changed, 63 insertions(+), 155 deletions(-)

--=20
2.30.2

--ebdkkivnhem26plj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmGubmoACgkQvP0LAY0m
WPEHiBAAthLVFMApa7ogMb6Iaij5AMiVeojUnEKHO86/IWjf6yVI+jIPpw7wzi7G
rAnidVfzBOQgu0g03sS6uFcevszVa1+YCtq95WqNZXSK/3uPg9tgN3NtztRVG0a3
dSlC0xzKmHRZSjp9945uBTD3q51781xkQqhugbZ+qNcqxYgagVq7lJP1X7QhREWm
ZA10B9slcDyG5cuPhykClneZ+yRV+iUylsFsSyHbhWnAAerz6WTzOrvxiVIGAUXj
FcIlpMPAYBUxNvlNN3LBmlgu4+yqWnRCm4oRGAxyjM819cztYZKiiYCR8Egd19os
mlH57fMwxwRtvxWFDom+8EcKTDi6LFqmO+Ak7G5BRAd8dJ+fCFvFz9T2W5iKYhlg
1MUcnotoPuySVALnjSq0rCakya3R2xkuX7J5sSAIu+URtZ9LN0sV63EaliHQzM5P
1+ND13JYcJuHtpxlf/H1EgAdTEtd9NHmykJrZIXt7Y159e4EwfNEQUIh8nk6kptm
5+sNZA9+9fdGgJ76Ao6x0GmKnY1UxX2Ga1eqVp+77elx/XYq5byfsPk0XqyrlXiZ
oDB/mUix6e7TRILOzDTzo6zpJAjbbXe9IHA+lXyvSAthDUDm9XMQ7HMo7daiZWYh
pepttZgem9SEpSZzcbhWNw+RrFeWc7EwRcX7oy1Q3cuewj4bQXQ=
=MXkz
-----END PGP SIGNATURE-----

--ebdkkivnhem26plj--
