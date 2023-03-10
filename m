Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91ECA6B32CB
	for <lists+linux-man@lfdr.de>; Fri, 10 Mar 2023 01:31:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229523AbjCJAbe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Mar 2023 19:31:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229544AbjCJAbd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Mar 2023 19:31:33 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98B3EF691A
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 16:31:32 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id e13so3562393wro.10
        for <linux-man@vger.kernel.org>; Thu, 09 Mar 2023 16:31:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678408291;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZzbKhPtr1p1lWP/AoJCZZtPg/On09iASiExc/oZdezU=;
        b=OpbWLcOmAifMP5PWS9sEtj+KKd8wvSbcD+pE+UOdmFigpvM5E4D/d0M9OA53Wn88zM
         8JhlXbUk4F5Yr9bMK8kHeeJwb65evcZQttm3nswsr78m80Hchsu7ta5pxjFoimEIVX71
         xGDQON/Wlj31MVmJEC6YlKGzaEB202n7I/FhWirqSQfU4CDhGmUcKXbtsVQz1IfVABYK
         oo/LOOxq5h/YXacYAJEZOnNELcRRq3fateq9BeLqSmdt3xl+W4zkzB5L+SmCZ5AIFrix
         qmnKvOLqHQNFTsv71vyc0yeAXsvVZD+ohJG1aLq15Ab3UCKyI8kdBzpnshOI71dGHrtJ
         +G5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678408291;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZzbKhPtr1p1lWP/AoJCZZtPg/On09iASiExc/oZdezU=;
        b=CI72GU+A4THjAYcce8rNjsu6XdgQHcTLQRL8E5UOkqXheCX6ShCgNV0I2gZTjE4+Eq
         LPX4WWpKSmLtkzp2woxQS9KG6TlmPlDD3FQOlkW3NDlUqm7V7kjcAe67jUXrTmOxFjsX
         9eU7rDdT6u4j1Ez1hTrwrGRbR7AXyTcIPx/I/c0m4+s20ebb8PY3mEN0ToTtdXWl8YfX
         QP7P4NNyjK1rX25d2DExr09z4DWbL6qCJQMjJvy6XYTkHw3xSgOE3sM9h8oe+SjSCyba
         FO6C+dh0A2DpzHb5E9EZU2QEQ5+FjVX/bnTRGdmkbQN+b3ToMdXfKg6Bsn+Gp8cUyvgR
         MyBA==
X-Gm-Message-State: AO0yUKWyhtps8p4SrN/rikZep6Y8wyjHcAtnPEFobc7m56/zNmvRjqzT
        GjwKYN7Z3K6Qz9CSzpcKuMCdKXyflrA=
X-Google-Smtp-Source: AK7set9ni1+XJYH5uPzWMckwwsYMGAl9u4eSx7h5lvZZA2tak/oQhHMNGyaPR5+zfeGlvaE19R59kg==
X-Received: by 2002:a05:6000:1041:b0:2c7:604:52a1 with SMTP id c1-20020a056000104100b002c7060452a1mr15377755wrx.29.1678408290968;
        Thu, 09 Mar 2023 16:31:30 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id f18-20020adffcd2000000b002cdbb26bb48sm658729wrs.33.2023.03.09.16.31.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Mar 2023 16:31:30 -0800 (PST)
Message-ID: <cb3d6b3e-0c9b-635e-380a-c79e36ae8ede@gmail.com>
Date:   Fri, 10 Mar 2023 01:31:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v3 1/2] landlock.7: Document Landlock ABI v2 (file
 reparenting; Linux 5.19)
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc:     linux-man@vger.kernel.org, landlock@lists.linux.dev
References: <20230304171607.8301-1-gnoack3000@gmail.com>
 <20230305.d639b17946bd@gnoack.org>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230305.d639b17946bd@gnoack.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------tO0LBOzWLMNo2Gh6dKD9IMnt"
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
--------------tO0LBOzWLMNo2Gh6dKD9IMnt
Content-Type: multipart/mixed; boundary="------------4sGzgClqbjQsLYshcTH93BpN";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
 =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org, landlock@lists.linux.dev
Message-ID: <cb3d6b3e-0c9b-635e-380a-c79e36ae8ede@gmail.com>
Subject: Re: [PATCH v3 1/2] landlock.7: Document Landlock ABI v2 (file
 reparenting; Linux 5.19)
References: <20230304171607.8301-1-gnoack3000@gmail.com>
 <20230305.d639b17946bd@gnoack.org>
In-Reply-To: <20230305.d639b17946bd@gnoack.org>

--------------4sGzgClqbjQsLYshcTH93BpN
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello G=C3=BCnther!

On 3/5/23 11:24, G=C3=BCnther Noack wrote:
> +landlock mailing list (feeback welcome)
>=20
> Hello!
>=20
> On Sat, Mar 04, 2023 at 06:16:06PM +0100, G=C3=BCnther Noack wrote:
>> * Add LANDLOCK_ACCESS_FS_REFER to the code example.
>=20
> To follow up on the discussion on the man page update v1 [1] -- let me
> make a constructive proposal for a simpler code example for "best
> effort" fallback in the man page.
>=20
> I feel that implementing the full generic "best effort" fallback logic
> would complicate the example too much:
>=20
>  (a) examples that try to demonstrate too many things at once
>      tend to become confusing to the reader
>  (b) there are readers to whom the full example might not matter:
>      - readers who know what kernel their software runs on
>      - readers in the future or on cutting-edge distributions
>        who can assume that their kernel is likely to be fresh enough

I prefer if examples assume latest and greatest kernel.

Examples of how to support old kernels would be good in complete
tutorials, but over-complicate a short example.

Cheers,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------4sGzgClqbjQsLYshcTH93BpN--

--------------tO0LBOzWLMNo2Gh6dKD9IMnt
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQKeloACgkQnowa+77/
2zI/Xw//cubqRonWvPq+y0nFqjlJ5HsV25cggfurLCUvIPxeGJuoBHy23xOpuh8s
u6KOmX14mrc6uilqiU2T98xJQoEfI4QyPo4HAEPeEr8KPd9ZqjKfAv774kjJQhTJ
3OMy9O6DAID0V1+BpkmoywjA0KnNKvxv+DuBrR+AegY59sJ7cfVavH370O0vKXZP
9z0kUHBgB2iE3QrFllWr4qqm7Bx2gFAFLAbrxbZp4IPxjtbZUq0+NWs3GElGhIRf
0SsFLL5PqWR+Yp3KR7EHkqLA7dbLoK3sPtnBEge1PLSj/SRVOXYGpCzdfTGAX7ll
/5dGllLjcp16xnjvHJvbke8vsb84y17WP2K24qq7KbMOOQ2qGI8PoAdRbpgi5xzr
qm3J1tK0wSy0I1EE1Bhttebv9Dke3lgtJZ0b/1EUv8gsweXaKUB0YtiQLMYPFDoG
Q5yFH4gmJRZk0Q3zoOlcJGztC5PjG2iKm8wiX37BjsCYw+AFJrgspuka0fqyDALR
jJ3mfqScK4if1JY9vfajFFgiuyG7kxbYQk+bi1P33c+OACeaLXmIlyoa6am/08j9
iYAfUzgoSaVXYgNtmXZHvsrLvWwGWuw641JbgablXuO3Vfb+dLjr1rhiVM8InwLk
vdRT3cKC1Esw2/37UIGWxMLBvc7A0aDUDJoJNeuoFn1oPE2ZDZk=
=5JSx
-----END PGP SIGNATURE-----

--------------tO0LBOzWLMNo2Gh6dKD9IMnt--
