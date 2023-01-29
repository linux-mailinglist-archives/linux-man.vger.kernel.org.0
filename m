Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0D7668003E
	for <lists+linux-man@lfdr.de>; Sun, 29 Jan 2023 17:31:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234780AbjA2Qby (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 Jan 2023 11:31:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231363AbjA2Qbx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 Jan 2023 11:31:53 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 8DE6A1F4B1
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 08:31:51 -0800 (PST)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id BB179358;
        Sun, 29 Jan 2023 17:31:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1675009910;
        bh=NdkZFFExVLW7P9M+xkih0x/uNPZFbDdZNejhvji01mk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=B18lsMQXYB2LL2OEHOcjPesvaeRzmxJwFvqT1XSUNyhGtDQVCCFClOncIn0BzlrRQ
         2wY3ivLiFwVUfolxaercuLnRlsN4MxzE8YXbI54bCKcWmXg+42G5TyAOqzu4k6c78K
         ieAwt17ya24PbFxpe1nY3wUdQEuwO5D4hUrzxeJ90IHhTsiT6DenCqRNyXJEyspeEd
         F7K1sdRhqXC/kNdw4ZEQweqeEtcTXFg367nfR+tb4mKRVzqfN6DRlrJ6Um2mG5Uatx
         SQpRvUJJF0qbiCcrJgDw/ej8CUr5iHhQEk7Ss/k9DhW8bdjQl5onhRzkERHkQqSOi5
         FYIYrDNWNwBTw==
Date:   Sun, 29 Jan 2023 17:31:49 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 3/3] man2/clock_getres.2, man2/clock_nanosleep.2,
 man2/nanosleep.2, man2/timer_settime.2, man2/timerfd_create.2,
 man2/utimensat.2, man3/mq_send.3, man3/pthread_tryjoin_np.3,
 man3/sem_wait.3: standardise on "range [0, 999\(aq999\(aq999]" for tv_nsec
Message-ID: <5b2ae0bfad99f4ca987878a579f9153fe8907e84.1675009892.git.nabijaczleweli@nabijaczleweli.xyz>
References: <20230129162944.353r46pnt6fbcqeg@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="2mk3jxmlqh4cjxjn"
Content-Disposition: inline
In-Reply-To: <20230129162944.353r46pnt6fbcqeg@tarta.nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_RDNS_DYNAMIC_FP,RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,
        T_PDS_OTHER_BAD_TLD autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2mk3jxmlqh4cjxjn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

There were a few wildly different formats
(some of which got the range wrong!),
settle on the sanest one,
adding thousands separators per
  <717e8fb9-9159-65f8-093e-a117c82be704@gmail.com>
  <cfda064c-b3f0-d541-bbee-e3a72c0b3cf3@gmail.com>

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/clock_getres.2       | 2 +-
 man2/clock_nanosleep.2    | 2 +-
 man2/nanosleep.2          | 4 ++--
 man2/timer_settime.2      | 2 +-
 man2/timerfd_create.2     | 2 +-
 man2/utimensat.2          | 2 +-
 man3/mq_send.3            | 2 +-
 man3/pthread_tryjoin_np.3 | 2 +-
 man3/sem_wait.3           | 2 +-
 9 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
index a02bea852..e4e7ac6e6 100644
--- a/man2/clock_getres.2
+++ b/man2/clock_getres.2
@@ -272,7 +272,7 @@ does not refer to a valid instance of a clock object.
 .I tp.tv_sec
 is negative or
 .I tp.tv_nsec
