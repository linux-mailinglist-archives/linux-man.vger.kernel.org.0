Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A756A677277
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 21:54:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229895AbjAVUye (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 15:54:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229566AbjAVUyd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 15:54:33 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 632F81C30C
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:54:32 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id h12so5126171wrv.10
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:54:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rx+BasmK9bxojAYnF2kqFnREZYl2jWIiix/irXEGgBQ=;
        b=cKqHopGqfCXkx1td2vFPVhpVM8ZooPQS+Nw/Zz09TbgkSILY3F7S3hvEVgy4rC0G+G
         u5kLZpp/PzCraNbBhruWBlMXfITBta0b6GWd4e2uTn+bakJpddjsTAopC1ZkKKBaCL5M
         xVcAoGMdDdkkWx0+/ByPGLFhi5F2v8wbwlvh4TrS/mN3OWTM09uLPZXl82+YXyMeTllY
         Uy/oL85rL8FeqlAlAF95XqqPrXJlrxgdFrltna8eRv6fpN3S8SlV4CzIZV0BkgMC2JRA
         UiEoGhq5Tfg8oWeo6yiVT1+OL+FJEixNv2JB6i4V6VnbMwqUrM2BLxR2Odt+1H/b1eEo
         d9Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Rx+BasmK9bxojAYnF2kqFnREZYl2jWIiix/irXEGgBQ=;
        b=S8TFwN0bzbNdSaF0/ZQEVfnmVgncKmDl3mXwMaDgqjrQcwygesGPLg3Xufjqsq4nsL
         SuBcWtW/52x4XT/ENQeDJNfC/kvsq0fxcJA29pkkxqhOhAG3THUlzjBl/p4fDZj1mOa3
         EKRbqr8gED7Qqw7u5K8zw2wncDZIa3I244mN2ewt+N7yvWi1xvqRbWfcsgmZLd7XFFtB
         U6N6gdIjYYyKqWxdKnaOQefcNwO8FGsSU+MTa5VEx+R6nHXNzu9Rpoz4H7CTSjE+XJio
         2MtFHq7kP5szSbu4rJ7Z0o0kdfcTzcBLNOUyyOek64O7kS4vm7LlCVcog174qbzp7NE7
         S/Wg==
X-Gm-Message-State: AFqh2kqbj7kyO4YaOyLtvNaqfp5xdsNeu716R7ZCVV1lY+fGUcgwCn1P
        bhM5Zg7ehTZ/90L5QDdrsrI=
X-Google-Smtp-Source: AMrXdXtkhv7uDFQ4NTvkI3s10kQ968kmXMDq4/FTJiqmJsuo2RT1jWtyrnEDPfT79q7i9p+4sfGHhQ==
X-Received: by 2002:adf:a14f:0:b0:2bf:950e:7fc4 with SMTP id r15-20020adfa14f000000b002bf950e7fc4mr7279179wrr.39.1674420870881;
        Sun, 22 Jan 2023 12:54:30 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g2-20020a5d64e2000000b002be063f6820sm23962514wri.81.2023.01.22.12.54.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 12:54:30 -0800 (PST)
Message-ID: <ca25448b-c9ca-0901-a0b1-be9b5093c7a7@gmail.com>
Date:   Sun, 22 Jan 2023 21:54:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Issue in man page mount_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
References: <20230122193124.GA28765@Debian-50-lenny-64-minimal>
 <5f1bfad1-e5a9-cae6-0f42-4d45fd08f6dd@gmail.com>
 <20230122202744.GB30840@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230122202744.GB30840@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------AdJwJk3KxIMPrjZmVT908ll1"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------AdJwJk3KxIMPrjZmVT908ll1
Content-Type: multipart/mixed; boundary="------------8c631p3Ke2FZIuHa8qoqZJr7";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
 Jakub Wilk <jwilk@jwilk.net>
Message-ID: <ca25448b-c9ca-0901-a0b1-be9b5093c7a7@gmail.com>
Subject: Re: Issue in man page mount_namespaces.7
References: <20230122193124.GA28765@Debian-50-lenny-64-minimal>
 <5f1bfad1-e5a9-cae6-0f42-4d45fd08f6dd@gmail.com>
 <20230122202744.GB30840@Debian-50-lenny-64-minimal>
In-Reply-To: <20230122202744.GB30840@Debian-50-lenny-64-minimal>

--------------8c631p3Ke2FZIuHa8qoqZJr7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEvMjIvMjMgMjE6MjcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IEhlbGxv
IEFsZWphbmRybywNCj4gT24gU3VuLCBKYW4gMjIsIDIwMjMgYXQgMDk6MTA6NTNQTSArMDEw
MCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBPbiAxLzIyLzIzIDIwOjMxLCBIZWxn
ZSBLcmV1dHptYW5uIHdyb3RlOg0KPj4+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xs
b3dpbmcgd2FzIGZvdW5kOg0KPj4+DQo+Pj4gSXNzdWU6ICAgIG1vdW50IHBvaW50IOKGkiBt
b3VudA0KPj4NCj4+IFRoaXMgY2FuIGJlIFdPTlRGSVguDQo+Pg0KPj4gU2VlOiA8aHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbWFuLzIwMjIxMjA1MTIzODA5LjVwNjZqbXBhbGhk
NGJob3FAandpbGsubmV0L1QvI3U+DQo+IA0KPiBEb25lLg0KPiANCj4gKEkgdGhvdWdodCB5
b3Ugd2VyZSBzdGlsbCBpbnZlc3RpZ2F0aW5nLCBoZW5jZSBteSByZXJlcG9ydCkuDQoNCkkn
bSBub3QgZXhwZXJpZW5jZWQgZW5vdWdoIGluIHRoZSB0b3BpYyB0byBiZSBhYmxlIHRvIGNv
bWUgdXAgd2l0aCBjb25zaXN0ZW50IA0KYW5kIHByZWNpc2UgbGFuZ3VhZ2UuICBJJ2xsIGxl
YXZlIHRoYXQgZm9yIG90aGVycy4gOikNCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gDQo+IEdy
ZWV0aW5ncw0KPiANCj4gICAgICAgICAgICAgSGVsZ2UNCj4gDQo+IA0KPiANCg0KLS0gDQo8
aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------8c631p3Ke2FZIuHa8qoqZJr7--

--------------AdJwJk3KxIMPrjZmVT908ll1
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPNooUACgkQnowa+77/
2zJK1w/+LHcL8QdMZtIavQOC057Pr1Z958fIwkrLg46SGnKF3NcyBJW8Ah6PvGkA
4i+BA8Ej1SPhpeSINLRsqmDw8BFJGthSyIY7a68n2CkQ+CJlOtwULpB7QFokinvw
Q22d4w098Zx5banhjmLFgfFWV6JAJFamfjUobMprQ09WBqPE2nrAL/agXXubRxsS
yASgHRve/rS9KFfyuocEwKdvAIWpQdeGfRDy/cZv8EebCz3s2uV+WcfRsz0aT9kV
stoQXvPF+HU6VXcfAWR3US3X3FqoePyyCPssvtZcK9DpoMAXE0xPk28HaF2kAZZA
1ReJ672NjSgnIveFea/SFQiNVe3WbHPvuY1w5KTcdFJRktDVsj3b4q3Aur2rb5ER
BnIOtoISKdR+Uoi1f/lEpWA55TYY43l2nIH1D71kfaqVBKPyQ8Jo2kt6C5QEwSCU
agOOL0mgScR+DwZg/O34x76g4NXbE6Bwzg5Zefi/5DZxZ8bG8fvyibr1zvEH73vp
tN2KsBOBPLldoI6H+GilIm2Blo+sEXTIXSmyaD03nxXtlfq8eCAfk09zzq/LxRTQ
flPpOQCv2K5a0rFw8qk1e9GYJ+8F7X7JhbVslBJ1pu8NfobI0b9kqVlUdZxPcimw
EdtH7fQMQbnc6IbFSTD64O5xPbDKjl5RYFn9SmkppRk62XKnxa8=
=Y/6S
-----END PGP SIGNATURE-----

--------------AdJwJk3KxIMPrjZmVT908ll1--
