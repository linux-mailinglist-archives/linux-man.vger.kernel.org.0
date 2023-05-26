Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E444712616
	for <lists+linux-man@lfdr.de>; Fri, 26 May 2023 13:58:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231440AbjEZL6X (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 May 2023 07:58:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229610AbjEZL6W (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 May 2023 07:58:22 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E380995
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 04:58:20 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-3f50020e0f8so12150255e9.0
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 04:58:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685102299; x=1687694299;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9NoJW6G6hOTgrOy2B7DuOzD9NsqDXu40JMiMmBFh6Y0=;
        b=bBqputc1imVJVLy3+kDaynB38EXwjnU2avKAl6Pi3fzMQYsLSujjBRfgB7ndPrSBY1
         ZT7EoWoovdfw8jZCFrOCkhIJuL4Qz3Y5boXfbJb2jJQ7k6WVN1kSvJOZRbAmBAM9GuF7
         2i58cXP015wntSQT8OaXbt2prfL+8sNzBe42SPICilOTCanE0DZMNLIp+LpbOc+idowQ
         qhoja0dC+53K3POXxmgtcGJW+Ec/WYbr946r+cb+6syzVSLFC8xfOAusfc3wRW8ygGzy
         2SjhwoydgyrO7IeQVvUA/PlWKPpc1BxR/+MzEsuTXSSPz5y8dGO9Gd0uGN9fg8ECt/SH
         38fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685102299; x=1687694299;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9NoJW6G6hOTgrOy2B7DuOzD9NsqDXu40JMiMmBFh6Y0=;
        b=Sfxf/VKQ3LeLebWinUtuDkC3GhsSq5kUM9zJbqyzgRvw1Q5W69D24AZbeg78ht28Hs
         L1j61vH+ix4cujS45uU9ZCOzmZXAS402wvmVhuvNAQuNGefv69fiL1XnWNWPwyHv0dSa
         FFA8C8IbZEAyI46RRpbDk0sQMA54zUi5Rx690VbO8FUYQl1OmypGP0pjz7W/NR/4LbFY
         w2GsRmuGfU/9UDbZm9MtUM4riMxU6WdR+0OaSHueeMKWjo9ACIlFU0ai8N1eEqnQTT3w
         wZwbRRDhGfM7dmgM1Gyf4WKpkP85Q1ZZu1J0Ro2Ln07uZLjhTkH8aOqvCn2rMMs63rbr
         QogQ==
X-Gm-Message-State: AC+VfDznN7uCbKeSnvuEQiDdDr/ZASpDINPs4iFdMjQANXmTp4aqoUE3
        X7ZBBN8dXmuSeizrLVdjmegfGWVSNFw=
X-Google-Smtp-Source: ACHHUZ7EQ/2iAqvy+MAO0NE92JWOKQ4MSDV1v+X4OXWv3IQiKgKnpqD5+3jxAqOT4t5UvJ37ZlLB4w==
X-Received: by 2002:a05:600c:1e8d:b0:3f1:80d0:906b with SMTP id be13-20020a05600c1e8d00b003f180d0906bmr4035135wmb.4.1685102299040;
        Fri, 26 May 2023 04:58:19 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id 10-20020a05600c228a00b003f42461ac75sm8582153wmf.12.2023.05.26.04.58.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 May 2023 04:58:18 -0700 (PDT)
Message-ID: <fdb702c8-1411-f143-8932-c18722511b19@gmail.com>
Date:   Fri, 26 May 2023 13:58:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: SPDX license review requests
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alan Cox <alan@lxorguk.ukuu.org.uk>,
        Andi Kleen <ak@linux.intel.com>,
        Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
        Adam Dobes <adobes@redhat.com>
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
In-Reply-To: <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------oSjgiAdVhDKuX8LjF8W401F0"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------oSjgiAdVhDKuX8LjF8W401F0
Content-Type: multipart/mixed; boundary="------------ZisU7L1VjlELIQYuiO7p1yT0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org
Cc: Brian Inglis <Brian.Inglis@Shaw.ca>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>, Alan Cox
 <alan@lxorguk.ukuu.org.uk>, Andi Kleen <ak@linux.intel.com>,
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
 Adam Dobes <adobes@redhat.com>
Message-ID: <fdb702c8-1411-f143-8932-c18722511b19@gmail.com>
Subject: Re: SPDX license review requests
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
In-Reply-To: <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>

--------------ZisU7L1VjlELIQYuiO7p1yT0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 5/26/23 00:56, Alejandro Colomar wrote:
[...]

> Also, Linux-man-pages-copyleft seems to contain a sentence that
> makes it differ from VERBATIM_PROF:
>=20
> """
>   The author(s) may
> not have taken the same level of care in the production of this
> manual, which is licensed free of charge, as they might when working
> professionally.
> """
>=20
> I believe the quality of non-professional code and manuals to be
> at least as high as the professional one.  We have more freedom to
> reject crap.  I propose also deprecating Linux-man-pages-copyleft
> and moving to VERBATIM_PROF as the single surviving license from
> all four variants.

I reconsidered.  The non-pro version does actually reflect reality,
as it doesn't say the level of care is less, but just different.
That can --and more often than not does-- mean higher level of care.

So, I prefer Linux-man-pages-copyleft over VERBATIM_PROF.

<https://github.com/spdx/license-list-XML/issues/1959#issuecomment-156425=
5785>

>=20
> We're also discussing the names that each of these four should be
> given in SPDX.
>=20
>=20
> I suggest (in order of appearance in this email):
>=20
> -  Linux-man-pages-copyleft to be renamed to the following, and
>    mark it as a deprecated license.
>=20
> 	Linux-man-pages-copyleft-nopro
> 	Linux man-pages Copyleft (non-professional)

I drop my suggestion of renaming this one (and of deprecating it).

>=20
> -  VERBATIM_PROF to be SPDX'd as:
>=20
> 	Linux-man-pages-copyleft-qual
> 	Linux man-pages Copyleft (high quality)
>=20
> -  VERBATIM_TWO_PARA to be SPDX'd as:
>=20
> 	Linux-man-pages-copyleft-notrans
> 	Linux man-pages Copyleft (no translations)
>=20
> -  VERBATIM_ONE_PARA to be SPDX'd as:
>=20
> 	Linux-man-pages-copyleft-verbatim
> 	Linux man-pages Copyleft (verbatim)
>=20
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------ZisU7L1VjlELIQYuiO7p1yT0--

--------------oSjgiAdVhDKuX8LjF8W401F0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRwntIACgkQnowa+77/
2zK7Xg//WbR8BjNFMJQGogdpGe66l6tub219LeajI+/yx7DJllnW7ugKf9mwNXit
uLSUFLszamDXvxUWb7hMqjRPWzmFKN5YXp2BkFCVV/tg2UqQwadKf3MzwnnxkgvO
XODh+2mzcNaNwD8sbp+XodF+Pably+pwOje6VIlWplnDiZliKRLSMx3PtFRh5/00
FWEhhAUntxUO/6GeSrXRzYlng9yTqEDEv/F7VJ9CqpSgQCgiRUfOSg/mOnD+L+Q7
CP7sh1qEV6SrD4h8Fl9vxx0AeVHwHzrO3TYJh+dIdKkt3gpvYsrGmYafh3zdiSXr
6q1Ug71xWpt90QDKFISfoqaltjvBmPUgJ3z64pfcNawQjxg9/B3JPJELseidPzhw
i7gt7jOfluD+9deTHaVLd3eYsB+j/3Dh9plep39WczVKoT9xXVuciPsN7WKe2b4Z
ldTS/1OERzQPWv3qGfSGNzX3dGyyuVnWFp+kQn26Md9hgn+cn3XN4uEtw2UNRwie
5mtJErcMynA4+F1nnw6rLyZgaIP8CQl1UsFu+yn0DHxv4tMW9H4zccFKTD7MXXoc
vq9PjEzN/X0JqbBKk5JA83I0LL5LoqS2912W3KCb3T9uzoaT7BXQz0Bcvh2F6vPb
XKqPXOBOx4SQjQD9fGy70UDdIoEykF3WjGcuI3cjNHEksTrPzEg=
=0AsR
-----END PGP SIGNATURE-----

--------------oSjgiAdVhDKuX8LjF8W401F0--
