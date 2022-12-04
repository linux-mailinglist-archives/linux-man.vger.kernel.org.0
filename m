Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDC5B641CF3
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 13:44:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229934AbiLDMoS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 07:44:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229638AbiLDMoR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 07:44:17 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 305141583A
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 04:44:16 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id n9-20020a05600c3b8900b003d0944dba41so3307875wms.4
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 04:44:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iHZhjZFgeZsCoGzCLZUQe5MBM9IMKW93+yzNvf89m7Y=;
        b=UREVTYsen/Fss2qjJMgNY2Uq99I+gEv2rQ5KaWEN5ZNSTyEtF0cyDpmJfcRQNEV5cc
         6/UXA4OiuR3N2y65ptqc53dxHhn+6HRHCSGo2SnWVAspSHJNS+oxDLBALtpEbbrkljLp
         SNwc2oDk0jvBD32GdZD+YkcKajtrQh+MuFouoTr6brI5e8JSSuDW4afmK944DmldBJ3x
         DTmUpDAB02g7/++eiAAcp4/vTC6mf1zzc1ln4j8TJXhgODovJB99rhTGvh83uasTLR7M
         JHDMb2I3A5z24R/cuYDyA38sAnvldOVocacBDSCtsVIZFZCpP7QMCDALI03RXDIhtTy+
         SqFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iHZhjZFgeZsCoGzCLZUQe5MBM9IMKW93+yzNvf89m7Y=;
        b=3B32RwVGokN9ny/SSzzz0Ifh4gfQa9hBZaZNJ/YvsjSv0ST7cPXOHZT4pwLSOcERX8
         c9B0Doas9niJk+tpdDJyX/X+nTlKDPCKAWxA6qu0FlUaHC/IFxD5FFtIGhuew2w2iwbF
         Hc+HvGBzQtq1nxyHsu7c0wlgY0Woum0ZGOxD50jjNsolcbrQwMCg3Ls0Gucf4nzu4CoO
         dATAY6Bz2+JSz7Rv5RFRtB0xH3IyI5bxjavlpMEDQtNDl9Dl23yiC367tyCNBjSL7bU6
         Q4r30m/qWiCrJKwCl+c/RyJgGNvh/1kCCDNCAVy6ESeU+YIwKDa90B1tY8kOKFfNo9EP
         LgJg==
X-Gm-Message-State: ANoB5pmXhJ3kMyVOY/hM6wrcrQIsuB+3k1WpCImsdawYxidCg114ZXr+
        KHaoUu0vNsGYrC5l3h2xXOU=
X-Google-Smtp-Source: AA0mqf4AdmKI43yh2cl7bOsku3+iKxaNHAruqQ+0ehsHcThoHmFk/eisxPOZLZdX8pQYKQ6ys2swDQ==
X-Received: by 2002:a05:600c:3507:b0:3cf:8e62:f907 with SMTP id h7-20020a05600c350700b003cf8e62f907mr48743690wmq.7.1670157854701;
        Sun, 04 Dec 2022 04:44:14 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f16-20020a056000129000b002421ce6a275sm11591369wrx.114.2022.12.04.04.44.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 04:44:14 -0800 (PST)
Message-ID: <ad2539d1-1096-8af6-6d75-ef71d44e2fd8@gmail.com>
Date:   Sun, 4 Dec 2022 13:44:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page passwd.5
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090713.GA564@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090713.GA564@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------VoDwSrTHxUws78cforGYe4d3"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------VoDwSrTHxUws78cforGYe4d3
Content-Type: multipart/mixed; boundary="------------XTfcEe7JjlHcYYbHhuwQigCO";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <ad2539d1-1096-8af6-6d75-ef71d44e2fd8@gmail.com>
Subject: Re: Issue in man page passwd.5
References: <20221204090713.GA564@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090713.GA564@Debian-50-lenny-64-minimal>

--------------XTfcEe7JjlHcYYbHhuwQigCO
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIHB1dCBCPD4gb24gIm51bGxvayIgYW5kICJub251bGwiLCBtYXliZSBvbiAicGFtX3Vu
aXguc28iIGFzIHdlbGwuDQo+IA0KPiAiSWYgdGhlIGVuY3J5cHRlZCBwYXNzd29yZCwgd2hl
dGhlciBpbiBJPC9ldGMvcGFzc3dkPiBvciBpbiBJPC9ldGMvc2hhZG93PiwiDQo+ICJpcyBh
biBlbXB0eSBzdHJpbmcsIGxvZ2luIGlzIGFsbG93ZWQgd2l0aG91dCBldmVuIGFza2luZyBm
b3IgYSBwYXNzd29yZC4iDQo+ICJOb3RlIHRoYXQgdGhpcyBmdW5jdGlvbmFsaXR5IG1heSBi
ZSBpbnRlbnRpb25hbGx5IGRpc2FibGVkIGluIGFwcGxpY2F0aW9ucywiDQo+ICJvciBjb25m
aWd1cmFibGUgKGZvciBleGFtcGxlIHVzaW5nIHRoZSBcIm51bGxva1wiIG9yIFwibm9udWxs
XCIgYXJndW1lbnRzIHRvIg0KPiAicGFtX3VuaXguc28pLiINCg0KRml4ZWQuICBUaGFua3Mu
DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------XTfcEe7JjlHcYYbHhuwQigCO--

--------------VoDwSrTHxUws78cforGYe4d3
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOMlh0ACgkQnowa+77/
2zKjkA//Vw5zQ/t8hJ+LyDKSLZSXbiRzYUBQjs44ugRigr1e3kkWl8wXSPMnIpz3
FPDwTO7LPAQka/bITRNwsZiOjy0XwJxEUUkWxA1XC77rAoqb5mwwWHZabHCSnnYQ
OlgHkhUpHqGWYj1MUU3oBpXvK1DN+lZnViBYkmBUMWaMeR08MNly1kYPqc6qQ1bt
SOrPPZEb3gbFqg/wXXFv6y2FizbyILnxre+Hgrjpdg4RAKSFIkM/qV05NskCvVgV
pCdP5ZT5PKSU/FfHxV2eXXzUDkkIfNmdCWeiHKSzpoTSh6jnh0yvSVjSptBIPvAM
L9pnhZjUCdYrnAE6nXklotCo9/Gjx6sGBtekAhX8fBdfo8j0e/GdpscyZV6UpNI/
p27IouJ9w8tZ0KLMrRl6RuiOFpOOp2Qn2cVKleGMA5JoO8KGBul6WnFvg1ijzc+j
BZta3SoA9iP4syf5HSN9ga9bApYw7onZ1AHf+/PdcZhzyi+nYCbYkw5DvRS4CI9K
B3W15hGCgAuEoS9Du6v5xgVYHDuL9ZHR8j3TzoFMdsm9xqi8rqGcj1CkWvw9O/Ds
MwhZBI8lJqZ7PoOTZ0VWxberV2HE8y7sCnExb7vTN2WAalU6hKF7zA58TAryBk3+
tAUwy1kLUJSVJd9kRyJg5AyGgLlyDVU1yXPaRWNk4fppAt7c4xg=
=kS7I
-----END PGP SIGNATURE-----

--------------VoDwSrTHxUws78cforGYe4d3--
