Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69A046EAA50
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 14:25:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229529AbjDUMZA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 08:25:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232026AbjDUMY4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 08:24:56 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58EA9902C
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 05:24:01 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-3f086770a50so11628715e9.2
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 05:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682079839; x=1684671839;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ll19qpRI8b4/tVKIp2p8mgWxS6DZQOMINBTcZ4EpO4w=;
        b=AAWv4WAp94fg3beY1zL9TcXJ+62jCxLdifHCq0KRITC31kz2DQF1OA0He5+lM8LGZ/
         2pShFRR/HdEWkw3L4lGZiy1RMj/drCM9z1XJ+OTfJ614kl5FyW4YlghyukNN14qG3+9E
         Z93MsLNqDOgH+H40Qh8HdzQwLSQvfk4DOGkgPWr9lI7CwST4nyn5yIUIPxfcPUNffXUp
         7NnVgToTNNQpfPl6NMaOJrNJm7WICB/6tTrr6YqUbXz9OuWtxuxqJYO4S32I4uIEIZwD
         /FRLOqK9ery9P5qcZCVBtxAsvjOqFCfWJGFQ7hJ0cnoWtRn1lFOljGqgvpiX3KwwziM0
         Xqzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682079839; x=1684671839;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ll19qpRI8b4/tVKIp2p8mgWxS6DZQOMINBTcZ4EpO4w=;
        b=RzCQrRGXRRaaMTcXQaGbHklFja4pgnf3wMjP8zG6LKu0LG70Vc6fL7VqQ2mKPw5gJr
         sQuyFsPCVhVZe4gc3lapJFem//47Aikbv8ZbqfTOqK+LUtbOIwxuAlDxPbgufklen1gH
         yBl3MRxWjk0NZGz4NDlHRsZFSuCHJJpAdpERjwU9dqRC+4LxDc8XsUycqH7VaGPsPLEs
         7hnv6Ljh2ad09tkKPxPk6Hbx2RVaUqz2aWsU8bxd5ZR9pjDNQ2RKGy5tXowyQ1ICMlD8
         vdrCQeZpm+s32HGvH7NjTupVTTRRJ3BmQF4MAEywC/y/5zQTRVLrT7RlVHu6mYadejT3
         SMvA==
X-Gm-Message-State: AAQBX9ejHDcJYUDjJc/Lg3p2v40a+o7Ggge7/sjCNUYmL1s8pzUsrrk/
        phx2Vzk7qDDPUNMKq7lTfuwIhPNmP48=
X-Google-Smtp-Source: AKy350Zameq8J51mvynuUMSMnf7nuRdArEbNcq22KeXY1f0PKq5dH48QuqWtwD7skkxvubCIy1qhGQ==
X-Received: by 2002:a05:600c:2295:b0:3f1:92aa:4eb8 with SMTP id 21-20020a05600c229500b003f192aa4eb8mr1338012wmf.16.1682079839441;
        Fri, 21 Apr 2023 05:23:59 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id g10-20020a7bc4ca000000b003f171234a08sm4664460wmk.20.2023.04.21.05.23.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 05:23:59 -0700 (PDT)
Message-ID: <5ed7c744-d9c1-6fa1-535f-9e0912e6f007@gmail.com>
Date:   Fri, 21 Apr 2023 14:23:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v7 4/8] regex.3: Improve REG_STARTEND
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <8c4487ff-17c6-f4f6-d8cf-59a82d9daeca@gmail.com>
 <sowec336dkzypq6kjouieoyesyfdejmo3j2err3kc4xcpine4l@2takvti7yrem>
 <5918ccbe-d218-df42-cf0f-5eb7b3354e2b@gmail.com>
 <atartvvgxjv7wk5rvdtiyrxjc22lnsgkf75hy3nz3m7fw3m6j4@i7khsjrvuise>
 <d4d75bce-e8f3-756b-fd7e-172f098dcffd@gmail.com>
 <jsjcirm57g64rxhocttpbozx5wmjwc44ot5jfkxeeag6gal3sj@p4qyghzkpv2d>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <jsjcirm57g64rxhocttpbozx5wmjwc44ot5jfkxeeag6gal3sj@p4qyghzkpv2d>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------yAdTEKi0cvpm9mFo0vwKl6qk"
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------yAdTEKi0cvpm9mFo0vwKl6qk
Content-Type: multipart/mixed; boundary="------------B81fINuntHRk4XCytrPR0prb";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <5ed7c744-d9c1-6fa1-535f-9e0912e6f007@gmail.com>
Subject: Re: [PATCH v7 4/8] regex.3: Improve REG_STARTEND
References: <8c4487ff-17c6-f4f6-d8cf-59a82d9daeca@gmail.com>
 <sowec336dkzypq6kjouieoyesyfdejmo3j2err3kc4xcpine4l@2takvti7yrem>
 <5918ccbe-d218-df42-cf0f-5eb7b3354e2b@gmail.com>
 <atartvvgxjv7wk5rvdtiyrxjc22lnsgkf75hy3nz3m7fw3m6j4@i7khsjrvuise>
 <d4d75bce-e8f3-756b-fd7e-172f098dcffd@gmail.com>
 <jsjcirm57g64rxhocttpbozx5wmjwc44ot5jfkxeeag6gal3sj@p4qyghzkpv2d>
