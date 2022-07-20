Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2A0E57B431
	for <lists+linux-man@lfdr.de>; Wed, 20 Jul 2022 11:50:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231529AbiGTJuS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Jul 2022 05:50:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231852AbiGTJuR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Jul 2022 05:50:17 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A496D5F54
        for <linux-man@vger.kernel.org>; Wed, 20 Jul 2022 02:50:15 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id bv24so1473834wrb.3
        for <linux-man@vger.kernel.org>; Wed, 20 Jul 2022 02:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:to:cc:references
         :content-language:from:in-reply-to;
        bh=4lCk5p0nnm66gre0KCDaSONxLpOJ52KK4UqYBm0Ldf8=;
        b=S1NvghVsOqfwdrK3CuweWRrLbzvuVKdz41CLSdi5dN8mh/aJvV2+J+08NI3sAC60Dt
         5P03p5Quq9ZAq8gnQCyTf+t0W/GJaQWJmRKE38pnuORLRvngvPFMWCWAWWs6K8h6A2i8
         831hrddnmqUfeQTjSXaVzhdfTQI5e7YZhsxbNnQKgWUusC7GzqCnUXyxys04pBtK6FGk
         8f46HdMPX4H0Yie3tvTi9fQKCniUZUs1qf1or/Onx7sYHvOeU1w2e2ljdKF14OSUKoBC
         Wm6Ouehax7oLmJVfg6W4NVKYdP2cv44mKwSnjTtS73QuIg0ajBYDJln6fImheaU0r+g5
         JKDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :to:cc:references:content-language:from:in-reply-to;
        bh=4lCk5p0nnm66gre0KCDaSONxLpOJ52KK4UqYBm0Ldf8=;
        b=qCiuhM4duUI4hc0vv/KQQzfpUYOmv4ZyXx4AOQktBA3OehShbFv5a5WiK+evJfO7c4
         LnQgDte4YKWpKAasganOKnoMZpNpxk6tcVTUU9HLfww5nd8LT7cKGBbts52DHb/fb0la
         SwjZLe+plVnJwgZA6nZAnegW5pFKCxUQ0aAszz0XNU2q/uoM+XxGEJb4z6hIKiFYYRY5
         dRWlg5luCKv6JQLYaL7QSjk+tSWqUsiXYVt+3HR/Eaiq0VEWEXKUJnIVPUizJi2nQZUI
         XOMkv/kRqF87/k3i8ttmS8Q72SOfYNf/W9xHLpG5PZd64Ad0cfWE5HtQfBnTQ6yJzkWq
         xvGQ==
X-Gm-Message-State: AJIora8PD/gu4h3hqxlLJK2PWrZkBpigWlgnSxfmmcnepBi7rccjYHpc
        ihjrFlTHVkIkTA4j28h3T+Pj21XVdD8=
X-Google-Smtp-Source: AGRyM1tl0GRI999JBQsr7Si7FPMwAv7ky/o9kPmjP+L5YSg/1QGCfp/FU49WGPAvNj+XJTG31ge/Lw==
X-Received: by 2002:a5d:434a:0:b0:21d:aa7e:b1bb with SMTP id u10-20020a5d434a000000b0021daa7eb1bbmr31466322wrr.619.1658310614051;
        Wed, 20 Jul 2022 02:50:14 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n9-20020a05600c3b8900b003a2d47d3051sm2245337wms.41.2022.07.20.02.50.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jul 2022 02:50:13 -0700 (PDT)
Message-ID: <6310b542-3a92-e072-b369-25e370036626@gmail.com>
Date:   Wed, 20 Jul 2022 11:50:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: Update bpf-helpers(7) man page
To:     Rumen Telbizov <rumen.telbizov@menlosecurity.com>
Cc:     linux-man@vger.kernel.org, quentin@isovalent.com
References: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
 <a62a00a3-e673-8874-73b2-57e8d9c362c4@gmail.com>
 <CA+FoirA75vZgYaDdNfJGUwR6sVCYZ6YL4T3mN_LNPpzeJ5pYhg@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CA+FoirA75vZgYaDdNfJGUwR6sVCYZ6YL4T3mN_LNPpzeJ5pYhg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------7RTZZT64glZr51Xh9oanWdHO"
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
--------------7RTZZT64glZr51Xh9oanWdHO
Content-Type: multipart/mixed; boundary="------------0DDs5wTrV3s0lzvdwbirmhTP";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Rumen Telbizov <rumen.telbizov@menlosecurity.com>
Cc: linux-man@vger.kernel.org, quentin@isovalent.com
Message-ID: <6310b542-3a92-e072-b369-25e370036626@gmail.com>
Subject: Re: Update bpf-helpers(7) man page
References: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
 <a62a00a3-e673-8874-73b2-57e8d9c362c4@gmail.com>
 <CA+FoirA75vZgYaDdNfJGUwR6sVCYZ6YL4T3mN_LNPpzeJ5pYhg@mail.gmail.com>
