Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DAC656DCBD5
	for <lists+linux-man@lfdr.de>; Mon, 10 Apr 2023 21:57:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229618AbjDJT5t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 Apr 2023 15:57:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229593AbjDJT5t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 Apr 2023 15:57:49 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10EF91BF0
        for <linux-man@vger.kernel.org>; Mon, 10 Apr 2023 12:57:48 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id he13so8362443wmb.2
        for <linux-man@vger.kernel.org>; Mon, 10 Apr 2023 12:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681156666; x=1683748666;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9V/NPI1nICdGLD6UY2MtY6rkJZprIX194fHZuRBmNtg=;
        b=LIMUw/M8HRGp9lSVndWT4wbXyIObe9ASF+uvgxHCmA4NQD5YBbJt8i5PlHwbJJgAm6
         laFyL+lwavPYP0EkFs23H8Z9LwfIBclRor490qxIqsG/mUi5LPIDncZe8ahf+p2GkD/K
         nNb/eIJv/vuD/Vq8C+Xs4Nux88hUi+YjdlBr3wUBKgdJNKFELXjcAVpFROWTezGeeNpU
         7qimpfROz187a1nK6owFxRYFjlbQM2Xu3KQLG5cKI7+MWmmsDzH6d7ylbnQ6V7/RT5kt
         n43TO9P/IpWEdO+fjJdlYbxW+9AtJW9q+zcFWKbBeRBvv2zFcvRdPIe5cdo6HrmmDCpT
         ZLNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681156666; x=1683748666;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9V/NPI1nICdGLD6UY2MtY6rkJZprIX194fHZuRBmNtg=;
        b=KeSCCdZSxSYULgyZWjyFNw5jtXaRhOFs+X85RvhnhAIkAE3n5fkJnyYP2LBEvGzYpC
         dpUGAtYHoAdw3Wpk5z+nBofGG4gBpgDlddWfxGEBvWMaEASPFa/VKsVnZLcM5Lz7tF7u
         N0w7HG38w/2qhyKjt5ij1OybCEJChf4QiZcz6JJkrcq5udLDkFkTv7wHT0YVjgWCnzvx
         XA/+x3bZS6KYnoXqq0d9gxh9f0HvIEFZKuMAZb2G46EOWdebtvgZN5sZdqtryjTqqscl
         5Uk1lj4FKCG88xRpQSZq6TMVF4WNjgzn0rMsqeU9ev28isUW5jF5aZO3/jZKzarkAAcD
         keow==
X-Gm-Message-State: AAQBX9esy+UVM3WL9FfKccvwFXtmc/F9IivW31BvwTojIJROOH+f7/pj
        YLXLescc9nRGZHNWGVs9qaI=
X-Google-Smtp-Source: AKy350ZJFtzK+JILjBbXRlMr5ivMQh855DG16g8GqBUVx8rcciXU2pI3FC1UZ6czOcysEHcmc8vKPw==
X-Received: by 2002:a1c:4b16:0:b0:3f0:7ddf:d8d8 with SMTP id y22-20020a1c4b16000000b003f07ddfd8d8mr6710428wma.18.1681156666409;
        Mon, 10 Apr 2023 12:57:46 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id k22-20020a7bc416000000b003f04f0c5a6fsm14772857wmi.26.2023.04.10.12.57.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Apr 2023 12:57:46 -0700 (PDT)
Message-ID: <aedb1698-dc6e-a4db-798a-da6e4ef89207@gmail.com>
Date:   Mon, 10 Apr 2023 21:57:33 +0200
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
 <3f802d85-99a2-a9b9-ec5f-9e3067fdfc61@gmail.com> <ghsfd7k16z.fsf@gouders.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ghsfd7k16z.fsf@gouders.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------9c9e3DHUIvZg2RJ0KD0gHNa9"
X-Spam-Status: No, score=-3.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------9c9e3DHUIvZg2RJ0KD0gHNa9
Content-Type: multipart/mixed; boundary="------------OXy60osCtQS1Hc8gEQgV3X11";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Dirk Gouders <dirk@gouders.net>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Eli Zaretskii <eliz@gnu.org>, linux-man@vger.kernel.org,
 help-texinfo@gnu.org, groff <groff@gnu.org>
