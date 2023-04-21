Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB3916EA0C2
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 02:58:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229961AbjDUA6n (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 20:58:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229736AbjDUA6m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 20:58:42 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CE69B0
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 17:58:41 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-3f1763eea08so12322415e9.2
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 17:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682038720; x=1684630720;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bb/CCIP4AmleNAHai7rnxYXUKAJVMlblLQQVOhotzlc=;
        b=QrF7htcwgZ5cih3B2ALBVuBOnz28cwNqLnypDvri+6GM4tVeLmynFV0WZBMwna8SRc
         oqfb5VmDs/haKdhugIifNLOE2fcV7vNkB0PXyT31ruxp2ROL+AhPpujmM9Zla3WfIlWl
         LGoinY/IARWZxywz6U+EFaWXrQ2SBD7vrIXPa8v9S3Eqj13i7ejyoM8LcBd8pvr4jECX
         QisrRb2+6o8iCBdoWTHJ9UHGhkZOivNMogyt/6j+CfE98fw3c2TWZ7XvRK2J0gZPN09z
         oVmvRfplR/Th8e7TFxhN2Kw0ZkF3EIClYUXOCOBssl0eMNeO6kpNMuR2CdV9vVXR3ZK8
         Y5LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682038720; x=1684630720;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Bb/CCIP4AmleNAHai7rnxYXUKAJVMlblLQQVOhotzlc=;
        b=M5Cj6p+mZJ13KdhmufVhBF+sINpW6WYumf8JPZy6mkE1Za32fN1q2LwJoAJM5yV426
         ecKiDc1AT5Pr3opDMXXnGmKjm+BYyFx2GqyndSs2BTFuuVD5y0MoBE/b2MG5KBKE3p58
         FGOhAu5KAKe2hvgGAXpap4RtHXtdfRxKw6F0NeRXyIFXhFV24nHvnvEr7tFBj9JXVmlv
         H0vlpQEGkG1kzpRc0PBrHBuu1U1RUmy/m6vUNzffeQgl2k20Cs94SyohbMb5oLQIgi5r
         F5xPd1FSzsUbEWsPwUq2DOsmnDr3Gjrop3qxruhZYV2XhStNW0aksa2qnH/AFq655/NZ
         ksdg==
X-Gm-Message-State: AAQBX9fA0Ukght6nyoN6Cdzzi0KWpGSOjMjqA7O59z8IMvXN+NRVDBFf
        JxXkR7a634bHBuQR+n2nQfhZea5lNc4=
X-Google-Smtp-Source: AKy350bByw+ugRvIs8u6fPG9TA+uaIVYVvIVW8jxpwNWdU3Ilhx9+RU8O1aqhBmYqboY6fkDHoNcFA==
X-Received: by 2002:a05:600c:378a:b0:3f1:6ec5:bc6e with SMTP id o10-20020a05600c378a00b003f16ec5bc6emr514986wmr.3.1682038719898;
        Thu, 20 Apr 2023 17:58:39 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id p9-20020a1c7409000000b003f17ee3bdc3sm3318645wmc.42.2023.04.20.17.58.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 17:58:39 -0700 (PDT)
Message-ID: <5c49896a-c0d3-66e0-add1-adb9c441e319@gmail.com>
Date:   Fri, 21 Apr 2023 02:58:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v6 3/8] regex.3: Desoupify regfree() description
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
 <4b7971a5e940914a7f6d717a4a9d9ba714edc3b7.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
 <80317350-b3d5-4e40-9ad2-5d4f96ec746b@gmail.com>
 <2n5iwmnzvwdraarfe4z2ompj3nslrxt5g4zu4pcp55peeciace@vncn6wact322>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <2n5iwmnzvwdraarfe4z2ompj3nslrxt5g4zu4pcp55peeciace@vncn6wact322>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5ilf9F5D6u472bJwl0Kk7qWX"
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------5ilf9F5D6u472bJwl0Kk7qWX
Content-Type: multipart/mixed; boundary="------------SD9nGjOpU0H0EM3vP1KPv7dU";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <5c49896a-c0d3-66e0-add1-adb9c441e319@gmail.com>
Subject: Re: [PATCH v6 3/8] regex.3: Desoupify regfree() description
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
 <4b7971a5e940914a7f6d717a4a9d9ba714edc3b7.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
 <80317350-b3d5-4e40-9ad2-5d4f96ec746b@gmail.com>
 <2n5iwmnzvwdraarfe4z2ompj3nslrxt5g4zu4pcp55peeciace@vncn6wact322>
In-Reply-To: <2n5iwmnzvwdraarfe4z2ompj3nslrxt5g4zu4pcp55peeciace@vncn6wact322>

