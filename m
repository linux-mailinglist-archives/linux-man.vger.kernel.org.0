Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 185506B8AAB
	for <lists+linux-man@lfdr.de>; Tue, 14 Mar 2023 06:40:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229624AbjCNFkW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Mar 2023 01:40:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229902AbjCNFkV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 14 Mar 2023 01:40:21 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8ED5884F4D
        for <linux-man@vger.kernel.org>; Mon, 13 Mar 2023 22:39:45 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id da10so57490597edb.3
        for <linux-man@vger.kernel.org>; Mon, 13 Mar 2023 22:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678772374;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ci5/pkqKlgF5paB4g5ZAMhL8mvxwIW3GNMgm21tPT3c=;
        b=gVkn/wcbdb0UPO2J6Eqs6I6DOckeXDSx38sD7f0GjrMNMkdT0Iq9FaD8F0zM41KK0o
         P93ISBqPVOJ04oeNZkefL22cIkni4EiEQinQdHKZYl8YgBWIEtYuGNLuvZoIwGLX6i2A
         JadnUmFdXufXhDQ/208rB0V9jv6quBVyov+R5L697gCu1xjJ4PQ3GlKMyOyfVVDY5rRe
         LeDN8REfPyM8UUbb9rGDkaUVmsxjwdip6/L3eXltQ+s/F6xRHALZIlJWf1ySxo0/Hbfq
         lAZa91D9A9B2CeS8aPLgZpE/KyU+oWys6c5igCPdWrEX7lTKkMKPtjgmRmc5Jj3mCd1W
         pplQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678772374;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ci5/pkqKlgF5paB4g5ZAMhL8mvxwIW3GNMgm21tPT3c=;
        b=UqbzGJEVADJRlNNRzTcGoQoY2D37CBfzX+fwmhB15aXI6uJX9nKhLGJ3IwgmfIabR5
         6+P/NUgmo7MIsbDynD0G2Di9As4ztqw0PqtxXvZ5H336JLnA9u6ap5g6qpW/qZN503Bt
         FMLDDAS71P0LfB7Feeh7YaGA4Mzhq4nA5xo1VyrWU6k69FspWP6qU1UEI7iITVht5nG6
         gWnLqdpfVuOSQj+DuWbFzOqWnstVDM1zY3BjT/+JLy2w83phFoutzoxmPoNp37Tqrinf
         552ANXhkKF7sdg7EmienZ8CVa6skRXgKBwZr0mVnZMNHgLPVvlYDq3XwkMZKmyYsGsiF
         rGJg==
X-Gm-Message-State: AO0yUKW/msoCqVHE9AJLN6bNMhu9AQO2VU+bLP7oy3dxm90UWE3OCXBP
        m5ksvTK+wj1dmEZtTRt44nI=
X-Google-Smtp-Source: AK7set9r1I8wRYzifU3tqfzIUBE3Qc5ge7ZnZvFozmTbBMLdvZdWtTew5W0hBX5CfZjfW/j+tR/BIQ==
X-Received: by 2002:a50:fc0e:0:b0:4fb:994d:42c9 with SMTP id i14-20020a50fc0e000000b004fb994d42c9mr7595132edr.24.1678772374381;
        Mon, 13 Mar 2023 22:39:34 -0700 (PDT)
Received: from dj3ntoo (222.sub-72-110-0.myvzw.com. [72.110.0.222])
        by smtp.gmail.com with ESMTPSA id v10-20020a50a44a000000b004fd204d180dsm458863edb.64.2023.03.13.22.39.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 22:39:33 -0700 (PDT)
Date:   Tue, 14 Mar 2023 00:39:28 -0500
From:   Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Brian Inglis <Brian.Inglis@Shaw.ca>,
        Matt Jolly <Matt.Jolly@footclan.ninja>
