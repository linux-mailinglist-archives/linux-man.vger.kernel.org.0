Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46D1B65F710
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 23:52:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236308AbjAEWwi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 17:52:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236310AbjAEWw2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 17:52:28 -0500
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE7E558823
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 14:52:27 -0800 (PST)
Received: by mail-ot1-x336.google.com with SMTP id y18-20020a0568301d9200b0067082cd4679so23448490oti.4
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 14:52:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KA84lT7fI8imCuxLhMS+4Tb8xY/x+XtTMm+yv+c2egg=;
        b=OhzZNu+OtRxWJdLb5z+LIaViucWpHys0Q6kNvMZdXgxeLrdYjk1o0SXmKC6rQ/0Jov
         i5vzqXIefgkrvSvU2BKLL0URvzqafy15ZnPNLGTRCP+/CulLLv1oq//3cLw4DFkz5O2g
         qU4WpSaiVLmOXtZ4Cp1JUu1wAJphIOmlfKw6hcrAyaGApMT/vQyYrVpwUNAvR7VB14Op
         bMWiDkBjWQSkonpmA20uM++GfOoOslsU1T8gVscbG2sBs8iTXpWEGjzvR7UHM1NKtZH1
         po5xy3nr5EvyJSxrthcQwwys0d8vgkjm9Lyitpp3oIJpdXgrkLafNeI2KxhL8hhnyYHv
         5s9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KA84lT7fI8imCuxLhMS+4Tb8xY/x+XtTMm+yv+c2egg=;
        b=gVd7V+z/2adcGpOrFlSsO5xMcVAe89n5FqyksM7UirpakVdMLYuUaMsaGaemWr2yxT
         qJus8vH/Z8ANIztJ3IKl8G75FlVwOwGQvCKls+DglIYGAlWZvr+aQFhWR9Sdv4xdz1mo
         JFhLCAg8O/Wdf4P1g8vpr87KAscyGRyxSvHS596GUSB9pn+htHxMA0TpKg3broKJ7vUc
         U6QucqoXPqAV+KVcbC+b1lHzb9sr432eTy4/ptunL/6vRsy4W7r6jPXpsGEF/2G1BjRz
         WbL1XzRjLTimrU2PBWLCc0M7TOaQGsB0r6GgNLJ9XYsxHbY14oO0CmSxCSjCSEqjsioK
         gxGg==
X-Gm-Message-State: AFqh2krYHAoLKG9RN/mwD7p8C1Y9nrcF+6RUpB/daTRp+ove8FKC1hg9
        1cr37AgPwvZkyoeHjDjHFJLbSPm1m7k=
X-Google-Smtp-Source: AMrXdXshE/1kFEj0QoPprucHaSmaE9hUiMJMRxHHzUjNZcZs+ESFeCNXx+gmQ4rp0zgNHeRhJ4AZwQ==
X-Received: by 2002:a9d:7c8f:0:b0:678:2e59:5a6a with SMTP id q15-20020a9d7c8f000000b006782e595a6amr28289070otn.36.1672959147170;
        Thu, 05 Jan 2023 14:52:27 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id l10-20020a056830334a00b0066eb4e9242esm17948169ott.67.2023.01.05.14.52.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 14:52:26 -0800 (PST)
Date:   Thu, 5 Jan 2023 16:52:25 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 03/13] ldconfig.8: ffix
Message-ID: <20230105225225.luzsuhpxhjpi5256@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="cgatt2hvo645wylk"
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


--cgatt2hvo645wylk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Set page topic in lowercase.
* Rewrite synopses to use groff man(7) `SY`/`YS` extension macros.
* Rewrite synopses to use man(7) font macros instead of *roff font
  selection escape sequences.
* In synopses, set ellipses as separate "operands" to better suggest
  argument separation by white space.
* In synopses, prevent breaks within option brackets.
* Typeset ellipses more attractively on troff devices.
* Rewrite option list to use man(7) font macros instead of *roff font
  selection escape sequences.
* Use groff man(7) `TQ` extension macro to include multiple tags for
  options with long synonyms instead of comma notation.
* Set literals used as arguments to `-c` option in bold, not italics.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man8/ldconfig.8 | 68 ++++++++++++++++++++++++++++++++-----------------
 1 file changed, 44 insertions(+), 24 deletions(-)

diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
index cee0c7583..3460275ad 100644
--- a/man8/ldconfig.8
+++ b/man8/ldconfig.8
@@ -5,22 +5,30 @@
 .\"
 .\" Modified, 6 May 2002, Michael Kerrisk, <mtk.manpages@gmail.com>
 .\"   Change listed order of /usr/lib and /lib
-.TH LDCONFIG 8 (date) "Linux man-pages (unreleased)"
+.TH ldconfig 8 (date) "Linux man-pages (unreleased)"
 .SH NAME
 ldconfig \- configure dynamic linker run-time bindings
 .SH SYNOPSIS