In-Reply-To: <CA+FoirA75vZgYaDdNfJGUwR6sVCYZ6YL4T3mN_LNPpzeJ5pYhg@mail.gmail.com>

--------------0DDs5wTrV3s0lzvdwbirmhTP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUnVtZW4sDQoNCk9uIDcvMTkvMjIgMTk6MjEsIFJ1bWVuIFRlbGJpem92IHdyb3RlOg0K
PiBIaSBBbGVqYW5kcm8sDQo+IA0KPiBUaGFua3MgZm9yIGZvbGxvd2luZyB1cCBvbiB0aGlz
Lg0KPiBRdWVudGluIHdpbGwgc2VuZCB5b3UgdGhlIHNjcmlwdCB0aGVzZSBkYXlzIGZvciB5
b3UgdG8gcmVydW4uDQo+IEhvd2V2ZXIsIEknbSB3b25kZXJpbmcgaWYgdGhlcmUncyBhIHdh
eSB0byBydW4gaXQgYXV0b21hdGljYWxseSB3aGVuIGEgY2hhbmdlIGlzDQo+IGRldGVjdGVk
IG9yIG90aGVyd2lzZSB3aXRob3V0IG5lZWRpbmcgbWFudWFsIGludGVydmVudGlvbj8gVGhp
cyB3YXkNCj4gdGhlIHB1Ymxpc2hlZA0KPiBwYWdlIHdpbGwgbm90IGdldCBvdXQgb2YgZGF0
ZS4gSSBhbSBub3Qgc3VyZSB3aGF0IHRoYXQgbWVjaGFuaXNtIG1pZ2h0IGJlIGJ1dA0KPiBq
dXN0IGEgdGhvdWdodC4NCg0KSSdtIG5vdCBzdXJlIGFuIGF1dG9tYXRlZCBtZWNoYW5pc20g
d291bGQgYmUgZWFzeSB0byBzZXQgdXAuDQpCdXQsIEknbSBwbGFubmluZyB0byBhZGQgYSBS
RUxFQVNFIGZpbGUgdG8gdGhlIG1hbi1wYWdlcyByZXBvIHdpdGggDQppbnN0cnVjdGlvbnMg
dG8gbWFrZSBhIHJlbGVhc2UuICBJIGNhbiBhZGQgdGhlcmUgYSBzdGVwIHRoYXQgcmVtaW5k
cyB0byANCnJlZnJlc2ggdGhlIGJwZi1oZWxwZXJzKDcpIG1hbnVhbCBwYWdlIGJlZm9yZSBl
dmVyeSByZWxlYXNlLg0KDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCkFsZWphbmRybyBD
b2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------0DDs5wTrV3s0lzvdwbirmhTP--

--------------7RTZZT64glZr51Xh9oanWdHO
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLXz80ACgkQnowa+77/
2zKXehAAmqsO73H5tTUHKjjBNWPDRGOYCLskqROBpk9SGvaZelwxgsQb5p3tTmZC
JmNdLUcDCGQ12ihKjtv0bFD+Fj2YgX10RzLMFu/5E0CpM+BWAxHZzlgyRF/KorCh
jQqRlK8qTWQ9coFKkpcaR8XDrU1NTWgQsYwlzFFJXUmQ/NiM68dPLxSqH9+yeq+f
vABnKQL4YABXky1iGrIrgqVMvvH7G8KnazlFjB92Goa52GQHWOIDsUdFOhu+tjUw
4GN3/FN9j3uZdVkWFs+tbz6idXHiL+5io4Pl9CSk2RPXmXsG8KecfVhXcRjAjsL4
oaayEGYwg+9aGIFM+4FDJuJeR7BLIY4qnQlyHTac6FLA6LyBS/7CvBm9LhB8/NZn
1jA6b0Rcn0I8jiOaLXwb7PEVYSXrbkSXIQTJsZIvhJpxs36Ds04R3Tx8bRXXUVIB
kQ5t3xMCV5M5dcV0r7Oqa47VGP68l6gQ2gBThV6LKvvzuTIb4ePsQ4YGdTkKev6J
uUQQ3TMEYP4m4IgYM4ryznIZG6s3qYgOxTSbM703kUxVCHCmxiWkxw0Bc7lcRbhM
nD0jVODVGgmNSihir34esKGnAroZhGihFzi0lKd8Tjsi/LYZquqhY5DUi/JWJZJw
7XYSiIGmV3tsynZmCS9UZCHEiWyTeAM8GBOxREiM3XUKduz186A=
=Evaz
-----END PGP SIGNATURE-----

--------------7RTZZT64glZr51Xh9oanWdHO--