Message-ID: <aedb1698-dc6e-a4db-798a-da6e4ef89207@gmail.com>
Subject: Re: reformatting man pages at SIGWINCH
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <20230407021822.3grfnenicwjhdive@illithid>
 <c704777c-bd1b-08d7-df63-7570d69b709e@gmail.com> <ghwn2nl4yn.fsf@gouders.net>
 <3f802d85-99a2-a9b9-ec5f-9e3067fdfc61@gmail.com> <ghsfd7k16z.fsf@gouders.net>
In-Reply-To: <ghsfd7k16z.fsf@gouders.net>

--------------OXy60osCtQS1Hc8gEQgV3X11
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Dirk,

On 4/10/23 21:05, Dirk Gouders wrote:
>> For something simpler, you could just count words since the start of t=
he
>> section divided by total words in the section.  That should be fast, a=
nd
>> I expect, also quite precise.  Hyphenating might work against you on
>> this, but on average it shouldn't move you too much.
>=20
> very pragmatic -- very effective, thanks for that suggestion.  I
> started with implementing a simpler version of that (no counting of all=

> words in the section):
>=20
> - Backwards count words until we reach an empty line, the section
>   header or the beginning of the document
>=20
>         Stop if it was the section header or beginning of the document
>=20
>         Continue and just count empty lines until we reach the
>         section header or the beginning of the document

Hmmmm, good idea.

$ man gcc 2>/dev/null | grep "^$" | wc -l
5462
$ man gcc 2>/dev/null | grep "^$" | wc -l
5462
$ man gcc 2>/dev/null | grep "^$" | wc -l
5464

$ man tzset 2>/dev/null | grep "^$" | wc -l
41
$ man tzset 2>/dev/null | grep "^$" | wc -l
41
$ man tzset 2>/dev/null | grep "^$" | wc -l
41

$ man bash 2>/dev/null | grep "^$" | wc -l
657
$ man bash 2>/dev/null | grep "^$" | wc -l
657
$ man bash 2>/dev/null | grep "^$" | wc -l
658


Of course there were important resizes between those invocations.=20

>=20
> This relies on the assumption that horizontal resizes don't create or
> delete emty lines and it still has the weakness that manual pages
> (e.g. bash(1)) contain large areas without empty lines but it's
> definitely better than just staying at the position as it was before.

=20
That should give you a quite precise idea of where you were.

>=20
> If it turns out to still be too weak, I could count all words between
> two empty lines and set that in relation to the words from the
> preceeding empty line.
>=20
> But perhaps, I now learn that empty lines are by no means that constant=

> value that I assume...

They seem to be constant.  Only with the shortest terminal size I can
have, that number changes, and only by one or two per entire page.

>=20
> Dirk

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------OXy60osCtQS1Hc8gEQgV3X11--

--------------9c9e3DHUIvZg2RJ0KD0gHNa9
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ0ai0ACgkQnowa+77/
2zJbQQ/+PmsN1ibHE9Cu6xZTvqGgbhWGbzu2i6RSghqrGwuoy6LhVToHCi0l5W4Q
lVmyHKY8e4P/RBnSArir0U1z4RIrCTrdPpAm5DPVFJGoQ8cZvTbuvbyEvykqaOMk
HNW+izvBQppGUnBJzjm12sqW/KOau1FMYqK8Ifa6BCBePdAPKLt2eKlZ+2MXxJDz
PmPPRvPuLg3mnVl5pB7FChSKUISz3SCUd1Si6T3lr196r99YBK41i2OhhrZpMwZQ
kIsklEOR5G5x+MejvQ5dVemW6/0uBr3JgGgfr440dlAkHoCj71rO2YPlFOVzEwjh
ka0ikn31sZVY0VBNF30L1MZBSQv6dSmS5LSmH3APRM1/yB5ztaT15OF/xF9b+lX+
ob5kA+7CyRPSttKXeG9TB9pbKvJZ1vLAOTCLmhmZbv5g9oO6IhOoNC4ihbnvt9bk
OgzT5jpwsbLV/2IwTxewjmBHjnyAOcRdmN2QTH85eosFTW8ke44SIg+CqhBjH9F0
6yHqSpzpjGdNR3IOifapEqplW69lh4fnwXUm/iUWdjDAFNXCh3i8qc0N7Jp4Qrtw
h2mTgEYsPiZfh0XFReuOgvpIUPactfprBAj9TNrDJF9lbt9Gac97zNfynBWNZ+8C
eVPu9mLzwH+bKpoGxXA/gtziU/bn7TmpSKNPtKBoArk/EDDckoI=
=EtVC
-----END PGP SIGNATURE-----

--------------9c9e3DHUIvZg2RJ0KD0gHNa9--
