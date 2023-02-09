Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20720690FFF
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 19:10:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229583AbjBISKr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 13:10:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230338AbjBISKh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 13:10:37 -0500
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E65A69514
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 10:10:31 -0800 (PST)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-1685cf2003aso3560781fac.12
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 10:10:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NV9c2Zm6M2cMosJ3Ok280zhCqbB3JBbdb55V36jEuS0=;
        b=j9oFwYx/blaZfX5qYvdqz9CJPC/lFQNhwZ2BVCF9NqGT3maxZm4HdbDp87a+Zpib/j
         GuPoBw/IhQECMSEeCp6sBGU/ycjMbR3nautXz5yofllb/JEYujOTqbrM29uuo2lp61uf
         LNvNDvXP6O84+uLloDt+E4J3ZhE6XmzBHlbW3CDTxRzA04oguW7bF5rqp+XrVyO+DcJF
         CSgP5UOfvHGLjKOIloHowphRCDmVQRBD65qfl1IiFhIsETlEPzzTGe39D8wKpKyTb8Ez
         RbdPyBfEahcAeFuXhHtgElHynUbORIJMumY89qyG23pjZTusT2AyI6WxNUx/y6MpPpOL
         e+mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NV9c2Zm6M2cMosJ3Ok280zhCqbB3JBbdb55V36jEuS0=;
        b=cXTKriPJvXH1RSzBP3pjGvPiEZI+9NQzEDlf1GsieogoDTFh+Lf3HSOi5kuJQ0sq0S
         xy93ykWcee6yBNOjh5QbDFxfIFAYW4QatWTdPtrnNU9LP9jfUVnMeVaRQgRYE/+AG8/E
         1VNzBiwgAZhuk6LQppRRlj6tolEDUoEUOZ8wShOfPsU3H9ZENEn7fBMr5kcYTficIyO1
         m6wCuPgypqBI6rlZOS0wgx2VNNo6drNJDj9I8L/wYyc0AHE+SW144fCC0a/KRcJXWwU7
         RxloomuENb6MwexM+tYKGod5om3uRWKZCxCvTojB5cpSFlBVuiJQbYLKRbGD08wbXf4v
         iu9Q==
X-Gm-Message-State: AO0yUKVAUdW3/Ma8T2+M8wGzIQYcCbnmK9T/qJh4h4TBtEBr7hkesxv8
        YX0MPp9NFvFC+ANv8MeEJYU1PLiBk4g=
X-Google-Smtp-Source: AK7set+hg8q7COg5fDQJdk9ffRX+DKFdjSQwIrxzn92n0BopWUDrqEY41lwdgbHsCS7QD7cB/O6xog==
X-Received: by 2002:a05:6870:73d2:b0:157:cc21:2076 with SMTP id a18-20020a05687073d200b00157cc212076mr7480293oan.22.1675966231023;
        Thu, 09 Feb 2023 10:10:31 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id a9-20020a056870d60900b0013bc40b09dasm981937oaq.17.2023.02.09.10.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 10:10:30 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:10:29 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 10/20] times.2: srcfix
Message-ID: <20230209181029.27nnprbto5nakldy@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="fc4nyyloulmwejnd"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--fc4nyyloulmwejnd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Break input lines after commas.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man2/times.2 | 47 +++++++++++++++++++++++++++++++++--------------
 1 file changed, 33 insertions(+), 14 deletions(-)

diff --git a/man2/times.2 b/man2/times.2
index 745867e8e..f45faa01e 100644
--- a/man2/times.2
+++ b/man2/times.2
@@ -80,7 +80,8 @@ are added in at the moment
 or
 .BR waitpid (2)
 returns their process ID.
-In particular, times of grandchildren
+In particular,
+times of grandchildren
 that the children did not wait for are never seen.
 .PP
 All times reported are in clock ticks.
@@ -90,7 +91,9 @@ returns the number of clock ticks that have elapsed since
 an arbitrary point in the past.
 The return value may overflow the possible range of type
 .IR clock_t .
-On error, \fI(clock_t)\ \-1\fP is returned, and
+On error,
+\fI(clock_t)\ \-1\fP is returned,
+and
 .I errno
 is set to indicate the error.
 .SH ERRORS
@@ -99,7 +102,10 @@ is set to indicate the error.
 .I tms
 points outside the process's address space.
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, SVr4, 4.3BSD.
+POSIX.1-2001,
+POSIX.1-2008,
+SVr4,
+4.3BSD.
 .SH NOTES
 The number of clock ticks per second can be obtained using:
 .PP
@@ -124,7 +130,8 @@ are automatically included in the
 .I tms_cstime
 and
 .I tms_cutime
