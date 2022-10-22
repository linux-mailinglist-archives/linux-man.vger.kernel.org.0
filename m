Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08E92608FD1
	for <lists+linux-man@lfdr.de>; Sat, 22 Oct 2022 23:46:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229556AbiJVVqO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Oct 2022 17:46:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229965AbiJVVqM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 22 Oct 2022 17:46:12 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F07E8FD78
        for <linux-man@vger.kernel.org>; Sat, 22 Oct 2022 14:46:10 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id n14so147485wmq.3
        for <linux-man@vger.kernel.org>; Sat, 22 Oct 2022 14:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WZDHlvMzVm6OUaBK0IF6CryO80uBvyC9K7JsMkPbaX4=;
        b=kpewdsiDGCTk+AktKYr/G348Ky9jN62eSa3YCTZENbm1sPdmMiG8MTTiq7sVczL1fs
         sUkYE4tJBc6/O4BpkG+7iPoB4SONRThqZIgE/cW233AFR4aJ35Ae3VXPlp9XWwRQoy5A
         eDWe7kBLbZcmwILDv61JOlEUPmNBIQkDYyDeE7tHJ0jMBpeXHVew6hEyS11ChriHaW4R
         jLL3MQauJLTYUrZlUdqLtJ5nRiqcr5ZREYZJ8JaBpv6bs3ky3gulE8XRVOSjpbkXe/Sa
         XCkrBvkhhLSwrOvL5fP+GEK/4hmWtfnanbKGPD/naD71Px5pEWxb4N0kfSFTQyyPct+R
         dREQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WZDHlvMzVm6OUaBK0IF6CryO80uBvyC9K7JsMkPbaX4=;
        b=ZDZHWvDOsZjjA9qPkPjWUFAJViV2REjocUSJiHrA7Pzxgmjoy+bahv0uxNnEUahKEV
         c/jVUW7XzQJtkgQYusshz0sWfuo+zfYPHBjXNSDwxEzkdMuVvedKumEAdDIo6J9Ry2Kg
         maj49ofktaIjFtnWdiOFxgYktvPDPnpQ0EQK4TJlLkYLJQ0GC2zF2d/Iwdk45bdq330X
         0mhqC68d17p7pvES4/+UFSK3kuEho73Zaij9kSwyRkZGUiDDitalwolTIpfGnVJ4AC3X
         yMphyJZoAQY0u9v0Yuj4nLPQVDmQQoQBMGmywcyAr73oCr+KTXNhlIxMVKSC82v1nLbF
         ueYg==
X-Gm-Message-State: ACrzQf1a3QC4pkFu4X9K7TLfWMH5Rz+PRvljxP46QCCEtlfQLMMXhznR
        rLh1qbD2DuDTKjURO3vc/+A=
X-Google-Smtp-Source: AMsMyM5zyDxcZedIRST+Dlc2iJWyVEIZ9RuOVJ3ZlV0SSJD5jrseP11Sm5XAGDNEqh0ReSQ2P7kG8A==
X-Received: by 2002:a05:600c:19d2:b0:3c6:fbb9:ca9a with SMTP id u18-20020a05600c19d200b003c6fbb9ca9amr17870914wmq.110.1666475168479;
        Sat, 22 Oct 2022 14:46:08 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n16-20020a5d6610000000b00236674840e9sm741825wru.59.2022.10.22.14.46.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Oct 2022 14:46:08 -0700 (PDT)
Message-ID: <da7b6cd8-9f60-49b1-37b3-bfd683286b2f@gmail.com>
Date:   Sat, 22 Oct 2022 23:46:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH] man-pages.7: use . consistently in bulleted list
Content-Language: en-US
To:     Mike Frysinger <vapier@gentoo.org>
Cc:     linux-man@vger.kernel.org
References: <20221022174301.11895-1-vapier@gentoo.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221022174301.11895-1-vapier@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------6aa9s40bkn65hIucCPXL1CG3"
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
--------------6aa9s40bkn65hIucCPXL1CG3
Content-Type: multipart/mixed; boundary="------------H6MEiPeRX2WdxwLxkXBji1EN";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Mike Frysinger <vapier@gentoo.org>
Cc: linux-man@vger.kernel.org
Message-ID: <da7b6cd8-9f60-49b1-37b3-bfd683286b2f@gmail.com>
Subject: Re: [PATCH] man-pages.7: use . consistently in bulleted list
References: <20221022174301.11895-1-vapier@gentoo.org>
In-Reply-To: <20221022174301.11895-1-vapier@gentoo.org>

