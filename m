Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 004A776740F
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 19:57:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233550AbjG1R5Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 13:57:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232003AbjG1R5Y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 13:57:24 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B28110CB
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 10:57:21 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6b9edef7993so1957479a34.2
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 10:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690567040; x=1691171840;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8AD9w3EGjCHpsHD047Eg0izZ3w3/7k6LTpxA/IH94cg=;
        b=skaQsS00LcqmtSbfPz4sYzNIaQPxnHXX5FvSmV4azG9KYYaS/6BbXqupcg2vVsUDZU
         yUavtw41AtH0xQ+dHtx10liOrWeM1NGKKUNT8RvUXnjJQ5Yj1Wj0MuOff0/IOF+JyW12
         3n12KR/Mbki1s6AVo1z4Hoe8I/mZdvOzC4gkifprziBgyyuN11EB2zmfhjKFWEu4QHg9
         721MwJlkwO6hoKS7mCHV13yiwcBloNPzRnpmeVSqlJLGyh85pXjht7KnHUXlw99Y368O
         Nx/MKKceK9cr05i2ECyZOm2opTFEHsUYcON7W3g+431PWHmzgTiCQ0oaVPvJnIRtn1IN
         beRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690567040; x=1691171840;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8AD9w3EGjCHpsHD047Eg0izZ3w3/7k6LTpxA/IH94cg=;
        b=bx8SfrfP8AaSxIQErTNlTYOTz9K3o8nK/Jt3++0xa+LE2jkQ4BPsnYKGrN584Med9v
         XpeJP91n8qLER3J6SpibwP/jtdiNlitcfv4wN+eU79tOE4vYl+Tm5ecwuXF5kzC8ybDg
         5LkQJOxCg3boxpMme39c/FTGJqKTK9QdLbh1ODyUQv7w5b/ySH/kfbHOih2gGrxAdXHQ
         qf9coBnFzPm6LQG1+JtvYIot/8WoDDNBb6Nk08zAvbeR0kcDU7bKx7emO87c4atDjbCm
         zWWYRSqsWHMa194tRFOIs5HZWGm3FhxqXSiKYMRHmy0o1JJfR4iHnEkbdwgx9t1/9TTi
         Cu6g==
X-Gm-Message-State: ABy/qLbT/qWzKmKHvAb6qN/OEcc/m3+zg9zYv8GJIMsgFg+CnG0Fj5jm
        hztLE1aQg2w7xv77SkmuxyD48elLAf0=
X-Google-Smtp-Source: APBJJlEOw8Bha5DXuNH1kv51TkUqnd6az2kgw6ocG21BIq0iy5s4uWzijMNFYupsBJtz21g6Qy/NJA==
X-Received: by 2002:a9d:4e89:0:b0:6bc:8cd2:dd9c with SMTP id v9-20020a9d4e89000000b006bc8cd2dd9cmr1594018otk.36.1690567040402;
        Fri, 28 Jul 2023 10:57:20 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id m28-20020a0568301e7c00b006b8a0c7e14asm1800721otr.55.2023.07.28.10.57.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jul 2023 10:57:19 -0700 (PDT)
Date:   Fri, 28 Jul 2023 12:57:18 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     alx@kernel.org
Subject: [PATCH 1/6] man.7: srcfix
Message-ID: <20230728175718.v25t776r3xqzxbog@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="k3ibboqn5tyzkvcr"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--k3ibboqn5tyzkvcr
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Clean up in preparation for "MR sed".

=46rom 219257753d7650332b7256653fcf80591da31887 Mon Sep 17 00:00:00 2001
=46rom: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Date: Fri, 28 Jul 2023 12:17:44 -0500
Subject: [PATCH 1/6] man.7: srcfix
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit

Drop spurious uses of *roff `\&` escape sequence.

Quoting groff_man_style(7):

    \&  Dummy character.  Insert at the beginning of an input line to
        prevent a dot or apostrophe from being interpreted as beginning
        a roff control line.  Append to an end=E2=80=90of=E2=80=90sentence =
