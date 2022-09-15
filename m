Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 284DC5B9B83
	for <lists+linux-man@lfdr.de>; Thu, 15 Sep 2022 15:01:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229769AbiIONBp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Sep 2022 09:01:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229890AbiIONBh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 15 Sep 2022 09:01:37 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 104759C2E8
        for <linux-man@vger.kernel.org>; Thu, 15 Sep 2022 06:01:36 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id j16so3208712lfg.1
        for <linux-man@vger.kernel.org>; Thu, 15 Sep 2022 06:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=Tu+5u2zZouyTT4fvFRMpRmytOt+xxFimAsIAdr07c1M=;
        b=HvtQQNLBNt3i0xI8Xpr9KU+ZfuQAda9PZqpb0QhjLYOcB2zN9EBdpBQT6RFIGVo1kd
         pCxFSA/yX0fd07L3+Ukp8swqtpjI6LfGWMTii+/JSPDixg69m153/9p+RkjX/7AHIxVZ
         eYDJhOT/9zbs7KpZge1yfYMnwiImgtdKiTiwRxiAppBGPHwQ7QkNQ2jMpBjsNbyskfTm
         qPBefsY1PIO5keZpNwO9APrzB2iWSD8JW7n0XIe4wD/42VtHDax/XPYxKR9I+WOeXdhc
         1ubuQqdHSIRQu89opWcud6srFzoIRnaZ83vuI0vjN4sp1RlwkW+JNEu7aBCZczd5rtRZ
         aNzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=Tu+5u2zZouyTT4fvFRMpRmytOt+xxFimAsIAdr07c1M=;
        b=wYFfI5Xnjh2Yg2FZh1LjkidBcmO+hHyw98kFYOV8fQMWiVybJJZI+gXVmnYOk/zgUQ
         UpaTe2eGq/2a/BAR0g87KWo4PGaTp1PeBlGYDgCIr1EWmyYNO9y0id7TLhaWws8KAE4K
         +V7A4YpADvPLBoqeYZsMhm0pqf+J557Su+nveuFHn6Bxk9DQlX4m6AcKkELuixnNWqHf
         OF4kYBZBN4fHow7C7De6YQMDz2DT7wzYsIcxaMRemze+UinOC7+wj3mGqhzPHGyt7wj5
         hgNquvvEUGwKUsw5x/Ry+7ri/tY260xNnxaZkpFZJ8eIe3k+LXLCsCwToqM1SMfmyeV9
         Bx5g==
X-Gm-Message-State: ACgBeo3rqmpIeJVnmCN0+/OF5kvlj2VmwZF9EGk2WPjBN/3DYOsl9NhO
        jCusfB2+acTkDrroUa3t0fgeoOg+go0=
X-Google-Smtp-Source: AA6agR4NlrD0sEzG7G8h6P7gCDugyyT67/Wib3LlYgNYlOfQ9Xak5eqDGPqvSOo7DW55hFSI4KAowQ==
X-Received: by 2002:ac2:5dc1:0:b0:49a:63c9:1914 with SMTP id x1-20020ac25dc1000000b0049a63c91914mr7434601lfq.558.1663246894319;
        Thu, 15 Sep 2022 06:01:34 -0700 (PDT)
Received: from [192.168.1.104] ([31.169.55.19])
        by smtp.gmail.com with ESMTPSA id c16-20020a056512075000b00494a1e875a9sm2961156lfs.191.2022.09.15.06.01.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Sep 2022 06:01:33 -0700 (PDT)
Message-ID: <04c1d211-c069-4436-86b0-fd5f22e50c10@gmail.com>
Date:   Thu, 15 Sep 2022 15:01:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] semop.2: Fix truncated comment on sempid
Content-Language: en-US
To:     GUO Zihua <guozihua@huawei.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <20220915073758.17938-1-guozihua@huawei.com>
From:   "Alejandro (Alex) Colomar" <alx.manpages@gmail.com>
In-Reply-To: <20220915073758.17938-1-guozihua@huawei.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------vRO0Ua0C0G5T5Bpp1ewKrxPZ"
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------vRO0Ua0C0G5T5Bpp1ewKrxPZ
Content-Type: multipart/mixed; boundary="------------TKEVuLCQ0aoka1peGKjJOWB7";
 protected-headers="v1"
From: "Alejandro (Alex) Colomar" <alx.manpages@gmail.com>
To: GUO Zihua <guozihua@huawei.com>
Cc: linux-man@vger.kernel.org, mtk.manpages@gmail.com
Message-ID: <04c1d211-c069-4436-86b0-fd5f22e50c10@gmail.com>
Subject: Re: [PATCH] semop.2: Fix truncated comment on sempid
References: <20220915073758.17938-1-guozihua@huawei.com>
In-Reply-To: <20220915073758.17938-1-guozihua@huawei.com>

