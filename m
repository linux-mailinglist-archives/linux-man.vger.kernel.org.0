Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 077435B0FAC
	for <lists+linux-man@lfdr.de>; Thu,  8 Sep 2022 00:11:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229852AbiIGWLt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Sep 2022 18:11:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229567AbiIGWLs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Sep 2022 18:11:48 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02F808F976
        for <linux-man@vger.kernel.org>; Wed,  7 Sep 2022 15:11:47 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id by5so1375975wrb.6
        for <linux-man@vger.kernel.org>; Wed, 07 Sep 2022 15:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=pAWSCYzQJpFD/XH5ec7ujuNFEF2bBSM7ZOEBH0v87PM=;
        b=I+CqDYxLSJmbvUOBtCSg5ODURgqTi6fcCWBiicwVthfnqCksaguwLCRtliaUB3iUdq
         PYrSoqzn24otvUsYLGiNaLaPOInzy/tJuvYvM9USRx8UpxaUOy9zrcZ0x7EojI6VceaA
         tsxd9MhL+jn2ZQVw4QLdxDYCASN/uTevClCwMl71Tu3A9nKmgq/xbYGKlN7Af5DyxwjS
         ip1EJu4rztYT8Uv5j5JcLeeY7mpYgSFTe1z5w/dxvxGbcAbxI1XC/3+bGvSD/LIs9DVp
         4URju0Tgjrm6otZ9eTOQoEgPCQQ+mDzKr0axgGbWUcBKY1otxl52I89tQk1g7GaF7LSg
         9rcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=pAWSCYzQJpFD/XH5ec7ujuNFEF2bBSM7ZOEBH0v87PM=;
        b=1W2rI2HXYRg0DuP96I+KZOcjO3C0D4SUP1gsc0cTv07+vdKwHEtdrY49Z1dq+HaXDN
         uc87tVGAwMY7eAa4hweeg0epG/Zgro8ZanjxZWMIPUXMUhzvIcd2bHq2VI8PNfdoDaS0
         +IHRM1qs+hdTecx+GXFgd8sxku8UYkL1zdXgKkxhosB47+yVrlCW0IuJ6YPrMj2b/Y5H
         OQwcvV1b6GQUTqU/I9oqN012qlGUJsUvW1BVCV+0XeHzZ18YkCvUNEUJbXpkn7oF4XH/
         cs0EatAjLmX6/aXcz7Wey20VHFHNx5slh4BJgz733YkgxdQZyTMH0uK3TvT6AYoHiZJc
         PaCA==
X-Gm-Message-State: ACgBeo2XycyL7kiclTgBQYQ6ghJmoO84+gn5f60OlMh7jmW50oq/nfoo
        DtIi4HFgK1vjVkjt/GcZRix/czwgb8o=
X-Google-Smtp-Source: AA6agR4+mIQXkZP/n+4Vvto3AI1Fy3amjEnLBdhE/LNN2SR1WIElJvQD3mhADo8RRjQaohS6AFVb3w==
X-Received: by 2002:a5d:5b1c:0:b0:226:fe54:cd52 with SMTP id bx28-20020a5d5b1c000000b00226fe54cd52mr3276657wrb.417.1662588705433;
        Wed, 07 Sep 2022 15:11:45 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bi19-20020a05600c3d9300b003a5ca627333sm296335wmb.8.2022.09.07.15.11.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Sep 2022 15:11:44 -0700 (PDT)
Message-ID: <7b9c2ab4-6cdc-b4fd-1001-8721083695fa@gmail.com>
Date:   Thu, 8 Sep 2022 00:11:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Subject: Re: Revert 70ac1c478 ("src.mk, All pages: Move man* to man/")
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Petr Vorel <pvorel@suse.cz>, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <YxcV4h+Xn7cd6+q2@pevik>
 <20220907205304.nlqce37l26gezjqi@jwilk.net>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220907205304.nlqce37l26gezjqi@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------jLRS0fGlCvwMb0JMCbckcDge"
X-Spam-Status: No, score=-6.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------jLRS0fGlCvwMb0JMCbckcDge
Content-Type: multipart/mixed; boundary="------------8BdenpAQPnc76e7UPyIZ5kMs";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: Petr Vorel <pvorel@suse.cz>, linux-man@vger.kernel.org,
 Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <7b9c2ab4-6cdc-b4fd-1001-8721083695fa@gmail.com>