punctuation
        sequence to keep it from being recognized as such.

Neither case applies to the uses in this page.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man7/man.7 | 70 +++++++++++++++++++++++++++---------------------------
 1 file changed, 35 insertions(+), 35 deletions(-)

diff --git a/man7/man.7 b/man7/man.7
index cf83292fa..258ce25da 100644
--- a/man7/man.7
+++ b/man7/man.7
@@ -60,7 +60,7 @@ .SS Title line
 that is, lines that start with \fB.\e"\fP) should be
 .PP
 .RS
-.B \&.TH
+.B .TH
 .I "title section date source manual"
 .RE
 .PP
@@ -76,12 +76,12 @@ .SS Title line
 command.
 .SS Sections
 Sections are started with
-.B \&.SH
+.B .SH
 followed by the heading name.
 .\" The following doesn't seem to be required (see Debian bug 411303),
 .\" If the name contains spaces and appears
 .\" on the same line as
-.\" .BR \&.SH ,
+.\" .BR .SH ,
 .\" then place the heading in double quotes.
 .PP
 The only mandatory heading is NAME, which should be the first section and
@@ -111,37 +111,37 @@ .SS Sections
 .SS Fonts
 The commands to select the type face are:
 .TP 4
-.B \&.B
+.B .B
 Bold
 .TP
-.B \&.BI
+.B .BI
 Bold alternating with italics
 (especially useful for function specifications)
 .TP
-.B \&.BR
+.B .BR
 Bold alternating with Roman
 (especially useful for referring to other
 manual pages)
 .TP
-.B \&.I
+.B .I
 Italics
 .TP
-.B \&.IB
+.B .IB
 Italics alternating with bold
 .TP
-.B \&.IR
+.B .IR
 Italics alternating with Roman
 .TP
-.B \&.RB
+.B .RB
 Roman alternating with bold
 .TP
-.B \&.RI
+.B .RI
 Roman alternating with italics
 .TP
-.B \&.SB
+.B .SB
 Small alternating with bold
 .TP
-.B \&.SM
+.B .SM
 Small (useful for acronyms)
 .PP
 Traditionally, each command can have up to six arguments, but the GNU
@@ -152,7 +152,7 @@ .SS Fonts
 For the macros that produce alternating type faces,
 the arguments will be printed next to each other without
 intervening spaces, so that the
-.B \&.BR
+.B .BR
 command can be used to specify a word in bold followed by a mark of
 punctuation in Roman.
 If no arguments are given, the command is applied to the following line
@@ -178,21 +178,21 @@ .SS Other macros and strings
 The other key macro definitions are:
 .SS Normal paragraphs
 .TP 9m
-.B \&.LP
+.B .LP
 Same as
-.B \&.PP
+.B .PP
 (begin a new paragraph).
 .TP
-.B \&.P
+.B .P
 Same as
-.B \&.PP
+.B .PP
 (begin a new paragraph).
 .TP
-.B \&.PP
+.B .PP
 Begin a new paragraph and reset prevailing indent.
 .SS Relative margin indent
 .TP 9m
