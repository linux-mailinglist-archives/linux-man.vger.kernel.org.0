Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7826869100F
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 19:11:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229981AbjBISL1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 13:11:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229709AbjBISLT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 13:11:19 -0500
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F27568136
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 10:11:03 -0800 (PST)
Received: by mail-oi1-x22e.google.com with SMTP id s17so2336292ois.10
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 10:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0Et8k7opSWMy4LADFzp5E4jB+cxb9dSF3IfiI3Qm+ls=;
        b=ex2MYDGCDLJx5fWcBnX+LsuJSZ8/G8O5YqY4v1beIEMobWSPtIiHWXKWx8lHKjAC0D
         m7UAVbV067Eqvn+Yi4Oh8FFDtPvDKd2zTHdvAPQQepZ2rnMOwv3ZT0+b+/gC0y8bID++
         zvw0JFj4tAES6THHJ+nw1NLUxfAThWM0Go+SdVYtoO9XEesM65RR3sbePUW/C1+F8cw3
         7TPmR+qhb+7nV7FfUZNb1gNK1E7QWXh/TVicvXBcpVb9lV1p2ozF7GUgAA7dyWNe4wV/
         9SynLBJCIuOG+meaDI8x7LVZePKX5LW3DcppkP7YwyXJ+28CqCQIW09WZmNcKOpwWWbj
         Y6Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0Et8k7opSWMy4LADFzp5E4jB+cxb9dSF3IfiI3Qm+ls=;
        b=e41/uShrnbwJqME/OZjbfTG6Jya9pi+L1VymXrZduD5BWoBSlwME5ao8kH92FD66pG
         fXi1wp74vfaFQo6L9NgrSTC9L/1ZFb5M4V4HMlwPpjimsrMOJxJ650wZ6WKgVY/L4REJ
         /keA8gGIUIrI6dIPq+I2/XRczhz9HlNt3ddfgVIUJWxyQV8g5TJAg004o0XMsOFCDvlq
         zHQfshPvNqTXTpp6wY52/LNWvpwyOrJVqAlwGlJ/7NVxcbs5ONGMhCFS3MIGahLDOzxe
         yDffPS+Iwe4sGreZqWHA5rDh+2jW2Y6sO6vC8Zu+S1cH4+lWEEdAc7D1hKerO0jkBuZW
         J9SA==
X-Gm-Message-State: AO0yUKVtt6L99LFVkGSZLnkCEfs58/BDKB2dOiejoUFQlsz4hVH++7SS
        dCJf9Ok/Uri27/7zebpmB1nOzNjEGNw=
X-Google-Smtp-Source: AK7set934/fBihVRQi9mAUqDpHVeqZPOUMEHVCWQfld7kZWspJ/jLj4DblvT+6V216+SYGhu2FdYSg==
X-Received: by 2002:aca:2817:0:b0:36a:6f84:eb02 with SMTP id 23-20020aca2817000000b0036a6f84eb02mr5748684oix.15.1675966262561;
        Thu, 09 Feb 2023 10:11:02 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id y9-20020acae109000000b0037b6f5d6309sm1174690oig.2.2023.02.09.10.11.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 10:11:02 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:11:00 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 14/20] localedef.1: srcfix
Message-ID: <20230209181100.v27qqxmmfdotz2jb@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="6hfnstbght6ionp2"
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


--6hfnstbght6ionp2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Break input lines after commas and semicolons.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man1/localedef.1 | 59 ++++++++++++++++++++++++++++++++----------------
 1 file changed, 39 insertions(+), 20 deletions(-)

diff --git a/man1/localedef.1 b/man1/localedef.1
index fad411a08..b41d040f7 100644
--- a/man1/localedef.1
+++ b/man1/localedef.1
@@ -50,11 +50,13 @@ program reads the indicated
 .I charmap
 and
 .I input
-files, compiles them to a binary form quickly usable by the
+files,
+compiles them to a binary form quickly usable by the
 locale functions in the C library
 .RB ( setlocale (3),
 .BR localeconv (3),
-etc.), and places the output in
+etc.),
+and places the output in
 .IR outputpath .
 .PP
 The
@@ -63,9 +65,11 @@ argument is interpreted as follows:
 .IP \[bu] 3
 If
 .I outputpath
-contains a slash character ('/'), it is interpreted as the name of the
+contains a slash character ('/'),
+it is interpreted as the name of the
 directory where the output definitions are to be stored.
-In this case, there is a separate output file for each locale category
+In this case,
+there is a separate output file for each locale category
 .RI ( LC_TIME ,
 .IR LC_NUMERIC ,
 and so on).
@@ -96,12 +100,14 @@ not already been created.
 .PP
 If no
 .I charmapfile
-is given, the value
+is given,
+the value
 .I ANSI_X3.4\-1968
 (for ASCII) is used by default.
 If no
 .I inputfile
-is given, or if it is given as a dash
+is given,
+or if it is given as a dash
 (\-),
 .B localedef
 reads from standard input.
@@ -128,12 +134,14 @@ Delete the named locales from the locale archive file.
 List the locales contained in the locale archive file.
 .SS Other options
 Some of the following options are sensible only for certain operations;
-generally, it should be self-evident which ones.
+generally,
+it should be self-evident which ones.
 Notice that
 .B \-f
 and
 .B \-c