-is outside the range [0..999,999,999].
+is outside the range [0, 999\(aq999\(aq999].
 .TP
 .B EINVAL
 The
diff --git a/man2/clock_nanosleep.2 b/man2/clock_nanosleep.2
index 5afc2025c..1f04adfd6 100644
--- a/man2/clock_nanosleep.2
+++ b/man2/clock_nanosleep.2
@@ -158,7 +158,7 @@ The sleep was interrupted by a signal handler; see
 .B EINVAL
 The value in the
 .I tv_nsec
-field was not in the range 0 to 999999999 or
+field was not in the range [0, 999\(aq999\(aq999] or
 .I tv_sec
 was negative.
 .TP
diff --git a/man2/nanosleep.2 b/man2/nanosleep.2
index a6f9e627f..a708b1b96 100644
--- a/man2/nanosleep.2
+++ b/man2/nanosleep.2
@@ -66,7 +66,7 @@ The
 structure
 is used to specify intervals of time with nanosecond precision.
 .PP
-The value of the nanoseconds field must be in the range 0 to 999999999.
+The value of the nanoseconds field must be in the range [0, 999\(aq999\(aq=
999].
 .PP
 Compared to
 .BR sleep (3)
@@ -106,7 +106,7 @@ again and continue with the pause.
 .B EINVAL
 The value in the
 .I tv_nsec
-field was not in the range 0 to 999999999 or
+field was not in the range [0, 999\(aq999\(aq999] or
 .I tv_sec
 was negative.
 .SH STANDARDS
diff --git a/man2/timer_settime.2 b/man2/timer_settime.2
index 29d9ed4d2..ced538911 100644
--- a/man2/timer_settime.2
+++ b/man2/timer_settime.2
@@ -171,7 +171,7 @@ may fail with the following errors:
 .I new_value.it_value
 is negative; or
 .I new_value.it_value.tv_nsec
-is negative or greater than 999,999,999.
+is outside the range [0, 999\(aq999\(aq999].
 .SH VERSIONS
 These system calls are available since Linux 2.6.
 .SH STANDARDS
diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
index 5ccc165a3..db2e82a50 100644
--- a/man2/timerfd_create.2
+++ b/man2/timerfd_create.2
@@ -461,7 +461,7 @@ See NOTES.
 .I new_value
 is not properly initialized (one of the
 .I tv_nsec
-falls outside the range zero to 999,999,999).
+falls outside the range [0, 999\(aq999\(aq999]).
 .TP
 .B EINVAL
 .\" This case only checked since Linux 2.6.29, and Linux 2.2.2[78].some-st=
able-version.
diff --git a/man2/utimensat.2 b/man2/utimensat.2
index 7f43aab7b..b78300155 100644
--- a/man2/utimensat.2
+++ b/man2/utimensat.2
@@ -272,7 +272,7 @@ Invalid value in
 .B EINVAL
 Invalid value in one of the
 .I tv_nsec
-fields (value outside range 0 to 999,999,999, and not
+fields (value outside range [0, 999\(aq999\(aq999], and not
 .B UTIME_NOW
 or
 .BR UTIME_OMIT );
diff --git a/man3/mq_send.3 b/man3/mq_send.3
index ae0bc74d8..7c1fbb47f 100644
--- a/man3/mq_send.3
+++ b/man3/mq_send.3
@@ -123,7 +123,7 @@ was invalid, either because
 .I tv_sec
 was less than zero, or because
 .I tv_nsec
-was less than zero or greater than 1000 million.
+was outside the range [0, 999\(aq999\(aq999].
 .TP
 .B EMSGSIZE
 .I msg_len
diff --git a/man3/pthread_tryjoin_np.3 b/man3/pthread_tryjoin_np.3
index caaaa0707..d4aeb2447 100644
--- a/man3/pthread_tryjoin_np.3
+++ b/man3/pthread_tryjoin_np.3
@@ -82,7 +82,7 @@ value is invalid
 .RI ( tv_sec
 is less than 0 or
 .I tv_nsec
-is greater than 1e9).
+is outside the range [0, 999\(aq999\(aq999]).
 .TP
 .B ETIMEDOUT
 The call timed out before
diff --git a/man3/sem_wait.3 b/man3/sem_wait.3
index 788d687a7..e47ed2ace 100644
--- a/man3/sem_wait.3
+++ b/man3/sem_wait.3
@@ -104,7 +104,7 @@ is not a valid semaphore.
 .RB ( sem_timedwait ())
 The value of
 .I abs_timeout.tv_nsecs
-is less than 0, or greater than or equal to 1000 million.
+is outside the range [0, 999\(aq999\(aq999].
 .TP
 .B ETIMEDOUT
 .RB ( sem_timedwait ())
--=20
2.30.2

--2mk3jxmlqh4cjxjn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmPWn3UACgkQvP0LAY0m
WPEExw/+NX2zbFnhN6wdERdsi0tOEELdh29DkP73T7+2MFMsGdArTh9E+vCh6sa+
8q3BZJvK9h46wGJLyqbcAn5I7k5GEZLu6rjhF+Ln+dxg+Fe9Vhj/rShwmcZKpcLu
7XMSSu1ckF7GmPqiLOpHT1d33GvGa5mxfSwRk6k07XFWNXHFnLOa7QUUOo2HESvo
xAuNglXlqqqJo54dGUTjdWVIfQDdioSCLYG3NCdeQY5vDerCNJuxDCx0GwuKn8NB
tS7nXrApv5qF7Pa68v2PYYPKF5CtjSdlRYMa5FfxbputKZbF0xORQu1AH7XaP1tb
VaCnYG7IZ2rMEJKJ/uMPbrtr0VMgZW5i8Uzo+yH51BO6hAEt4KyuYxeeFmgLvmlp
j5SIsgwLkP3pdHibu67kNzmzbD2Kzt+f3bZAZLlAl3CM1PoT5PtqQRcJtw50OE7p
pO13rn/xkkTHpwqdmDVQ86C5iEgZISNatRbSfr26W5vMXa4FiPy8IqZbZgC7GoYn
MCxmlkj4Y39bAzeUmhxCr1cFrJOPM7/4ShtI+/5TLJhcvj73e46QIAPKXn/G2Yqk
EE9VlZb580bGQg9eRL0JdOk3tam0spaj9VxYFIJrdVkwKMrz8t7GZecnOBvTNme4
d2dfpSE93cRbHhkwHAxA/6U9lV4m4v8M5O6j+8iuUtj7lPmWpvg=
=bgR2
-----END PGP SIGNATURE-----

--2mk3jxmlqh4cjxjn--
