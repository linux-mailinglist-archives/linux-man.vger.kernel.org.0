Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE18664BE76
	for <lists+linux-man@lfdr.de>; Tue, 13 Dec 2022 22:32:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234940AbiLMVcl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Dec 2022 16:32:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235278AbiLMVck (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Dec 2022 16:32:40 -0500
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C22A562F8
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 13:32:39 -0800 (PST)
Received: by mail-oi1-x22e.google.com with SMTP id l127so1043556oia.8
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 13:32:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=skjMNMfQcCJauynZZky9a2pMQT+Z5YrdoyMNTNgMKVk=;
        b=SXieckFyGQZnMFG+iFBoyKf296iRPyFt3R6Lnx4bXNKfRqOgYT3UkpmeiwWg1xLKJB
         L6FRxU2tKHn9AvJjh3tVcJtcdZDOodvdSWpV8YxEESjIRBUYyk6TksIbzx+2MJUtinFS
         T+Gekvei4qs/dWdv8D5iPz6pz61yZmUqvHKKJSquBjkBjeVfUcCgWn2pHv8woXyQYUqR
         8ZblVe09VTE8ItZePlbx+/hciKOTdPdrL0Z6sqiIauPudNuu5zazAbM8cmOrppUKmHYK
         1hP9qaU0AfCO7JgG6g4TCzwyZDFYgd6Zz2BNXtCwIZEFSqXE3yU9MQkyrCQ2UcOkgGjh
         UcvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=skjMNMfQcCJauynZZky9a2pMQT+Z5YrdoyMNTNgMKVk=;
        b=uCsiken7JxC/nuOd631oV8UVM+i4toZNcTsiHX3FifJnKERFe01izI6/2D5c3zHS/2
         e49UsqW4Z/LFpBjDHN41u/DiTdW27oHGUXyXUYgdtKo7DSHocf9UKssgGa1r7S8NxM29
         hrz94XlFHZovDcd4dcDyWp4euhzfd0HKVFfLhQYippCkuz1HXle0Yiyr3VANfR76htuf
         VKmKDi41O0bhFmsA7R3F4H2F+3ktA6gd6/TJTFwLYUretLG5tXelhFiyTSkJa8S06NKs
         tWRMiFtg4T+T5wGa42hguPdQQfe9j8OXnpgJStrkPmLv4ucTVQ8fiNu8PcDD9yMvBGKj
         UAIw==
X-Gm-Message-State: ANoB5plRnq030Xr9y+DEnCkq0+2PEcP/r4E+GC/eyf2XPr9YuAa6rR5u
        2cBU28DONr6g/7Ilo0AIuyniVlFGIsZtvQ==
X-Google-Smtp-Source: AA0mqf7PAVEdaUD11poxiiojb+qc6RE4W4zpk963/VitRt6N4sd6ykmKUS+lCwDzA6m9ZFpb4Bmmfw==
X-Received: by 2002:a05:6808:138c:b0:355:1de9:1765 with SMTP id c12-20020a056808138c00b003551de91765mr13419354oiw.57.1670967159060;
        Tue, 13 Dec 2022 13:32:39 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id s25-20020a0568080b1900b0035ba52d0efasm5018385oij.52.2022.12.13.13.32.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 13:32:38 -0800 (PST)
Date:   Tue, 13 Dec 2022 15:32:36 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     groff <groff@gnu.org>, Helge Kreutzmann <debian@helgefjell.de>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: C string function history (was: Italics in SS)
Message-ID: <20221213213236.x5kmzbj3pfb2sbu2@illithid>
References: <20221204090713.GA512@Debian-50-lenny-64-minimal>
 <796a4611-9030-0d3a-e3e6-5b23ca66672b@gmail.com>
 <20221213173517.fhtj52pchamx6xof@illithid>
 <1257a2f5-7d2b-66e8-fa66-9c041604995b@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="awtzj3r7cmdt4nhs"
Content-Disposition: inline
In-Reply-To: <1257a2f5-7d2b-66e8-fa66-9c041604995b@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--awtzj3r7cmdt4nhs
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2022-12-13T21:35:59+0100, Alejandro Colomar wrote:
> > 5.  Not all is joy and roses.  When you do things like embed font
> >      selection escape sequences in a heading, internally groff creates
> >      data structures called "nodes" that are not straightforwardly
> >      encodable in the device control escape sequences that are used to
> >      embed "PDFMark" data in the formatted document.  In the past this
> >      has led to what I nominate as groff's most horribly inscrutable
> >      diagnostic message.
>=20
> Does it truncate expectations to have single-volume Linux man-pages if
> I use \f?

Not at all.  You can even use it in (sub)section headings.  The nodes,
unrepresentable as characters, will be silently discarded, leaving you
with ISO Basic Latin characters in your PDF bookmarks.

> I'll pick the merry; I did enough radical stuff recently, and need to
> balance the karma.  ;).
>=20
> BTW, I'm reconsidering again releasing.  The rewritten strcpy(3) page
> is sooo necessary!  Shipping it in Bookworm would be a nice dream.
> After some discussion with Martin Sebor, I think I need to rewrite
> strlen(3) too, covering strnlen(3) in the same page.

