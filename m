Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62BA45FE28E
	for <lists+linux-man@lfdr.de>; Thu, 13 Oct 2022 21:17:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229437AbiJMTRh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Oct 2022 15:17:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229646AbiJMTRf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Oct 2022 15:17:35 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22C3A102DE0
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 12:17:34 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id w18so4323031wro.7
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 12:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xJa6vx2KTpQ43OzroplH8GmvKYyagXY/ZDNEP5z18qo=;
        b=p6sUdZQuG3wrlpz+em+Gv8WcDKEGCsKoxt67w3svfLbZIdCDQHdUekz0ZYU+EcR2WU
         lTsQ7vUpOdk9i/ABqgOkSOB0olcHlZayWAVVwr6M8oDrg2g2/+fiEGXbREQNtyWGCg6J
         WLK++EeDltByjWj1Ufvy+wPhmrdzGeN4QCy7aA6QxPO+yRJmhTEN2RiWNXxk0PTwNaHQ
         hP/HdN5HRX40u88VWQmBHYIRNNmuKeC7DqxFzaKtFyQdzNZaKTsImCLF/IjBITM0YTyF
         OsW3YFF0zRxo8w+SXs0TGmTDPp1QDWzDuIC+pIHxFSrzJIyIrtEVCT8LVAiTwqRB8bN7
         TEtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xJa6vx2KTpQ43OzroplH8GmvKYyagXY/ZDNEP5z18qo=;
        b=QgcujfJDdahxR3stlnZ76kKyUJ7DqmkvJTlN6eLwQbVZJ7gDiZPCR5Zq5EmC/t3YO9
         jUe6zKRXk/+YvMNZZkvKfSkPLdUQZbuUnpN2QJfldVoOsMqJixrfKtkCaucYzNCxIed8
         WqIrbwMmfyb4/dPIPTJ8dcOZ1QslFWGv1tgQk8b8xHWtWO1fFWlSHUU5h29Fmghovl/Z
         wq59AhfBevFuv9dmj94nYaqvaOnqMBAvpv4734Z7YDCCt113pQMkhwemp+gCyqKrJF/+
         9Ljn3c1g1fuRP5EZCG5eNv3dmt3v41OFn7NdeJLI3uNhQNrd2KPixsAD3U0tvDez48p6
         PFgw==
X-Gm-Message-State: ACrzQf0CKwH95hFKQ3DVK1DvEoNaM0k2IVSxT17LBKjxPXN4GqBSYTDy
        qrZEWksTfaKt4GyJ5Pv3IBGVd/HE914=
X-Google-Smtp-Source: AMsMyM7lSrs48lqMCTjTaGJ7g6kaunXT9wMr4tgvDr9/vkH3BFUvZ73b8Bso7nhJEvQjg65KBO9NYQ==
X-Received: by 2002:a05:6000:246:b0:22e:7851:b26b with SMTP id m6-20020a056000024600b0022e7851b26bmr992449wrz.432.1665688652562;
        Thu, 13 Oct 2022 12:17:32 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d9-20020a05600c4c0900b003a4efb794d7sm224094wmp.36.2022.10.13.12.17.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Oct 2022 12:17:32 -0700 (PDT)
Message-ID: <7e1cc5d1-7d63-25b6-42f4-eefe6258f2de@gmail.com>
Date:   Thu, 13 Oct 2022 21:17:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v2 2/2] feature_test_macros.7: document _TIME_BITS
Content-Language: en-US
To:     Sam James <sam@gentoo.org>
Cc:     linux-man@vger.kernel.org
References: <20221013183018.472463-1-sam@gentoo.org>
 <20221013183018.472463-2-sam@gentoo.org>
 <25df66e8-8ce3-1ac6-a93b-460dab055a48@gmail.com>
 <1C02DD4E-3F55-4D7D-9D95-02B01F68A890@gentoo.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <1C02DD4E-3F55-4D7D-9D95-02B01F68A890@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------02yOGlIhqx2tBCyDA2fEdc9p"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------02yOGlIhqx2tBCyDA2fEdc9p
Content-Type: multipart/mixed; boundary="------------ndr7urn21JkW093tOIojXv8W";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Sam James <sam@gentoo.org>
Cc: linux-man@vger.kernel.org
Message-ID: <7e1cc5d1-7d63-25b6-42f4-eefe6258f2de@gmail.com>
Subject: Re: [PATCH v2 2/2] feature_test_macros.7: document _TIME_BITS
References: <20221013183018.472463-1-sam@gentoo.org>
 <20221013183018.472463-2-sam@gentoo.org>
 <25df66e8-8ce3-1ac6-a93b-460dab055a48@gmail.com>
 <1C02DD4E-3F55-4D7D-9D95-02B01F68A890@gentoo.org>
