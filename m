Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9BDD6E9ECF
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 00:29:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231287AbjDTW3Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 18:29:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229839AbjDTW3Y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 18:29:24 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B10130F9
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 15:29:23 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-2f55ffdbaedso684270f8f.2
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 15:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682029762; x=1684621762;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DxmycbPsBXJZYm6nMS34ioSfuMQ1I46PEcnRidm5JcI=;
        b=a4mLDl9z0zL6kWlYkTrknzmy5if5NymFHmQISySp4Dpimr5u1s9ThXL3LYu9i9jnyN
         b4m7LRRDIp0MuKz1F7Vl1EfKScRqoJXO7LdV3iRv8ETEoeAAFvNcHT/qJiliBS+4X9h2
         QPQXPKaEhOeXO5SYln2pMIY3FDFq4XFwNMmPKB7y3pueGVvr9DemUtamTJGFqRBjE9Bc
         7UhrQQ9E5MGqjmbvLoXWYw9IbSU08ToUtW1/5aagLy+KnKGL4kt49hlJBMC8Af1/OYSv
         CLAx53cyG4JfeCesFWAY4nyUeQGcGDAcOB3Iavs4D6S9e88bRvGHb2xLO/RSFGW3FZCz
         SuIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682029762; x=1684621762;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DxmycbPsBXJZYm6nMS34ioSfuMQ1I46PEcnRidm5JcI=;
        b=ccQIBNuF5FLv1xMXMz73muc6xf8PGvAo27VXDPn4zQp3d16wNsvaOcjQqt6v9JdKIj
         +Rkt5bCAhDtWnpTmxYikE3ONfYI9qQgtegVCrfIhyJPBWgxukYtdf61h2Zr+A2YikFsv
         cJLP2gxnLbqdKGz2fFvjqKsKfQaMTGMXTPwayMSA0lnIZrbnsIquaQI/MN1F1GqK6FP0
         E2+XN+MEHvm8nb2L0O2jDes5ZnhSIpioYAWg13uAUVCS2exB9paYUntwzW3agOpI5gMF
         qls23PWT667b5XIP3d4jCLsW7wEREX9DJqgP88erfvr7QpB2/BZnT1vCy23xI9Y8XYLm
         dDgA==
X-Gm-Message-State: AAQBX9e6/fY82QHc/jGMUMRp70vBLdct320r5cCaZ3Qjx7kA2q+nCoDi
        ySuqoGl2qG73V28mnr+H06LwDsOJoqc=
X-Google-Smtp-Source: AKy350a0s1q6yqRikINSB6dXGpEGIwZR4/pYN4am4ZDG+bLliTO3zCSLNw+7LI5+/OjXaAfTt7UEgw==
X-Received: by 2002:a5d:408e:0:b0:2f7:fb78:9694 with SMTP id o14-20020a5d408e000000b002f7fb789694mr2243320wrp.17.1682029761612;
        Thu, 20 Apr 2023 15:29:21 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id e22-20020a5d5956000000b003012030a0c6sm2998684wri.18.2023.04.20.15.29.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 15:29:21 -0700 (PDT)
Message-ID: <4045b975-c79d-a2b5-f180-fcdafe7290a1@gmail.com>
Date:   Fri, 21 Apr 2023 00:29:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v2 2/9] regex.3: improve REG_STARTEND
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org, groff <groff@gnu.org>
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <5ae22853ab58af90c0ec2685bb740af1f6177dfe.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
 <20230420100059.hdtey45vpaytjcvg@illithid>
 <ooclowvlja44cqpomwmenrleernvsbsqfsmq7g5jydylbcptw2@4uys4qxjnnyy>
 <20230420183300.nsw4lh2c27lwsnrs@illithid>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230420183300.nsw4lh2c27lwsnrs@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------kXrx28ClCrBjCXi0biG4V3YN"
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------kXrx28ClCrBjCXi0biG4V3YN
Content-Type: multipart/mixed; boundary="------------HlgenePafOgf3dgsHH03EenR";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, groff <groff@gnu.org>
Message-ID: <4045b975-c79d-a2b5-f180-fcdafe7290a1@gmail.com>
Subject: Re: [PATCH v2 2/9] regex.3: improve REG_STARTEND
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <5ae22853ab58af90c0ec2685bb740af1f6177dfe.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
 <20230420100059.hdtey45vpaytjcvg@illithid>
 <ooclowvlja44cqpomwmenrleernvsbsqfsmq7g5jydylbcptw2@4uys4qxjnnyy>
 <20230420183300.nsw4lh2c27lwsnrs@illithid>
In-Reply-To: <20230420183300.nsw4lh2c27lwsnrs@illithid>

--------------HlgenePafOgf3dgsHH03EenR
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 4/20/23 20:33, G. Branden Robinson wrote:
> [Note for non-mdoc(7) speakers: `Sx` is its macro for (sub)section
> heading cross references.  man(7) doesn't have an equivalent, though if=

> there is demand, I'm happy to implement one.  :D]

I've been delaying my global switch to non-shouting sexion headings, due
to not having a clear idea of how to refer to them.  Having a macro that
does that for me, and ensures that the appropriate formatting is applied
might be a good solution.  It would also please the info(1) people, so
that the few references we have to those would be linked.

Cheers,
Alex


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------HlgenePafOgf3dgsHH03EenR--

--------------kXrx28ClCrBjCXi0biG4V3YN
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBvLgACgkQnowa+77/
2zKu1Q//YugtVHVc93Oaz8kNDw+mUf+0V7eAFwpEFaqE/fzkqxpK9qaP/BOjTKp1
ixtRAlFJ30t6cTQUnBIL98IuHrKjjlICnyYBiX6RN/QYQMyv5ouzbygL6heNTMDu
T1z1VhaOWbSHW2W0oq0Q7rkg/yAaQIErmRDGeckdrw38e6rR58tvATmCz05wnWIa
taZCL4qh1wYIPIyT+K597+yxeapu3A1UHfbjv7KR9yXN88hLz9e5z+7yjqyhZBIj
y4u6cJFMklpthlTc5cesUZxaQkkkPaUYNknYiXLKE4/fMSs7Q05LEk4jNTJ5RXqX
LDh/cjSZZbWZ/Eac47LasiWU1QrW0oLeLWhepcSXlz+f/oqER2DJMK/93SN9mDo/
lvVMaoT6UFYe9i04F9fz1qNQ6SL10w73UwiDO4eZINzISkFBEv5o2HfokMKj5zNB
ob1UnZXJ9Q2PQZuQ5N5Ux9Z3S4NfDHqrmCLqbxwltwKKO2FRsOu7iCq7y/a+QyMV
1CO2wS3ZUkPol0RWrK/Wf4jUrIH+qbEKmAaXEvuSgb+98gKs4E+5MZf8fRUSPzCz
4ShPnOO66UkSXRk4Pz3cagiC3DFPVs8rzGOlt8NxMjYML2mRGceglUcwAaFNt4Nq
0MZED+BODd/c5k1PoezqPWk24eZTuABsp9NULD1Bh+uQKpoXvKc=
=pDOk
-----END PGP SIGNATURE-----

--------------kXrx28ClCrBjCXi0biG4V3YN--
