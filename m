Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAD5B65CDB5
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 08:38:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233357AbjADHi5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 02:38:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229559AbjADHi5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 02:38:57 -0500
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CD8519294
        for <linux-man@vger.kernel.org>; Tue,  3 Jan 2023 23:38:56 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id r130so28946597oih.2
        for <linux-man@vger.kernel.org>; Tue, 03 Jan 2023 23:38:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8B+kdfYcgo+hsmgBb9i5ERRtiZ35zp7vtuD3qOGbVPA=;
        b=gRsE0RO9kuEym4Vh2jWYXmCsfXc/s/KfuSP687RGdwkJmLsRpZrSeG5jb6yrcATLy0
         XyV8CPDNNLxWCRKNXUSnofAg1EEYnEuWtlUo6OgLDL+0b0dh4OJMp/B9Igsmy3+KdDPJ
         jbxAO0b6ZECPUdhBcu7kIDTjW0J2AXcHt1zx7+LGJcstj7rSC/Bd99nGa9SHdAaDuc0t
         BXsFsC0QVyoeAGzDImvzGIiWRcuQa+30St/buBVCrPBrCdQs0ZDKFLvhRD45b1kpebcb
         8Ma3Lzw5hwgBElh4PjkNld+RwzyBjVOSh9iKRJ7pDs8xXlXzZh9FPBzAGN71+FYwqyBc
         LsRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8B+kdfYcgo+hsmgBb9i5ERRtiZ35zp7vtuD3qOGbVPA=;
        b=KR9dMehS19/M3xdcorM5SMMq3CUKBjd2X3QlfQFndM9IH8MYDVf8EyqiqVIx4Jp/7n
         DqLeiPPT01eXSD9XLpx/KXH1JamopDU2gOsVkvTiWN+tAM2CQelLQ+MqKMlC7KoMSJtl
         V21pZAS72nRoOB3bAj2phUkPM5aRAnQjOIoL+lRJEQiuQjn3RlEV5b5Ho0oa2lBp2ZCI
         UCGZ6SMkweRFo14B/upRgcucSWct1Y49JasWmjuqLYMifvTI1kjJVwQxqDL893Kj0iFC
         ajrtTcHlt/d7B+PByU8vTP4tOLfditMDL5W+F2fh5TDA3tvpFdmFVEQ4NaK2PFubPf03
         APdA==
X-Gm-Message-State: AFqh2kpzp3LHGHfJ+vqCPoV4rOA5dJDUEVEcKScMv6giSY3McHu4D3YO
        58FpDeX4C2ShsYCDzB7uKugDTSOSEUs=
X-Google-Smtp-Source: AMrXdXv+6wnOMbjSiDYp7fCRl65KXv9oAnZuvoHeLocDDA/Dw7KuQa4qbkGKCHDhAwI+MH7yB04q+g==
X-Received: by 2002:a05:6808:4089:b0:35e:b5bf:354a with SMTP id db9-20020a056808408900b0035eb5bf354amr19570367oib.31.1672817935265;
        Tue, 03 Jan 2023 23:38:55 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id m6-20020a9d7ac6000000b0066cb9069e0bsm16177480otn.42.2023.01.03.23.38.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 23:38:54 -0800 (PST)
Date:   Wed, 4 Jan 2023 01:38:51 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/9] ldconfig.8: Fix style nits
Message-ID: <20230104073851.h6kg265ev5v4gmjl@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="gfddfmxxz5tmrnqf"
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


--gfddfmxxz5tmrnqf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Set `TH` page title in lowercase.
* In synopses, set ellipses as separate "operands" to better suggest
  argument separation by white space.
* In synopses, prevent breaks within option brackets.
* Typeset ellipses more attractively on troff devices.
* Sort option flags in English lexicographic order.
* De-parenthesize content that seems important.
* Perform a Kemper notectomy.  That is, stop saying "note that"
  followed by some declarative statement.  This trope is all over Unix
  documentation and I even see it in ISO standards.  The latter doesn't
  serve to recommend it; as Dave Kemper has pointed out, everything we
  put in technical documentation should be worthy of note unless placed
  in a footnote, marked as "unnecessary on a first reading", or similar.
  It is the exception, not the rule.  If you feel the need to say "note
  that", consider what adjacent material you shouldn't be saying at all.
* Say "symbolic link" instead of "symlink".
* When one sentence explains the previous, use a semicolon.
* Set literals used as arguments to `-c` option in bold, not italics.
* Place the modifier "only" more carefully.
* Recast option descriptions to be in the imperative mood.
* Recast file descriptions to use the paragraph tag as the subject of
  the first sentence.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man8/ldconfig.8 | 54 ++++++++++++++++++++++++-------------------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
index 0e74c1791..2e54cfad4 100644
--- a/man8/ldconfig.8
+++ b/man8/ldconfig.8
@@ -5,7 +5,7 @@
 .\"
 .\" Modified, 6 May 2002, Michael Kerrisk, <mtk.manpages@gmail.com>
 .\"   Change listed order of /usr/lib and /lib
-.TH LDCONFIG 8 (date) "Linux man-pages (unreleased)"
+.TH ldconfig 8 (date) "Linux man-pages (unreleased)"
 .SH NAME
 ldconfig \- configure dynamic linker run-time bindings
 .SH SYNOPSIS
