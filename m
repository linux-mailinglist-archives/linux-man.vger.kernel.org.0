Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48E3B767420
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 20:00:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234532AbjG1SAG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 14:00:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234529AbjG1SAF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 14:00:05 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 184254220
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 10:59:58 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3a425ef874dso1912375b6e.0
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 10:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690567197; x=1691171997;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+JBw7FtUBUr18zJPAxU96loNHPBDbL7JtZQIAYNw8Wk=;
        b=bBTLGZx2Y4XsC810nhk1MonlnTHtqTdUn+NgkdBVxcSCPq7u3UxIWGWMam+rQaQKsd
         Ymy5UQYXdgiwPJzdLrpUxQSAkYy7QbsL4uoAjJg/E4x+4q4YQ3Ti7OrbAwcIJiFcTWEO
         y5NsiQTzXgEjnHvzvSADDOL5NUaKyjQxzuhnom0MW9SaQ/jE/sZ5CeyQigvhnvHjMQVD
         bJ8VIgYQ2RVl0xtSsUW2mKE8cdcktFuWzKcsMBTfPWu/MviSgAAEinuZLPU3FwOkFLLB
         VY92CF/NNlD+bFhZ8nte/H3hwKa+Cz+yQGHfsyvJXATLDz27YlzTwLIGfMZLa7hjR2T8
         +2Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690567197; x=1691171997;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+JBw7FtUBUr18zJPAxU96loNHPBDbL7JtZQIAYNw8Wk=;
        b=S0414pfdsOUc6WMOJaLoIJJGF544hqmOkvQYESWbJ5y0JfH592EWjpg+y6RUIBY/bN
         EErqQRvb/VRlpr3+LVcxPYVizH9stWHfnlVpYV5yGplU2Oe8HLrXrcARBw26l5wOoOlY
         pAbePaCr++mHg9g1eTVRi/4W2Sswb0wgfqelmy75JSPoE9Clmm8TB/rysbGydxZIcR70
         TNLxGFEqPajcgSaCjNdEmv8MwmYoGI7hEdqbGDAdf/yw8ZgtmtBbOB5kJ/EdK9uDTUGU
         OyKmPzhuCe69y6kuSzRGhrICkD4FcBDQ+cyWXQpFzmse6jiHhU9kWNh4ZPoorQcOPuCr
         090Q==
X-Gm-Message-State: ABy/qLbUfI09l74SB2iCw9v987IeVd/bVLB0ghn2NNvNQrjYD8pTN627
        /KGTEuoUF0m8/o/9CnaLBAYhHY3Ghn4=
X-Google-Smtp-Source: APBJJlF0p28PpaXXvUH3VQXw9NuXdLoKpPvJD8RZ0rbqbp8DR6SPeuMlL3juenbtGtMMzQsLZQGgGA==
X-Received: by 2002:a05:6808:2390:b0:3a3:eab8:8c40 with SMTP id bp16-20020a056808239000b003a3eab88c40mr5029793oib.54.1690567197186;
        Fri, 28 Jul 2023 10:59:57 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id d5-20020a05680808e500b003a44b425c18sm1864946oic.43.2023.07.28.10.59.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jul 2023 10:59:56 -0700 (PDT)
Date:   Fri, 28 Jul 2023 12:59:55 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     alx@kernel.org
Subject: [PATCH 3/6] time.1, getxattr.2, setxattr.2, sk98lin.4,
 string_copying.7: srcfix
Message-ID: <20230728175955.o5eh3pa3u6lwuaec@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="dchej7icfrjaehae"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--dchej7icfrjaehae
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Clean up in preparation for "MR sed".

=46rom 9b627f2a052e85170cb6672b027f8fd0cd3812c7 Mon Sep 17 00:00:00 2001
=46rom: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Date: Fri, 28 Jul 2023 11:55:54 -0500
Subject: [PATCH 3/6] time.1, getxattr.2, setxattr.2, sk98lin.4,
 string_copying.7: srcfix

Drop spurious, nilpotent uses of *roff `\c` escape sequence.

Quoting groff_man_style(7):

    \c  End a text line without inserting space or attempting a break.
        Normally, if filling is enabled, the end of a text line is
        treated like a space; an output line _may_ be broken there (if
        not, an adjustable space is inserted); if filling is disabled,
        the line _will_ be broken there, as in .EX/.EE examples.  The
        next line is interpreted as usual and can include a macro call
        (contrast with \newline).  \c is useful when three font styles
        are needed in a single word, as in a command synopsis.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man1/time.1           | 2 +-
 man2/getxattr.2       | 3 +--
 man2/setxattr.2       | 3 +--
 man4/sk98lin.4        | 6 ++----
 man7/string_copying.7 | 4 ++--
 5 files changed, 7 insertions(+), 11 deletions(-)

