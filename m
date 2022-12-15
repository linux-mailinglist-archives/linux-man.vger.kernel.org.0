Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D9D864DAF0
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 13:13:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230098AbiLOMNt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Dec 2022 07:13:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230004AbiLOMNs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 15 Dec 2022 07:13:48 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D3692E6BB
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 04:13:47 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id y16so2840345wrm.2
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 04:13:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EDvmmSSrPPvT2KXn0aiEF7TqeH5i7BORalUkugN4rl8=;
        b=nb2/K2/b3YfxL58wCMkm9xNogtg82r/4PfXxuZROBFQ5eGl/6UCNLqH3+2Jk5WGO+1
         QFjqkugWBwI+BZJU4G5fbf8Z8qgxBKBOlWvhl+H3oXJh92avqfohXhOy8/U7GPGtmEQz
         9NUazYy+wfY18nBZ2oCmjhX9wnc0efHNGT1kNR7gS63AtSle2trLkpoiAzgeCkAauZDO
         bBmnG/qr3H1bwwQoH3Yk1n73Ip4VXOB6B5+92tzkukRBQax7Z2Jn+sQ7SaOcvd9Vw+P5
         74YyY44JUMRPDTW9V20hu0OjXAlJEh4VsCJSUbOQyV5mNBXhSvplY7rlKQIFvtOxg1bj
         Jqmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EDvmmSSrPPvT2KXn0aiEF7TqeH5i7BORalUkugN4rl8=;
        b=Dq2+X2xbhZUFBeCAv73ojR7FvxIyipBcav/QtmDWaSlVdizJa/RQD0fuqRGAdvsOgN
         G4GcH521yDxBxPmgUiYgqjc0p11RYPb8mnvpCy1i1SahuGkpFs72gXqXdHGPSpw8X1OE
         yPzKFRti8kwQUO/r0OP6edc3IPyIY3/3rwdkOq+OkM8SEyUmDCxNiX6SiZ84LeAEDrkD
         VH6Oksx1bR8puMOdiRO4pOYoHr6ymaAk5Eu0TATz5wwU3ZbOPUJwSbNRcCP2lIICDSj2
         hnLDu1Va7kGb3LBSd24iPTmcNrSHDBs2wvhc4DxVEivcJytxxyXmIoz/UQPZljSvIs9y
         NQmw==
X-Gm-Message-State: ANoB5pmkiyebEGZ+NkXpFarTEtcnKp+4Aug0FtbyzhU9HLPLbETQqT2P
        Rp7FYQtqwPJG8eUq/UEBklWkehtoHd4=
X-Google-Smtp-Source: AA0mqf6lHnMOYj1FW/Zih7eLDT00cpqJYBVglOLSrIXpTBAsbdy2XYH7CqazfwiPMxx/B5oACu9XEQ==
X-Received: by 2002:a5d:6e0d:0:b0:24f:11cc:86b7 with SMTP id h13-20020a5d6e0d000000b0024f11cc86b7mr10667604wrz.41.1671106425675;
        Thu, 15 Dec 2022 04:13:45 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id co22-20020a0560000a1600b0024228b0b932sm7224059wrb.27.2022.12.15.04.13.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Dec 2022 04:13:45 -0800 (PST)
Message-ID: <0c1be2b4-1b92-785c-a6f1-82ccb145d3be@gmail.com>
Date:   Thu, 15 Dec 2022 13:13:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] utimensat.2: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org
References: <20221215074215.3741-1-jwilk@jwilk.net>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221215074215.3741-1-jwilk@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------CXhnt7A6XUVlGzmtMB0Xr7Gj"
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
--------------CXhnt7A6XUVlGzmtMB0Xr7Gj
Content-Type: multipart/mixed; boundary="------------M0MNgs6aMIKDSKvUJe5UVY9U";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org
Message-ID: <0c1be2b4-1b92-785c-a6f1-82ccb145d3be@gmail.com>
Subject: Re: [PATCH] utimensat.2: tfix
References: <20221215074215.3741-1-jwilk@jwilk.net>
In-Reply-To: <20221215074215.3741-1-jwilk@jwilk.net>

