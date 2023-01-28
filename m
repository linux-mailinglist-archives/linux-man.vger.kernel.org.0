Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B1B667F88E
	for <lists+linux-man@lfdr.de>; Sat, 28 Jan 2023 15:17:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234210AbjA1ORd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 28 Jan 2023 09:17:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231566AbjA1ORc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 28 Jan 2023 09:17:32 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9CA0C2331B
        for <linux-man@vger.kernel.org>; Sat, 28 Jan 2023 06:17:31 -0800 (PST)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id E2045844;
        Sat, 28 Jan 2023 15:17:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1674915450;
        bh=6ejlOKVb7dIh4jSRDejUpWvgvwSBCjcKruAXQObCQ/s=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=HyxxVtlsWQVIWNuTWXXgXGulHNxTvNVoOlaflId6/HNRI07KKwm4UI9nLf8v+jmz/
         4UsdLhVDsLqtf0Wkg2/VaUQ7U99ZgpJtdAvw34XWWdNUnBdGe00+mxqn56DSoigzYO
         Ci25R5fDtBN82zBQLTv/R8xi60IVblM3jaJVktr3/wXUdUFxrtBKPnij5zmuICXGR/
         cXPLe7JxQmOPQWXLLU1MIAX5cTl52K6leOdS2DbXvE6MLP05P0cotr9RhfbVjvu0cK
         oYxu5Ns816G+bg4JUURKuGh0c+WHEPFL/NIU3Jg8evyOCltsjVyuisZ0SIUq3vQtsT
         1wGv+gZzzkcSw==
Date:   Sat, 28 Jan 2023 15:17:29 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 3/3] man2/clock_getres.2, man2/clock_nanosleep.2,
 man2/nanosleep.2, man2/timer_settime.2, man2/timerfd_create.2,
 man2/utimensat.2, man3/mq_send.3, man3/pthread_tryjoin_np.3,
 man3/sem_wait.3: standardise on "range [0, 999999999]" for tv_nsec
Message-ID: <4150505ff496a2974e10fc82920cf2c95b9c582d.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
References: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="tair2vwtebm3gkmm"
Content-Disposition: inline
In-Reply-To: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
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


--tair2vwtebm3gkmm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

There were a few wildly different formats
(some of which got the range wrong!),
settle on the sanest one

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/clock_getres.2       | 2 +-
 man2/clock_nanosleep.2    | 2 +-
 man2/nanosleep.2          | 2 +-
 man2/timer_settime.2      | 2 +-
 man2/timerfd_create.2     | 2 +-
 man2/utimensat.2          | 2 +-
 man3/mq_send.3            | 2 +-
 man3/pthread_tryjoin_np.3 | 2 +-
 man3/sem_wait.3           | 2 +-
 9 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
index a02bea852..dadcd6b52 100644
--- a/man2/clock_getres.2
+++ b/man2/clock_getres.2
@@ -272,7 +272,7 @@ does not refer to a valid instance of a clock object.
 .I tp.tv_sec
 is negative or
 .I tp.tv_nsec
-is outside the range [0..999,999,999].
+is outside the range [0, 999999999].
 .TP
 .B EINVAL
 The
diff --git a/man2/clock_nanosleep.2 b/man2/clock_nanosleep.2
index 5afc2025c..5da8d1569 100644
--- a/man2/clock_nanosleep.2
+++ b/man2/clock_nanosleep.2
@@ -158,7 +158,7 @@ The sleep was interrupted by a signal handler; see
 .B EINVAL
 The value in the
 .I tv_nsec
-field was not in the range 0 to 999999999 or
+field was not in the range [0, 999999999] or
 .I tv_sec
 was negative.
 .TP
diff --git a/man2/nanosleep.2 b/man2/nanosleep.2
index a6f9e627f..87ac34d9e 100644
--- a/man2/nanosleep.2
+++ b/man2/nanosleep.2
@@ -106,7 +106,7 @@ again and continue with the pause.
 .B EINVAL
 The value in the
 .I tv_nsec
-field was not in the range 0 to 999999999 or
+field was not in the range [0, 999999999] or
 .I tv_sec
 was negative.
 .SH STANDARDS
diff --git a/man2/timer_settime.2 b/man2/timer_settime.2
index 29d9ed4d2..73beb411c 100644
--- a/man2/timer_settime.2
+++ b/man2/timer_settime.2
@@ -171,7 +171,7 @@ may fail with the following errors:
 .I new_value.it_value
 is negative; or
 .I new_value.it_value.tv_nsec
