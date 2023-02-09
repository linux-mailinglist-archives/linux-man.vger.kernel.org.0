Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D528691013
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 19:12:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229801AbjBISMB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 13:12:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229793AbjBISL5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 13:11:57 -0500
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com [IPv6:2001:4860:4864:20::2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B9C468AE6
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 10:11:40 -0800 (PST)
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-142b72a728fso3602666fac.9
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 10:11:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UE3O01LFnsDMJ7tsZLxN+ZTv3T2hbOHIwjgivCpoVpU=;
        b=CmtSMZVbvP4L5DJYbY7fppNTGHtAY4w6G/+UHYHm+TthfKNQfGEzTtH9zVC2X2Z3TP
         U11Rq8LpWNrKqYF1zk+d2QbmqF7ZEqnoQ5PdDWmUInDPM8rbQwt14urbez3rRrAwpC/o
         XPQgRXmWKAbIdcze06/X6FxBxWtDFRIgOvdmNEacyjRtIpjLk43RAmsH8kZOK647sJYe
         hyEvmJc3XbQE75uiUWsDxZqy8WrNuOmdn1SxgmwTNaNTnZJPCJQOahQlh+15WkirjsSa
         TePcGCn/Cj9GbXDu6y7beRGviLBBM3K4PP1D6t7nLc6OmDcy2L13lHbMljje6arBKek5
         J+GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UE3O01LFnsDMJ7tsZLxN+ZTv3T2hbOHIwjgivCpoVpU=;
        b=tl9U9PMl2Riq0hkOB88Smaw+8maYstpuxPTWx6rGbE841ZgaCf6bbNJLcOEA33TxbX
         2SoqjWuy/U5u6XzY6AopZy7RMPBp6VJncZc7vldpzcu53Lp5DLioirz9/3ZKO7v7lrzE
         7LjM0KpfzI60eorjcnoCVRKos4sBqCl5Q7SJUF54nMxIEBbP9u2R1kzh0Qvpi3LyTjip
         S0jkLs5Dtw8Q/KwhPafKRq+piJ0+eZq/KeSZ9IKYRLdLiJXfxEze9pooTYfIyhUaMKIJ
         ifX1FIZ4gPpI6t801BYzXrW+ioR1YPKevt2B4qc7fkvS2I00aMRZPU2vc6JE0rHkLb1X
         Lxcg==
X-Gm-Message-State: AO0yUKXeoeVWvsz8LNsLkBbqZONO2OFwxCELT4MmiIVjZjLbx85Zhr3b
        f7qhqp/WzzPfKGOjaYoXOfNVjZJvHxQ=
X-Google-Smtp-Source: AK7set86Nx3nvdoHul2uAdff5OmmTzzYK4Yknl1p776VkVxE0KDIzQpHXCKpXgka8kY6QHYQVTrqMA==
X-Received: by 2002:a05:6870:c597:b0:163:2f2e:1235 with SMTP id ba23-20020a056870c59700b001632f2e1235mr5446041oab.47.1675966288398;
        Thu, 09 Feb 2023 10:11:28 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id j13-20020a4ac54d000000b0051a669290e8sm1039799ooq.5.2023.02.09.10.11.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 10:11:28 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:11:26 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 17/20] localedef.1: ffix
Message-ID: <20230209181126.6wq3u7xflxxpbfek@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="br73ta3plsptuuhy"
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


--br73ta3plsptuuhy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Spell metasyntactic variables as hyphenated noun phrases.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man1/localedef.1 | 44 ++++++++++++++++++++++----------------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/man1/localedef.1 b/man1/localedef.1
index 214822530..f33d01ca0 100644
--- a/man1/localedef.1
+++ b/man1/localedef.1
@@ -18,17 +18,17 @@ localedef \- compile locale definition files
 .SH SYNOPSIS
 .SY localedef
 .RI [ options ]
-.I outputpath
+.I output-path
 .YS
 .SY localedef
 .B \-\-add\-to\-archive
 .RI [ options ]
-.I compiledpath
+.I compiled-path
 .YS
 .SY localedef
 .B \-\-delete\-from\-archive
 .RI [ options ]
-.IR localename \~.\|.\|.
+.IR locale-name \~.\|.\|.
 .YS
 .SY localedef
 .B \-\-list\-archive
@@ -57,14 +57,14 @@ locale functions in the C library
 .BR localeconv (3),
 etc.),
 and places the output in
-.IR outputpath .
+.IR output-path .
 .PP
 The
-.I outputpath
+.I output-path
 argument is interpreted as follows:
 .IP \[bu] 3
 If
-.I outputpath
+.I output-path
 contains a slash character (\[oq]/\[cq],
 it is interpreted as the name of the
 directory where the output definitions are to be stored.
@@ -77,13 +77,13 @@ and so on).
 If the
 .B \-\-no\-archive
 option is used,
