Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 052DD754BE2
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 21:59:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229500AbjGOT7j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 15:59:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbjGOT7i (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 15:59:38 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5639AE5C
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 12:59:37 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3a3efee1d44so2316006b6e.3
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 12:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689451176; x=1692043176;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CU1gFY6RfN6fszoQCtwCVvlPX2Zy3FK599lrhssP8uU=;
        b=rAQq5H3wOrvuTzHikzah2i7DJsK7duVgAfvXjoqEMmi1YzlW5Iv+zppCtWx2rbpvK0
         fiM1uqRM4nFSquGjK8jcqnlrnMYHUFg+ObPNTAM0UphKjNUpURETQ/01AxeD3oXwrkz5
         1xdWOCTu5lySkYrFvUp7Vn1wwaZK9LSRd34kbdTpGTgjY+5SKr9oWyBJlohuSIn8bjDB
         mfKnIH0+zP/zf4wr+KdjeVU8uiq8bWUKpLruOwyAzzJATkR6IAieKGcLnvge9bIphSDM
         3Mgoe6XErMsdocZlPsSXoxRbdPp89m+x9qdRduXYjCAML4Ltgf57kpoW6GvyWQkwrw6l
         eSiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689451176; x=1692043176;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CU1gFY6RfN6fszoQCtwCVvlPX2Zy3FK599lrhssP8uU=;
        b=YkZjWZtkDDOUJ0lp2DJg63zaYbzzWBhe4iK9oVU/l40HIrLdtsMSceww5B7J52QYVU
         oDLRK6uM9rR9D/JrESeUqif8U2xIPZJjAGTPww8dyL4KJ8zMM/y5edPgBFwDDkkT7a1+
         NtnkvQu+2cANv5Uk4wL0yMP7nYwo4NmT543galhTKLgOMtpPpg1kZ2VfSGqUF9dnfjKH
         mjQBTTPnhAqUmY7pcl1jk73GYU3+JRC2KWGsK7pa7tIf/5dplj1onMCIpPqCTqJwjy6I
         WgCR2u72hRHRYEHAmLhhbaBiv9Fq6JaWqWMhUnwBYOuv3yunWOQn2bsnxfZU/UznX0ke
         HimQ==
X-Gm-Message-State: ABy/qLYiUp02hvDlPrWLiPCXXtvjxL9l99eRJptdyxqG85fPuTrCbMA0
        b5l96B3NbxHuIyAHa1d4xYM=
X-Google-Smtp-Source: APBJJlEsSLHRI/HA5H7XwUHiYsefymbx1YYlWIZ0z1G6I6tYNAbabou9vrhqX9UcoF2svmyWwatfzA==
X-Received: by 2002:aca:f246:0:b0:396:169f:3660 with SMTP id q67-20020acaf246000000b00396169f3660mr6126303oih.58.1689451176428;
        Sat, 15 Jul 2023 12:59:36 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id j9-20020a056808034900b0039ee0bd8a11sm5177611oie.42.2023.07.15.12.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jul 2023 12:59:35 -0700 (PDT)
Date:   Sat, 15 Jul 2023 14:59:34 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Rob Linden <rlinden@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] recv.2: msg_iovec / MSG_ERRQUEUE / -v
Message-ID: <20230715195934.yigz5fz6ulkxktaa@illithid>
References: <CAP0H_AHtBCVaj2KM+DhHAoJrM4MW+vQhMEH0UHEa_UiMUzW03g@mail.gmail.com>
 <d33c2eee-8be0-6a00-9ffe-239cc41c6242@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="xzb5n7lhzvcfab33"
Content-Disposition: inline
In-Reply-To: <d33c2eee-8be0-6a00-9ffe-239cc41c6242@kernel.org>
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED,URI_DOTEDU autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--xzb5n7lhzvcfab33
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-07-15T18:34:59+0200, Alejandro Colomar wrote:
> > From 830a1b1233eb69bd8a4a64296581d094fb0edc46 Mon Sep 17 00:00:00 2001
> > From: rokkbert <rokkbert@gmail.com>
>=20
> [...]
>=20
> > +.BR MSG_ERRQUEUE " (" recvmsg "() only; since Linux 2.2)"
>=20
> I believe it should be recvmsg()-only, since it's a compound
> adjective.  Branden, can you please confirm if I'm right?

