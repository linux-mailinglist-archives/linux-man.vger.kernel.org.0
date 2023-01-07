Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FD6F660D80
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 10:55:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237100AbjAGJz1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 04:55:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236942AbjAGJyu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 04:54:50 -0500
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94FFA7D1CF
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 01:54:49 -0800 (PST)
Received: by mail-ot1-x32b.google.com with SMTP id j16-20020a056830271000b0067202045ee9so2294901otu.7
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 01:54:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NaYJZtcesvu3WBFM0QByuubYi9MEBa6WJdkwlEMPk24=;
        b=XezVGb/wwyKGZaAZMB+YQakMak3ryGm/DWYV8TrPMUmdYbINiBuVYG2KYXB41abDlh
         p+I7sW32VDmK3fbMiF398AbaCwFRBdTtS789MCYuACmsUs9vyUKNhxCQOyAVz/VbZdOd
         lINCSMebgJeh1ma3veBXoOHWCYV4Gr4CmCiEOqhu4TDbjCLY03VRtM/jvMmtmioq4KfO
         BGet45F05xgMshKW7+7puhfLrpuj4pU/azAzeNaeBOfXQSTLgJHiHoYB+qaizIg3l7rF
         gxbzi7kxtRrkplmO1mJkBtspU+rrcgfXhfuf+Jp9C4BpdCdntwTUS7lrCEYIog3i4XR1
         nvfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NaYJZtcesvu3WBFM0QByuubYi9MEBa6WJdkwlEMPk24=;
        b=A+n0WvOyvguhRAa2jlPTxjGvefPwHvn4A3kp/CXICyZ4iHHJspfWUdofHEI36aD9bV
         fLY9tPeriCxZosNAxy9hIL1EV/7RKwNhW74ls2NVyOOClVPiEhUbGGlDn+Ofxop8xZrV
         foXweS1I9PE9Qw/8C/m5R15nva/7rO7qixm+XnyqFvwvkEgeKTD5j9PFzgKNqomNWSSU
         +3Ea/sh5yMY+IYRP2CWQ/Rj3W4lIkNnGApF8CI3CDbBJCj1FUGMwsrQBtNsanJznEFhR
         Z/Y5ARcucG6fLkQD4wWMogDi2RSQpDO/+QOOgoXKzvhzr62hew8m34L5pjbLhtvyqQdj
         elhA==
X-Gm-Message-State: AFqh2kp+91DUh/v4Q8siIUxjb6O2sdGsOGzSPHVMsQGe1ltMA/34wMAO
        9S7hlBPecncP3+s5hWhulTnwCQqqmFg=
X-Google-Smtp-Source: AMrXdXsRiIoOnPbp2DhMlDHBoAloMIwqykpqJTBiQZ9RYnVTOFg+lqQZ4RDTbTZqY6T6dTxqJhxdgQ==
X-Received: by 2002:a05:6830:1d42:b0:670:5ae2:3e71 with SMTP id p2-20020a0568301d4200b006705ae23e71mr29421976oth.37.1673085288960;
        Sat, 07 Jan 2023 01:54:48 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id w18-20020a056830411200b00670747b88c9sm1646530ott.39.2023.01.07.01.54.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jan 2023 01:54:48 -0800 (PST)
Date:   Sat, 7 Jan 2023 03:54:47 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4 05/10] libc.7: Revise content
Message-ID: <20230107095447.ycqvwytkeugbjhvb@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="32crwmioouhmjk5q"
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


--32crwmioouhmjk5q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Define the term "standard C library".
* Say who's responsible for standardizing it.
* Practically all C _libraries_ use libc, too.
* Move material describing structure glibc from intro(3) to here and
  recast in more detail.
* Update example filespec for libc.so.6.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man7/libc.7 | 34 ++++++++++++++++++++++++++--------
 1 file changed, 26 insertions(+), 8 deletions(-)

