Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4C8364C7D1
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 12:23:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229993AbiLNLXT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 06:23:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237440AbiLNLXS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 06:23:18 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C3A9339
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 03:23:17 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id ay14-20020a05600c1e0e00b003cf6ab34b61so10324303wmb.2
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 03:23:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yg4szkZCqWnpfxDReyl0bNXt6A5my2HlpXkx4X4bpsM=;
        b=PGdSOW6UOytXlaAqoTmhhgpX59mBt1INgIpBWd93Vcd2CIf7xvtYBGKlTnTY3opfZP
         LczIteTVC9JlGOW7r7iHjwgGzmyu6R6E/qVRKHjLWuTe52xHPVvy0RsVpPHOQcugDoJD
         CE+VV8frQsmg7rTlg9ceJzc3SUpZitjnUh99fdUwHPqT8+6oeMARH81sRGoDeOg5L7iK
         nGsUxSSRr1/vmCd/NZAARnR1TGcfOxC7R3vsoyGwujhCvAI8jERfOn0CUkvonFxhH7Lh
         pFgbY4dpwclbf91hgB9Optlv3hALwrZawDssLC1mtPSWCYvvLXtjAnDdjo+wDwXmIXHk
         J5ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Yg4szkZCqWnpfxDReyl0bNXt6A5my2HlpXkx4X4bpsM=;
        b=yU+HcH6OgCpfivH4M1Yka3hcm1owM0oPpGw55Kbd3nbW38wBqLW5ZKPxvFQANFlOS4
         TYWD4KNpcuU/26JIm20SikJhus3ern03scGIhiCLRvicpuyzPHjEcpW1x6w4gmILfiiO
         BDWPIdDluXC3ZW7SQwrjuNvVfAQ4ZxVl/3haLzClQHSr9rehv9Wy6/RM74TzxBybBpbb
         SY/+k1lE/gdHrW0TgSjuIaaphZTsETbdj2tZ2HLqmVp5pG5+UkulcyznL9wV1xbjEoCp
         YiniwL3PjhPvRcI8y+65eaagoZV/3bQlF5Dnpo7K5CCzhMLx4xdYRJoIa7Pn0E1220fl
         0lPg==
X-Gm-Message-State: ANoB5pl5U3fWBWYMaswYiFZlD+Sfb7d9aCGaL+NJbGh3V60ThgWdql/y
        xgbOqyxtQk19bdpSsW3nuB4=
X-Google-Smtp-Source: AA0mqf47JENWJQRzzrJgthOB4SlJS2LVqeqLf0p2WFoJWbEmoAPiXmNuT3Ci4wPrn/1IcGaZP0uBEg==
X-Received: by 2002:a05:600c:299:b0:3d0:8a35:7a39 with SMTP id 25-20020a05600c029900b003d08a357a39mr18136095wmk.5.1671016995931;
        Wed, 14 Dec 2022 03:23:15 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h5-20020a05600c2ca500b003d1e1f421bfsm2330325wmc.10.2022.12.14.03.23.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 03:23:15 -0800 (PST)
