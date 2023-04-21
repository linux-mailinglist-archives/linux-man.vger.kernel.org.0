Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 359D76EA0BD
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 02:49:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231144AbjDUAtJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 20:49:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230521AbjDUAtI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 20:49:08 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 934CB2716
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 17:49:07 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3f17b967bfbso33292545e9.1
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 17:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682038146; x=1684630146;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zc1AcTwxocYW8unpGp+Oour0dqVbZ2S8gL+LMhPkzaQ=;
        b=bDwDAnGpslO/MWTd98d3Tl2+6g130o+tjQbeZHK6ZWDCYD1DnSa+uYOKhbzhjK4GLv
         EL47UV2l8puaIRLIsyeBitC1036I/+wp5ERzz/Z06e4fvgsN++3o28tsEeoHlVUc5DLQ
         bs0rTKWkqCdFmKWrnN2bffriQExIEUWXAjHm0Dl5QrO7lnjPictCcRCLe6999HefuChB
         G4fF3ngVPzNVguyk5X8tEA7nPw5s1U1fLn9N+Kh4octL5MqpjpJlF/scl5/TUjEohI4o
         BmjNVmeSVQVYB0l40W7NUYwd+eMxCZkDSe13hiYj9GQ72jIoDf7NTq2ri8eGXXTd3r4+
         1kyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682038146; x=1684630146;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Zc1AcTwxocYW8unpGp+Oour0dqVbZ2S8gL+LMhPkzaQ=;
        b=EOHOXqmlXyBhIMGfOb7+aOkXZ8jB5SzCgT4wHrfz/uMRaRPpQcTUJU4f8usNT/kjkZ
         PsTwb6fUW++2yVywGL2ANN3lxBAZ4iemgcbzDU6PfwQYiEr+srTfMEy/NlNRwwUPvz9t
         Is+y63I49w/7c9InNE5mgmNAUido2iPBUi7QhfGZBF+N+ZQzz7iUoUiaSQUR6d6rqiw6
         SXqtpbYny0vsJOMAWTu75892nMoz0YZh1ssJ6gCDUK2tOpLK2MtdIz8SKgAXM/7oGAEg
         r5a+D+OvRkXWVCf2O+nvMt22tyVOZM8TZBpMaUoaZMtugj7zJ7UnV4EoCfOrmkYOKqPB
         dvKA==
X-Gm-Message-State: AAQBX9clAbDW/d01LUe4746ZBfVNprgapIEaMldC1OceptmjKioBZoW2
        +3nzha6BSoCS0/u54x0Ego8=
X-Google-Smtp-Source: AKy350Yd6jCAQthpXKExw3yT4ewHZ9hMpMFg7HxEEZXNjrojbAeMGfnzZJSnBOQq96Fiu5XPQnIAqQ==
X-Received: by 2002:a5d:5051:0:b0:2fe:e455:666c with SMTP id h17-20020a5d5051000000b002fee455666cmr6167638wrt.33.1682038145752;
        Thu, 20 Apr 2023 17:49:05 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id s12-20020a7bc38c000000b003f1739a0116sm3350620wmj.33.2023.04.20.17.49.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 17:49:05 -0700 (PDT)
Message-ID: <1dafb52e-b6a0-3fcc-4623-cd84621bc042@gmail.com>
Date:   Fri, 21 Apr 2023 02:49:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v6 1/8] regex.3: Desoupify regexec() description
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
 <1ad1aa6e952df09dea820eabab860dd6df35364e.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
 <827cf932-d582-e8c5-3135-90bc294ff2f8@gmail.com>
 <lxhb2ujsnqvmmowpncnurdmsij6aev2ald6jtjqddfxo7sflyc@7wfvujkzk7ul>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <lxhb2ujsnqvmmowpncnurdmsij6aev2ald6jtjqddfxo7sflyc@7wfvujkzk7ul>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------QSIFm0696R92u69f4JopEZbu"
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
--------------QSIFm0696R92u69f4JopEZbu
Content-Type: multipart/mixed; boundary="------------N0vIkMaX0TSPnQkczg3YTfNo";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <1dafb52e-b6a0-3fcc-4623-cd84621bc042@gmail.com>
Subject: Re: [PATCH v6 1/8] regex.3: Desoupify regexec() description
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
 <1ad1aa6e952df09dea820eabab860dd6df35364e.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
 <827cf932-d582-e8c5-3135-90bc294ff2f8@gmail.com>
 <lxhb2ujsnqvmmowpncnurdmsij6aev2ald6jtjqddfxo7sflyc@7wfvujkzk7ul>