diff --git a/man1/time.1 b/man1/time.1
index ac4351f63..efb818cfd 100644
--- a/man1/time.1
+++ b/man1/time.1
@@ -8,7 +8,7 @@
 .SH NAME
 time \- time a simple command or give resource usage
 .SH SYNOPSIS
-.B time \c
+.B time
 .RI [ options ] " command " [ arguments... ]
 .SH DESCRIPTION
 The
diff --git a/man2/getxattr.2 b/man2/getxattr.2
index ab8342181..9af9915d5 100644
--- a/man2/getxattr.2
+++ b/man2/getxattr.2
@@ -22,8 +22,7 @@ .SH SYNOPSIS
 .fi
 .SH DESCRIPTION
 Extended attributes are
-.IR name :\c
-.I value
+.IR name : value
 pairs associated with inodes (files, directories, symbolic links, etc.).
 They are extensions to the normal attributes which are associated
 with all inodes in the system (i.e., the
diff --git a/man2/setxattr.2 b/man2/setxattr.2
index 43151ebd5..b31eafddc 100644
--- a/man2/setxattr.2
+++ b/man2/setxattr.2
@@ -22,8 +22,7 @@ .SH SYNOPSIS
 .fi
 .SH DESCRIPTION
 Extended attributes are
-.IR name :\c
-.I value
+.IR name : value
 pairs associated with inodes (files, directories, symbolic links, etc.).
 They are extensions to the normal attributes which are associated
 with all inodes in the system (i.e., the
diff --git a/man4/sk98lin.4 b/man4/sk98lin.4
index 51c6ad2f4..4d223a279 100644
--- a/man4/sk98lin.4
+++ b/man4/sk98lin.4
@@ -152,14 +152,12 @@ .SH DESCRIPTION
 Those features are available only after installation of open source modules
 which can be found on the Internet:
 .PP
-.IR VLAN \c
-:
+.IR VLAN :
 .UR http://www.candelatech.com\:/\[ti]greear\:/vlan.html
 .UE
 .br
 .I Link
-.IR Aggregation \c
-:
+.IR Aggregation :
 .UR http://www.st.rim.or.jp\:/\[ti]yumo
 .UE
 .PP
diff --git a/man7/string_copying.7 b/man7/string_copying.7
index da1fc6752..ab9199a68 100644
--- a/man7/string_copying.7
+++ b/man7/string_copying.7
@@ -317,12 +317,12 @@ .SS String vs character sequence
 .PD 0
 .BR stpcpy (3)
 .IP \[bu]
-.BR strcpy "(3), \c"
+.BR strcpy (3),
 .BR strcat (3)
 .IP \[bu]
 .BR stpecpy (3)
 .IP \[bu]
-.BR strlcpy "(3bsd), \c"
+.BR strlcpy (3bsd),
 .BR strlcat (3bsd)
 .PD
 .PP
--=20
2.30.2


--dchej7icfrjaehae
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTEAhsACgkQ0Z6cfXEm
bc7fZg/+JiIwwCMXXRKovnFfWdE6ExUT1F1KywgEKWyD/Fd3SdIGYP2VDquAg8pe
BhxrAnfAgn+vIKFdwhnZOZvLgbVgFfJTEUNmYc7K+N+9W/tofs2ocLlbhJQ97VuV
ccqHuFoQ78/Yn0DOmDkOIHMlGxElPoxicjeW971DIVKhKadAYsQEH4eL+aoLnR1k
bEtNWmAVYqPJe2U0eubf97Zcs0U1yfJqXw+tvVcnsiW15KNhtvErv+NMKbH6aXeH
scC6U9/At5OGjuzIBWBgU7vl9PPlQe0UJCmlFIP3cilZ5lACIXSrLHdGdIEosW3Y
DfWse7u0WHykuKKqqGpOegoHlbWXcVJEMEJdcljKqfHRESA4vw+TZPHXCy2dAmI9
urfHitLf5Mha9pulVPq+nsIbdtIhRW242qh4tuPe8Tdy2mBzxgfMk8nQPF2mMwCh
KKb/8tR4+fMblPaACWymZSrCd5vBAujGW3B2mdEGSBProt/lHyaKTkZq45GEkTLL
pfj/ru5NfdgZwBppgVJZoczGJsF6C+zE8u+0ePQO1fnT0HqnJblvkOG6TIqwuFSy
N1cBlRNYWlhEzQkXjTWK20oMXKzLAbG1cDAF6UtSDEm4WYl8GCPxP6/u7wi0NtlP
17U1Nm9GyB3KggyCpETwrLyGzSecfTNRPpC/+hBA44b/fmqGsEg=
=KpkQ
-----END PGP SIGNATURE-----

--dchej7icfrjaehae--