Message-ID: <dc7e92ad-8b69-fd78-3547-565ed86fa992@gmail.com>
Date:   Wed, 14 Dec 2022 12:23:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
Content-Language: en-US
To:     Ian Abbott <abbotti@mev.co.uk>, Zack Weinberg <zack@owlfolio.org>
Cc:     libc-alpha@sourceware.org, 'linux-man' <linux-man@vger.kernel.org>
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
 <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
 <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
 <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
 <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
 <ypikk02xv09c.fsf@owlfolio.org>
 <1f339439-3346-6732-3544-8e0e0a0f9823@mev.co.uk>
 <ypiksfhiafsn.fsf@owlfolio.org>
 <6c9645b1-d0e4-4064-0e55-a0bead7d1f71@mev.co.uk>
 <7d561198-44f7-a64e-06ae-3ee41d156e82@gmail.com>
 <8be4b9ef-7579-fd6a-c2aa-72e92db7adc9@mev.co.uk>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <8be4b9ef-7579-fd6a-c2aa-72e92db7adc9@mev.co.uk>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------RM0vFeOIjXhMEDs1F6aP6jUv"
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
--------------RM0vFeOIjXhMEDs1F6aP6jUv
Content-Type: multipart/mixed; boundary="------------1mx12qce5ifb0sn0Cu0XFeY7";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>, Zack Weinberg <zack@owlfolio.org>
Cc: libc-alpha@sourceware.org, 'linux-man' <linux-man@vger.kernel.org>
Message-ID: <dc7e92ad-8b69-fd78-3547-565ed86fa992@gmail.com>
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
 <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
 <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
 <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
 <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
 <ypikk02xv09c.fsf@owlfolio.org>
 <1f339439-3346-6732-3544-8e0e0a0f9823@mev.co.uk>
 <ypiksfhiafsn.fsf@owlfolio.org>
 <6c9645b1-d0e4-4064-0e55-a0bead7d1f71@mev.co.uk>
 <7d561198-44f7-a64e-06ae-3ee41d156e82@gmail.com>
 <8be4b9ef-7579-fd6a-c2aa-72e92db7adc9@mev.co.uk>
In-Reply-To: <8be4b9ef-7579-fd6a-c2aa-72e92db7adc9@mev.co.uk>

--------------1mx12qce5ifb0sn0Cu0XFeY7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzE0LzIyIDExOjUyLCBJYW4gQWJib3R0IHdyb3RlOg0KPj4+DQo+Pj4gJ0An
IGlzbid0IGluY2x1ZGVkIGluIEMncyBiYXNpYyBjaGFyYWN0ZXIgc2V0IHRob3VnaC7CoCAn
JicgaXMgYXZhaWxhYmxlLg0KPj4NCj4+IEp1c3QgYSBjdXJpb3VzIHF1ZXN0aW9uIGZyb20g
YW4gaWdub3JhbnQ6wqAgd2hhdCdzIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gdGhlIA0KPj4g
YmFzaWMgY2hhcmFjdGVyIHNldCBhbmQgdGhlIHNvdXJjZSBjaGFyYWN0ZXIgc2V0Pw0KPiAN
Cj4gVGhlIHNvdXJjZSBjaGFyYWN0ZXIgc2V0IG1heSBjb250YWluIGxvY2FsZS1zcGVjaWZp
YyBjaGFyYWN0ZXJzIG91dHNpZGUgdGhlIA0KPiBiYXNpYyBzb3VyY2UgY2hhcmFjdGVyIHNl
dC4NCj4gDQo+IEFjdHVhbGx5LCB0aGVyZSBhcmUgdHdvIGJhc2ljIGNoYXJhY3RlciBzZXRz
IC0gdGhlIGJhc2ljIHNvdXJjZSBjaGFyYWN0ZXIgc2V0IA0KPiBhbmQgdGhlIGJhc2ljIGV4
ZWN1dGlvbiBjaGFyYWN0ZXIgc2V0ICh3aGljaCBpbmNsdWRlcyB0aGUgYmFzaWMgc291cmNl
IGNoYXJhY3RlciANCj4gc2V0IHBsdXMgYSBmZXcgY29udHJvbCBjaGFyYWN0ZXJzKS7CoCBU
aGUgc291cmNlIGNoYXJhY3RlciBzZXQgYW5kL29yIGV4ZWN1dGlvbiANCj4gY2hhcmFjdGVy
IHNldCBtYXkgY29udGFpbiBsb2NhbGUtc3BlY2lmaWMsIGV4dGVuZGVkIGNoYXJhY3RlcnMg
b3V0c2lkZSB0aGUgYmFzaWMgDQo+IGNoYXJhY3RlciBzZXQuDQo+IA0KPiBodHRwczovL3Bv
cnQ3MC5uZXQvfm5zei9jL2MxMS9uMTU3MC5odG1sIzUuMi4xDQoNCkkgc3RpbGwgaGF2ZSBh
IHNtYWxsIGRvdWJ0LiAgQzIzIGFkZGVkICdAJyB0byB0aGUgc291cmNlIGNoYXJhY3RlciBz
ZXQsIGJ1dCANCnNlZW1zIHRvIGJlIGEgc2Vjb25kLWNsYXNzIGNpdGl6ZW46DQoNCg0KDQog
IFRoZSBleGVjdXRpb24gY2hhcmFjdGVyIHNldCBtYXkgYWxzbyBjb250YWluIG11bHRpYnl0
ZSBjaGFyYWN0ZXJzLCB3aGljaA0KbmVlZCBub3QgaGF2ZSB0aGUgc2FtZSBlbmNvZGluZyBh
cyBmb3IgdGhlIHNvdXJjZSBjaGFyYWN0ZXIgc2V0LiBGb3IgYm90aCANCmNoYXJhY3RlciBz
ZXRzLCB0aGUgZm9sbG93aW5nDQpzaGFsbCBob2xkOg0K4oCUIFRoZSBiYXNpYyBjaGFyYWN0
ZXIgc2V0LCBALCAkLCBhbmQgYCBzaGFsbCBiZSBwcmVzZW50IGFuZCBlYWNoIGNoYXJhY3Rl
ciBzaGFsbCANCmJlIGVuY29kZWQgYXMgYQ0Kc2luZ2xlIGJ5dGUuDQoNCg0KDQpXaGF0J3Mg
dGhlIGRpZmZlcmVuY2UsIGFuZCB3aHkgaXNuJ3QgaXQgcGFydCBvZiB0aGUgYmFzaWMgY2hh
cmFjdGVyIHNldD8gIE1heWJlIA0KYmVjYXVzZSBub3QgYWxsIGtleWJvYXJkcyBoYXZlIHRo
b3NlIHRocmVlIGNoYXJhY3RlcnM/DQo+IA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRy
by1jb2xvbWFyLmVzLz4NCg==

