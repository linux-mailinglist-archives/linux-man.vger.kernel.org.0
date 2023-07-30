Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DB917687C6
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 22:02:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229552AbjG3UCe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 16:02:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbjG3UCd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 16:02:33 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E239211C
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 13:02:32 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id 5614622812f47-3a38953c928so2920028b6e.1
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 13:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690747352; x=1691352152;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wdQjCISDKiojmu9MbUm2fL2VcvkJtH0Z9ceM5j7U8Tw=;
        b=JZd9x2AFCDZWwtpjes1USErVfS2AORPct1mIx0ICe5W7hS2aB4yiBnDktJkicxUpsj
         j5FfCDFKTNAUsRHErBnzuCe/Ba/PijE3DX4pqXdC/5z5Y8evCiZ1ApJOiKFUAa5HOmsd
         3JR9/zIbKfiHNWTVBszdPXetCQb8gnhfjFEDUB8eAXvaYYellb03zL1rxpevd6KvZ5ku
         FUVwoEfm0HdWkYJsTLtevs0ZhX+SQsA9H9j7wXZmnfR93w+w3iisAg/iCwq7AeSpf7VN
         W/cblA2cDqL4spFjPVm7hFiDyYQ4ezabBNDhsAOAnfpY/Suc3eorEplaOU733WfvjavY
         S4cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690747352; x=1691352152;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wdQjCISDKiojmu9MbUm2fL2VcvkJtH0Z9ceM5j7U8Tw=;
        b=dD+/PHqDwgO9O9QKajqmk/jPs+JPezy3rxnGPvycODpVeY8ExcwhghrzU6But41eXj
         MKqVmPy64QsYeCeQX8pYvOe8GE8nj80w+X7ZHYjteKrdEt/o6iMow1Bnjge9O/nNRTAD
         Sd4TtlT2qt8S7yP2ga65iZMDHiBqpQYl+kLYJq8igQ2ppsqFOHITe+jwzhveOsuTi0Rs
         X6yzTFLnkVFLZ+mkLOhJkM5xOJGHEY8TvWqTXd0YQcOW+vR88wqTJu5gMxbkYCvSYv3g
         nzvC3O+Fj29ehlHfRZFXcnjF7kyUVjH5srEmsRMtO/WCPbU1iwhzWk5nRI346kUQEKaT
         mI2g==
X-Gm-Message-State: ABy/qLbdHQDEY7ST9SQT3sSA43xxI05wFmkHta14sRH6bxLnh7MJAV11
        qXJixa9DSIXvfqYV0qKCWmiRlNnUSXM=
X-Google-Smtp-Source: APBJJlEwmX4RbEn7AzP/uwQ+KC0TQfvEc02P6tOBaLerd+pu5khcwH5cQPV8Zo7uMbXyMHoLIGSaMA==
X-Received: by 2002:a54:4e94:0:b0:3a7:30cb:c092 with SMTP id c20-20020a544e94000000b003a730cbc092mr1127572oiy.48.1690747352235;
        Sun, 30 Jul 2023 13:02:32 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id bx18-20020a0568081b1200b003a38df6284dsm3513285oib.11.2023.07.30.13.02.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 13:02:31 -0700 (PDT)
Date:   Sun, 30 Jul 2023 15:02:30 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 4/9] isalpha.3, setnetgrent.3, unlocked_stdio.3: srcfix
Message-ID: <20230730200230.hofy6hbmzdmka4dx@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="auxigz7co7nnnvo5"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--auxigz7co7nnnvo5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Clean up in preparation for "MR sed".

Protect (non-cross-referenced) man page names from hyphenation.  Use the
hyphenation control escape sequence `\%` to do this rather than
bracketing a region of the page with `na` and `hy` requests, which
enables automatic hyphenation even when it is not desired and uses the
wrong hyphenation mode for English to boot.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man3/isalpha.3        | 26 +++++++++++-------------
 man3/setnetgrent.3    | 12 +++++------
 man3/unlocked_stdio.3 | 46 +++++++++++++++++++++----------------------
 3 files changed, 39 insertions(+), 45 deletions(-)

diff --git a/man3/isalpha.3 b/man3/isalpha.3
index 8f9247559..4250fecf4 100644
--- a/man3/isalpha.3
+++ b/man3/isalpha.3
@@ -71,21 +71,19 @@ .SH SYNOPSIS
 .nf
     _ISOC99_SOURCE || _POSIX_C_SOURCE >=3D 200112L
 .fi
-.nh
 .PP
-.BR isalnum_l (),
-.BR isalpha_l (),
-.BR isblank_l (),
-.BR iscntrl_l (),
-.BR isdigit_l (),
-.BR isgraph_l (),
-.BR islower_l (),
-.BR isprint_l (),
-.BR ispunct_l (),
-.BR isspace_l (),
-.BR isupper_l (),
-.BR isxdigit_l ():
-.hy
+.BR \%salnum_l (),
+.BR \%salpha_l (),
+.BR \%sblank_l (),
+.BR \%scntrl_l (),
+.BR \%sdigit_l (),
+.BR \%sgraph_l (),
+.BR \%slower_l (),
+.BR \%sprint_l (),
+.BR \%spunct_l (),
+.BR \%sspace_l (),
+.BR \%supper_l (),
+.BR \%sxdigit_l ():
 .nf
     Since glibc 2.10:
         _XOPEN_SOURCE >=3D 700
