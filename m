Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F9206DB659
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 00:17:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229617AbjDGWRD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 18:17:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229482AbjDGWRD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 18:17:03 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2FCD93C8
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 15:17:01 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id gw11-20020a05600c850b00b003f07d305b32so1047203wmb.4
        for <linux-man@vger.kernel.org>; Fri, 07 Apr 2023 15:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680905820; x=1683497820;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/moraAFNPVlp7to3MG/lkBls60Hf+ktTFgFYvolKFos=;
        b=EZFGHrkvYdVSCyZ6Bo5ChJeJIRy8SnqGtauWQz0O7/4JwdxyXMHK0ZvuNu/U2FQC+A
         D+Ryrn3mmvWauinvqxONE+4kSYKSb94kmXAhsvN14jYhN1JkOq7KVMJsU+0rJt0W9yOJ
         NJiGx9P6+7ZpMuQbWuqYsC+tVH/eiTuVqNl+2FeWruQTREhHSM3/HFvt3uUZXijMtYpR
         aPguhNJefDOJAVJAnVyN0JcCA6NGHiXZRzpsSvDsdHAPAAEAfA7x1cxwUJYnUmho16gz
         o8CVa75mGPVuBGKJk1TWsgYIa4TOQ3/ghNKB83j84UQ/ThpoTwDgdK/8MOkrp90hhKRi
         Al/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680905820; x=1683497820;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/moraAFNPVlp7to3MG/lkBls60Hf+ktTFgFYvolKFos=;
        b=vz/fOS97y8yfGxOJ9mq2S3bfrDlH0czSuCZgluEmZPv9lQm+AWF2gKJCFD2v36IMIF
         YEZmaBAVwQgd+IGzdoqvwE1rEjtGmHtmXid/LUAS5LGqfjIymyhf8it7YNYPXxeScvBa
         2LyvUUyUFgFgHr0RVPoZ+W9QmEoR7nutKGPYY7i6D3QgKNbg3c69+lb93Z2gy6sSS7Mi
         inLYhLQYaCZNWHHQedc6bqyBlb1v5CRr1NTYxyRYVArnaT1V4V62X5xCiNyous2J3byv
         4bCx4oM+VoY8DeSpgn0iqcHAG95yzLd90d4XxDSzdxxAMlcktOIV38yCiLSB94rGuxfn
         g2Lg==
X-Gm-Message-State: AAQBX9f0Vo+Q/puLRa/nJU5ZPqzvHX+sVMF/f1ZQT0NVoLq8YO9smgG1
        B0nKjnYHbvPi1XHRFtRRUyo=
X-Google-Smtp-Source: AKy350bMO5eJEuFsevWf+zBXriPuiJapcHL+vCBLgGaKk2cnq98AuD95e4KpHGC6a9qmi7jT9YH+Ug==
X-Received: by 2002:a7b:c389:0:b0:3ed:346d:452f with SMTP id s9-20020a7bc389000000b003ed346d452fmr2369723wmj.26.1680905820116;
        Fri, 07 Apr 2023 15:17:00 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id n23-20020a7bcbd7000000b003e20cf0408esm5917963wmi.40.2023.04.07.15.16.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 15:16:59 -0700 (PDT)
Message-ID: <3f802d85-99a2-a9b9-ec5f-9e3067fdfc61@gmail.com>
Date:   Sat, 8 Apr 2023 00:16:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: reformatting man pages at SIGWINCH
Content-Language: en-US
To:     Dirk Gouders <dirk@gouders.net>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Eli Zaretskii <eliz@gnu.org>, linux-man@vger.kernel.org,
        help-texinfo@gnu.org, groff <groff@gnu.org>
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <20230407021822.3grfnenicwjhdive@illithid>
 <c704777c-bd1b-08d7-df63-7570d69b709e@gmail.com> <ghwn2nl4yn.fsf@gouders.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ghwn2nl4yn.fsf@gouders.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------yyxk0kJ40Fm5Nu1tKdO5dfjZ"