-are reversed from what you might expect; that is,
+are reversed from what you might expect;
+that is,
 .B \-f
 is not the same as
 .BR \-\-force .
@@ -145,7 +153,8 @@ If
 .I charmapfile
 contains a slash character ('/'),
 it is interpreted as the name of the character map.
-Otherwise, the file is sought in the current directory
+Otherwise,
+the file is sought in the current directory
 and the default directory for character maps.
 If the environment variable
 .B I18NPATH
@@ -178,7 +187,8 @@ If
 .I repertoirefile
 contains a slash character ('/'),
 it is interpreted as the pathname of the repertoire map.
-Otherwise, the file is sought in the current directory
+Otherwise,
+the file is sought in the current directory
 and the default directory for repertoire maps.
 If the environment variable
 .B I18NPATH
@@ -210,7 +220,8 @@ Generate big-endian output.
 Generate little-endian output.
 .TP
 .B \-\-no\-archive
-Do not use the locale archive file, instead create
+Do not use the locale archive file,
+instead create
 .I outputpath
 as a subdirectory in the same directory as the locale archive file,
 and create separate output files for locale categories in it.
@@ -239,18 +250,21 @@ is set.
 .TP
 .BI \-\-prefix=3D pathname
 Set the prefix to be prepended to the full archive pathname.
-By default, the prefix is empty.
+By default,
+the prefix is empty.
 Setting the prefix to
 .IR foo ,
 the archive would be placed in
 .IR foo/usr/lib/locale/locale\-archive .
 .TP
 .B \-\-quiet
-Suppress all notifications and warnings, and report only fatal errors.
+Suppress all notifications and warnings,
+and report only fatal errors.
 .TP
 .B \-\-replace
 Replace a locale in the locale archive file.
-Without this option, if the locale is in the archive file already,
+Without this option,
+if the locale is in the archive file already,
 an error occurs.
 .TP
 .BI \-\-warnings=3D warnings
@@ -269,7 +283,9 @@ Also prints the default paths used by
 Print a short usage summary and exit.
 .TP
 .BR \-V ", " \-\-version
-Print the version number, license, and disclaimer of warranty for
+Print the version number,
+license,
+and disclaimer of warranty for
 .BR localedef .
 .SH EXIT STATUS
 One of the following exit values can be returned by
@@ -279,10 +295,12 @@ One of the following exit values can be returned by
 Command completed successfully.
 .TP
 .B 1
-Warnings or errors occurred, output files were written.
+Warnings or errors occurred,
+output files were written.
 .TP
 .B 4
-Errors encountered, no output created.
+Errors encountered,
+no output created.
 .SH ENVIRONMENT
 .TP
 .B POSIXLY_CORRECT
@@ -329,8 +347,8 @@ An output file that contains information about locale m=
easurements
 .TP
 .I outputpath/LC_MESSAGES/SYS_LC_MESSAGES
 An output file that contains information about the language messages
-should be printed in, and what an affirmative or negative answer looks
-like.
+should be printed in,
+and what an affirmative or negative answer looks like.
 .TP
 .I outputpath/LC_MONETARY
 An output file that contains information about formatting of monetary
@@ -367,7 +385,8 @@ localedef \-f UTF\-8 \-i fi_FI fi_FI.UTF\-8
 .EE
 .in
 .PP
-The next example does the same thing, but generates files into the
+The next example does the same thing,
+but generates files into the
 .I fi_FI.UTF\-8
 directory which can then be used by programs when the environment
 variable
--=20
2.30.2


--6hfnstbght6ionp2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPlNzQACgkQ0Z6cfXEm
bc52mg/7BeMYAq1SXo0c97nCP6tCVMo26KOrfetbLZLGtbpdnvowCXXQ/kGJh3Bl
PAF1xYyTyqYGt0TcJfeOoty6OzKxzvCmVRY/kMX10wkKOFus37HRRQBE5OAGFm+q
vuvV7PCkRdM+IywTCvj2cuz7hT3ZsGK4ovW434temIceFWhsROjTwu/SjTZ67kZD
iTAv+97WB5Sy/4ji5+Nchhq4G0GGLdcfzpi3eU03KXXDUkMtnVj4cvMOSHCgztKr
AgiRkSAGV6OJQgYDNqPjlzNITeov+j/J5YwGklVwtkoU9gvwLaljGfnG2FouXTvg
lHR1++vC+6oJBNS8AwSi+tqqsnNzjKAOdgJAX60rjPq3PyPx8rWHRVPhPqpswciW
B/qjH+QxRFh+UQEfaToGco4j3+5F9fxlURnJMDzfx+T6OH72cw9H5tIdIYSkH2w+
tGQ4kAZuP5iiZxa6+e0xCPmRo5tm/sK5ZIzccZg5hNA8avdrU2NkSxh0oC1GM4ba
7PoB3PNCcYuP1wHHm0QOcQEPhiQ2Iy6HJXzEqvjkurZCqvFWplNaAiErdcYnjVwM
/TUUIJ9VlrYGQJ5J+6//tseJbskp/YtU+4NOO1LelNfIRiGFoQ2xNaMRyx3M1GuG
u4WKZwdCmiwSGsmBZacs4k/GctwHi81IhOp1Q9gxJxdFdkITOyg=
=E3RL
-----END PGP SIGNATURE-----

--6hfnstbght6ionp2--