diff --git a/man3/setnetgrent.3 b/man3/setnetgrent.3
index 4a7838f09..8a1ab76ec 100644
--- a/man3/setnetgrent.3
+++ b/man3/setnetgrent.3
@@ -36,13 +36,11 @@ .SH SYNOPSIS
 .RE
 .ad l
 .PP
-.nh
-.BR setnetgrent (),
-.BR endnetgrent (),
-.BR getnetgrent (),
-.BR getnetgrent_r (),
-.BR innetgr ():
-.hy
+.BR \%setnetgrent (),
+.BR \%endnetgrent (),
+.BR \%getnetgrent (),
+.BR \%getnetgrent_r (),
+.BR \%innetgr ():
 .nf
     Since glibc 2.19:
         _DEFAULT_SOURCE
diff --git a/man3/unlocked_stdio.3 b/man3/unlocked_stdio.3
index 55f641e6e..ba9f3dfa2 100644
--- a/man3/unlocked_stdio.3
+++ b/man3/unlocked_stdio.3
@@ -58,47 +58,45 @@ .SH SYNOPSIS
 .RS -4
 Feature Test Macro Requirements for glibc (see
 .BR feature_test_macros (7)):
-.nh
 .RE
 .ad l
 .PP
-.BR getc_unlocked (),
-.BR getchar_unlocked (),
-.BR putc_unlocked (),
-.BR putchar_unlocked ():
+.BR \%getc_unlocked (),
+.BR \%getchar_unlocked (),
+.BR \%putc_unlocked (),
+.BR \%putchar_unlocked ():
 .nf
     /* glibc >=3D 2.24: */ _POSIX_C_SOURCE >=3D 199309L
         || /* glibc <=3D 2.23: */ _POSIX_C_SOURCE
         || /* glibc <=3D 2.19: */ _SVID_SOURCE || _BSD_SOURCE
 .fi
 .PP
-.BR clearerr_unlocked (),
-.BR feof_unlocked (),
-.BR ferror_unlocked (),
-.BR fileno_unlocked (),
-.BR fflush_unlocked (),
-.BR fgetc_unlocked (),
-.BR fputc_unlocked (),
-.BR fread_unlocked (),
-.BR fwrite_unlocked ():
+.BR \%clearerr_unlocked (),
+.BR \%feof_unlocked (),
+.BR \%ferror_unlocked (),
+.BR \%fileno_unlocked (),
+.BR \%fflush_unlocked (),
+.BR \%fgetc_unlocked (),
+.BR \%fputc_unlocked (),
+.BR \%fread_unlocked (),
+.BR \%fwrite_unlocked ():
 .nf
     /* glibc >=3D 2.19: */ _DEFAULT_SOURCE
         || /* glibc <=3D 2.19: */ _SVID_SOURCE || _BSD_SOURCE
 .fi
 .PP
-.BR fgets_unlocked (),
-.BR fputs_unlocked (),
-.BR getwc_unlocked (),
-.BR getwchar_unlocked (),
-.BR fgetwc_unlocked (),
-.BR fputwc_unlocked (),
-.BR putwchar_unlocked (),
-.BR fgetws_unlocked (),
-.BR fputws_unlocked ():
+.BR \%fgets_unlocked (),
+.BR \%fputs_unlocked (),
+.BR \%getwc_unlocked (),
+.BR \%getwchar_unlocked (),
+.BR \%fgetwc_unlocked (),
+.BR \%fputwc_unlocked (),
+.BR \%putwchar_unlocked (),
+.BR \%fgetws_unlocked (),
+.BR \%fputws_unlocked ():
 .nf
     _GNU_SOURCE
 .fi
-.hy
 .ad
 .SH DESCRIPTION
 Each of these functions has the same behavior as its counterpart
--=20
2.30.2


--auxigz7co7nnnvo5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTGwdYACgkQ0Z6cfXEm
bc5A9g/+Ke8Fq6ArxedvWuHZcflb8YfihegxfxlotndNXhXxEE8/NZH0V1JDqa4M
cD8jVS/VR5kqQpA0neeLHHHkRNRiNkDXTL5R8URNFkMJSCtH6eSS5UsXsAovdzoY
7KZBQIYw+qekHsjPVVzHyZKQGLLzH9HbfoSZaEYN6jnxPY8AcbKRmpX+yEaLOtMj
UnO7aE1JrkfBnEp7kkCdsj2uHa+PFBRnuNkN7sFWMWRvP5WfqR8EeHDU1ZbAI5tW
7VEWP1MtrO6Q7gqIa6Os56k4VRKvjmwaweDtfWLnZmVQEf+LDBuSsi1mAoTArQFc
UAQxYCkzt9E9bm7A0s/Y2UCPlaa6kN08FlC11aK16sG7FCYhgcWys8PvqJduiDsu
C6njrOEU3kSZ6JnPz/CfsXa2IAIuqZxWh9QIJKKq5B9Bcg6GhBz7J/QaoxQabv4k
ckgCSfXwLrvVnwXlvrIRGkDDRXz7bAD4y/XcVoGwy+3kaX+9Vs/xu4nKTT3XDhHG
UVIsHgczTycBoJSEMLbvanxgvf8tOl7++K2hC9c50DBmN8pclGDoC891XZHRBv/u
3cfo8CAz5JP4F9qfG2E9XgydsplmVuZrhEkwsMC3zIXZbjRd+EEaJ7bypfdUczvR
a+310j/T0ZKbQxz2pNlxDdmMdO9BbMKM9I10LdmjXY6AVVLbcmM=
=XVs4
-----END PGP SIGNATURE-----

--auxigz7co7nnnvo5--