In-Reply-To: <1C02DD4E-3F55-4D7D-9D95-02B01F68A890@gentoo.org>

--------------ndr7urn21JkW093tOIojXv8W
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTAvMTMvMjIgMjA6NTIsIFNhbSBKYW1lcyB3cm90ZToNCj4+IEFtIEkgdW5kZXJzdGFu
ZGluZyB0aGlzIHJpZ2h0PyAgX0ZJTEVfT0ZGU0VUX0JJVFMgaXMgcmVxdWlyZWQgdG8gYmUg
c2V0IGZvciBfVElNRV9CSVRTIHRvIGJlIGFsc28gc2V0IChpbiBzb21lIGFyY2hzKT8gIENv
dWxkIHlvdSBwbGVhc2UgbGluayBkaXJlY3RseSB0byBhIHNvdXJjZSBmb3IgdGhhdCBpbiB0
aGUgY29tbWl0IGxvZz8gIFRoZXkgYXJlIHNvbWV3aGF0IHJlbGF0ZWQsIGJ1dCBJJ20gcXVp
dGUgc3VycHJpc2VkIHRoYXQgc29tZXRoaW5nIHRvIGRvIHdpdGggZmlsZSBzaXplcyBpbnRl
cmZlcmVzIGF0IGFsbCB3aXRoIHNvbWV0aGluZyB0byBkbyB3aXRoIHRpbWUuDQo+Pg0KPiAN
Cj4gWWVzLCBpdCdzIHNob2NraW5nLCBidXQgdHJ1ZSENCj4gDQo+IEknbGwgYWRkIGEgcmVm
ZXJlbmNlIC0tIGJ1dCBpdCdzIGluIC91c3IvaW5jbHVkZS9mZWF0dXJlcy10aW1lNjQuaDoN
Cj4gaHR0cHM6Ly9zb3VyY2V3YXJlLm9yZy9naXQvP3A9Z2xpYmMuZ2l0O2E9YmxvYjtmPXN5
c2RlcHMvdW5peC9zeXN2L2xpbnV4L2ZlYXR1cmVzLXRpbWU2NC5oDQoNCk8uTyAgWWVzLCBp
dCBzZWVtcyB0byBhbHNvIGJlIGluIHRoZSBnbGliYyBkb2N1bWVudGF0aW9uLiAgV2VpcmQu
DQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xv
bWFyLmVzLz4NCg==

--------------ndr7urn21JkW093tOIojXv8W--

--------------02yOGlIhqx2tBCyDA2fEdc9p
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNIZEoACgkQnowa+77/
2zJYZQ/+KxDROTyCACYWfmrAeKSxGsZ+kxf7yPhLMcoG4S5SIM3eFkkWW/Cjt0y4
p7VhApXD+2pSFSiVXfuRA8+g1qSa1xjYUuPQpMu2Og6Kb1nRuc8X3qogEHHMrIsG
wH9vmNzU/r1zCTBkxFhh7MbuURvczG/4z8AHRtgST+xK5RIxmk+fbBZjVZRjwWfP
8KKkWiOcTvPhsvuNBKNfUMYTLrOqYuQa58v8axle+JtoDfEKlubgj0lYIKf6NqO1
sJJA0lMzdN3IXRcluCZcSBf7sV7cawnDv88kjHOdcxDhRtFZ83Jhx7bWECX3eFYe
VJuCVHC0emxJPeYnCPtf4JEoKl0OIa5YUdMzjiOkIqhdEgjliK7xiq8AM3D/c/5I
KcbNYHaQlf37RViHPeng4L7NERIHyBMvMTERM2JZpAW/kKZRQdT1+TANmMBtAYbq
aOHxcT/Ggnx7B5h6CQUqpm+bAmGeFCaoF8DDGfm1B37z+o8/wgkC807hp5HH25sZ
StDoRbnL1ddZLHBHseBg8HlAb0cjEinVx1i0B1Yjtp9sujlFQsmBpgkoRceW3IKj
3X10wCOvbJKwTSxQ8l3vkYQZRw7c8zJf8fq8YWfekZMua9Q1bOyBCwublD0w/jno
kOdIY6UzNE75wWBG9P5RUx+P9bwAknbWTdfdAEn+H5QuDpWPid4=
=g9e3
-----END PGP SIGNATURE-----

--------------02yOGlIhqx2tBCyDA2fEdc9p--