In-Reply-To: <jsjcirm57g64rxhocttpbozx5wmjwc44ot5jfkxeeag6gal3sj@p4qyghzkpv2d>

--------------B81fINuntHRk4XCytrPR0prb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 4/21/23 14:13, =D0=BD=D0=B0=D0=B1 wrote:
> On Fri, Apr 21, 2023 at 11:45:07AM +0200, Alejandro Colomar wrote:
>> On 4/21/23 04:16, =D0=BD=D0=B0=D0=B1 wrote:
>>> And it passes!
>> Do you mean that make doesn't recognize the error?
> I mean that
>>> Those are the only errors I saw, even on the version with
>>> IR\ string$
> so, even if I'd ran the linter pass, it wouldn't've found the line you
> originally pointed out.

Yep; you probably need groff-1.23 for that (yet unreleased, but there's
an rc4 that you can build from source.  :)

Cheers

>=20
>> I have the same bashrc (Debian Sid here), and have this same
>> line.  Why is it failing only for you?  Maybe I modified
>> something in my startup scripts?  Maybe you did?
> Unlikely. What if you do make ... 2>&1 | less?
>=20
> Or this is an unrelated bullseye bash bug that's fixed in bookworm.
>=20
> Best,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------B81fINuntHRk4XCytrPR0prb--

--------------yAdTEKi0cvpm9mFo0vwKl6qk
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCgF4ACgkQnowa+77/
2zLyCw/7BbdHo6CF8swchm/pNvem/P3qsnLeRkamzfZF22JnDscWJulW7cgbXz9y
BIwirAWVLM16QnMGN1LLpjc5VMIwhanDsVSuKKnO9/mfRZtD21WpJzI2OjLh/cvN
a6OzQPJkybFuibVTgWBUmnaYj2ekj6TQSR1gKC3BGmLqbsGKw56zvju5WWiMBCJl
gb2593SeA6HewXz2H41XOdd0GCiOB9tSvf5aROcr98nh7A+hWjs5iYyjfEGaeG11
0EPJSm4dxHnJBkOoy87hDxnf67BRQfI3eZbwLw+cxKHWR7EcdPHm9+7ApuhMHyTS
KLVISwsgb9uicQ7i9BhFyOzfsF36joBzcHfce219dCG3PctXfSFOwbSniCVLTCtn
q43qPl59aMF9Aiu+I53EqZORgjZ12/37FVOcqxypkTmr1fLPgBiwfYV1/5lsRUht
5wM48sDFGjpBVgA42vxsMCklx3cA43R4FTpFQ6iX3Ln3WDqBvDAaQQrxkHOTSYA3
TIjOaSCS++dXe6KFnKEtwqKURl+l388nKADIW3lCOMD6NJyLF+KPd1sJAd7s0kbx
FuCsPzFJxiCXLfcfp51FcLoZK8ZtmjzMQg+41tOvcmc44cwAavOf7zYZ7DWzv+xy
6wLsK6DqzpW5sFWLvbmJ5EhGOQ41G+IH4YTFbKXmCdTQl0UESDA=
=gK33
-----END PGP SIGNATURE-----

--------------yAdTEKi0cvpm9mFo0vwKl6qk--
