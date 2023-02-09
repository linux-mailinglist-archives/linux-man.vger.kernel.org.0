Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8FE9691014
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 19:12:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229551AbjBISMF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 13:12:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229574AbjBISMF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 13:12:05 -0500
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F7B56A31D
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 10:11:43 -0800 (PST)
Received: by mail-ot1-x329.google.com with SMTP id p24-20020a056830131800b0068d4b30536aso786864otq.9
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 10:11:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c4A6ISkDlDyZOlOYAVH/aeDr7AK/wWcARzAPYctGVBY=;
        b=Q6ckGT95phHek8Dp+ZezHuDgg4+Dj51UT3571HHutXoiarPN668OE368MH7/sCy1sc
         p40kgzmOLjg3xO4HEkn9oUB4hHCCVDMcYmKISmhZabr/0lspl24tJoLFg5Y7p2DwWIE/
         gENxiwsEUf64v78gE5XdhpcqwFU1sKmWEXgY+8dvtxN+XIYPR/Xp+a69Ju12h/N7cPcr
         hjGo53Er+NNpIVhTJMGRgm1jpt+mRj3FiDiGjkAOQITJCXaX/9WTo6+exFAn5adfq/lm
         2ECqenR1EPGPHwxCOhnmZozA1OS6WqZj09xBHkghQN1nDpflBzrW+XycEjSSPlDTk3oM
         zJPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c4A6ISkDlDyZOlOYAVH/aeDr7AK/wWcARzAPYctGVBY=;
        b=YsJnR8SZoKY2jW3H/g17nQE0w8n8wpWI4av4dWxs7OKNq6jIkSJ9NeQj1tQFb+iUzF
         z189LWcNV89zkwBb4yE2bNUk6uXw1dhgY+gs8uop6IZazC+RkNuc2etxbXkJeDzFPuTs
         zgT56VTixX+IOCw/qvgh1Cgs1zZ4wjZt1ug/NFE5cSOSWcC6JSgJuZJ3Ywjb6eJKv6ss
         S7TqWVQZTwt/qAe7KMi+TbW7c+/jQCPWsskmzdadSVxwIQikATRnsVuEXZ1GCLSSzdgK
         RJZoOpNE72P9b+sROy9l4Cl9KEwXmaYvkgAYSvCw33LcvybmmMn4gLutjsmRLMSq/iEl
         t24w==
X-Gm-Message-State: AO0yUKXu3OMvnYJV3AKkJ9WkdmVk8MPwHa3lgfnGQUUJyjADaq+SC9oE
        5PDTbUFEmapC//goXQhtvvEXXFIhK78=
X-Google-Smtp-Source: AK7set+qfhCXyOaQ23ET121wZK0tEUZcKc5cNjm234CfE39LBGUlFucCkHwUhFyxiu1abqeZg7+brA==
X-Received: by 2002:a05:6830:3a94:b0:68b:d40e:e21f with SMTP id dj20-20020a0568303a9400b0068bd40ee21fmr6378068otb.34.1675966296283;
        Thu, 09 Feb 2023 10:11:36 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id n14-20020a9d64ce000000b0066b9a6bf3bcsm994562otl.12.2023.02.09.10.11.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 10:11:35 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:11:34 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 18/20] localedef.1: ffix
Message-ID: <20230209181134.uoci3m53wyoek5b4@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="pyde24m2enncs37n"
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


--pyde24m2enncs37n
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Protect literals from hyphenation.
* Specify break points in lengthy file names.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man1/localedef.1 | 60 ++++++++++++++++++++++++------------------------
 1 file changed, 30 insertions(+), 30 deletions(-)

diff --git a/man1/localedef.1 b/man1/localedef.1
index f33d01ca0..4031db10d 100644
--- a/man1/localedef.1
+++ b/man1/localedef.1
@@ -45,7 +45,7 @@ localedef \- compile locale definition files
 .YS
 .SH DESCRIPTION
 The
-.B localedef
+.B \%localedef
 program reads the indicated
 .I charmap
 and
@@ -79,22 +79,22 @@ If the
 option is used,
 .I output-path
 is the name of a subdirectory in