-.PD 0
-.BR /sbin/ldconfig " [" \-nNvVX "] [" \-C " \fIcache\fP] [" \-f " \fIconf\=
fP] [" \-r " \fIroot\fP]"
-.IR directory ...
-.PP
-.B /sbin/ldconfig
+.SY /sbin/ldconfig
+.\" TODO?: -c, --format, -i, --ignore-aux-cache, --print-cache,
+.\" --verbose, -V, --version, -?, --help, --usage
+.RB [ \-nNvVX ]
+.RB [ \-C\~\c
+.IR cache ]
+.RB [ \-f\~\c
+.IR conf ]
+.RB [ \-r\~\c
+.IR root ]
+.IR directory \~.\|.\|.
+.YS
+.SY /sbin/ldconfig
 .B \-l
 .RB [ \-v ]
-.IR library ...
-.PP
-.B /sbin/ldconfig
+.IR library \~.\|.\|.
+.YS
+.SY /sbin/ldconfig
 .B \-p
-.PD
+.YS
 .SH DESCRIPTION
 .B \%ldconfig
 creates the necessary links and cache to the most recent shared
@@ -113,35 +121,41 @@ Failure to follow this pattern may result in compatib=
ility issues
 after an upgrade.
 .SH OPTIONS
 .TP
-.BR \-c " \fIfmt\fP, " \-\-format=3D\fIfmt\fP
+.BI \-c\~ fmt
+.TQ
+.BI \-\-format=3D fmt
 (Since glibc 2.2)
 .\" commit 45eca4d141c047950db48c69c8941163d0a61fcd
-Cache format to use:
-.IR old ,
-.IR new ,
+Use cache format
+.IR fmt ,
+which is one of
+.BR old ,
+.BR new ,
 or
-.IR \%compat .
+.BR \%compat .
 Since glibc 2.32,
 the default is
-.IR new .
+.BR new .
 .\" commit cad64f778aced84efdaa04ae64f8737b86f063ab
 Before that,
 it was
-.IR \%compat .
+.BR \%compat .
 .TP
-.BI "\-C " cache
+.BI \-C\~ cache
 Use
 .I cache
 instead of
 .IR /etc/ld.so.cache .
 .TP
-.BI "\-f " conf
+.BI \-f\~ conf
 Use
 .I conf
 instead of
 .IR /etc/ld.so.conf .
 .TP
-.BR \-i ", " \-\-ignore\-aux\-cache
+.B \-i
+.TQ
+.B \-\-ignore\-aux\-cache
 (Since glibc 2.7)
 .\" commit 27d9ffda17df4d2388687afd12897774fde39bcc
 Ignore auxiliary cache file.
@@ -167,23 +181,29 @@ Unless
 is also specified,
 links are still updated.
 .TP
-.BR \-p ", " \-\-print\-cache
+.B \-p
+.TQ
+.B \-\-print\-cache
 Print the lists of directories and candidate libraries stored in
 the current cache.
 .TP
-.BI "\-r " root
+.BI \-r\~ root
 Change to and use
 .I root
 as the root directory.
 .TP
-.BR \-v ", " \-\-verbose
+.B \-v
+.TQ
+.B \-\-verbose
 Verbose mode.
 Print current version number,
 the name of each directory as it is scanned,
 and any links that are created.
 Overrides quiet mode.
 .TP
-.BR \-V ", " \-\-version
+.B \-V
+.TQ
+.B \-\-version
 Print program version.
 .TP
 .B \-X
--=20
2.30.2


--cgatt2hvo645wylk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO3VKkACgkQ0Z6cfXEm
bc45Kg/9FlDcKKTmXfhWY3LxK4NGZ8AFyoVx1xHxqI+gsfMlQQwZxikyQZaW48K1
1dmHf0w4PU5Qvxucz9ol2Bkyu5av2wMQ4R+lPZY4FxL8Vid2virQ7Ai47J6HiZJw
bGirl8dwRZaZ88J02Yaugk8Z1mhXuMIXVar1L2VBjriF4r+97QDuJrYQXrs9tH6N
6i/YQTN7qL+aQ3oa0LtkvOH6rg7hHJiXKD97CDxL1PiUCCuzXl3sAknEtzZcZ5u1
X+fqjJDhLTf6SkFqDf3VPR9k4x08Th1GutUTuKVIAqUJPQmHvpyzMFjJVVYsRF3D
3Kftju1oKJkyT0JeXkgHMRgkxZrrOwyCx0NrMc+rDFLn+0gAPio8Pklbh0tfIh0t
wib9uU3vvyQWjivCu3yCJhOmiHl8KYuuJ0Gu48T8JJiH3uCkDgEDr0SNU785gHkm
1sxt3bk9Ahm0IdPqXbW/6peaalv1pUHnANtWDoPn8vUw/42rxPB0Gfdt3Sf7lPpo
kntcBL/aDGu6xecHpx5IvQBe3z1Z426KomHnPtFVkJy86a5x3frqT9vLg/mZcbv2
OB1rivedKXVSnrGRU7s4xnHyFY0UgUVQVb1jSsUgeAdz1CaCVTKRmgjwQIvJcidd
SefrKrxa9qmy5/X0MMGAPSewKM4bRSQXL0yl5HbVqEdzxtajwRQ=
=q/zb
-----END PGP SIGNATURE-----

--cgatt2hvo645wylk--