Subject: Re: Revert "Many Pages: Remove references to C89"
Message-ID: <ZBAIkHrBm50vjSqL@dj3ntoo>
Mail-Followup-To: Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Brian Inglis <Brian.Inglis@Shaw.ca>,
        Matt Jolly <Matt.Jolly@footclan.ninja>
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com>
 <ZAq5gg+aQB5TrDQ3@dj3ntoo>
 <f5aac742-4417-fced-343d-002117d629f1@gmail.com>
 <ZA5/n8Ix+eCYnNgM@dj3ntoo>
 <591290fb-e78d-ad3a-8b25-4a860d26f775@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="Yp6d+pCYEds9F9CG"
Content-Disposition: inline
In-Reply-To: <591290fb-e78d-ad3a-8b25-4a860d26f775@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--Yp6d+pCYEds9F9CG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Mar 13, 2023 at 13:00:52 +0100, Alejandro Colomar wrote:

=2E.. snip ...

> >> <https://port70.net/~nsz/c/c89/c89-draft.txt>
> >>
> >> I suggest you download that file, and use a function like this:
> >>
> >> $ stdc89() { grep "[[:alpha:]] \**\b$1([[:alnum:]*,. ]*);" /path/to/c8=
9-draft.txt; }
> >> $ stdc89 printf
> >>          int printf(const char *format, ...);
> >>          int printf(const char *format, ...);
> >>
> >=20
> > I gave this a quick spin and it seems to work decently well. So thanks
> > for that.
>=20
> :-)
>=20
> > It's still not quite as nice as having C89 mentioned in
> > STANDARDS, and couldn't this be leveraged to fix up the inconsistencies
> > you mentioned earlier?
>=20
> Yup, you caught me.  That's what I thought when writing the email.  :p
>=20

I played around with this a bit more, and with a little work it should
be possible to query, eg, all the "str*" functions. As it's written,
it's doable with something like this (but not the most elegant):

    $ stdc89 'str[[:alnum:]]*'
    double strtod(const char *nptr, char **endptr);
    long int strtol(const char *nptr, char **endptr, int base);
    char *strcpy(char *s1, const char *s2);
    char *strcat(char *s1, const char *s2);
    int strcmp(const char *s1, const char *s2);
    ...

The duplicates and leading whitespace is a trivial change.

Looking at the site you linked to for the c89-draft.txt, there's also
C99, C11, and C2x. With yet some more work, it'd be possible to have
equivalent functions for those standards as well. They could even be
combined to create an "std-diff" tool to give, eg, new "str*" functions
introduced in C89 -> C99.

Perhaps such a tool already exists, but I thought it worth mentioning
here in case anyone reading this gets inspired to write it. I've added
it to my (ever growing) TODO list, but don't know when I might get
around to actually giving it a go.

=2E.. snip ...

> > "Usefulness" seems to be a hard sell for you, but perhaps you would
> > reconsider it based on the historical relevance of C89? It was, after
> > all, the first proper standard of the C language. If you don't want to
> > promote C89 by having it mentioned alongside the others, perhaps you'd
> > be open to the idea of adding a historical note?
>=20
> I've been considering something like that for a long time.  The
> STANDARDS section (previously known as CONFORMING TO), is a mix of a
> proper standards section, and what a HISTORY section should contain.
>=20
> It would be interesting to do a split, and inaugurate a HISTORY section.
> For that section, I would keep any references to C89, since as you say
> it's historically very relevant.  Thus, I will revert the patch, and late=
r apply some patches that move the info without discarding it.
>=20

Well this is good news, and if you ask me, an improvement in the long
run instead of just returning to the status quo.

Much appreciated :)

- Oskari

--Yp6d+pCYEds9F9CG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQfOU+JeXjo4uxN6vCp8he9GGIfEQUCZBAIiwAKCRCp8he9GGIf
EZTGAQDlyrHumzNNfw+oXMAlz+1zEVLebmv7XWXO1hmZ/kJk7QD/Qs+iD248Qf7S
6zPb3UdnRM9JQYoh4Q60IgDl4LQk0wA=
=O4Vu
-----END PGP SIGNATURE-----

--Yp6d+pCYEds9F9CG--