-.I outputpath
+.I output-path
 is the name of a subdirectory in
 .I /usr/lib/locale
 where per-category compiled files are placed.
 .IP \[bu]
 Otherwise,
-.I outputpath
+.I output-path
 is the name of a locale and the compiled locale data is added to the
 archive file
 .IR /usr/lib/locale/locale\-archive .
@@ -120,7 +120,7 @@ Only one of these options should be used at a time.
 .TP
 .B \-\-add\-to\-archive
 Add the
-.I compiledpath
+.I compiled-path
 directories to the locale archive file.
 The directories should have been created by previous runs of
 .BR localedef ,
@@ -222,7 +222,7 @@ Generate little-endian output.
 .B \-\-no\-archive
 Do not use the locale archive file,
 instead create
-.I outputpath
+.I output-path
 as a subdirectory in the same directory as the locale archive file,
 and create separate output files for locale categories in it.
 This is helpful to prevent system locale archive updates from overwriting
@@ -327,49 +327,49 @@ Usual default locale archive location.
 .I /usr/lib/locale
 Usual default path for compiled individual locale data files.
 .TP
-.I outputpath/LC_ADDRESS
+.I output-path/LC_ADDRESS
 An output file that contains information about formatting of
 addresses and geography-related items.
 .TP
-.I outputpath/LC_COLLATE
+.I output-path/LC_COLLATE
 An output file that contains information about the rules for comparing
 strings.
 .TP
-.I outputpath/LC_CTYPE
+.I output-path/LC_CTYPE
 An output file that contains information about character classes.
 .TP
-.I outputpath/LC_IDENTIFICATION
+.I output-path/LC_IDENTIFICATION
 An output file that contains metadata about the locale.
 .TP
-.I outputpath/LC_MEASUREMENT
+.I output-path/LC_MEASUREMENT
 An output file that contains information about locale measurements
 (metric versus US customary).
 .TP
-.I outputpath/LC_MESSAGES/SYS_LC_MESSAGES
+.I output-path/LC_MESSAGES/SYS_LC_MESSAGES
 An output file that contains information about the language messages
 should be printed in,
 and what an affirmative or negative answer looks like.
 .TP
-.I outputpath/LC_MONETARY
+.I output-path/LC_MONETARY
 An output file that contains information about formatting of monetary
 values.
 .TP
-.I outputpath/LC_NAME
+.I output-path/LC_NAME
 An output file that contains information about salutations for persons.
 .TP
-.I outputpath/LC_NUMERIC
+.I output-path/LC_NUMERIC
 An output file that contains information about formatting of nonmonetary
 numeric values.
 .TP
-.I outputpath/LC_PAPER
+.I output-path/LC_PAPER
 An output file that contains information about settings related to
 standard paper size.
 .TP
-.I outputpath/LC_TELEPHONE
+.I output-path/LC_TELEPHONE
 An output file that contains information about formats to be used with
 telephone services.
 .TP
-.I outputpath/LC_TIME
+.I output-path/LC_TIME
 An output file that contains information about formatting of data and
 time values.
 .SH STANDARDS
--=20
2.30.2


--br73ta3plsptuuhy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPlN04ACgkQ0Z6cfXEm
bc6CAhAAkoS7V+L6M3DMYrWY26UwRajNG5uBnYRoGGd47NZOWt4yXyCiORBEzEna
7w4vv5XkyPOnmgP/kOJzkBpxvM2veNkyKPphklpeWBN9xhG7z7gU+QJehtUOndvj
rYnUn/vFBIG0+kOQ2yhYdV7utSQwyFF2kmxIhA9M/T8/huUBzDkRL8KpWAeWvFcy
vadPx9GqNAATs4dMAO4Muv66jdKKWY+TYINohpaQapANgekxawcf9JAx2NcfaQMi
ZAERgjh4AkIDPp/eLQhosyrqdBDhMCMnTowaYSJn3PO1Bh7JH8ExkZkdU7ebViZv
BEI3G5ngXM3TuNwsg0jRuCE+VVsesjeiO7blyMjdpj2vJTp3CY3ZRSqunOaiF0j4
SilPgg9g/TlO7HTdmWiPKPFzP1aaTGM0F5IF7zj2ayke2463DMaf3BGvP2MZPVUb
c6phRGQXFHZxyTRJSzeBHmfqISY15n0xlvbQ/bKYxEO68GsMjjJz3rEo4nk9qnt1
kmOehB11cBIBXGwRFESx4T8ZVw/p0t8AhoPKdq/V+zgANyPu9Ie+aZcrKiLTbg0u
/c0FfersTcWLbJOzvYiOZLxh9o+9h4huoD00MEjUrxx0g1lDBL8KOo6kdCjqu9Da
tnOLNdr5k3/UJrKWt96g/8zCANyDcYWt7DotlfB95f6XoiwjsWM=
=C1W1
-----END PGP SIGNATURE-----

--br73ta3plsptuuhy--
