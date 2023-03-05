Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C1C96AB1B5
	for <lists+linux-man@lfdr.de>; Sun,  5 Mar 2023 19:33:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229713AbjCESdj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Mar 2023 13:33:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229714AbjCESdj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Mar 2023 13:33:39 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4224211E90
        for <linux-man@vger.kernel.org>; Sun,  5 Mar 2023 10:33:36 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id t15so6740816wrz.7
        for <linux-man@vger.kernel.org>; Sun, 05 Mar 2023 10:33:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xUbzjGdraBqczPmzzfrWIi7ZTNqG6NMOtYUJsqN+1VA=;
        b=Xce/FrEQIASpPBOSAuwfYbtI32755Si4vQEflROOatG6ziRcHdqPinAwIB+tseZuG0
         UVVzWw6Q1clJ9jLJpTkGIVnVphhCmuh5TFYs74EgeRDgbj0NrjjpZDxP/R2RUZzhd4Pv
         NcBKlnoznHasI9zdpgY8KNzBc2jpNM1WqCGIdS7f4VOpTTJ934ospaN/na3DHug5kFoW
         3HgU0G40cOkcPZm8nhCVTsfb1OQa5uxisDuyXvMHjsgZdMpy+DNcQ+sDNBMG4rVoSYXZ
         vjzGtmugPiz3l0XDECBlG4Bc7eDw/xV5MvQqCdLgt8TkVTS2xLNSW/xZ7ePdCsjHFeEh
         b9vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xUbzjGdraBqczPmzzfrWIi7ZTNqG6NMOtYUJsqN+1VA=;
        b=AHNV49+XQd8Uqx1l7fEjN5w8HYf7eKgs1bFBqvW0rTailVQ7/ZClqjRY6r3x+ni9UR
         btv9yhYakmb7t9FroW+t8mXBeO0vtGZ1gP46coI6xZw7agu9DgIrnVBxuewkYaa/PAf2
         fLI4qvdUDq/NzUtnaqBJl7LaNRR/LX13ovHtwoQM+cY51g90ZNIoljJVtemcSTzK5Chn
         NNOOflPDyHFzOCAwwHjvmKRQyCrpfHLwa+Db12i+1h+3dtm0WYrxXwkitdJfK88zKSaG
         BWGXVg03ze0t/+S6yL+UgydR2o+CddWCuTSL8roMx9UGYhe7LTPAokQ6Z2C4A75IxZss
         MGpQ==
X-Gm-Message-State: AO0yUKWTjpK82wcsdFcnloTmMF++wxQC97tKoo+zC48CmF7FXwmkyWzf
        8mFwjrq+uDhhzYuxr4BgosSEayxbEHk=
X-Google-Smtp-Source: AK7set/+UJrTzGYK/cdhhU5/smx4jrO79/tH/y4FwTOXV3D2RFTx7PPeULswffe4So6OmO7kPv8hTg==
X-Received: by 2002:adf:ee48:0:b0:2c9:b9bf:e21a with SMTP id w8-20020adfee48000000b002c9b9bfe21amr8499850wro.2.1678041214488;
        Sun, 05 Mar 2023 10:33:34 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id w7-20020a05600c474700b003e204fdb160sm12753582wmo.3.2023.03.05.10.33.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Mar 2023 10:33:34 -0800 (PST)
Message-ID: <c03f1c96-2e86-df36-0ecc-474579fc4023@gmail.com>
Date:   Sun, 5 Mar 2023 19:33:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [patch] recv.2: Mention SOCK_SEQPACKET in MSG_TRUNC flag
 description
Content-Language: en-US
To:     Vladislav Ivanishin <vlad@ispras.ru>
Cc:     linux-man@vger.kernel.org, Eric Dumazet <eric.dumazet@gmail.com>,
        Piergiorgio Beruto <piergiorgio.beruto@gmail.com>,
        "David S. Miller" <davem@davemloft.net>
References: <87v8n03coa.fsf@ispras.ru>
 <00e2987e-0f37-b572-256c-163ded066fa0@gmail.com> <87cz6fqa0z.fsf@ispras.ru>
 <e4231c01-73f0-7846-f462-f3921a811ec1@gmail.com> <877cwmuntk.fsf@ispras.ru>
 <87ilfwgamh.fsf@ispras.ru> <87v8jfcbua.fsf@ispras.ru>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <87v8jfcbua.fsf@ispras.ru>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------oPulbcFe7j8NWrLgXyCg90aB"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------oPulbcFe7j8NWrLgXyCg90aB
