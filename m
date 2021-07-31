Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7BD6D3DC2FF
	for <lists+linux-man@lfdr.de>; Sat, 31 Jul 2021 05:45:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231491AbhGaDpS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 23:45:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231487AbhGaDpR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 23:45:17 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F03FC06175F
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 20:45:12 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id a20so13411631plm.0
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 20:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=uu64qWZSkqkxKc/cDxEdBQJx/esTz7cmUOAptRZ+Nco=;
        b=efX5xuJNdPWcP6nSPvZwWkpmega1QOPdYuQ1bJluHj8M1OL0zcE/OQs5NFpXa11UKs
         qdSwuajMQVVYnpJRtXeyMns8i/P8o5x456ECSP0XUx6ESn74wxMWCnh84R88PqLbvkEQ
         91T37m5jvxN5lh5JLxvd2NRWP7AutaAag2rd0lwtdFtoYKMrcRhe27dsyRle2uZLWy1+
         R7s/p0V5ysbpmhw6UQQVS/B8VFMjX7qZEE4WAeCoEYtQITwMbktHSxgCwyhRcz47MpQr
         3wwtndy1RP+J+OdH4Gxz0ObpOy5n4rkV4kZSfD9qtLpiPIDbnSJS5cgn/Q+4wvl1zdfR
         dwNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=uu64qWZSkqkxKc/cDxEdBQJx/esTz7cmUOAptRZ+Nco=;
        b=lLvXAKwnGRRdOPd+twEGD1a0uV3TrGz2MbxUgqYSXBhsGdDFKZKx+MhEhfyTdhNseN
         HkwZ98DcM8I5Egl14dar4KGR/UdODtk8Am7BZYLSw8p/KX82bMcBtsex5DByhWUOC2Ed
         nznsUDlnZPgBa+DkmIxDw2fE2ZYuXe2AN3UhZODbMNPAEa8CCIDdQgMqiBWbllWIi5Ja
         2mbX/Q88Snt9qpRHHpXLCLJqlocuh07jeiasUBKzW8gmS7wWvPV6lZNN7bWtUeumEmAj
         Z4Qar5Jdok8kCjtb2ZRDzd4bFvEQg3hkgtRgsiv3sPc+42AeVvl03uHcprh7VKZtLlQs
         7GHg==
X-Gm-Message-State: AOAM533zsLoEL+2QoJhYc9G8yNnBkguylCfXpPUCXfTcg637BlnAGXxg
        5AfZ+6dDfqFSfiREgfZl063FQnm9X3O0WA==
X-Google-Smtp-Source: ABdhPJyPiwqIaNCJJ1UQEnRwAgfCyNn7EpiS7jMNGyXJvRDIFcDKFC4zR+lVRaJAmfzFqeilPX8v1g==
X-Received: by 2002:a17:90a:ce03:: with SMTP id f3mr6357187pju.30.1627703111778;
        Fri, 30 Jul 2021 20:45:11 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id m11sm4635635pgn.56.2021.07.30.20.45.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 20:45:11 -0700 (PDT)
Date:   Sat, 31 Jul 2021 13:45:07 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: [PATCH 2/2] man-pages.7: Update non-breaking space advice.
Message-ID: <20210731034458.6s76okhgjxw42mpx@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="szqtfben7v24qcyy"
Content-Disposition: inline
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--szqtfben7v24qcyy
Content-Type: multipart/mixed; boundary="5w6vdy2s6czwjjtk"
Content-Disposition: inline


--5w6vdy2s6czwjjtk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Advise usage of \~ escape instead of \SPACE; the former, a groff
  extension from circa 1990, has been supported by Heirloom Doctools
  troff since 2005 and by mandoc since 2019.  The advantage is that
  \~ is an _adjustable_ non-breaking space, so it will typeset
  non-jarringly both in .EX/.EE examples when filling is off, and in
  normal running text (which is filled).
* Say "non-breaking" instead of "nonbreaking".  These are the only
  occurrences of either in the man-pages tree, except in Changes.old,
  which uses "non-breaking".

See linux-man@ list discussion at
<https://lore.kernel.org/linux-man/\
20210729115508.pt6btsqd7g5tuhg6@localhost.localdomain/> and follow-ups.
---
 man7/man-pages.7 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 3819dfd97..06dc7097c 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -686,14 +686,14 @@ man 7 man\-pages
 If the command is short, then it can be included inline in the text,
 in italic format, for example,
 .IR "man 7 man-pages" .