-is negative or greater than 999,999,999.
+is outside the range [0, 999999999].
 .SH VERSIONS
 These system calls are available since Linux 2.6.
 .SH STANDARDS
diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
index 5ccc165a3..4c1cc1c35 100644
--- a/man2/timerfd_create.2
+++ b/man2/timerfd_create.2
@@ -461,7 +461,7 @@ See NOTES.
 .I new_value
 is not properly initialized (one of the
 .I tv_nsec
-falls outside the range zero to 999,999,999).
+falls outside the range [0, 999999999]).
 .TP
 .B EINVAL
 .\" This case only checked since Linux 2.6.29, and Linux 2.2.2[78].some-st=
able-version.
diff --git a/man2/utimensat.2 b/man2/utimensat.2
index 7f43aab7b..1d9206ed0 100644
--- a/man2/utimensat.2
+++ b/man2/utimensat.2
@@ -272,7 +272,7 @@ Invalid value in
 .B EINVAL
 Invalid value in one of the
 .I tv_nsec
-fields (value outside range 0 to 999,999,999, and not
+fields (value outside range [0, 999999999], and not
 .B UTIME_NOW
 or
 .BR UTIME_OMIT );
diff --git a/man3/mq_send.3 b/man3/mq_send.3
index ae0bc74d8..239817849 100644
--- a/man3/mq_send.3
+++ b/man3/mq_send.3
@@ -123,7 +123,7 @@ was invalid, either because
 .I tv_sec
 was less than zero, or because
 .I tv_nsec
-was less than zero or greater than 1000 million.
+was outside the range [0, 999999999].
 .TP
 .B EMSGSIZE
 .I msg_len
diff --git a/man3/pthread_tryjoin_np.3 b/man3/pthread_tryjoin_np.3
index caaaa0707..5f08f1e00 100644
--- a/man3/pthread_tryjoin_np.3
+++ b/man3/pthread_tryjoin_np.3
@@ -82,7 +82,7 @@ value is invalid
 .RI ( tv_sec
 is less than 0 or
 .I tv_nsec
-is greater than 1e9).
+is outside the range [0, 999999999]).
 .TP
 .B ETIMEDOUT
 The call timed out before
diff --git a/man3/sem_wait.3 b/man3/sem_wait.3
index 788d687a7..07107426a 100644
--- a/man3/sem_wait.3
+++ b/man3/sem_wait.3
@@ -104,7 +104,7 @@ is not a valid semaphore.
 .RB ( sem_timedwait ())
 The value of
 .I abs_timeout.tv_nsecs
-is less than 0, or greater than or equal to 1000 million.
+is outside the range [0, 999999999].
 .TP
 .B ETIMEDOUT
 .RB ( sem_timedwait ())
--=20
2.30.2

--tair2vwtebm3gkmm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmPVLnkACgkQvP0LAY0m
WPHEOw//dmC4EdviR1yrTS5TJ0aygJdcWsYP74dIOWcxQj15ZQa1uHLPIHvc7AKn
YJI0Zdivuy/ekh6thjHNukel6e/K9UEFDeHDhhBmZIotdokqYpEDmgJkNWOUfJEf
G1z/Qu4H64nvDvlfjp9CiNuBzXILaH7bONLwGLmXfKI/1OvUqKHzdo6UCGElYy+D
nP708HUyh9nkRwoaYTtLKswt18NbD7R/hrnmraP0HC+9khOD2esVeAy0wjrtepUo
Orn5JnSCYYtEURTZfRIUreX71+ASSMhwMuQuhqy5m3V74DWevBuDPpMEfSY19J0C
JbOanlrwXbo96+yZRv9ZT16aUGdjy9HAZ0eaF5pMVsZMkQ2E1ZBqOZFK75gJmgtv
/dTaydvuTcJn4jaPQX6ajIzP1KY7sfaB17jP8BmlapPW0fdW21u9SJTwlpwKa0y3
gdhFTnahR5B9l8Ee57uqrL4d/bdHnRyViFnjEYhgmFPzDwWRgPDL7GjMRjQb3Znj
4ib/4QWpYDiTK6/eUh6CV5Tbx6bX1QZgFk8lHb9IsuIP5kPrFeoMvJQUtQCL7GCU
rW8YbvnOjpMHsVoyYS6UpW549GxLrWDsEqxoamXSnCRRCJ112jEDLl0ZSRCvFI2T
CMFW08NZ2swxs2loUBWLzyMadrplQyAV9DWrhLQlOPLl/SxLlA8=
=39dU
-----END PGP SIGNATURE-----

--tair2vwtebm3gkmm--