-.BI \&.RS " i"
+.BI .RS " i"
 Start relative margin indent: moves the left margin
 .I i
 to the right (if
@@ -201,19 +201,19 @@ .SS Relative margin indent
 A new prevailing indent is set to 0.5 inches.
 As a result, all following paragraph(s) will be
 indented until the corresponding
-.BR \&.RE .
+.BR .RE .
 .TP
-.B \&.RE
+.B .RE
 End relative margin indent and
 restores the previous value of the prevailing indent.
 .SS Indented paragraph macros
 .TP 9m
-.BI \&.HP " i"
+.BI .HP " i"
 Begin paragraph with a hanging indent
 (the first line of the paragraph is at the left margin of
 normal paragraphs, and the rest of the paragraph's lines are indented).
 .TP
-.BI \&.IP " x i"
+.BI .IP " x i"
 Indented paragraph with optional hanging tag.
 If the tag
 .I x
@@ -224,7 +224,7 @@ .SS Indented paragraph macros
 is provided, it is hung at the left margin
 before the following indented paragraph
 (this is just like
-.B \&.TP
+.B .TP
 except the tag is included with the command instead of being on the
 following line).
 If the tag is too long, the text after the tag will be moved down to the
@@ -234,25 +234,25 @@ .SS Indented paragraph macros
 a period as the tag;
 this simplifies translation to other formats.
 .TP
-.BI \&.TP " i"
+.BI .TP " i"
 Begin paragraph with hanging tag.
 The tag is given on the next line, but
 its results are like those of the
-.B \&.IP
+.B .IP
 command.
 .SS Hypertext link macros
 .TP
-.BI \&.UR " url"
+.BI .UR " url"
 Insert a hypertext link to the URI (URL)
 .IR url ,
 with all text up to the following
-.B \&.UE
+.B .UE
 macro as the link text.
 .TP
-.B \&.UE \c
+.B .UE \c
 .RI [ trailer ]
 Terminate the link text of the preceding
-.B \&.UR
+.B .UR
 macro, with the optional
 .I trailer
 (if present, usually a closing parenthesis and/or end-of-sentence
@@ -270,20 +270,20 @@ .SS Hypertext link macros
 Heirloom Doctools Troff since 160217 (2016-02-17).
 .SS Miscellaneous macros
 .TP 9m
-.B \&.DT
+.B .DT
 Reset tabs to default tab values (every 0.5 inches);
 does not cause a break.
 .TP
-.BI \&.PD " d"
+.BI .PD " d"
 Set inter-paragraph vertical distance to d
 (if omitted, d=3D0.4v);
 does not cause a break.
 .TP
-.BI \&.SS " t"
+.BI .SS " t"
 Subheading
 .I t
 (like
-.BR \&.SH ,
+.BR .SH ,
 but used for a subsection inside a section).
 .SS Predefined strings
 The
--=20
2.30.2


--k3ibboqn5tyzkvcr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTEAXQACgkQ0Z6cfXEm
bc7DIw//R7CoDTZvfR2lh6QwXKTKWWV72XBJS1n6RY/9PPU/lmDoGsdErUwJ0xZl
cIZ0B6WtNyTOQXc9Xi34+spb5qIIA9gpvt5fa5AsVXFB1ejhiEx+b6buZxrRAQH+
tR+0lBcAfpyRfFj9S5h3ZJxhyXsO7zJ0pcD/vOX4Ot3ESXBeXDChiXkcCQfR2jV8
XL/gUeP0c/K8dpTrVbzXlyOonVfdbkMRA3HFiU1afke874LC5SOukBgKtzR3eAWT
In4qe72yTBhlasy3kVCZVEc6faj8cz/r3Jl6sfuGnSb5In4zv0xBStUm7cBYP7qF
tVMDSRdAJqfUZznNtMeKthNmLTO5ZMmyKMZRYVx/bwyFBFWxiebf/kuVMa0A5RlR
3vGrcg+Cgk3sazx3qcL/GNcnw5LpeBsBjnP3OmaG+hzvrjR94YcWkV5l7Hum4rZD
z2pKZFx/TJIBLpbT0QpZgp4ntX5kLX4V3eLQEROu4eWOMc6+R3X0qAIFzbbEPQ0X
+rx2aN+tQgqIHFNA7ruBV09fnwMiu2903nnoqiXOIAaeI0n/N8plSs9iQsLcN4dm
Ug+CL75oqVDsA6BvBfUmgyrRNghSITtIEOw40TpYaQnjj3FMpZxECAUkVZnXDJRR
r+vxpKW9tDzyWS8rvE+rLODVEU3AN2YPXaFtiil//jE1Kx1ye0w=
=gwtd
-----END PGP SIGNATURE-----

--k3ibboqn5tyzkvcr--