--------------1mx12qce5ifb0sn0Cu0XFeY7--

--------------RM0vFeOIjXhMEDs1F6aP6jUv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOZshoACgkQnowa+77/
2zLfHRAAh1FxACe8ZWJX318qK7ELQQ1bgmyuJ9C5nw59AzIrtLgk+V0BZTsOhAQj
UQCZq6hvs3c2Zgt0jkEeOq74Ec2i2aUACCvYc22NrljFAVYE29y6FsWBiOdwD/l4
ri29PkIr9jcSn2wK/xkm7LBW2KLZqwK2twOLevkXHg7XJ+dUCUpGnMNWhEmZQA6g
hGXJhDBZfm3DEizjyafxmZkWs0HhL3PYgZYHGdegFi75BLthEODVcsrLzzcDWR/U
qilo/VeAoez6itYhV/JLD5BmDISZ0oqbic0y7gFNdos9BEdDhgXUQ4Jb5rlWutr7
PvYYE2WFLu9mNnHThWPInScAAiJiM/O1yTExkRB0LlIm6lLrLx05RYhsxXzIp/4n
HKJK95m6i7r2S0HpCu0ZlZS36hLWeSpFejf8fODsAPc5J1sWYDPwXe33SQvb3hmm
6nmvazlnY+ufyuwM4M1Jy3qdrXel/YFUCBYhbPBw5NlMDmJtiN5VlOQpGLkDQiNY
1NaAC9Nw9Yv7x0K9BY0Z9HXhgpGdJ+DxCa85Zz8Zi0t1w11qqJwDbX7VL7rxDlLi
AxYDwGT1dRyZPKlyhfW5qQqe65KxoHYwKdoAnuy3NN0eSEFilU1oCYyJxBOl0fH4
/kgQ2clfkTvMTsrczyuHVEjoSijXA3xMcqNXsD101ApZGfVldSo=
=tnzG
-----END PGP SIGNATURE-----

--------------RM0vFeOIjXhMEDs1F6aP6jUv--
