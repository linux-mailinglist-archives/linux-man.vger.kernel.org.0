Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01D7F6BF624
	for <lists+linux-man@lfdr.de>; Sat, 18 Mar 2023 00:19:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229962AbjCQXTg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Mar 2023 19:19:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229575AbjCQXTf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Mar 2023 19:19:35 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27E583B85A
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 16:19:32 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id t15so5741114wrz.7
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 16:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679095170;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=quMwmNdy2Jop6nzKA9hFpyA64EW71vkMTJEdCx5Z1tY=;
        b=liCU6IkSYeerIePoK9ac5cRV8+fTec+OQf9RK8jXgeK92d83So8WVAUYx5MmGd+aXP
         +7Q+SctwX+BjEnCmFz787AsbsDT/6mVufEDGyNt/h4kqpPQNRrAjopunASPiMq9dAuJq
         +AxrazocpWu+fN1FcXs/EkQHUDK27FNAWu5tVFVPGPEQpbjGYYP4LrD7twmzI+auNP0/
         QaJlVKbZVBBR9X0+xrnUdfbOXwW9WBVqKsOOsFxIZEq9Tyly/69aKDgIeBLRhW8F1r/K
         NMU0bd9hdKRSCxIdGn93ji1B8kYgQ9WJN66a8X0FF4fveK6zYRwOg6pSgjS+ngAoh1jA
         F9Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679095170;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=quMwmNdy2Jop6nzKA9hFpyA64EW71vkMTJEdCx5Z1tY=;
        b=fl8KNue2jCNEai1nkk8sPsD1Xbv8FaIdYx3A+ep1aSlG8hyE3cTCDur7UZBhp/mYBl
         INX1j99oEL2lzoKF7iwExr3aE0przXiVkmlIV/hLza8dDOe8jzYpNB7eyPDsRHIzh9U4
         oVSdzf0yYExtBafgyzc9oONRnlLjepasl6UR5GrQHS3jOwbVvBrqxxVXuYlc8PDLVJHi
         CS2MGBDBI2Txwe0WQCsJH54677nuwuR9OLWWoB8szmWhPMPydLenxwRiDypfID2tbSW/
         YKNSCITan1/MSNTvOoKS/vQziRsCHhddlng8d2xHu3R3j0dnbGRtH0h1HBKNPxAgjVSJ
         4UwQ==
X-Gm-Message-State: AO0yUKVS1jOIEV2llhiR8zhN6qWZ90PFvMv/H7HK4eFhAyRS0QJiIu0N
        hJhN5ecAvl/WNY+CSXfxcQk=
X-Google-Smtp-Source: AK7set9JNKDqkBzblMB0VKPXt9pIKQ9ph2zx5gcrZZ3Xn2Yoad7ecEFB5kIiWL/j7jlRS8vSM0ZSCg==
X-Received: by 2002:a5d:4588:0:b0:2ce:abea:3de with SMTP id p8-20020a5d4588000000b002ceabea03demr8275773wrq.45.1679095170189;
        Fri, 17 Mar 2023 16:19:30 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id s2-20020a5d5102000000b002c71b4d476asm2963817wrt.106.2023.03.17.16.19.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 16:19:29 -0700 (PDT)
Message-ID: <e9606801-8497-8c3e-d02e-a187f948450a@gmail.com>
Date:   Sat, 18 Mar 2023 00:19:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2] man*/: tfix
Content-Language: en-US
To:     Tom Schwindl <schwindl@posteo.de>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
References: <20230317231640.20129-1-schwindl@posteo.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230317231640.20129-1-schwindl@posteo.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------nqJeHYJ71inQ0ZS5Y5kGTz0q"
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
--------------nqJeHYJ71inQ0ZS5Y5kGTz0q
Content-Type: multipart/mixed; boundary="------------PXPypfwg9MQHcP8sUygTY5U1";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Tom Schwindl <schwindl@posteo.de>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Message-ID: <e9606801-8497-8c3e-d02e-a187f948450a@gmail.com>
Subject: Re: [PATCH v2] man*/: tfix
References: <20230317231640.20129-1-schwindl@posteo.de>
In-Reply-To: <20230317231640.20129-1-schwindl@posteo.de>

--------------PXPypfwg9MQHcP8sUygTY5U1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Tom,