Subject: Re: Revert 70ac1c478 ("src.mk, All pages: Move man* to man/")
References: <YxcV4h+Xn7cd6+q2@pevik>
 <20220907205304.nlqce37l26gezjqi@jwilk.net>
In-Reply-To: <20220907205304.nlqce37l26gezjqi@jwilk.net>

--------------8BdenpAQPnc76e7UPyIZ5kMs
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWINCg0KT24gOS83LzIyIDIyOjUzLCBKYWt1YiBXaWxrIHdyb3RlOg0KPiAqIFBl
dHIgVm9yZWwgPHB2b3JlbEBzdXNlLmN6PiwgMjAyMi0wOS0wNiAxMTo0MToNCj4+IEFsdGhv
dWdoIEkgYWdyZWUgdGhhdCBudW1iZXIgb2YgbWFuKiBpcyBxdWl0ZSBoaWdoIGFuZCBzaW5n
bGUgbWFuIA0KPj4gZGlyZWN0b3J5IGxvb2tzIG5pY2VyLCBmcm9tIHByYWN0aWNhbCByZWFz
b25zIEknZCBwcmVmZXIgdG8gcmV2ZXJ0IA0KPj4gdGhpcyBjb21taXQuDQo+IA0KPiBJIGRv
bid0IGxpa2UgdGhlIG5ldyBsYXlvdXQgZWl0aGVyLg0KDQpUaGFuayB5b3UgYm90aCBmb3Ig
c2hhcmluZyB5b3VyIG9waW5pb24uICBJJ2xsIHJldmVydCBpdCwgdGhlbi4gIExldCBtZSAN
CmEgZmV3IHdlZWtzIGJlZm9yZSBkb2luZyB0aGF0LCBzaW5jZSBJJ20gaW4gdGhlIG1pZGRs
ZSBvZiBzb21lIG90aGVyIGJpZyANCmNoYW5nZXMgKGFib3V0IGxpbnQtYyksIHNvIHRvIG5v
dCBoYXZlIHRvIHN0YXNoIGFuZCBmaXggY29uZmxpY3RzIGF0IA0KdGhhdCBzY2FsZS4gIElm
IGluIHRoZSBtZWFudGltZSBzb21lb25lIGZpbmRzIHRoZSBuZXcgbGF5b3V0IG5pY2UsIA0K
cGxlYXNlIHNwZWFrIHVwIDopDQoNCkNoZWVycywNCg0KQWxleA0KDQoNCj4gDQoNCi0tIA0K
PGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------8BdenpAQPnc76e7UPyIZ5kMs--

--------------jLRS0fGlCvwMb0JMCbckcDge
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMZFxgACgkQnowa+77/
2zIMeRAAmUWZUrSZFTQRskfOtbclE1Rtds0JrESLZfvAj7KLYLkmGc+rGOTUkMj1
GQvh6oLw3r+p+JVDT0YhYtSWuUrtk7CbysTi5bM52uHtu6XYHOtaW3KCYdbbltct
xNJ4490vKvOm7h+MCQHC6wquGHcw/HsoJa/1kqY4bkAXjtkQLh+hkwecuptdZCC7
ZgW/YioRHbgVGqq5QnDvxRXtJ4YvJlv/+pmDIMo9cwx7j1iNcvuPGIbfB6iz5DAr
aHxbPixIB34NKPIjIMf/US7W01LC7YmMW6PztiYYZdmaDK/flT+262cBtTzv/cIH
36dtb7BudfQaPZCIBHVl9uSZzjQN7z6uIWA0xsJc5iE4zMeuylXunEIHIQfS3Dln
Tw5Hd8G5h7vqp0ErGdBvX8tatJy2QgVcVBcWAtLdMwQySX4fKDrCpE90yPRVzZyR
lI6B0e6kdu2wFeEbexgY4MVcTRnC1xvENzoFibv6uIIuYMRsXGcp+OQA+Ciqa7y1
oel1XhSOy2HsCjWyh93Hc0cqIwtTcxoAnpJ6V/LE+PhvFPcQXwsNfN4Xad23iWfG
+gqctgpXnklkvpRgHJVbZCWNFZkdHYxk3DuJ+FdyVnsS9j24SmIhOMiRvwAHXXlS
+Ppjy4cwXws3XzbJhTeJ32o26ZD1ROWI0VnFLo79JlF1FbuL00Y=
=yg5s
-----END PGP SIGNATURE-----

--------------jLRS0fGlCvwMb0JMCbckcDge--