-.I /usr/lib/locale
+.I \%/usr/\:lib/\:\%locale
 where per-category compiled files are placed.
 .IP \[bu]
 Otherwise,
 .I output-path
 is the name of a locale and the compiled locale data is added to the
 archive file
-.IR /usr/lib/locale/locale\-archive .
+.IR \%/usr/\:lib/\:\%locale/\:\%locale\-archive .
 A locale archive is a memory-mapped file which contains all the
 system-provided locales;
 it is used by all localized programs when the environment variable
-.B LOCPATH
+.B \%LOCPATH
 is not set.
 .PP
 In any case,
-.B localedef
+.B \%localedef
 aborts if the directory in which it tries to write locale files has
 not already been created.
 .PP
@@ -109,12 +109,12 @@ If no
 is given,
 or if it is given as a dash
 (\-),
-.B localedef
+.B \%localedef
 reads from standard input.
 .SH OPTIONS
 .SS Operation-selection options
 A few options direct
-.B localedef
+.B \%localedef
 to do something other than compile locale definitions.
 Only one of these options should be used at a time.
 .TP
@@ -123,7 +123,7 @@ Add the
 .I compiled-path
 directories to the locale archive file.
 The directories should have been created by previous runs of
-.BR localedef ,
+.BR \%localedef ,
 using
 .BR \-\-no\-archive .
 .TP
@@ -157,11 +157,11 @@ Otherwise,
 the file is sought in the current directory
 and the default directory for character maps.
 If the environment variable
-.B I18NPATH
+.B \%I18NPATH
 is set,
-.I $I18NPATH/charmaps/
+.I \%$I18NPATH/\:\%charmaps/
 and
-.I $I18NPATH/
+.I \%$I18NPATH/
 are also searched after the current directory.
 The default directory for character maps is printed by
 .BR "localedef \-\-help" .
@@ -171,11 +171,11 @@ Specify the locale definition file to compile.
 The file is sought in the current directory
 and the default directory for locale definition files.
 If the environment variable
-.B I18NPATH
+.B \%I18NPATH
 is set,
-.I $I18NPATH/locales/
+.I \%$I18NPATH/\:\%locales/
 and
-.I $I18NPATH
+.I \%$I18NPATH
 are also searched after the current directory.
 The default directory for locale definition files is printed by
 .BR "localedef \-\-help" .
@@ -191,11 +191,11 @@ Otherwise,
 the file is sought in the current directory
 and the default directory for repertoire maps.
 If the environment variable
-.B I18NPATH
+.B \%I18NPATH
 is set,
-.I $I18NPATH/repertoiremaps/
+.I \%$I18NPATH/\:\%repertoiremaps/
 and
-.I $I18NPATH
+.I \%$I18NPATH
 are also searched after the current directory.
 The default directory for repertoire maps is printed by
 .BR "localedef \-\-help" .
@@ -227,7 +227,7 @@ as a subdirectory in the same directory as the locale a=
rchive file,
 and create separate output files for locale categories in it.
 This is helpful to prevent system locale archive updates from overwriting
 custom locales created with
-.BR localedef .
+.BR \%localedef .
 .TP
 .B \-\-no\-hard\-links
 Do not create hard links between installed locales.
@@ -237,7 +237,7 @@ Comma-separated list of warnings to disable.
 Supported warnings are
 .I ascii
 and
-.IR intcurrsym .
+.IR \%intcurrsym .
 .TP
 .B \-\-posix
 Conform strictly to POSIX.
@@ -245,7 +245,7 @@ Implies
 .BR \-\-verbose .
 This option currently has no other effect.
 POSIX conformance is assumed if the environment variable
-.B POSIXLY_CORRECT
+.B \%POSIXLY_CORRECT
 is set.
 .TP
 .BI \-\-prefix=3D pathname
@@ -255,7 +255,7 @@ the prefix is empty.
 Setting the prefix to
 .IR foo ,
 the archive would be placed in
