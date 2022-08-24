Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97D455A0449
	for <lists+linux-man@lfdr.de>; Thu, 25 Aug 2022 00:51:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229565AbiHXWvx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Aug 2022 18:51:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbiHXWvv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Aug 2022 18:51:51 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B35994D147
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 15:51:50 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id m17-20020a7bce11000000b003a5bedec07bso1721359wmc.0
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 15:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=KGJYFceC/yi5h+yHPlEopeZ5viJeWLq48WIRO5O+WT4=;
        b=f90+RLw5nExf6whNpr+KzQFwIPmKa4xbDJ9ah96n8B3kGhHK1zCD6ymKs4+IF701up
         8kFVkgOGYAd0TItwAOOxdoBu5v+Q1SgYK/eys9ITKtkm9tx/9g2P8pz25oUr+oc4ZTW1
         RntQZ4WHpNadbYIhC3cdvTczh2wqcDKcNHfP962CzlU8VYxpzCk89O1H6gSBUhdNRoc4
         3aUWjh22Zyj9oQ5Ti7O9ZB9nFjR9La9pqBRiS+cJnpOC59u2zip5az9mqJ81kX3KZWPc
         GqQnTkI1eKIsqxr1w7jd6LgMc86u6XbrH/iTYKD7Rcy7SE8qVhqegOX4HD0vfXV4iSn2
         /aUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=KGJYFceC/yi5h+yHPlEopeZ5viJeWLq48WIRO5O+WT4=;
        b=ZHaTzlOYes3bc7PE1kv+i/22jgITqOVHYs+y3Pd9S5GYVMuf9KATH5BmsxLIGm/KV8
         ZOiPipHQmUcqMZKCfWcniRDZVcJYR+EV+0iD1XZT+OeQGDV8wgyw6+VWcquYM1kfykfe
         ZhLT2YJmqXnhLmypPIjVFNbMMf6GjPQiFiEnXS1U6kZiYFbQ1dHOkFojIOkj5fuUAcjg
         0AKXZAkhAK4OaxFI1P7dl9ApzdJiqYOiKaK+9SRraEvCQylZCkAuZOGtc40eyS6dQDpe
         N9HHTcYr++CkD8Q5JcoLCRybcg8mMWu4SICGLZFAU/eweaIqrKmFb4rkTWRgLfrtMo7C
         2lcA==
X-Gm-Message-State: ACgBeo1NtICNIJPyOBvD2Fa5jxeBBm8h4IRJetGmcFk0NamC5vTEeuHZ
        SRZ4DRHBazfuejpTbO3U19E=
X-Google-Smtp-Source: AA6agR7yTYxP8X1A7NcGN3Z/ckblg6/LE85v7x7/lr0RVj4Td28xNezV0etGKND+j5nBWUc9T4AVkw==
X-Received: by 2002:a1c:7714:0:b0:3a5:de9d:b15f with SMTP id t20-20020a1c7714000000b003a5de9db15fmr487067wmi.95.1661381509213;
        Wed, 24 Aug 2022 15:51:49 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l25-20020a05600c1d1900b003a62052053csm4110827wms.18.2022.08.24.15.51.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 15:51:48 -0700 (PDT)
Message-ID: <d22dcd47-023c-8f52-d369-7b5308e6c842@gmail.com>
Date:   Thu, 25 Aug 2022 00:51:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: Update bpf-helpers(7) man page
Content-Language: en-US
To:     Quentin Monnet <quentin@isovalent.com>,
        Jakub Wilk <jwilk@jwilk.net>,
        linux-man <linux-man@vger.kernel.org>
Cc:     Rumen Telbizov <rumen.telbizov@menlosecurity.com>,
        Daniel Borkmann <daniel@iogearbox.net>
References: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
 <a62a00a3-e673-8874-73b2-57e8d9c362c4@gmail.com>
 <CA+FoirA75vZgYaDdNfJGUwR6sVCYZ6YL4T3mN_LNPpzeJ5pYhg@mail.gmail.com>
 <6310b542-3a92-e072-b369-25e370036626@gmail.com>
 <CACdoK4KwzbRFZ+_HDd6wybzePAHy40Pc3p19uu3XburddOuC3A@mail.gmail.com>
 <b62b15e5-398d-6d17-dedf-532b70208299@gmail.com>
 <CACdoK4KuoRpTdyLqtPTbctHWHtfQTNgZoKunVC_f7T_y4ATF5g@mail.gmail.com>
 <7d125b8d-9873-b001-dae2-a78d3891f144@gmail.com>
 <CA+FoirA-FeYeA5ZPgCvo55Hg_dfe7dT54Co8CkU9wW8yemFcJA@mail.gmail.com>
 <fdec5bc8-1204-db0f-1f3e-86d7a2de8b5c@gmail.com>
 <20220824160259.bxyr6pxagaaoqaev@jwilk.net>
 <32665572-6128-82e7-27b2-eb3817fe5ac7@isovalent.com>
 <CACdoK4+zk_RjS_DAAvWVfDBoBP--2DESQO-1nGNmGq2vhbZqqA@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CACdoK4+zk_RjS_DAAvWVfDBoBP--2DESQO-1nGNmGq2vhbZqqA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------49PCTog7DEVgA8KdNEB05fI4"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------49PCTog7DEVgA8KdNEB05fI4