--------------SD9nGjOpU0H0EM3vP1KPv7dU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 4/21/23 02:27, =D0=BD=D0=B0=D0=B1 wrote:
> On Fri, Apr 21, 2023 at 01:35:43AM +0200, Alejandro Colomar wrote:
>> On 4/20/23 21:37, =D0=BD=D0=B0=D0=B1 wrote:
>>> diff --git a/man3/regex.3 b/man3/regex.3
>>> index 3f1529583..e3dd72a74 100644
>>> --- a/man3/regex.3
>>> +++ b/man3/regex.3
>>> @@ -225,12 +225,10 @@ .SS Error reporting
>>>  .IR errbuf ;
>>>  the error string is always null-terminated, and truncated to fit.
>>>  .SS Freeing
>>> -Supplying
>>>  .BR regfree ()
>>> -with a precompiled pattern buffer,
>>> -.IR preg ,
>>> -will free the memory allocated to the pattern buffer by the compilin=
g
>>> -process,
>>> +invalidates the pattern buffer at
>> While this ("invalidates") is true, it omits the most important inform=
ation:
>> it frees the object.
> It doesn't.

You're right.  It frees memory within the object.  :/

>=20
>> I think it's better to say that it frees (or
>> deallocates) the object and any memory allocated within it, since that=

>> already implies invalidating it (due to
>> <https://port70.net/~nsz/c/c11/n1570.html#6.2.4p2> and
>> <https://port70.net/~nsz/c/c11/n1570.html#7.22.3p1>),
> For the precise reasons listed here:
> the regex_t object continues to exist.
> regcomp() doesn't allocate *preg, and regfree() doesn't deallocate it.
>=20
>> and also tells why
>> it's necessary to call this function.  Otherwise, it's not clear why w=
e
>> should call it.  Why would I want to invalidate a buffer?
> Admittedly, it does also "free any memory allocated by regcomp( )
> associated with preg." (Issue 8 Draft 2.1), yeah.

Yep.

> Maybe it's my neurosis that I consider "may no longer be passed to
> regexec()" the primary effect here.

:)

I wish GCC had an attribute for ensuring that in the -fanalyzer.
But [[gnu::malloc()]] only works for returned pointers, and not for
pointers initialized via a parameter, nor for returned integers.

>=20
> Updated to
>   regfree() invalidates the pattern buffer at *preg, freeing any
>   associated memory; *preg must have been initialized via regcomp().

How about deinitializes?  Since regcomp(3) "initializes" the pattern
buffer, it makes sense to use complementary wording.

Cheers,
Alex

>=20
> Best,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------SD9nGjOpU0H0EM3vP1KPv7dU--

--------------5ilf9F5D6u472bJwl0Kk7qWX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRB374ACgkQnowa+77/
2zLAIQ/9Emjm+LtCqVLMWNWG9FhOkvgGH/W2ECOHlqZb1j2VhsIjG3ZCA7nb4ZnZ
sU0PMcZrDwkvOJk0M73wqQ93ZEt9yiKfWs94EBJWzrtJtwk3ru7KU4W2OuLUKwJG
MJbPert2TGbE8lB7JoS5ZveHZrDuqwx0EADq01LlInBLanzPLEtixYo/CQgobQ6Z
gmbTvMzwW11AI9NEj0NC/gNvyx+CeqXT0C3Y50PW7/w3TYxH012I0k0YvnbeJlk2
9rUVFzWxmX0rc7FFkBOxOD043xDPLyHyLUUkJS7l8icwDmuDFgYtP+XmgPxQG14/
SswsqspZmyW9BT53/Lw2+D3qjAlOMeXfkXqhnjCDDTFdSGFYaYvWitNCMB90FtnY
BcaneHsST8N2xeqXOKVyGRaas/x2IGvq9jv0WAxKqpfs2dpxDk97SJfGV/gt4Daf
3/RLtoEteCbJsrE+7NbSYbjVTnXApX7UFHSPSuQJazqr4NH4pWwKv10s6NZgrIBs
1XDEyXI/Do6GFOs9oUOw0hykQnBPWPNA+RkOb0KVCt5dAqEqgCbmdCHHEZ6SyGUL
bolaB0nWPPISeQleumjf8OI9Gu4hUF4ZRTj+TRE0YYcWEjrmSXkFHOJCPkMU6R7A
MapFzYpXvTp64wvYIPKYG2yTKytN5w7tnfcOhPpFRP3Z4Qkt4ZA=
=xAIQ
-----END PGP SIGNATURE-----

--------------5ilf9F5D6u472bJwl0Kk7qWX--