-.IR foo/usr/lib/locale/locale\-archive .
+.IR \%foo/\:usr/\:lib/\:\%locale/\:\%locale\-archive .
 .TP
 .B \-\-quiet
 Suppress all notifications and warnings,
@@ -272,12 +272,12 @@ Comma-separated list of warnings to enable.
 Supported warnings are
 .I ascii
 and
-.IR intcurrsym .
+.IR \%intcurrsym .
 .TP
 .BR \-? ", " \-\-help
 Print a usage summary and exit.
 Also prints the default paths used by
-.BR localedef .
+.BR \%localedef .
 .TP
 .B "\-\-usage"
 Print a short usage summary and exit.
@@ -286,10 +286,10 @@ Print a short usage summary and exit.
 Print the version number,
 license,
 and disclaimer of warranty for
-.BR localedef .
+.BR \%localedef .
 .SH EXIT STATUS
 One of the following exit values can be returned by
-.BR localedef :
+.BR \%localedef :
 .TP
 .B 0
 Command completed successfully.
@@ -303,12 +303,12 @@ Errors encountered,
 no output created.
 .SH ENVIRONMENT
 .TP
-.B POSIXLY_CORRECT
+.B \%POSIXLY_CORRECT
 The
 .B \-\-posix
 flag is assumed if this environment variable is set.
 .TP
-.B I18NPATH
+.B \%I18NPATH
 A colon-separated list of search directories for files.
 .SH FILES
 .TP
@@ -377,7 +377,7 @@ POSIX.1-2008.
 .SH EXAMPLES
 Compile the locale files for Finnish in the UTF\-8 character set
 and add it to the default locale archive with the name
-.BR fi_FI.UTF\-8 :
+.BR \%fi_FI.UTF\-8 :
 .PP
 .in +4n
 .EX
@@ -387,10 +387,10 @@ localedef \-f UTF\-8 \-i fi_FI fi_FI.UTF\-8
 .PP
 The next example does the same thing,
 but generates files into the
-.I fi_FI.UTF\-8
+.I \%fi_FI.UTF\-8
 directory which can then be used by programs when the environment
 variable
-.B LOCPATH
+.B \%LOCPATH
 is set to the current directory (note that the last argument must
 contain a slash):
 .PP
--=20
2.30.2


--pyde24m2enncs37n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPlN1YACgkQ0Z6cfXEm
bc6UuA//UG25ly7Fitk1/yL0terfDW7L2UMYHogga4/jz4PnJPK3BpT3ypB2RDO2
yp/gHuReO/VYp6ScXr6nXMem+e5UBCG+mKjnWmOHG5FIeDdDU4FpaTW40ZIhG2W3
8pI0fbIpHpp/keO0KVTY9e/Y5JAjiTUJOBAWRAD3CF4ib/GtSddFHJ1FLkG+oePE
lrNATbJgl5GbflFPgaU0CPDKQ8Uxkyd+cTl80aUrfIex5j9BlbRuwb9QZZasZt6q
ZKpCmoTv/uJj8lwyeUrPdJEdhy0UMxqaQDvBXiug6ddIb0Br9XpJkhahTtFN6NW6
fLYCJ9EXLHS1PwMgznwaAN7pLWHHKryNevCyZC8soELmbE7x1UVtQ1wQN0pq31ti
q5UEdcoNt7+IvP93CSI0OEQ6jzzNw1Q3xCdcuF1JQelWyQfLkAfywWRzmyg38qbO
QEQl1jEaJXVbFiymfrqcQpj4Jm1pfZvNu9OzDyutqyQwdLaWnmWtNm4MApKGQVi/
/KgmIOcWC+dgLVRfbGdgUDyW9pv2AcA5ZUUqE+71dh8Z38j9UmJTsS9WkG8rHI+j
smI1sl0owWKXKeVCFYd66VOgo7wVV8u2wzljE+FkYfA5hQ/s8T+f2Mz2ijwISXnS
sFSIbHupyjqM8HZi8laR5xVNP1rAHVbeCOO5VLxMWMLQS2lVOZY=
=vYgd
-----END PGP SIGNATURE-----

--pyde24m2enncs37n--