--------------M0MNgs6aMIKDSKvUJe5UVY9U
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIsDQoNCk9uIDEyLzE1LzIyIDA4OjQyLCBKYWt1YiBXaWxrIHdyb3RlOg0KPiBT
aWduZWQtb2ZmLWJ5OiBKYWt1YiBXaWxrIDxqd2lsa0Bqd2lsay5uZXQ+DQpQYXRjaCBhcHBs
aWVkLiAgVGhhbmtzIQ0KDQpBbGV4DQoNCj4gLS0tDQo+ICAgbWFuMi91dGltZW5zYXQuMiB8
IDIgKy0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4yL3V0aW1lbnNhdC4yIGIvbWFuMi91dGltZW5z
YXQuMg0KPiBpbmRleCA0MDQ4MzJlNWMuLmM3ZTMwY2U3NiAxMDA2NDQNCj4gLS0tIGEvbWFu
Mi91dGltZW5zYXQuMg0KPiArKysgYi9tYW4yL3V0aW1lbnNhdC4yDQo+IEBAIC0zNTIsNyAr
MzUyLDcgQEAgY2FwYWJpbGl0eSk7IG9yLA0KPiAgIC5cIiB0cmVhdGVkIGxpa2UgdGhlICh0
aW1lcyA9PSBOVUxMKSBjYXNlLg0KPiAgIHRoZSBmaWxlIGlzIG1hcmtlZCBhcHBlbmQtb25s
eSBvciBpbW11dGFibGUgKHNlZQ0KPiAgIC5CUiBjaGF0dHIgKDEpKS4NCj4gLS5cIiBFWFQy
X0lNTVVUQUJMRV9GTCBFWFRfQVBQUEVORF9GTCBhbmQgc2ltaWxhciBmbGFncyBmb3INCj4g
Ky5cIiBFWFQyX0lNTVVUQUJMRV9GTCBFWFRfQVBQRU5EX0ZMIGFuZCBzaW1pbGFyIGZsYWdz
IGZvcg0KPiAgIC5cIiBvdGhlciBmaWxlc3lzdGVtcy4NCj4gICAuXCINCj4gICAuXCIgV2h5
IHRoZSBpbmNvbnNpc3RlbmN5ICh3aGljaCBpcyBkZXNjcmliZWQgdW5kZXIgTk9URVMpIGJl
dHdlZW4NCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------M0MNgs6aMIKDSKvUJe5UVY9U--

--------------CXhnt7A6XUVlGzmtMB0Xr7Gj
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmObD3EACgkQnowa+77/
2zIIjxAAin/Xr3GUOJs55g5guZXNPUMmSktomQGH4PPt0n/QUlYRsqKWjBKDNrMA
Y6TlEbcUyH3fQQtNC4MWaSgQSEqBVjlC201w5ZrpBZEBOUZJvW0ivdOTQGbS06HI
uhySfGfLaYKJo/mL7JMdPM2q+gMg4aeI1Mq9tp6cP1R6A2b862ufX54Roaeu+WF/
+mgJfod0CghJhbSg2zJ9auxpcc8EuanwuSEOfZWYSI7sD+UMXHUp/VtT7ldSD2q+
MKiKXmabCbtO7AT80UtiP10DKAje+N0908zxloowCDX/DIvJwM/+tyW+GbDdkFaQ
/tjGpXv6b04D1HERB50utmy1jmd2UHwSr+1VEVvwOUEg5jRO/ZO8cyDYstupy8xZ
BNigQxZqUmVGcov3Q5D3TmifX68q2nAEmc5uFPd9UzBfIBrkhRwJhcPCV7lm7VCv
wfzpw66TYGiQcIgXcQghMxvhx3r5Hl+jNV+1xYaDkbZocWodx96FiNYZOWZVf0hK
cnPvWp6aSb+KA36aPz9Da6dL3xAwmnelaJss2WjYB2LY5rR5MS6m4GzAqodcp3QP
F3LBrfFCBkGDoXQseteax+OE25VMg8siHt5YZuqfI7BW4MlnXUIE+8gTZY8iRvFu
Ign/FXPrKIqjJhuJXiC4HVNnntF/0eBCRd2KXuKV1bFA3mpSK04=
=MPHs
-----END PGP SIGNATURE-----

--------------CXhnt7A6XUVlGzmtMB0Xr7Gj--
