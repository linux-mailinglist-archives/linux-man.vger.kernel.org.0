Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9037D648DA4
	for <lists+linux-man@lfdr.de>; Sat, 10 Dec 2022 09:57:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229628AbiLJI5O (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 10 Dec 2022 03:57:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbiLJI5N (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 10 Dec 2022 03:57:13 -0500
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 087B31F9C0
        for <linux-man@vger.kernel.org>; Sat, 10 Dec 2022 00:57:12 -0800 (PST)
Received: by mail-ot1-x336.google.com with SMTP id p24-20020a0568301d5800b0066e6dc09be5so4248060oth.8
        for <linux-man@vger.kernel.org>; Sat, 10 Dec 2022 00:57:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZUvcBjmL2L1jEqGToxmuL3k2odUhY8zGo1xUN5B/ljI=;
        b=Uz8Kfaux4iMA7yHQGeduyHqwN+0U5dT3dkC1Xp0v7YxjiJOhHJ1Rrws4lfceaso6Pq
         GTdo8smKSaJ0OfbOPsyDXuFZb8RzgSYEadJfSQfZo/A8SB91rNE0bizNUMptsp0Hruoz
         P35KDbIC6XiaQXdBVp8JiyIeBzHoeGCYB4VO6XEJtZ4unh9EXBSEuuzpCfYAAQuxSbph
         IxyAonLVx8mM48xhV4r2fIZvay4fH/l6oeb2d5fu1nwsof+BcNcJXVU1MZ1OnJ5EFKHg
         DYxv/pdc1EiVmFrTeTww6w/l/E97DEZQsjPtkat4MzMfzO2oRaQF8Zag5WzfhgVDOEbX
         xrVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZUvcBjmL2L1jEqGToxmuL3k2odUhY8zGo1xUN5B/ljI=;
        b=rMQXHAdAObUvTnK25CT+ltrY77MzoDYHSuz/AixpkMw6HqqCzgjYVbbZ5Ym/nv5O7Z
         +1tjoVfKFmUaGwvzCcNDog6PKht20cXQqGa4JWfmSrSLP54/AjUWe+El1lCSKzY+OP2g
         CLtyDLy7MDo+9N0VqdLBjgxQ26DYlJNLkHHISQF2HAdJFQH8+85rQnB3v1Cvnmz2SeA/
         Dk7Ku0kha1ORotU44pbcN4P/8H3Q67j7IMR+BJxDiQxO5QSQlE5V8RNGivD9rwCRUALz
         sbsDS6X3PJPoV6xBXEuKl5iz6pfS0zSNQEI+maYwZA6r5QoEVbD7H1iMBN/kQkTNrWMS
         bxlA==
X-Gm-Message-State: ANoB5plv67ULTW4eFHjanzH87PemDoz0ypXzYrvg3YjJqua2nzlmlT8z
        /E+JrHl4wKzjkJnIxdTFBbt561cf/LXZ5g==
X-Google-Smtp-Source: AA0mqf58s9946/pb6xQ1uuI7K2UVG75d8O0v6dFdIB8ZBe6qBSqT1K2bIW95r9k4t7spTU7/vzlDTA==
X-Received: by 2002:a05:6830:26c3:b0:670:6c81:6e55 with SMTP id m3-20020a05683026c300b006706c816e55mr4723029otu.3.1670662631269;
        Sat, 10 Dec 2022 00:57:11 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id z11-20020a9d62cb000000b0066e80774203sm1616195otk.43.2022.12.10.00.57.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Dec 2022 00:57:10 -0800 (PST)
Date:   Sat, 10 Dec 2022 02:57:08 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     groff@gnu.org
Cc:     linux-man@vger.kernel.org
Subject: Re: words (and commands) that I learnt because of Branden (was:
 preferred /proc/<pid>/xxx style?)
Message-ID: <20221210085708.f3uigsar4oczaxok@illithid>
References: <Y5MCsc/H9BV6RcST@vapier>
 <20221209210340.azlp4t6c5myz534b@illithid>
 <b2aba4a6-2a6a-74c6-97e8-3bc11018a623@gmail.com>
 <1825468.atdPhlSkOF@pip>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="vosowyyvxxonsh3w"
Content-Disposition: inline
In-Reply-To: <1825468.atdPhlSkOF@pip>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--vosowyyvxxonsh3w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2022-12-09T22:10:34+0000, Deri wrote:
> On Friday, 9 December 2022 21:09:57 GMT Alejandro Colomar wrote:
> > $ dict deriliction
> > No definitions found for "deriliction", perhaps you mean:
> > gcide:  Dereliction
> > wn:  dereliction
> > moby-thesaurus:  dereliction
> >=20
> > And yes, dereliction has a definition compatible with your use.
[...]
> If deriliction was a word I think it would be unsavoury. :-)

If nothing else can keep a person humble, one's own spelling errors
will...

Regards,
Branden

--vosowyyvxxonsh3w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOUSeQACgkQ0Z6cfXEm
bc6Fcw/+JaHxnVccppz1nMttEXW6eMkp0/zsmzOvwxNCwHl2Eku/MLE8jowXKjVD
UNVQY/ROUUfFZxwDumjHNkZv5i1/ldInaFCDfXsI0FyYl9T235cIsa03O7Ql40kE
FUweZqzqUo8dROmb5iSHKfIRtUO3mX2zHhfmLbGZse2kU+XIUPPrv4ZpTsohRwOK
BzazVnyI7RAgmmHriGl9LJCQGqDqWS+SoyWwu+L2PDrwlvlKlPSOiSuvzprimYzf
LgEk/67vcAfbZ07UqHq3mlzUjpGtbvj/GL1IhyFW14huA0PAFpK8dkQryZwOJAtu
xfLfPeV8IhI51NEeqO7k1IAtYOnvhVxeZsGVPe84mcLc3LDqe59DCTYbiBXiAhaq
6eGGkNqgURFcWB56FQC8xA2hoHiFPYf0Tyn0tM+QkFy4RjYPMkELKrulneiW9wfh
e0OkhHLkho2iCwZoJ7AI1zH6OH4nuwWsYwkz4BF3AbOgeeWPkO5gmlgCJKhcXvFh
Xa5k28nLqKiZBa6UzSECl3lkkuyCxAcHSurvxhuli7RcKq3QMmALeR176q4VGgpy
OdLb90B5k4hhOGk63MosvF8y+hXNFzfviMqXkYVzcSQdjYGKrrNtMdIdQlC6jnJx
2bTbiyTTt2ssQ3HRiLh+ST1KbdeY8UzOzcOEvsrFEpTE6876R5I=
=EeA+
-----END PGP SIGNATURE-----

--vosowyyvxxonsh3w--
