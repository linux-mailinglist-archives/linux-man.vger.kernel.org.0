Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 236A26B621C
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 00:38:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229457AbjCKXih (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Mar 2023 18:38:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjCKXig (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Mar 2023 18:38:36 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F068322CAE
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 15:38:33 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id k37so5686048wms.0
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 15:38:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678577912;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N8VkloCiFfCegdVFJ/BtcitUsDtOhP2NyLJ9N+YojOQ=;
        b=ll8RIeobIMupWaGqt6DJjx8lDF0lG8I3zaeZkP1Pk6zhB8aoflPFwrMxDlHfLempsT
         5TbBbvkYw2U4ZFBw3vLnD0sCsQr2nuRpW+KD8wu8PTrYDUxECtef7/goHzH8WFYQ9LFY
         iPTzEMpuovFEwoU+Gch+qkbuO2lH/2GUfk1q06oIQhmaHZtO5Ngzli7J/lN+9ooJuYtB
         vUZKtF9kpNL7BVhJLC5/BivwiVdpU+HtGyySHSZjm6ZQJuDhP5WS2NidMkIclclcqlt1
         Mbb6L/8RfUXFgknJydUzQS+vz8n7RUtUiGExpX3Nmf7zdE6ivk73Df0ycWAMpJ+K2Wez
         QlUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678577912;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=N8VkloCiFfCegdVFJ/BtcitUsDtOhP2NyLJ9N+YojOQ=;
        b=Y9wXis8Rjyml7ZenuxsLpe39Dj01Cbzw6oMNSMCKYJX7vmBeRmRgLAbfqjpwjedeLk
         k9uPQiL7I4VZzY7j3QFVkwHFS5pKzfdKY8vIl0fXxR3gbTw1otZk+DoBV3Xy8DswR4sM
         ICHfqsrGIXMIPqPU1whWxrQaSwaBL0JEFk8qaSD76O5hVGomLzVRUHl4u6H0ULBELqe3
         neAl/io3zmG0bvp4qR5e678yi89xDJIyq8RvVEnGEQEZJ4MemiXnx2WBebnYBNW82GMP
         d+XJ4i9V6amSEWWwKZfIxHk/CeoX0nqcS9Sf/rp3FpjsX0Nq6eeglq9SIhKCw1GRMMM1
         IAGA==
X-Gm-Message-State: AO0yUKXbWTedCUVURsOSsMAiTkJb5VomLlDye/kBlaZx5QVOpzXe5Ffh
        QNx8+L48NdKVYxEwfy0dCUM=
X-Google-Smtp-Source: AK7set+NPL0rtvRsLNoYcuf28BaVIfgP23GGKtVRNg1bulPVF03BvEBoqEwcSxTnbqRVK7RtrBOEnQ==
X-Received: by 2002:a7b:c3d2:0:b0:3eb:2de9:8aea with SMTP id t18-20020a7bc3d2000000b003eb2de98aeamr6902990wmj.35.1678577912411;
        Sat, 11 Mar 2023 15:38:32 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id j8-20020adff008000000b002cea76c4002sm2121110wro.38.2023.03.11.15.38.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Mar 2023 15:38:32 -0800 (PST)
Message-ID: <b600fc0f-7a85-6832-0c69-1d404b9c3bc7@gmail.com>
Date:   Sun, 12 Mar 2023 00:38:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Dear linux man-pages maintainer,
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Seth David Schoen <schoen@loyalty.org>,
        Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230311171354.GA4709@Debian-50-lenny-64-minimal>
 <20230311185634.GA441010@demorgan>
 <5f55b64b-0cdf-6a2f-3af8-b9dd9e8ff070@gmail.com>
In-Reply-To: <5f55b64b-0cdf-6a2f-3af8-b9dd9e8ff070@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------O8AY21m31Homgl6msljSwM36"
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
--------------O8AY21m31Homgl6msljSwM36
Content-Type: multipart/mixed; boundary="------------H0LGLlz0VLOKRBfFo33YbFoz";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Seth David Schoen <schoen@loyalty.org>,
 Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <b600fc0f-7a85-6832-0c69-1d404b9c3bc7@gmail.com>
Subject: Re: Dear linux man-pages maintainer,
References: <20230311171354.GA4709@Debian-50-lenny-64-minimal>
 <20230311185634.GA441010@demorgan>
 <5f55b64b-0cdf-6a2f-3af8-b9dd9e8ff070@gmail.com>
In-Reply-To: <5f55b64b-0cdf-6a2f-3af8-b9dd9e8ff070@gmail.com>

--------------H0LGLlz0VLOKRBfFo33YbFoz
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Helge, Seth,

On 3/12/23 00:29, Alejandro Colomar wrote:
>> (2) You proposed correcting "runlevel" to "run level".  The word
>> "runlevel" is a coinage by operating system developers; in ordinary
>> English it would indeed have to be two words, but it's common to write=

>> it with no space in this context.
>=20
> About this, in the Linux man-pages we tend to favor correct English,
> and not words like runlevel or userspace.  So, when it is a noun it
> is run level, and when it's an adjective, it's run-level.  I'll have
> a look at it, and see what needs fixing.

I applied this patch:

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D=
d7a062de4fe5209acb585df03d5f8a2ea27a730f>

Cheers,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------H0LGLlz0VLOKRBfFo33YbFoz--

--------------O8AY21m31Homgl6msljSwM36
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQNEPYACgkQnowa+77/
2zLGPxAAi+HazChoxZfWS+WemhPI84VQw8e6yK/Y+q4HmwTJPHz1lK+R6wk5f2Hf
Gfe4TzYlvCdE22PJ0FEg2X8dw/D1pRw8AnfhSJYnli4NX+KkzlDjvJlUNSieC7d0
9iEKakzztgI3JzHWoqSNsiIjh6M4BhhxlpH6khljjETGnN1cfS5Uhr922/alOfo9
cIk7pNyWqaWbCognuYqaFjUtmmZcciKpm+l3QJ57rnO1wgb3kD51dFGpjoJdRl4q
Kj5WI0SP68T6pzl0vMkkxXSMwYE5HZwin763NXBn8BirPMny9VFqnte0sBB2RPQp
OsRp0lPELDtbqFiMmRRX+6yGh1ZajYmziorymTwv0Ho+qPDQz/a9NO2YCtl6uDc7
1EHqSuZ1m3ZRX3u7He3GkO8YNOrYI7dnBuc5feqz89x+pODNEXSpvqWsZZbdVWJT
WtPVkrbAEpv79ZgXhA9ixLwppiLaByhMoOxNzjy7F6eyil0dfhkOdqITqOZ6okyB
/0yHzbfwSK02gPPUfwLf7nvDRJf57tYcdDUsOk8W+kc2Fzi7gQK5U6rKAlbq78ER
U8lxGOn8qI5NrsG+pkMdDhaqpS+7rmj1h7D0AF5B7XVeJGQ/ZdfXzc0xcsY/oXpr
CY5LyMrsU+36npARm8fWpdOQPbThfaesvKEJzRNLY1zySUeHwwM=
=KqY5
-----END PGP SIGNATURE-----

--------------O8AY21m31Homgl6msljSwM36--