X-Spam-Status: No, score=-2.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------yyxk0kJ40Fm5Nu1tKdO5dfjZ
Content-Type: multipart/mixed; boundary="------------Crs1Vjv40GhP1Sh6LPi0sc1d";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Dirk Gouders <dirk@gouders.net>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Eli Zaretskii <eliz@gnu.org>, linux-man@vger.kernel.org,
 help-texinfo@gnu.org, groff <groff@gnu.org>
Message-ID: <3f802d85-99a2-a9b9-ec5f-9e3067fdfc61@gmail.com>
Subject: Re: reformatting man pages at SIGWINCH
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <20230407021822.3grfnenicwjhdive@illithid>
 <c704777c-bd1b-08d7-df63-7570d69b709e@gmail.com> <ghwn2nl4yn.fsf@gouders.net>
In-Reply-To: <ghwn2nl4yn.fsf@gouders.net>

--------------Crs1Vjv40GhP1Sh6LPi0sc1d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Dirk,

On 4/8/23 00:09, Dirk Gouders wrote:
>> Maybe it could be done with .SH and .SS.  The heuristics to find these=

>> are simple.  It wouldn't be very precise, but it could try to find the=

>> closest (only upwards) (sub)section heading.  With some luck, .TP woul=
d
>> also be helpful.
>=20
> Yes, that should give nice results.  But for manual pages like git(1)
> with large areas between those this becomes difficult, again.
>=20
> Today, I experimented with one more heuristics, adjusting the current
> position according to the proportional change of avg. line size and als=
o
> change of window dimension (horizontal) but all of those didn't get bet=
ter
> results than what I currently implemented (stay at the position).
>=20
> Out of curiosity, I checked how firefox behaves on horizontal resizes
> and comparing to some of those results, lsp is not the worst on earth ;=
-)
>=20
> If time allows, I want to see if working with Levenshtein distances
> could get exact results.  Perhaps this will turn out to be too expensiv=
e
> but maybe the fact that the area to be checked is limited helps...

For something simpler, you could just count words since the start of the
section divided by total words in the section.  That should be fast, and
I expect, also quite precise.  Hyphenating might work against you on
this, but on average it shouldn't move you too much.

Cheers,
Alex

>=20
> Regards,
>=20
> Dirk

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Crs1Vjv40GhP1Sh6LPi0sc1d--

--------------yyxk0kJ40Fm5Nu1tKdO5dfjZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQwllQACgkQnowa+77/
2zL4/w//W6m6Z8D/Wu+Mo7Bct6UV6Wax0snG/PirnyEigWfeMuEmDPaHAeq1famr
7mvVrMEqUYGcF+GpPSatNtWeIIAsUoKSUkmM2e2RRF35/iPxgDJOTth7cohjKk8k
AiQF/ykCTtSd845iZYTYmakliREGZ0hsKD21sa8nCUf5zOuqX4umMgDt1vUR0xGS
heGj/CJmj75NXN4JJbhZ17h/2arJegUQbpsmPUE0Y0DHcDXbd/4au0AUS+k6QInx
wtDYltEqbRMPC6P+dMr1myvCBV1gZsGPL93nGjLpaEWZKSvdQd/lcysYjsiwQtle
hChARk+hCXcGi8Aoa+IQiSe0q1jb2Jk3nQDi7IrO0b8lAFFYrkNhShoVB7BEXleN
71huHXED5uU620LzPY3tooiMv2YilNkOYaEqc52IFqU4DVmEWju5gclhtekJmHl8
0EHC1zLfghflXjOp+ZfN0KlJ6ZfIjhC/Ltpcke9EhmkxqSyWLPYSq7dhvy0F55Zj
twUjpRqBooWRFt9z/p4sCcGPt+lMqAFsTtH7582yncXLQgEVr+OeE0eIX68kYBYd
9QBCTkt5kWSlx5WQ/yji6lDLapsJoUlIVS876mklWfeCmF8GrGj7mV6GPsMbN3dI
KJeVGd3ZUK6bfSkvSwrF46fO0L95Mfwke3RDH7sfReleJEfNN7o=
=JGyH
-----END PGP SIGNATURE-----

--------------yyxk0kJ40Fm5Nu1tKdO5dfjZ--