diff --git a/man7/libc.7 b/man7/libc.7
index c6180075c..09d21e7f5 100644
--- a/man7/libc.7
+++ b/man7/libc.7
@@ -8,13 +8,18 @@
 libc \- overview of standard C libraries on Linux
 .SH DESCRIPTION
 The term \(lqlibc\(rq is commonly used as a shorthand for
-the \(lqstandard C library\(rq
-a library of standard functions that can be used by all C programs
-(and sometimes by programs in other languages).
-Because of some history
-(see below),
-use of the term \(lqlibc\(rq
-to refer to the standard C library is somewhat ambiguous on Linux.
+the
+.IR "standard C library" ,
+a collection of functions,
+data types,
+constants,
+and global variables \" like errno
+defined by ISO/IEC JTC1/\:SC22/\:WG14 and POSIX.1
+(the Austin Group)
+and used by practically all programs and libraries written in C.
+.I libc
+refers to any library that implements a significant portion of the
+published standard interface.
 .SS glibc
 The standard libc most popularly used with the Linux kernel is
 .UR http://www.gnu.org\:/software\:/libc/
@@ -33,13 +38,26 @@ primarily in section 3 of the manual.
 glibc also offers a manual of its own in Texinfo format,
 browsable at the command line with
 .RI \(lq "info libc" \(rq.
+.PP
+glibc is organized into three
+.I dynamic shared objects
+(DSOs):
+.I libc
+itself,
+.I libm
+for mathematical functions,
+and
+.I librt
+for real-time extensions
+(historically POSIX.1b).
 Version 1.0 of glibc was released in September 1992.
 (There were earlier 0.x releases.)
 The next major release of glibc was 2.0
 at the beginning of 1997.
 .PP
 The file
-.I /lib/libc.so.6
+.IR /lib/libc.so.6 ,
+.IR /lib/x86_64\-linux\-gnu/libc.so.6 ,
 or similar
 is normally a symbolic link to the glibc library.
 Execute it to display information about the version installed on your
--=20
2.30.2


--32crwmioouhmjk5q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO5QWYACgkQ0Z6cfXEm
bc72YQ/5ARWj7VjpWSOyL06sX76nBtOmtBWfjI/27yxuXeKl2FPNmQ9d65fNAHkS
kFTTcePgWHGlA+EjS7MA10LpfNrmuK52A43zVqwDjQeg+P6766ayNNbfl2b905+T
7lhRJy0HUck2wofFhOP/XtdMcuw0JU9VtMrrcCRB4hmdjgnAnYvZa7v8rJy+oacf
RI16dJUIZF8WLHzg/gGBbx3DdFpzbHWHuyMza7WsoWpWdYX3IC+yCKS4/qA3AjwM
Ztsv0u9Ta84CzNlijKbsswpn/X1lcmH1XE2PVrtIkRrB1Ii3BQ4jGrzRLqN55v2c
pevaN24f2IJR8AN9ZOjzgq5UzNBCKA9f9Ax7oUkeE8OOfP3lWQYb2XtfVqzOy3qN
fq1GdL6FLI9hU9jrONllu8Mup3nz5QJF0sgvXPNgfj91zLOE5TOk6kZEHqeC/VNI
Q8kkLmFjr2/bwKzP//Sg5lMSoVVovt45YNfRlfp4fhwteKExhDWW7i51VUGhoFvi
uVEHEJrZolNpV0BO3KME6g2dmGJE8vxK0RLR9+cTxr+SMf99NWhb93bnAKicdEdc
kwbiD5QY2mQTO3VoigM3TZbKtnCFvYrNLOMbFytZ1h6oI5bvRnlTke8VTOLkBcMl
iRrHYkqKz/WouLK2xD/hsjpn+5DU4iLm/lOJgbzFh0aYlbCjJwg=
=Wx+V
-----END PGP SIGNATURE-----

--32crwmioouhmjk5q--
