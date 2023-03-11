Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D19A16B6207
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 00:25:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229493AbjCKXZR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Mar 2023 18:25:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjCKXZR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Mar 2023 18:25:17 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0C2E4BEBA
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 15:25:15 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id r19-20020a05600c459300b003eb3e2a5e7bso5658947wmo.0
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 15:25:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678577114;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1YKx5Yk1zPsPtWvvVPRaAsoIknGWREvrJ/KeqEYA3uU=;
        b=dSMdEE2eMP66/QZqwDQ+Wea3S+w3iSgg25+znzyD84lpQtLnCrm2XPA3C/A+K1pfKo
         fGAvhNiwFz8DS4GG5MZHcCRd7scDbkmtaZBmx7NDRPYRSbis6lWO4JMuTwmpanjUH06e
         JcExtG+Lah30ElG4zacgMu7KsDl1QiZA/CZSoNt/RMfqD1BuaJ+7KlndzrJgRsFy+tK2
         JTh8Slq82iwnkbQxJaWzXxLC0W6QBXv2vovYHjRCAcqmh03ZlG2Skler61Yw+nFWMZ6N
         zQWEd6nPnD1V1vQdsQb2uF7rEd2HA7nEqqSomipCswJIvrWB7ClL7n+J8gkqH0p7iRnV
         lkdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678577114;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1YKx5Yk1zPsPtWvvVPRaAsoIknGWREvrJ/KeqEYA3uU=;
        b=c2QHVUIc8aB0NiuoluuxqUp1F2aMfTw0hs5g55n/zHXLCCTIGD6BXQ3KYUf0P1nd5a
         fqfg7Y/xSZ9S1Grl8VZMhm9KBhMD8F8V2Y//fRqJ/jr2Fvp7dsLDgrB7jkWWt/5t4vVS
         L44ff/wrFGJspzJT8OwgJlYjNy9cHqXDfMxCf+biqsTtcw/73e5Q8x2ZSN6qCVSPvhel
         1g0KaVGy3xB79mV4ZfU4iOny8bMkuWifypxVlmPe0Xuw6bu7yhynX34YqIsit4Dhd0X4
         yqU5PawXNjee9v6QDa3NrypRGluVwLFU3GX6IYYAwL2KLXxUmNWdkFLmfWcM/uk4OuAP
         qrAA==
X-Gm-Message-State: AO0yUKXJKkq8Z8jw0h+HV03D6YQ2eGJdtKsLeKIkEey/x52ob0pe7aKB
        9Vr5VYoQuchxXtWRrqkaRgE=
X-Google-Smtp-Source: AK7set9K7IlXnDqcEOf5WY/vIzJl+CIYJGvxHKwGcvlxvabdfnfBMggBcHohMtw2v4nA/Fq6oVmcHg==
X-Received: by 2002:a05:600c:358e:b0:3ea:bc08:b55e with SMTP id p14-20020a05600c358e00b003eabc08b55emr6617004wmq.25.1678577114258;
        Sat, 11 Mar 2023 15:25:14 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id s6-20020a7bc386000000b003db06224953sm4074607wmj.41.2023.03.11.15.25.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Mar 2023 15:25:13 -0800 (PST)
Message-ID: <3df156e0-99c8-8844-d1eb-ad0b349c5fb2@gmail.com>
Date:   Sun, 12 Mar 2023 00:25:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Issue in man page user_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230311171357.GA4865@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230311171357.GA4865@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------6WwW5ZWcVzkRFJ7pNWpZPsjH"
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
--------------6WwW5ZWcVzkRFJ7pNWpZPsjH
Content-Type: multipart/mixed; boundary="------------ulJWnf8XzUpWJjXpgV9ERgeS";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <3df156e0-99c8-8844-d1eb-ad0b349c5fb2@gmail.com>
Subject: Re: Issue in man page user_namespaces.7
References: <20230311171357.GA4865@Debian-50-lenny-64-minimal>
In-Reply-To: <20230311171357.GA4865@Debian-50-lenny-64-minimal>

--------------ulJWnf8XzUpWJjXpgV9ERgeS
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Helge,

On 3/11/23 18:13, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    /proc/I<pid>/setgroups =E2=86=92 I</proc/>pidI</setgroups

I don't find this.  Please report with more context.

Cheers,

Alex

>=20
> "The /proc/I<pid>/setgroups file"

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------ulJWnf8XzUpWJjXpgV9ERgeS--

--------------6WwW5ZWcVzkRFJ7pNWpZPsjH
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQNDdgACgkQnowa+77/
2zIDvg//cAszNi4ndbBdBtcAu2Bbs0XSlLWQMpjLetLV/en/2h8SA3E2HVh1EAbJ
qfWnqQGKE5/xdBJDSIfQrPEH5omxeMV0ZFQcYo+Ti5uDZDVJ6941wdOyHRX6qwlD
RXTgRiC7CMfR3nM1fGkfWpAJHAn/YmGlx/dhnFE5KLOfT0mWMDxsGyO6sbN4bEri
ds/sLwkuRudyiKKB5onsEK0wUnvZGeB8aBiCT2t5VJJvCc3rWTwURQ3ZqdGGL9fV
TaJVkMvia12b2Evn24EEaY5cffFLCtwTCnbU2j6siMI3AF8i+WmJp9Z5oCWO1wBL
r+2IOfJtyBMKgGtBMwjlhozL6milT0L9K4LQwFqwIDTodJ7cjcOUzSCHps9F6Ptq
ceU0DDIMAuHLkZoUXvoSVEdC0uWwR7FlKxBv6WkniFXIChKh/IsLx9+WFsPaohw9
J2MELZ+vGWTQf+5DH9mhHucNgzHWb3LjA3eaaMFGo9W0E41ELWpzBsoe3Rjpv9Ea
cwXvTFFJW+9fenBH631pHT6dJdcK2e/zbWiMLUiI8kjymdEenvyXKZPXQC1wLPmT
v1wwhHS6ENo5hfPsR+mIYLwxRrNS5YKhll5pfuiybQnybGk466/5ezTQds6CIjAr
nOc6+TGKlkYZNyfSQ0wtqQa7hR1vnKJmIT/JdjlP4oGMviEYOlI=
=aLMc
-----END PGP SIGNATURE-----

--------------6WwW5ZWcVzkRFJ7pNWpZPsjH--