It's a little difficult to answer this because this two-word phrase does
not exist within a sentence.

Online authorities suggest that the hyphen should be omitted in most
cases, and don't call out "only" as an exception (unlike "based").

https://www.grammarbook.com/punctuation/hyphens.asp
http://www.mit.edu/course/21/21.guide/hyphen.htm
https://grammarist.com/grammar/hyphens/

In the man page in question, what we have is a sort of heading
(typographically, a paragraph tag), with some annotations on it, not a
complete sentence.  Adding the hyphen doesn't clarify anything in this
case, so I would omit it.

I did some web searches to try to find analogous examples but I kept
running into exhibits of use from sources that I don't consider to be of
generally high reliability in the practice of standard grammar, such as
commercial advertising and job postings at the retail level.

On the broader subject of marking up these annotations, and looking at
existing Linux man-pages practice, I perceive a possible need for
further guidance in man-pages(7).  So here's a straw-man patch for your
consideration.

commit 43b89c2304552b18c9a9ea02bca05ffd94d6518c (HEAD -> master)
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Sat Jul 15 14:54:32 2023 -0500

    man-pages(7): Add attributive annotation advice.

    Prompted-by: Alejandro Colomar <alx@kernel.org>
    Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index d63f2d8f2..aa39dbfd2 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -255,6 +255,13 @@ .SS Sections within a manual page
 Including version information is especially useful to users
 who are constrained to using older kernel or C library versions
 (which is typical in embedded systems, for example).
+.IP
+When an aspect of an interface requires multiple annotations,
+such as an applicable architecture,
+data type,
+or indication of read-only status,
+include these before the version information and separate them
+with semicolons.
 .TP
 .B OPTIONS
 A description of the command-line options accepted by a

Regards,
Branden

--xzb5n7lhzvcfab33
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmSy+p4ACgkQ0Z6cfXEm
bc5IQA//VAsGB6BXsb63Ray1d6s2o0ok4mnk+2Z78htSA72VNvtDDzHBFYXg9gZW
hYgl1AfOHP31ZcAuf47GhVHHr58+Vnzal09h1p5NKaa1PjmfML+BKEELV4LtI7Qr
nlzGGmPMrjpp5vMm/DrR0QMHb3apaPqtsTY/LDq4i3LtsNfF03ZGTql7O34vHfZn
yk4cJjpLNJsjamD4q9AqJlmaCgbEg5aZrsatqZzJBscGrKJZ5MmlfKdPtVC8Ny8G
JEL6lWgBWauZRrsyq+PSsMLuu6Cmvw5v4kSTotzhd5CWW5ZyIQpsGjsCFB/P0Y2y
jBw2d6oVQvJFlWtKaqWaiJRdE4TEYsmerpx4KcTXUp5tdmB1y27HWxV8YzgQuLUX
825o7nkDfEUav/ikWQXcEr7eNzcCbnACB0UIP4jcmCJ5DeY8S+JYbixbQzL1qSoC
R/J7HL8XOfTd2Om4IPhFpvT8kPBKXZz5ScRBA6gZf1AhaX3v8YAHFXukQbQu+iX9
1n/KR6cXKvloeJvamhT+uwtwXpdR+QhnO448H+dyZwmeJT6kjsS8zHo1KnARdZcR
2AEbxUklg2PoH58vbps+qgLQ/+DiLKqA7TfdAD6E5QVYg+8WMCkmv3PSSfwxQfXU
FdZtWGHGrsyxOy4lnZ+g26IZPc7ipS+UEb7gB1wnVw9cR8QvcPk=
=g3yt
-----END PGP SIGNATURE-----

--xzb5n7lhzvcfab33--
