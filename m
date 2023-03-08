Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43B4E6B13A6
	for <lists+linux-man@lfdr.de>; Wed,  8 Mar 2023 22:20:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229735AbjCHVUF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Mar 2023 16:20:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbjCHVUE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Mar 2023 16:20:04 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1F7987D9B
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 13:20:00 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id k37so10677967wms.0
        for <linux-man@vger.kernel.org>; Wed, 08 Mar 2023 13:20:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678310399;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wuzGY+s4WDu5jqkZOCLh81dFsPqoGUxa4rdQwJlDe1E=;
        b=bWYCFGHFhc0nTvjQ/58vpFkQMS7ya8KBaA3X84gK7W7rRMUNpMAPicxIAG5k7DNMIR
         o66SkXPzQP5JBgaDLcFRnRgresVgBQdB9nqtXxQ0Mz/DHJzAGqwiZxkWhip/p6RdDJY6
         T7+gDPOWhM8UI7Ts5QL8CQvUqfcVw71YPqpZsE6Tso7fMyroyiAgEAgqmkTLPWkSLr8p
         j58y/WUSqmIX3e9JAoHl40Bn7yn9ygHpmP68gH4XzLj4rt/FfZOQGXol/wxcV0fAjV7L
         NMgYf7lWQTv2rH/NfUVDGceSuKTzt5b2urumckImgvz6fDVj5iBAprIS4ufXS2zmnUr3
         fx7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678310399;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wuzGY+s4WDu5jqkZOCLh81dFsPqoGUxa4rdQwJlDe1E=;
        b=rUQvHFmh3Y7ycNJ1VxdZ2x0rsx9vnOG7IILR6CPxAU+4hYIo8V/kjjNGuPM2QgU8tQ
         htNq8Y1zavR63+p32ANoHXOq+416hKkegWU6VJG60Zm6YpFLzY/QJZrHg2OiSF4YX5Sa
         gL9kKNkKo8zW8P5TMvvABBXjPdYyh+wRJb1THcJMlt5IXtLZ8aDqvMRcjmtrj+JdvDGh
         ApPtbaX8P3JCfFUxs95WojhKGcCxM1PArgK47xbU7nalBcjBmCo7t44AgbWj7xXmbrQF
         SP0ynDZQPaGSnTNeH2l8bzQRp/jCt875NjSxeiv2dWaZez2lmfdAl1EdL6m5P1MkDGiS
         zomA==
X-Gm-Message-State: AO0yUKUIb6g2y/UKBQz4q/9+PgP7/5e8wUNIgoGDElLv1twt1aa0ZlSZ
        22VRLnK8kTcgWLXiNIYu4kZtcv1lbw0=
X-Google-Smtp-Source: AK7set9wNP8Upz2lpwjdLTSW4a+nxXlx1F+LqJq4uR24X2XfYKDrgpj21fW8ba/G/aXlz71VuAhk7g==
X-Received: by 2002:a05:600c:1c95:b0:3ea:f873:13aa with SMTP id k21-20020a05600c1c9500b003eaf87313aamr18478178wms.40.1678310399362;
        Wed, 08 Mar 2023 13:19:59 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id x21-20020a1c7c15000000b003e1f2e43a1csm499256wmc.48.2023.03.08.13.19.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 13:19:58 -0800 (PST)
Message-ID: <11a95096-6b54-5e48-e6ff-adeafebddc64@gmail.com>
Date:   Wed, 8 Mar 2023 22:19:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] strftime.3: document how %z and %Z are calculated
Content-Language: en-US
To:     Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org
References: <20230308205344.745801-1-eggert@cs.ucla.edu>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230308205344.745801-1-eggert@cs.ucla.edu>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------P4gGUEELe3qUCu6kn9ws2lOS"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------P4gGUEELe3qUCu6kn9ws2lOS
Content-Type: multipart/mixed; boundary="------------c7YzHybqNoq048vWgshgrwHN";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org
Message-ID: <11a95096-6b54-5e48-e6ff-adeafebddc64@gmail.com>
Subject: Re: [PATCH] strftime.3: document how %z and %Z are calculated
References: <20230308205344.745801-1-eggert@cs.ucla.edu>
In-Reply-To: <20230308205344.745801-1-eggert@cs.ucla.edu>

--------------c7YzHybqNoq048vWgshgrwHN
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Paul,

Thanks for resending inline!  :)

Another thing: please CC or TO me; otherwise I might miss the email.
See the ./CONTRIBUTING file in the repo for more details if necessary.


On 3/8/23 21:53, Paul Eggert wrote:

Would you please add some links in the commit message
to the discussion you had about this?

> ---
>  man3/strftime.3 | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/man3/strftime.3 b/man3/strftime.3
> index 57b2a38aa..90248d0b4 100644
> --- a/man3/strftime.3
> +++ b/man3/strftime.3
> @@ -417,6 +417,8 @@ The
>  or
>  .I \-hhmm
>  numeric timezone (that is, the hour and minute offset from UTC). (SU)

My question was about this "(SU)" marker.  Should we move it to after
the new sentence maybe?  (Same for "(TZ)" below.)

Cheers,

Alex

> +(Calculated from
> +.IR tm_gmtoff .)
>  .TP
>  .B %Z
>  The timezone name or abbreviation.
> @@ -427,6 +429,8 @@ The timezone name or abbreviation.
>  The date and time in
>  .BR date (1)
>  format. (TZ)
> +(Calculated from
> +.IR tm_zone .)
>  (Not supported in glibc2.)
>  .TP
>  .B %%

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------c7YzHybqNoq048vWgshgrwHN--

--------------P4gGUEELe3qUCu6kn9ws2lOS
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQI+/cACgkQnowa+77/
2zIMvQ/8Ck9ov538Vwj81Mn5MMA3v5PuQUGvSt1czZbQJBoextBZTQJB5jx/X95f
240QrBtjM+/4AXr2Uuaf1BeUFLvM5sQI3VOlhRZsH8TyhIFkLb+i1YTWi+SJrvaE
tUQC0IFcGhEqmTO+KE2hKvl4lEvaYAgtMqPDNS16PiGk4FZC+n34qg53yNvLL15h
OlRfNtnDG1p+9E1BeJES/VbmSaUolG1Tj5PwMqpdGnAd/4pTRHK67erwaUjrLdLv
8vt0m6nfB7f3XMbq0wG/JdVVuQolOXgLddr8/oNhj4hrMq/SnMkz6MAGDsupEJnM
CfiWVECbW9SsOl6CNF5KODP0ddpP39HcIM6S1LkcLDVdUqp3Savwi2GMtq+UGz5Y
HikAXVlaxV/oJUxtuJB3VfURbpQkF/FsSemjwFrgAsS6IIcq7ulT8XQIR80Bg5wt
Lv2ZimzTPcMM7B9JNl33Ysu+rZpL9vMsf7Rf6gTqmgyUoFxfCo8R+MiEmE+aTUsz
y1OQ4aTfewHgBE4DX1uULoheg6LjYAhOMFfULNpRtHYxn4w+SNkTlDV403JKKsqo
KrbeOW60GZD5pH9mgM/BYrXphr5qhHTmM3O9AkjhRv5zbZl/e3YvN9eiztOctzse
2c6c0n4S32YLEcDCATdjHq0O5+DQB5ZhNrOxdhDVoW0A+2zRs0s=
=91fM
-----END PGP SIGNATURE-----

--------------P4gGUEELe3qUCu6kn9ws2lOS--