Content-Type: multipart/mixed; boundary="------------06I6Mn1s91AWFawsM0rSKOfn";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Quentin Monnet <quentin@isovalent.com>, Jakub Wilk <jwilk@jwilk.net>,
 linux-man <linux-man@vger.kernel.org>
Cc: Rumen Telbizov <rumen.telbizov@menlosecurity.com>,
 Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <d22dcd47-023c-8f52-d369-7b5308e6c842@gmail.com>
Subject: Re: Update bpf-helpers(7) man page
References: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
 <a62a00a3-e673-8874-73b2-57e8d9c362c4@gmail.com>
 <CA+FoirA75vZgYaDdNfJGUwR6sVCYZ6YL4T3mN_LNPpzeJ5pYhg@mail.gmail.com>
 <6310b542-3a92-e072-b369-25e370036626@gmail.com>
 <CACdoK4KwzbRFZ+_HDd6wybzePAHy40Pc3p19uu3XburddOuC3A@mail.gmail.com>
 <b62b15e5-398d-6d17-dedf-532b70208299@gmail.com>
 <CACdoK4KuoRpTdyLqtPTbctHWHtfQTNgZoKunVC_f7T_y4ATF5g@mail.gmail.com>
 <7d125b8d-9873-b001-dae2-a78d3891f144@gmail.com>
 <CA+FoirA-FeYeA5ZPgCvo55Hg_dfe7dT54Co8CkU9wW8yemFcJA@mail.gmail.com>
 <fdec5bc8-1204-db0f-1f3e-86d7a2de8b5c@gmail.com>
 <20220824160259.bxyr6pxagaaoqaev@jwilk.net>
 <32665572-6128-82e7-27b2-eb3817fe5ac7@isovalent.com>
 <CACdoK4+zk_RjS_DAAvWVfDBoBP--2DESQO-1nGNmGq2vhbZqqA@mail.gmail.com>
In-Reply-To: <CACdoK4+zk_RjS_DAAvWVfDBoBP--2DESQO-1nGNmGq2vhbZqqA@mail.gmail.com>

--------------06I6Mn1s91AWFawsM0rSKOfn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUXVlbnRpbiwNCg0KT24gOC8yNS8yMiAwMDowNywgUXVlbnRpbiBNb25uZXQgd3JvdGU6
DQo+IA0KPiBPdXQgb2YgY3VyaW9zaXR5LCBkaWQgeW91IHNwb3QgdGhlc2UgbWlzdGFrZXMg
YnkgcmVhZGluZyB0aGUgcGFnZSwgb3INCj4gZGlkIHlvdSBydW4gYSB0b29sIG9uIHRoZSBk
b2N1bWVudD8NCg0KSSBhc2tlZCB0aGUgc2FtZSB0aGluZyBhIGZldyBkYXlzIGFnbyA6KQ0K
DQpBbnN3ZXIgaXMgaW4gbGludXgtbWFuQDoNCg0KPGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2xpbnV4LW1hbi9lYjZhMWU0MS1jNDhlLWFjNDUtNTE1NC1hYzU3YTJjNzYxMDhAZ21haWwu
Y29tL1QvI200YThkMWIwMDM2MTY5MjgwMTNmZmNkMTQ1MDQzNzMwOWFiNjUyZjlmPg0KDQpD
aGVlcnMsDQoNCkFsZXgNCg0KDQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3
dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------06I6Mn1s91AWFawsM0rSKOfn--

--------------49PCTog7DEVgA8KdNEB05fI4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMGq30ACgkQnowa+77/
2zL3OA/7BxK5IomqrJyG/HGAj9spjFcgVr8MFwB7TxCq6wT47+NE4ck45G5s50IA
Emhsb62/KoOrUoGz5UV3w9euIM+SOnrRpyRIu3HjoPKkHSOMXuStRxpgpzWaV1eo
KQCXbIzwTElUwZQx/asSn1bXCC5P/cWu1gWAT79rjsh2iDf+Sw5UKyN28xtSb+2e
DZzOZEqvdSYBGm7XkTeTLgkhAllnQ70t6epCIzcmzwqNQbXwFjfZoi9MHEjYf5wT
abzgs4gfhKuedvjVuJPDb1PhUFxegbD0ZNYdr4Q6jQdOtiqi8l8A6Zo+V/Kmi4Tl
d93OZlwC3Pwa7EOgJeRUVvEA0YJtf99POsDpWerzRPhqPgtNj1fCexYYiaoLQJmS
mM2qdyG9dAXfDfrVYzDDPZwI3QBPoSNuoTbm0VUB5b8j25EYSEkD6pPxnKMynQIA
nMi+g/yqKHMCVsbzspmFnPR47KGl4/lb78+zSVq3M17HHA0jPb1kIg6tptLp6EuA
xWdcYjjf1zFGMN5BBJBsoZBp4Ljo/aDl9WO0Azkogf+VY3LEiIa5N0ADUP3Cum7g
ybAsFbVPKUAHdv7MGyy6H+mUz7hpFolOjCliTL3HUFgtD4MuY68ZVsZ+ysU3VaHl
72HAREWJvdh8CKnklB81GFLQvh35tXrPDmLgxdL3gSQTxsTLLW8=
=FF/9
-----END PGP SIGNATURE-----

--------------49PCTog7DEVgA8KdNEB05fI4--