--------------H6MEiPeRX2WdxwLxkXBji1EN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWlrZSwNCg0KT24gMTAvMjIvMjIgMTk6NDMsIE1pa2UgRnJ5c2luZ2VyIHdyb3RlOg0K
PiBTaWduZWQtb2ZmLWJ5OiBNaWtlIEZyeXNpbmdlciA8dmFwaWVyQGdlbnRvby5vcmc+DQoN
ClBhdGNoIGFwcGxpZWQuDQoNClRoYW5rcywNCkFsZXgNCg0KPiAtLS0NCj4gICBtYW43L21h
bi1wYWdlcy43IHwgMiArLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjcvbWFuLXBhZ2VzLjcgYi9t
YW43L21hbi1wYWdlcy43DQo+IGluZGV4IDk0MTgzMmYxNTMyOS4uMjEyMzI3Yzc3NzNjIDEw
MDY0NA0KPiAtLS0gYS9tYW43L21hbi1wYWdlcy43DQo+ICsrKyBiL21hbjcvbWFuLXBhZ2Vz
LjcNCj4gQEAgLTExMzQsNyArMTEzNCw3IEBAIEFsd2F5cyBkbyB0aGlzIGlmIHRoZSBleHBs
YW5hdG9yeSB0ZXh0IGluY2x1ZGVzIGEgc2hlbGwgc2Vzc2lvbiBsb2cuDQo+ICAgSWYgeW91
IGluY2x1ZGUgYSBzaGVsbCBzZXNzaW9uIGxvZyBkZW1vbnN0cmF0aW5nIHRoZSB1c2Ugb2Yg
YSBwcm9ncmFtDQo+ICAgb3Igb3RoZXIgc3lzdGVtIGZlYXR1cmU6DQo+ICAgLklQICogMw0K
PiAtUGxhY2UgdGhlIHNlc3Npb24gbG9nIGFib3ZlIHRoZSBzb3VyY2UgY29kZSBsaXN0aW5n
DQo+ICtQbGFjZSB0aGUgc2Vzc2lvbiBsb2cgYWJvdmUgdGhlIHNvdXJjZSBjb2RlIGxpc3Rp
bmcuDQo+ICAgLklQICoNCj4gICBJbmRlbnQgdGhlIHNlc3Npb24gbG9nIGJ5IGZvdXIgc3Bh
Y2VzLg0KPiAgIC5JUCAqDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIu
ZXMvPg0K

--------------H6MEiPeRX2WdxwLxkXBji1EN--

--------------6aa9s40bkn65hIucCPXL1CG3
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNUZJ8ACgkQnowa+77/
2zI4oQ/9GTQjVAb6loo/kJx1qiU98JB0P8JRCbMU4MpK+54CzpTOvJFRkqgbjpkq
OpuHAg+QoZYSsFxGc/6aNvpXe1Ri/M+GNK21Oxx+AVi44qd/cDiCQ49uNOYL3g7v
+m3PFEoDDvzZVOMUb1dBccT0KcyyCt6Efzix2Lpa1nLjjMA3G1C1lredU93hr/sM
65llfhAe3vos4TjOEtDeuURwyIRGxvFxUfLoyqp5u75SKvPsWdo9od5oFAb8daBc
u5NnDZnmbEtzJzfw5erUqKHeHbLc4d9O4/Uzde505jDSTHAC37bsgmafOqKMOJte
l/MvVW1XgzTO1sYpG+XBcLWwEv3FYy4nSL73/KumhsfU6jtT+yfvu6a33blczLSN
IhGvcRjA17eiJkM77/+7LK92ErY+cKH4IMdrEMuUmgXe4il39Azc1SWdqCKNo5an
3ff3Av9cx/yYzOomyTYK2YC7d6fQ6yplgPNtSAMFDkhmzVVqzbfXhN2t1ErbRqjW
nJiS1WBAcYX4zapaZRLYiP3PRasIiuzojj+3IwFfFsrQ44Ad4I78nOSX6DTQeCrF
s3MT0jiAoLSwqZIu/0OpI/UYqRwLjriF+UJR8PBpPW3ZmqgMDpScDeWnH8YfPEIj
97ydVnGPXzovIqjwKn2+5K4rgq9h9+J1PIkBCZXkIY8Sw18Xk2Y=
=gL1l
-----END PGP SIGNATURE-----

--------------6aa9s40bkn65hIucCPXL1CG3--
