Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D68466DB5C6
	for <lists+linux-man@lfdr.de>; Fri,  7 Apr 2023 23:26:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229887AbjDGV0r (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 17:26:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbjDGV0q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 17:26:46 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13816BB80
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 14:26:45 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id hg25-20020a05600c539900b003f05a99a841so7835762wmb.3
        for <linux-man@vger.kernel.org>; Fri, 07 Apr 2023 14:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680902803; x=1683494803;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ncpfQPzTQuq0+x2eKP50SMSfMg/Hdtw54nrQJgoqDy0=;
        b=mA2XYukyGgoM7HdaNU/MacBx33/OEqegKD6rKMeuphI++fs5LsY8pMW5JvsQNM+jEH
         sOBGewDhKe3IH1JbH/neYiqlaxHfvQFjTLSx4DOnqnwv6Zo74OaDAdk5sY3m/S2aILfA
         g5esZ2Vl6uQPsun7Nng5/flS7UPilnMYXzABE4mYkjbzcmt7Gf3a8fvNpk6jNRJJDUM7
         t0C5+zj7V60XIw8tLyAWbT5R2J2kQAv5Mp1DqBBBYZ0kosedBFA5IhZZ/tC0rh8ybm32
         TOD7vF5KvcIVfOSdFProdVHFsEsMcCGaXZB0alSzdGEt+gwg1+RbBDkgMVafRtY57g6L
         zQfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680902803; x=1683494803;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ncpfQPzTQuq0+x2eKP50SMSfMg/Hdtw54nrQJgoqDy0=;
        b=i6dhZSd8rTLOZAI4DWuz7M2D9VIvXihk0oUQn1em26hu83QUjQxHT9rIiP6gTACeez
         L5Y3gUVE1TUh1lR4FFnrdZ3TxWUJ9wajq99MBPzm+ylznM9MzEtsOrveHOpDIgWfpWW1
         QXIY+eXrblkzdtNzNrpHiygisME94ktKQiDalpYE5HPxkMoLQttgRwaace1oq1lsu5tw
         cKcVBW4vaBAGNbXDCJMh2UQw8c5tvcRTGyJOt0SfMMGU2BeBeDFB898bu8Ocy2+6iywP
         LRVED4LpzVB4IHuo4FCA471pihNCCDmqzEzQU3/oCWT94Ys+YaydptiDVpVnv2/pcWGm
         Dtuw==
X-Gm-Message-State: AAQBX9cRTueCZ1uvbb/2GUWwMBu9HF9N+AmyOeH0n0t/ldregDru4KJC
        IG2X8t84ROykdKDi/9tLARA=
X-Google-Smtp-Source: AKy350bLiT7+cmLyBaOhLUpBWUgw4YweMsPdWpJrgWDiY/FGCFP35FuUk+dy21kcNQfp7K29vOPL+A==
X-Received: by 2002:a05:600c:2941:b0:3ed:f966:b272 with SMTP id n1-20020a05600c294100b003edf966b272mr2134989wmd.9.1680902803479;
        Fri, 07 Apr 2023 14:26:43 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id l25-20020a05600c1d1900b003f063a709dbsm10605438wms.2.2023.04.07.14.26.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 14:26:42 -0700 (PDT)
Message-ID: <c704777c-bd1b-08d7-df63-7570d69b709e@gmail.com>
Date:   Fri, 7 Apr 2023 23:26:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: reformatting man pages at SIGWINCH (was: Playground pager lsp(1))
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Eli Zaretskii <eliz@gnu.org>, dirk@gouders.net,
        linux-man@vger.kernel.org, help-texinfo@gnu.org,
        groff <groff@gnu.org>
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <20230407021822.3grfnenicwjhdive@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230407021822.3grfnenicwjhdive@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------OwQMDe5NslzxBADwiXqpzPQf"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------OwQMDe5NslzxBADwiXqpzPQf
Content-Type: multipart/mixed; boundary="------------w5gtNHON00PUXkxpaV0kkN1w";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Eli Zaretskii <eliz@gnu.org>, dirk@gouders.net,
 linux-man@vger.kernel.org, help-texinfo@gnu.org, groff <groff@gnu.org>
Message-ID: <c704777c-bd1b-08d7-df63-7570d69b709e@gmail.com>
Subject: reformatting man pages at SIGWINCH (was: Playground pager lsp(1))
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <20230407021822.3grfnenicwjhdive@illithid>
In-Reply-To: <20230407021822.3grfnenicwjhdive@illithid>

--------------w5gtNHON00PUXkxpaV0kkN1w
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 4/7/23 04:18, G. Branden Robinson wrote:
> At 2023-04-06T03:10:59+0200, Alejandro Colomar wrote:
>> Hmm, now that I think, it's probably an issue of coordinating man(1)
>> and less(1).  I sometimes wish that when I resize a window where I'm
>> reading a man page, it would reformat the page from source.
>=20
> Seems like it shouldn't be impossible to me, but what I imagine would
> require a little re=C3=ABngineering of man(1), perhaps to spawn a littl=
e
> custom program to manage zcat/nroff pipeline it constructs.  This littl=
e
> program's sole job could be to be aware of this pipeline and listen for=

> SIGWINCH; if it happens, kill the rest of the pipeline and re=C3=ABxecu=
te it.
>=20
> Maybe I thought of it this way because (I suspect) it aligns with my
> vision I've expressed elsewhere of man(1) having unfortunately
> aggregated two separate functions: librarian vs. renderer.
> Historically, of course the latter function was almost vestigial, since=

> early Unix systems had no pager program and their man pages required
> little to no preprocessing; man(1) slowly accreted into a larger thing.=

>=20
>> Of course, that might be a problem for keeping track of where I was,
>> since lines moved around.
>=20
> That seems like a harder problem to me.  You'd need a way for the pager=

> to communicate position information back to the mini-man renderer
> program I envision.  Two challenges here: (1) what part of the screen
> was the reader actually looking at?  (2) how is the pager supposed to
> know how to map any given location on the screen back to a place in the=

> unrendered source document so it can be accurately found when the
> document is rerendered?  These feel nearly intractable to me.  But mayb=
e
> I have a poor imagination.

Maybe it could be done with .SH and .SS.  The heuristics to find these
are simple.  It wouldn't be very precise, but it could try to find the
closest (only upwards) (sub)section heading.  With some luck, .TP would
also be helpful.

Cheers,
Alex


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------w5gtNHON00PUXkxpaV0kkN1w--

--------------OwQMDe5NslzxBADwiXqpzPQf
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQwiosACgkQnowa+77/
2zLBYBAAjlsiqIP4nw1UZrsAAsi1uqbG5iajLUygsd+w8cll08yySWgsimkbIdOD
BBPGFavn9Vzs0qEqTwQms0h/cOrI6OkJY1jncxS74t4eAhghjXTYHm9DMExIxsiu
Y7v3o77lZj8J1eMj4eoepe7ZtIsT0DoDnQ3dSb0UCkhWSxv8r3Xc5PMq3iM2tgJB
/FYsRR5zWnrEMAm77wsI4HnoOcp0gzBEX6DzoIW8KMThuSpvg0f+/lATPlUHPxsL
/uGdDERVpMrLz+ygatvT5U/2xRcyVcdq2UIyHk2BUDBwQTqIQuBubWr6bkG32SqD
nh3jnKuXLB02QGfb2x8w/lkwud1IDdLKCmLSI3xpp3VvbJFXs0z71nvLEoc1CG4k
xPXup8ChpUY9qNXkMZ0KQEoAWd50iLaE9126487Kpqp+ebUkEv+Hw9wfCN3HW65y
nvT9KXpeqg/ySrM3oo4L+BLFmvI2GfU/xKDjsX3Ltx0AG4ZC6YDWxgZvpgTf+rdv
in8ZyAPs0y9kr2lHDWm56d11z3tf/ucG44N4IAEwxk6J3rBA/z0cAwTB75ESy43Z
fa/pHqziqNvv11CT2ESaSRpGXY6EMyjLDNGfgz3J5ASxLr18FXCHgTKruWjsdycj
zgIad1sJBdN73az+tzRqo8haiUnLNBRUjNEFTDpZEQJZLMNOjqU=
=nvQn
-----END PGP SIGNATURE-----

--------------OwQMDe5NslzxBADwiXqpzPQf--