In-Reply-To: <lxhb2ujsnqvmmowpncnurdmsij6aev2ald6jtjqddfxo7sflyc@7wfvujkzk7ul>

--------------N0vIkMaX0TSPnQkczg3YTfNo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/21/23 02:33, =D0=BD=D0=B0=D0=B1 wrote:
> Hi!
>=20
> On Fri, Apr 21, 2023 at 01:24:16AM +0200, Alejandro Colomar wrote:
>> On 4/20/23 21:36, =D0=BD=D0=B0=D0=B1 wrote:
>>> diff --git a/man3/regex.3 b/man3/regex.3
>>> index bedb97e87..47fe661d2 100644
>>> --- a/man3/regex.3
>>> +++ b/man3/regex.3
>>> @@ -105,12 +105,10 @@ .SS Compilation
>>>  .SS Matching
>>>  .BR regexec ()
>>>  is used to match a null-terminated string
>>> -against the precompiled pattern buffer,
>>> -.IR preg .
>>> -.I nmatch
>>> -and
>>> -.I pmatch
>>> -are used to provide information regarding the location of any matche=
s.
>>> +against the compiled pattern buffer in
>>> +.IR *preg ,
>>> +which must have been initialised with
>>> +.BR regexec ().
>> This patch removes the nmatch and pmatch info before presumably we add=

>> it in a subsequent patch.
> It doesn't and we don't =E2=80=92
> the documentation for nmatch and pmatch never leaves Match offsets.
>=20
> This patch just kills an extraneous, glib, and inaccurate description
> in Matching.
>=20
> There's another glib description not ten lines above in REG_NOSUB.
> You don't need to keep the third one.

Ahhh, that's right.  Thanks!  Patch applied.

Cheers,
Alex

>=20
> Best,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------N0vIkMaX0TSPnQkczg3YTfNo--

--------------QSIFm0696R92u69f4JopEZbu
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRB3YAACgkQnowa+77/
2zK7mg//WwL5vY2fJASbHikMdfgyRYuImkO/X3r7CZ+ziqxUm/W0Q+hj8278ciNO
rDAFUjh0ymjK7G9kJFjqoTpnhgel/lVQOhlLg55ZgHwdMTExzvz2yO4qgoSn6aiq
gY6NrAOrAgn/YMv0pkl6bj9XLgpj5CQvNrLWKejAe0i8gRe6xrIRBXuQe2BMVzga
fCh7iJhjF1owHQXXq531h70rEKJfe0zgA6S+ZsnrEE6/KycP7nLf5h+7muQPP7vZ
yvsp+0qGHoN1Usx4ds770CjQ1qIC1ERjxbGUaBCg0RUeCTT/psulZ+h0ZNu77P2/
5DcNoxlPb+yd5lxVtasRG5yIFyBvS3Ab7OK/JJAICFbkZ2uPFrqrFYFY2SLOTY+l
vxFF/ABAw1/04u57quq3xAIyyZk2ChCI49zv7kzpDOydW/A8IANLh5ikw9zNEMtb
IZRMF4Tt8TPWnQ40VjABS1GBXowtmZzE0MqFXMElm5QMPBSM37E7RTJk8lrHMWZ2
ccxUlDl3I2hH9Gku9Vy3ERrJaBPYw6V4j6fA6Qwn7muokb5JLJZkWcoVz4sCw1wV
MHfE/s+BZSKtYWXipOKaOH8G4pLFhd0y61BeXCTaWVzuKLKAWNeWY8FxNvnCFSkr
+7zV+vcLWG3gVCt2swxaXK2ofOlBr99Z4tRQOVR0G9kEHpnJGwU=
=7O/0
-----END PGP SIGNATURE-----

--------------QSIFm0696R92u69f4JopEZbu--