It's worth having a quick look at just how _small_ the original string.h
header file was.  It was born in the twilight between 7th Edition Unix
(1979) and 8th Edition Research Unix (1985); because the latter took so
long to eventuate, it seems that these functions forked almost as soon
as they were born, into USG and BSD flavors.

/*	@(#)string.h	1.1	*/
extern char
	*strcpy(),
	*strncpy(),
	*strcat(),
	*strncat(),
	*strchr(),
	*strrchr(),
	*strpbrk(),
	*strtok();
extern long
	strtol();

https://minnie.tuhs.org/cgi-bin/utree.pl?file=3Dpdp11v/usr/include/string.h

By 8th Edition Research Unix, it had grown strcmp(), strncmp(),
strlen(), strspn(), and strcspn(), but dropped strtol().  I wonder if
there is a story there.

https://minnie.tuhs.org/cgi-bin/utree.pl?file=3DV8/usr/include/string.h

Here's strings.h (note the plural) from 4.2BSD (1983).

/*      string.h        4.1     83/05/26        */

/*
 * External function definitions
 * for routines described in string(3).
 */
char    *strcat();
char    *strncat();
int     strcmp();
int     strncmp();
char    *strcpy();
char    *strncpy();
int     strlen();
char    *index();
char    *rindex();

https://minnie.tuhs.org/cgi-bin/utree.pl?file=3D4.2BSD/usr/include/strings.h

> I'll invite Doug to have some review.  I'm curious about his opinion.
> He probably has some insight of the design of some of those functions
> that we don't.

According to an email of Doug's, Nils-Peter Nelson was the "originator"
of the initial batch of public C string-handling functions.

https://minnie.tuhs.org/pipermail/tuhs/2020-January/020235.html

To my surprise, I've never been able to turn up any interviews with him
as a Bell Labs veteran, inviting him to reminisce about his role in the
creation of some of the most widely used functions in all of
programming.

Given the pain that has attached to use of them over the years, and the
steadily growing amount of literature documenting just how dangerous
they can be to use, perhaps he refuses interview requests for fear of
the encounter turning into a Struggle Session.  =F0=9F=98=88

Maybe he had enough of C, and if so, I can't blame him.  What I did find
seems to be Lisp-related.

Regards,
Branden

--awtzj3r7cmdt4nhs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOY72sACgkQ0Z6cfXEm
bc7yxQ//Q0CQASMlgohm7yEcuxVj2aArAZO8jONfpw5fIEa7LbyS23dexMZ0VqVy
BmLZb5bf9/dNmpzpcTv0mvgfWylPSaewCjm7J+M2vGTKE4Q5+R2gzwETWfpvPwB1
fd06x+9JVVfvOVOYts53zcg7KyKiRRn9NFmGThp4e2sy1S4bblEOdI0JwFKY/g2G
X/+Mw/M7gh6Ruvavy11fb/o+zvSCbvQwMS7M1OMbV9P+nv28PWAgZEqRFpOLr3df
mz2OofY+UcM4zWbPRtXr03T9Wdwn9vfcuwWVNLyFr2TgJ66xGLyRBlnM7s83+DmY
mirUhdUHLJsEr2O66dvgqZ8qBSrIlTmeIMK1E2u6zB2VNGcR89CWbCz0wOwuD7nQ
koyiegtdaP2bvoFlUHFuk1hI+rskxdtvvNNoxqrR5FtvOcRH9/dJdQa2GX90TOD6
efEOc8nIp2vdFLr+8HO+kidp/avrPd72aiu10L4I/GvP7EHIWZqFxea4l4iEXpCQ
GgiEdI/BCUbUzWsVm+HnenFOyO50jgYD3wtM/duvxh0v5k/F4dma6YcpE72OIV+X
D0g2gYGjQa1RykDzblEKKBfAEn+Op3wQk3R2U5XZrWgH6vgru3TNg8nRcdOd4zb4
HOc3P+RbqsR4SINY8i+2lbimLYx54JJrNKDCYbWrwgzG5/DyV3g=
=OF4l
-----END PGP SIGNATURE-----

--awtzj3r7cmdt4nhs--