Content-Type: multipart/mixed; boundary="------------tfkmM51j8ZGNp0lDSPv3PHFK";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Vladislav Ivanishin <vlad@ispras.ru>
Cc: linux-man@vger.kernel.org, Eric Dumazet <eric.dumazet@gmail.com>,
 Piergiorgio Beruto <piergiorgio.beruto@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Message-ID: <c03f1c96-2e86-df36-0ecc-474579fc4023@gmail.com>
Subject: Re: [patch] recv.2: Mention SOCK_SEQPACKET in MSG_TRUNC flag
 description
References: <87v8n03coa.fsf@ispras.ru>
 <00e2987e-0f37-b572-256c-163ded066fa0@gmail.com> <87cz6fqa0z.fsf@ispras.ru>
 <e4231c01-73f0-7846-f462-f3921a811ec1@gmail.com> <877cwmuntk.fsf@ispras.ru>
 <87ilfwgamh.fsf@ispras.ru> <87v8jfcbua.fsf@ispras.ru>
In-Reply-To: <87v8jfcbua.fsf@ispras.ru>

--------------tfkmM51j8ZGNp0lDSPv3PHFK
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Vlad,

On 3/5/23 19:06, Vladislav Ivanishin wrote:
> Ping (there haven't been any objections to the current version of the
> patch at https://lore.kernel.org/linux-man/87cz6fqa0z.fsf@ispras.ru/).
>=20
> On Mon, Feb 20 2023, Vladislav Ivanishin <vlad@ispras.ru> wrote:
>> Hi Alex; ping!
Thanks for both pings, and sorry for the delay :)

Patch applied.

Cheers,

Alex

>>
>> On Mon, Feb 13 2023, Vladislav Ivanishin <vlad@ispras.ru> wrote:
>>> On Sun, Feb 12 2023, Alejandro Colomar <alx.manpages@gmail.com> wrote=
:
>>>> Thanks!  I CCd those involved in the referred commit.  I'll give the=
m
>>>> a week or so to have a look.
>>>
>>> Great, thank you!
>>>
>>>> Could you please ping me again in a week or so?
>>>
>>> No problem, will do.
--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------tfkmM51j8ZGNp0lDSPv3PHFK--

--------------oPulbcFe7j8NWrLgXyCg90aB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQE4G8ACgkQnowa+77/
2zJVrxAAqUZsL11ViANZ5/vTD2XrlDzDfsfLQHMGQ+DjfTGC1Q6l/6+eZyMPMJy5
y87PFKMPB3fgMbayDYCfBgnznZxBy3b37ibhZbdX+JK/tranKVycUoreJIVIjtlF
Ul30adrxkVuFTuajMApdeCLP89Dp6NE4pvQDL6hMSbAoN78CAtJArdxZnfOX2Vdn
hMSRptbItjEO5G4xwbgjLQUXHyhvO5H54GwDDy9IDqHKrXP0LCejOvxZ6DKxhXQt
JOQ1jrN1gU0ZLs0fKztfM40C0wTWL/Oy+jGsHTd3Sek3MChv7b/T0vELmBOSiggL
SBxLedQwIRCvezQYQF729SLClrb5OG7IgyHqv0Mcc8QjxdRibCsXWzuas5JncVXT
2ogFi+/sqff1b38sSKJO0aj8AZv8O8yejS6DHbPi6guSs46gvzHIhOMDdIvZGMh+
aPDU1h50wTIsSNmDD3y++TZ/dlXQps3ng/JcDYBM3i8rGtuyAYFKjQySCCKIhA8n
+oiURppLFaRaG200D3Gx9U7rJQQ0vWD0aBDX9N1G6lc76maQ3Hg9uwBykk9CbSO0
6l5tuZE09HnHzDYKqmWeu6FNu37qze1+MkcwSbO2yY6C/F06+ae1KM2q8G4xxxIJ
/Mf2ltM3A1z7DMVOphBeBWHlV/Vvyf3hMoGnotqv57FKviK3Znc=
=eTPA
-----END PGP SIGNATURE-----

--------------oPulbcFe7j8NWrLgXyCg90aB--