On 3/18/23 00:16, Tom Schwindl wrote:
> Signed-off-by: Tom Schwindl <schwindl@posteo.de>

Patch applied.  Thanks,

Alex

> ---
> Hi Alex,
>=20
> I missed those, thanks!
> ---
>  man3/pthread_cancel.3 | 2 +-
>  man7/attributes.7     | 2 +-
>  man7/pthreads.7       | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/man3/pthread_cancel.3 b/man3/pthread_cancel.3
> index da41931a556d..a6bd16bd0cdc 100644
> --- a/man3/pthread_cancel.3
> +++ b/man3/pthread_cancel.3
> @@ -61,7 +61,7 @@ When a cancelation requested is acted on, the followi=
ng steps occur for
>  .I thread
>  (in this order):
>  .IP (1) 5
> -Cancellation clean-up handlers are popped
> +Cancelation clean-up handlers are popped
>  (in the reverse of the order in which they were pushed) and called.
>  (See
>  .BR pthread_cleanup_push (3).)
> diff --git a/man7/attributes.7 b/man7/attributes.7
> index 02b2661b8155..e8d028ee8dc2 100644
> --- a/man7/attributes.7
> +++ b/man7/attributes.7
> @@ -67,7 +67,7 @@ safe for inlining.
>  .\" .I AC-Safe
>  .\" or Async-Cancel-Safe functions are safe to call when
>  .\" asynchronous cancelation is enabled.
> -.\" AC in AC-Safe stands for Asynchronous Cancellation.
> +.\" AC in AC-Safe stands for Asynchronous Cancelation.
>  .\"
>  .\" The POSIX standard defines only three functions to be AC-Safe, nam=
ely
>  .\" .BR pthread_cancel (3),
> diff --git a/man7/pthreads.7 b/man7/pthreads.7
> index e0aad99215d4..50d211a9adba 100644
> --- a/man7/pthreads.7
> +++ b/man7/pthreads.7
> @@ -235,7 +235,7 @@ pthread_setcancelstate()
>  pthread_setcanceltype()
>  .EE
>  .in
> -.SS Cancellation points
> +.SS Cancelation points
>  POSIX.1 specifies that certain functions must,
>  and certain other functions may, be cancelation points.
>  If a thread is cancelable, its cancelability type is deferred,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------PXPypfwg9MQHcP8sUygTY5U1--

--------------nqJeHYJ71inQ0ZS5Y5kGTz0q
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQU9XoACgkQnowa+77/
2zLWjw//dJwQ/ee1yoz3Zoe2VuQ5dCRxPD3BaXbQzRo1IbI2Wc4/LcsCuQkSoK8v
46UeHAUlAEbDqtJV87xRkhLg6QbDoz8lJIIZAaAVUoqzOsewMKgwFo1/Rbqu2xoZ
15aH3Jhl/m8H9sDScX3rMlt/Ngwmz4FG+nFZwj31XyfgF5EK7DZhRI/r3rW0cxj9
1dj4/rZOHeBcQhKFzsU1z6gfEv45X3OBTks2gtywDNmVYbXyTYOObCjR89zESWvD
Psq36S5X1OR0KlYpCEL4iICyt2W0YFK2cXx3pKIjM9JQyFxja7sUVvKJtbxbdzVa
/GTw2pJDaZ4DDXqObHAOIRT8RDu1LXjMKxdmt5GuCe8YR9nqfugFXYXgq4aCKf7E
DZowiv/4WiRm60lfZNeheQ/6oZRMqU25mXPyfgBph7//U6nr87CAW5JS1dkpAkOd
thQW2GPhpY6UHcJkh7ZjJLz3KFMbZcX8kPRaDEo0pMbNiXx2EUZivoH82CLjbfSi
hLYJKxpWR/Nc7aMB1TlUepuS66WM9OdmnR7P+vHfMCByHHCkLRKK4Qn2rvQxxP6c
dZ8468DTF9QTsBHTkunWRTDWKdcjT4vvfiBPbpv0OnKKxRyCtSpVxgeVbVvjcAt7
EFJw7A9vucuwfMZXtB29QvbY+vWRiGqL7o/23WLGiVM6y3GuiQA=
=g4TS
-----END PGP SIGNATURE-----

--------------nqJeHYJ71inQ0ZS5Y5kGTz0q--