--------------TKEVuLCQ0aoka1peGKjJOWB7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gOS8xNS8yMiAwOTozNywgR1VPIFppaHVhIHdyb3RlOg0KPiBUaGUgY29tbWVudCBpcyB0
cnVuY2F0ZWQgZm9yIHNlbXBpZCwgYW5kIHRoaXMgcGF0Y2ggZml4ZXMgdGhpcyBpc3N1ZS4N
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IEdVTyBaaWh1YSA8Z3VvemlodWFAaHVhd2VpLmNvbT4N
Cg0KSGkgR1VPIQ0KDQpUaGFua3MgZm9yIHRoZSBwYXRjaCEgIEkgbGlrZWQgbW9yZSB0aGUg
dGV4dCB0aGF0IHdhcyBwcmV2aW91c2x5IHRoZXJlLCANCnNvIEkgcmVzdG9yZWQgaXQgKHdp
dGggYSBiaXQgb2YgYSBjaGFuZ2UpLiAgSSBhcHBsaWVkIHRoZSBmb2xsb3dpbmcgcGF0Y2gu
DQoNCkNoZWVycywNCg0KQWxleA0KDQoNCiAgICAgc2Vtb3AuMjogRml4IHRydW5jYXRlZCBj
b21tZW50IG9uIHNlbXBpZA0KDQogICAgIEZpeGVzOiBiZGQ5MTVlMjBmODczNDZkYzA3Yjkz
ZjhmMjYzODZmZWI5MmQyYzQ0DQogICAgIFJlcG9ydGVkLWJ5OiBHVU8gWmlodWEgPGd1b3pp
aHVhQGh1YXdlaS5jb20+DQogICAgIFNpZ25lZC1vZmYtYnk6IEFsZXggQ29sb21hciA8YWx4
Lm1hbnBhZ2VzQGdtYWlsLmNvbT4NCg0KZGlmZiAtLWdpdCBhL21hbjIvc2Vtb3AuMiBiL21h
bjIvc2Vtb3AuMg0KaW5kZXggN2EzMDFmNDUzLi42Yzc2YzcyNzcgMTAwNjQ0DQotLS0gYS9t
YW4yL3NlbW9wLjINCisrKyBiL21hbjIvc2Vtb3AuMg0KQEAgLTQ2LDYgKzQ2LDcgQEAgdW5z
aWduZWQgc2hvcnQgIHNlbXZhbDsgICAvKiBzZW1hcGhvcmUgdmFsdWUgKi8NCiAgdW5zaWdu
ZWQgc2hvcnQgIHNlbXpjbnQ7ICAvKiAjIHdhaXRpbmcgZm9yIHplcm8gKi8NCiAgdW5zaWdu
ZWQgc2hvcnQgIHNlbW5jbnQ7ICAvKiAjIHdhaXRpbmcgZm9yIGluY3JlYXNlICovDQogIHBp
ZF90ICAgICAgICAgICBzZW1waWQ7ICAgLyogUElEIG9mIHByb2Nlc3MgdGhhdCBsYXN0DQor
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtb2RpZmllZCB0aGUgc2VtYXBob3JlIHZh
bHVlICovDQogIC5FRQ0KICAuaW4NCiAgLlBQDQoNCg0KDQotLSANCjxodHRwOi8vd3d3LmFs
ZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------TKEVuLCQ0aoka1peGKjJOWB7--

--------------vRO0Ua0C0G5T5Bpp1ewKrxPZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMjIiMACgkQnowa+77/
2zJ8sw//ZHVSroxgTib8acgbJrgT/Y5RNHlMj2UasgY/Aoez0z8qzKAUaKfcfrAg
llMi5YbwCx5Ph3ZYxEfa8i8n4E4v/ORnUT826aR3UOQrnjoVbt9iAw2jOU3bCgV9
fE+xdnPLBRlidU+p8peUHV39nvJgkXQD6koaoxTwqYQrzVNWu5PNS6/bbi2RXsqM
mLImnedWcXyLx58cWQx6FLV0fCPAXmUgfqmMjvpyQVFez5uvTpnCQyj2qHAWrJfi
bnY2KIYhwe7d6f59WohC4eV3svqt95/ELpQpiNZdXfvxcXWqyP7TCIUu7i8zfZBN
mJlR/9YSGbtk1Zx+r2sAbA1wFKkgk6zi8DEGpIVj2/Ajvwig+N51rM/o9VyXpyKj
uAecy85PHGFqeMthHVot4GJz9g5cFmtOdBB1xFtLlTEWeeiL50O54h//TJLKtrA1
ffI+JkCut9Z37s5b1gVNrv4fdAi9bX8mx5gl8CNacrc0P0nmZN9Jx+4epvUx5TVm
tbdwE4eYLe/dZseEaNnVBWQVWpMX6kN+wjMNTvK+My29C+ogLZIUJZAkXHAqaZCN
3aaPszepa5wE7UY9Kc0S7qt6fl3kIoj09DWAKCxHo7UWEc+he9tBKJzuug2YdO1s
YuUZYK1QOlP7W5JOARUGkz+FV2Tec3x3MeeYW+jtpnIWf+8mNnM=
=ooH2
-----END PGP SIGNATURE-----

--------------vRO0Ua0C0G5T5Bpp1ewKrxPZ--