@@ -14,18 +14,18 @@ ldconfig \- configure dynamic linker run-time bindings
 .\" --verbose, -V, --version, -?, --help, --usage
 .B /sbin/ldconfig
 .RB [ \-nNvXV ]
-.RB [ \-f
-.IR conf ]
-.RB [ \-C
+.RB [ \-C\~\c
 .IR cache ]
-.RB [ \-r
+.RB [ \-f\~\c
+.IR conf ]
+.RB [ \-r\~\c
 .IR root ]
-.IR directory ...
+.IR directory \~.\|.\|.
 .PP
 .B /sbin/ldconfig
 .B \-l
 .RB [ \-v ]
-.IR library ...
+.IR library \~.\|.\|.
 .PP
 .B /sbin/ldconfig
 .B \-p
@@ -39,8 +39,8 @@ in the file
 and in the trusted directories,
 .I /lib
 and
-.I /usr/lib
-(on some 64-bit architectures such as x86-64,
+.IR /usr/lib .
+On some 64-bit architectures such as x86-64,
 .I /lib
 and
 .I /usr/lib
@@ -49,7 +49,7 @@ while
 .I /lib64
 and
 .I /usr/lib64
-are used for 64-bit libraries).
+are used for 64-bit libraries.
 .PP
 The cache is used by the run-time linker,
 .I ld.so
@@ -96,9 +96,8 @@ option.
 should normally be run by the superuser as it may require write
 permission on some root owned directories and files.
 .PP
-Note that
 .B \%ldconfig
-will only look at files that are named
+will look only at files that are named
 .I lib*.so*
 (for regular shared objects) or
 .I ld\-*.so*
@@ -106,7 +105,7 @@ will only look at files that are named
 Other files will be ignored.
 Also,
 .B \%ldconfig
-expects a certain pattern to how the symlinks are set up,
+expects a certain pattern to how the symbolic links are set up,
 like this example,
 where the middle file
 .RB ( libfoo.so.1
@@ -127,18 +126,20 @@ after an upgrade.
 .BI \-\-format=3D fmt
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
 .BI \-C\~ cache
 Use
@@ -161,13 +162,12 @@ Ignore auxiliary cache file.
 .TP
 .B \-l
 (Since glibc 2.2)
-Library mode.
-Manually link individual libraries.
-Intended for use by experts only.
+Interpret each operand as a libary name and configure its links.
+Intended for use only by experts.
 .TP
 .B \-n
-Process only the directories specified on the command line.
-Don't process the trusted directories,
+Process only the directories specified on the command line;
+don't process the trusted directories,
 nor those specified in
 .IR /etc/ld.so.conf .
 Implies
@@ -218,15 +218,15 @@ the cache is still rebuilt.
 .PD 0
 .TP
 .I /lib/ld.so
-Run-time linker/loader.
+is the run-time linker/loader.
 .TP
 .I /etc/ld.so.conf
-File containing a list of directories,
+contains a list of directories,
 one per line,
 in which to search for libraries.
 .TP
 .I /etc/ld.so.cache
-File containing an ordered list of libraries found in the directories
+contains an ordered list of libraries found in the directories
 specified in
 .IR /etc/ld.so.conf ,
 as well as those found in the trusted directories.
--=20
2.30.2


--gfddfmxxz5tmrnqf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO1LQoACgkQ0Z6cfXEm
bc5F9g/+KA85blY6dnFNoZm7Q3nB8x/a01rfLsGV9G0w0Yf8uqOjouWDvcoPsNon
pjllFiWNL7sndHMZkQQ4qoNFaUp85ylQi3/e6vICXfpmI7tCGzTZeY8oTqmor7lT
HOl8wxOVhvyV/cz93z87kIcXw0Woyr/+uD20lhEniho0loyaqTmmi1aJ57A95z4K
ClJrd+5ITHlME8GH26qnetGL1n5oz2U6KsFz14OvSsANyOGC1JVnWfSweRCYI2pG
kkFUtAaF6gj+/dlO85jVQn4xCm+8sYWXQn8/aMNgkfvh1SGheCmTt4JBVP9Lqks8
v5k2XPUsoK/epPMed8qV/RNHJVMs3E4Rw7cZy5lUKxMebO7XMATeeoOiglS+/1dK
Qz0/bYCOvrlJM1tLQtPsn3zXxQCL/KPzbq7mgML3gfrPeHt9vgaYqTmIvgH72nhN
IJRYVyvor37vMgDYEw+nCLsvzpIV0kRLQjmwP+wt4i5hwsYK5guc5uFgi4TCdP8K
RtaQ3X3HtHH8PN4ZrjRNovdTlAB+7/MA/dp9uV1C5vwjpKoAoduNES20uA2hJw3d
pQB/Fq+mt+XoVAEEppTx+bV7efa9w/umLWqE5YnZsD+MULd0tXynkjVX1RjkqcI2
sVROGhY+xPBhe2tXrR/miHctACBFM+Nv39AYFPfpAm0Rls0LbJY=
=MW4C
-----END PGP SIGNATURE-----

--gfddfmxxz5tmrnqf--