-fields, although POSIX.1-2001 says that this should happen
+fields,
+although POSIX.1-2001 says that this should happen
 only if the calling process
 .BR wait (2)s
 on its children.
@@ -133,12 +140,16 @@ This nonconformance is rectified in Linux 2.6.9 and l=
ater.
 .\"	The times of a terminated child process are included... when wait()
 .\"	or waitpid() returns the process ID of this terminated child.
 .PP
-On Linux, the
+On Linux,
+the
 .I buf
-argument can be specified as NULL, with the result that
+argument can be specified as NULL,
+with the result that
 .BR times ()
 just returns a function result.
-However, POSIX does not specify this behavior, and most
+However,
+POSIX does not specify this behavior,
+and most
 other UNIX implementations require a non-NULL value for
 .IR buf .
 .PP
@@ -151,17 +162,22 @@ but this value is measured in units of
 not the clock ticks used by
 .BR times ().
 .PP
-On Linux, the "arbitrary point in the past" from which the return value of
+On Linux,
+the "arbitrary point in the past"
+from which the return value of
 .BR times ()
 is measured has varied across kernel versions.
-On Linux 2.4 and earlier, this point is the moment the system was booted.
-Since Linux 2.6, this point is \fI(2\[ha]32/HZ) \- 300\fP
+On Linux 2.4 and earlier,
+this point is the moment the system was booted.
+Since Linux 2.6,
+this point is \fI(2\[ha]32/HZ) \- 300\fP
 seconds before system boot time.
 This variability across kernel versions (and across UNIX implementations),
 combined with the fact that the returned value may overflow the range of
 .IR clock_t ,
 means that a portable application would be wise to avoid using this value.
-To measure changes in elapsed time, use
+To measure changes in elapsed time,
+use
 .BR clock_gettime (2)
 instead.
 .\" .PP
@@ -172,10 +188,12 @@ SVr1-3 returns
 .I long
 and the struct members are of type
 .I time_t
-although they store clock ticks, not seconds since the Epoch.
+although they store clock ticks,
+not seconds since the Epoch.
 V7 used
 .I long
-for the struct members, because it had no type
+for the struct members,
+because it had no type
 .I time_t
 yet.
 .SH BUGS
@@ -183,7 +201,8 @@ A limitation of the Linux system call conventions on so=
me architectures
 (notably i386) means that on Linux 2.6 there is a small time window
 (41 seconds) soon after boot when
 .BR times ()
-can return \-1, falsely indicating that an error occurred.
+can return \-1,
+falsely indicating that an error occurred.
 The same problem can occur when the return value wraps past
 the maximum value that can be stored in
 .BR clock_t .
--=20
2.30.2


--fc4nyyloulmwejnd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPlNxUACgkQ0Z6cfXEm
bc7xqQ/9ET5W7KS+7chsXHdWZur21YBP7JK1iAu7ujRgpuIPlOp1o/AyXLH1e0yp
lVwOVuuIUxQ3tUN2U8lX4Rr+0LLYkpSt9TOxqppJQu1DS7VA95kSacbq2em/djf2
kK3D6qzj9WdWfqBHEG/LMX5VPTkGghq4uqs1rh13TfYOXypuvt7WMgs/ow02ZA6i
m/fSg9VbagaKhGVDxTdFoP2KQmTZmvtEw/dCOJdfisO3UEMAs++Id+gXHL7e4zXZ
H5XinCH2FjWpZjyoT2nDT3tMI+ZJJxDFAjPUOgooFs473jqvaINPj1fsv28Pgdq7
7r7ASt1S5U//2Fnm1QuiKMiRKflKVjUBuHSPI+JE8qnb02Ut6dikGNf04d/Q4Ba0
xiK3fXpiBQaiiGYT0FDGQrFNKi8tA7NWXLmSdE8psDgoqjI5BaYrUMIWEJ1Fd1XG
oM9JEITkQPnQE2hG57YpAcNYdmBZcPTiQLjL9a32k9uV/cXB+yia7ReJk6yVQsrb
SSY1umODKsKJRTe9KhIdplgG/4hdiVewugP3jOKPuwbYqOuqdSzMRt06jjfEpxQY
tdbHj1rThDp/rAWXqZ1IYfSuXvLHTQgPYNKk7djjVo2fUkoNVIw3KHhBc8A39HeZ
2NoTTwKX5vLWeYRgrERCjqQN9aOMwh6+qm78PvSUWQi4etpkakM=
=YPLj
-----END PGP SIGNATURE-----

--fc4nyyloulmwejnd--
