Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0BCD65850E6
	for <lists+linux-man@lfdr.de>; Fri, 29 Jul 2022 15:28:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234954AbiG2N2D (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 09:28:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236576AbiG2N2B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 09:28:01 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32D7368DF4
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 06:27:58 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id u14-20020a05600c00ce00b003a323062569so2497418wmm.4
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 06:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=ujxF2rgb53khEI84FsDJzuyznZGEQ7P/crnnlzyEnTU=;
        b=IsDuXaNvCYek1jYoIh6yZusG7tYL5YTONxSTavfxDr51jTtQnyi2ruVZ/Hyi/zuxCt
         zEZ1u3ltS2Na9gCImt+P1P5Km5lmIR+CSpkaYVahtz9Yp7SnE3F5HpjIVL9aWzK6it/n
         aMrLUuGAnjK0dseifiIfmj2ztimQm/WEmLeB7u1EtRGBqYVVCWo8OkXd209hXZjuPbsf
         nHNOlOAxjFaWQ6abJtNR5lB6Xx72Jn9RtnpT9haG+EFPi0Onif/fpQFAgWdif/hlghCx
         IuLpDykBzcPEc6kfteL/1BYfTBsdNHmAaSqPGYSdEXzJm35KVno0f2ra86+MSGUJTgEG
         i6Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=ujxF2rgb53khEI84FsDJzuyznZGEQ7P/crnnlzyEnTU=;
        b=YHyv4ZlJEoJxAXgPmbe2686xKDT66kc4o2QexvdBByJVz5/oJekF+DiXfp2LSuujSd
         fPrefEutrTnyTyU7mOYoq5qpiNpEAXvDf705jyCmOKQDavX5TSneri9LjFPcrULSGpNs
         bT2cEsOtpG9FZGj0xdU37jGG8GCm+s3vkpVHJ2vuPAyIUvjSWpjtYpCYp/rqJEblUSo+
         gM35Zlup5xOM6JB+68dVd4ycSO7Ewy8JOZEpjDKHz5zY7+ur8jWprGNZ+O9cTuFGRizL
         i4Owh8wgAgMW3mpDbPlC0ZPA0fgEUp+emO2Jmhwq841MUjaYSKA1EbWFs9M8m83+BVog
         8tCw==
X-Gm-Message-State: AJIora8jlA6J84FA7pWBmVvbiJata77NC9KKvRPMFNj6AgIwMAZvjLAQ
        wel2Y1TSnWZM4D0wQD5afQ4=
X-Google-Smtp-Source: AGRyM1vBeUjMVwUKCIcNx6c+IusrCz+zIkjlW8YYIFdXpXIPj8w2cskzYImEgz+gMT/iC5j0YlMbTA==
X-Received: by 2002:a05:600c:a41:b0:39c:1512:98bd with SMTP id c1-20020a05600c0a4100b0039c151298bdmr2915119wmq.88.1659101276768;
        Fri, 29 Jul 2022 06:27:56 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id u11-20020a056000038b00b0021e4829d359sm3969195wrf.39.2022.07.29.06.27.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jul 2022 06:27:56 -0700 (PDT)
Message-ID: <0aaf05d3-dc7f-660a-641d-be75d053d3f9@gmail.com>
Date:   Fri, 29 Jul 2022 15:27:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: man -M tcl (was: All caps .TH page title)
Content-Language: en-US
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     g.branden.robinson@gmail.com, linux-man@vger.kernel.org,
        groff@gnu.org
References: <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
 <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
 <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
 <YtxMD7ovz1Xy/cfq@asta-kit.de>
 <62937033-a3a7-05d0-fc68-a227e2b67bde@gmail.com>
 <Yt1dz0+xfRuyCcXo@asta-kit.de>
 <9e8a291d-672f-baec-3980-ae265712bd7b@gmail.com>
 <YuFafSnjPxSCLP8B@asta-kit.de>
 <d9221f6d-9ba3-f690-8fad-a59a9dc65c89@gmail.com>
 <YuPfLqJldAA9XP9t@asta-kit.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <YuPfLqJldAA9XP9t@asta-kit.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------QLGvKZd13xqlV0NmcSzUeU3S"
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
--------------QLGvKZd13xqlV0NmcSzUeU3S
Content-Type: multipart/mixed; boundary="------------4fSIvS6RchDlcvU9ucZhPIqW";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>
Cc: g.branden.robinson@gmail.com, linux-man@vger.kernel.org, groff@gnu.org
Message-ID: <0aaf05d3-dc7f-660a-641d-be75d053d3f9@gmail.com>
Subject: Re: man -M tcl (was: All caps .TH page title)
References: <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
 <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
 <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
 <YtxMD7ovz1Xy/cfq@asta-kit.de>
 <62937033-a3a7-05d0-fc68-a227e2b67bde@gmail.com>
 <Yt1dz0+xfRuyCcXo@asta-kit.de>
 <9e8a291d-672f-baec-3980-ae265712bd7b@gmail.com>
 <YuFafSnjPxSCLP8B@asta-kit.de>
 <d9221f6d-9ba3-f690-8fad-a59a9dc65c89@gmail.com>
 <YuPfLqJldAA9XP9t@asta-kit.de>
In-Reply-To: <YuPfLqJldAA9XP9t@asta-kit.de>

--------------4fSIvS6RchDlcvU9ucZhPIqW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNy8yOS8yMiAxNToyMiwgSW5nbyBTY2h3YXJ6ZSB3cm90ZToNCj4+IFdoYXQgYXJlIHlv
dXIgdGhvdWdodHM/DQo+IA0KPiBZZXMsIGV2ZW4gdGhvdWdoIC91c3IvbG9jYWwvc2hhcmUv
ZG9jL3BrZ25hbWUvbWFuL21hbiogaXMgYSBiaXQgbG9uZywNCj4gaXQgbWFrZXMgbW9yZSBz
ZW5zZSB0aGFuIHBhdGhzIGxpa2UNCj4gDQo+ICAgIC91c3IvbG9jYWwvY3lydXMvbWFuLw0K
PiAgICAvdXNyL2xvY2FsL2hlaXJsb29tLWRvY3Rvb2xzL21hbi8NCj4gICAgL3Vzci9sb2Nh
bC9saWIvZXJsYW5nMjEvbWFuLw0KPiAgICAvdXNyL2xvY2FsL2xpYi9ub2RlX21vZHVsZXMv
bnBtL21hbi8NCj4gICAgL3Vzci9sb2NhbC9saWIvc3RrLzQuMC4xL21hbi8NCj4gICAgL3Vz
ci9sb2NhbC9saWIvdGNsL3RjbDguNi9tYW4vDQo+ICAgIC91c3IvbG9jYWwvcGxhbjkvbWFu
Lw0KPiAgICAvdXNyL2xvY2FsL3NoYXJlL2Zpc2gvbWFuLw0KPiANCj4gVGhlbiBhZ2Fpbiwg
KmlmKiB3ZSBnbyB0aGUgLU0gYWxpYXMgd2F5LCB0aGVzZSBwYXRocyBhcmUgb25seQ0KPiBl
dmVyIHVzZWQgaW4gdGhlIG1hbi5jb25mKDUpIGZpbGUuICBTbyB3aGVyZSBleGFjdGx5IHRo
ZXkgYXJlDQo+IGhhcyBubyBtYWpvciBpbXBhY3Qgb24gdGhlIHVzZXIgYW5kIGlzIG1vcmUg
YSBtYXR0ZXIgb2Ygc3lzdGVtDQo+IGNsZWFubGluZXNzLg0KDQpZZWFoLCBJIGRvIHdhbnQg
dG8gaGF2ZSBzeXN0ZW0gY2xlYW5saW5lc3MsIGVzcGVjaWFsbHkgdG8gaGVscCANCnByb2dy
YW1tZXJzIG9yZ2FuaXppbmcgdGhlaXIgZmlsZSBoaWVyYXJjaHkga25vdyB3aGVyZSB0aGV5
IHNob3VsZCBwdXQgDQp0aGluZ3MuDQoNClNvLCBsZXQgaXQgYmUgPC91c3IvbG9jYWwvc2hh
cmUvZG9jL3BrZ25hbWUvbWFuL21hbio+Lg0KDQpJJ2xsIGhhdmUgYSBsb29rIGF0IHRoZSBQ
T1NJWCBtYW4gcGFnZXMgYW5kIHNlZSBpZiB0aGVyZSdzIHNvbWV0aGluZyBJIA0KY2FuIGRv
IHRoZXJlLg0KDQpUaGFua3MsDQoNCkFsZXgNCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0K
PGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------4fSIvS6RchDlcvU9ucZhPIqW--

--------------QLGvKZd13xqlV0NmcSzUeU3S
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLj4FQACgkQnowa+77/
2zJBvw//ZjhfJd9VVeFQnZuxAo8e8hyrUGogAmeWecTcGFeobF+4wN7eF4GQets6
xRdg3NQTrT/819KLVr17yR2BeuTlZKh29AM1phLy2xsKtWPd18Cg3lRLTs5Oj/CY
na2YfthqaLASXxjjU/BaO5+U9pns4sAhhKiV+R+KjG3jVqW7k4YdQmRg/q8JIfX6
NhXraYK5ysZ0Y1F+j4DFl2FPjMwSOtPm6uDN0e2GG68PdWuZXrwcF4zwL+greyWk
g7Xu6XJ/F8PXU7zpKPWlEDqKZOANxo3ZgdECN3Kg/a1XMggjPIEu3cuzQwCRUbft
F5qpZq6wEJHVK3S9VMU/Irogwl7qRM1XeWQMvQyN6RHFagBSbODnDsf2psEQGDYd
a9soW2PWfTJCC0MXvQ0G3EjyaEMHLagZnmmhcEU6p/CGmPoz3+h52/Ldym3pe/bI
emjdj97Rf/MvGqAkeZ8a5PyOAx8bRyxWupmZYR0oYMgSRCSawX1QojLpQF4Xm3PQ
42ntDLpWZmWClREm7miGt8xr17qUzU71GCTv7v76LHxmKb2+MABO02WJu8GtSGoX
ynPyIGzW0FRAfUYeOqVBW3dzaOciFmUfQxlS/YXDoXY5uAIflNUzKSVLlT0VKevj
s4wVTB60yRBueHMjigsRATSVFxLIPwjTBizBWaUIJJHK9bgSb/M=
=LRtm
-----END PGP SIGNATURE-----

--------------QLGvKZd13xqlV0NmcSzUeU3S--