-In this case, it may be worth using nonbreaking spaces
-("\e\ ") at suitable places in the command.
+In this case, it may be worth using non-breaking spaces
+(\e\(ti) at suitable places in the command.
 Command options should be written in italics (e.g.,
 .IR \-l ).
 .PP
 Expressions, if not written on a separate indented line, should
 be specified in italics.
-Again, the use of nonbreaking spaces may be appropriate
+Again, the use of non-breaking spaces may be appropriate
 if the expression is inlined with normal text.
 .PP
 When showing example shell sessions, user input should be formatted in bol=
d, for example
--=20
2.20.1


--5w6vdy2s6czwjjtk
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="0002-man-pages.7-Update-non-breaking-space-advice.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 302aa3a0f2e5f0c3e9188936d4b0a25761ff5fd7 Mon Sep 17 00:00:00 2001
=46rom: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Date: Sat, 31 Jul 2021 13:30:58 +1000
Subject: [PATCH 2/2] man-pages.7: Update non-breaking space advice.

* Advise usage of \~ escape instead of \SPACE; the former, a groff
  extension from circa 1990, has been supported by Heirloom Doctools
  troff since 2005 and by mandoc since 2019.  The advantage is that
  \~ is an _adjustable_ non-breaking space, so it will typeset
  non-jarringly both in .EX/.EE examples when filling is off, and in
  normal running text (which is filled).
* Say "non-breaking" instead of "nonbreaking".  These are the only
  occurrences of either in the man-pages tree, except in Changes.old,
  which uses "non-breaking".

See linux-man@ list discussion at
<https://lore.kernel.org/linux-man/\
20210729115508.pt6btsqd7g5tuhg6@localhost.localdomain/> and follow-ups.
---
 man7/man-pages.7 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 3819dfd97..06dc7097c 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -686,14 +686,14 @@ man 7 man\-pages
 If the command is short, then it can be included inline in the text,
 in italic format, for example,
 .IR "man 7 man-pages" .
-In this case, it may be worth using nonbreaking spaces
-("\e\ ") at suitable places in the command.
+In this case, it may be worth using non-breaking spaces
+(\e\(ti) at suitable places in the command.
 Command options should be written in italics (e.g.,
 .IR \-l ).
 .PP
 Expressions, if not written on a separate indented line, should
 be specified in italics.
-Again, the use of nonbreaking spaces may be appropriate
+Again, the use of non-breaking spaces may be appropriate
 if the expression is inlined with normal text.
 .PP
 When showing example shell sessions, user input should be formatted in bol=
d, for example
--=20
2.20.1


--5w6vdy2s6czwjjtk--

--szqtfben7v24qcyy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEExzoACgkQ0Z6cfXEm
bc5RuA/+NwMjX+wPQBw8bmGYXunlPtwnbT99qIet/C+8FmijgBhU8PC6psQFDnQB
YvgMYCf8BD8TO7gNEeCio/Ic6ozc02PV7eWUis/wM70iZVNPOKNN7Ptbn7HJAfEG
rGEB06Lx9Q44nVIPQiG2W35KQMlQ7UncSn3ANPllyLYGF5fQu1Fj9vT9HThFP8Yi
zGQ0oWs1LE/3TE3RfNqHEIkbmlJqaySytUFdj5h6SXafvziFNv7OxeL4Hc0fpcb6
+T85LsbCUyP9ZawgB3PkmTO9UcoD3bRwoat4ZLSYHTusi0sHmyMwZG8FG6JN9vVD
0TzIW9BkXs4c3SJ7iL84huMczKbEwCm3jRnznU73HO0dCL/4UGnhBF+BOfkw225E
2opYUontZgyFBtxO1ComBzJTBN20XL7uFXEzllkxqofWYFlRlBrYNFO/4nELMzll
Wr4ZkrX7P5093quLJOUKz2iubJsxTE3fPjCtvG6B7NiyAjEyGvEozoiItvAeFugK
6U4Y35ABGHXXKDluQTO8d4W8RDY6GB0DjQrvV0IOuN8nn9cJ+Nlk/KJ/AZHNTV4q
1EeRl0Y4T694K/4HsaOocXb5dRiW8eQ9LXWgdTZlygdtLRvsLKNQNxeREiDB3ire
rrePIduMyF+vWjqKd8QgXzvAUTDZr43bwbgz0Pef+ikAEGiI1YI=
=jWdr
-----END PGP SIGNATURE-----

--szqtfben7v24qcyy--
