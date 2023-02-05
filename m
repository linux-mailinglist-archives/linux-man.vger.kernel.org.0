Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BCFD68B2F2
	for <lists+linux-man@lfdr.de>; Mon,  6 Feb 2023 01:00:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbjBFAAJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 19:00:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbjBFAAI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 19:00:08 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCC7D14EA3
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 16:00:06 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id m16-20020a05600c3b1000b003dc4050c94aso7584869wms.4
        for <linux-man@vger.kernel.org>; Sun, 05 Feb 2023 16:00:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wh/a1GdPDitVhBWZSiqH9XwhJ1wrRxj9Efs36XUINDk=;
        b=U2/UH6iNdq+gEmUNTYVfjbwgY+/XGJjkm4dBr5zrZ9TXa8bf3tig6ilKsu34yGy2dN
         MKou9plrd2NmJVCSIXCxtc9Ig6sLJcSYbuuVxfDcZpY4OBz5OXFqnuC+GaRUWXiBApi2
         nm8oTmWeezbTJ6tTnLnbPYouRGx4OXCJ3CyY+HZM+YFyHP+oKmgw9o+etWAebdR6kTDd
         +DbHxmr8ce6+haS9ldmLxyTjGVOtcLwXvwIQXH9bWA9urRT4fz5m4njLTTKtk6E1MEFI
         ZCod75oW9OEFi+yOBmhxjjOU2Ppm7rkszWgVpHFIzJ77fnqNQOiHX/Zx++rCtQKNInB+
         SSog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wh/a1GdPDitVhBWZSiqH9XwhJ1wrRxj9Efs36XUINDk=;
        b=xDG8OZerwrU8SMnOIywTlxrJ8n6qe0TxKKimvHInALCaeKi44ZcaQ6L4spWvyIPict
         Bb9JXxodoYi7dSWYBZxZVsUXINoPmWPJ2TFSU3AzQgBFNaW0CDbcqaWpPaQf9+eJfrNJ
         j8xgou/9xNFTiEGRb9+fg52tjjYPwhH3z8sJxhRX8Od0F8zeOO9XdxiPeSJKmCf063wF
         /pbOrOAQI9rBWr4IxzDCsI8egATbHsvLC05Eyr6NxSWEK0SAG87Ur7LODSk220rRYENs
         mkyL9FYL+TMQr1AliHE8GBhldg93C1rtFwzjE682a4+QBun5PWgmsWH+sZb48wFGd6Dc
         /LXA==
X-Gm-Message-State: AO0yUKWJIVDQVtfRWQLYoZZ8KvDE9rWmC4Vn8A1goKh1QZPs8oFw2Ov8
        qiGHwjGBvlIj9DqLyZtoqeXY1s3eMgM=
X-Google-Smtp-Source: AK7set+92ZcGnNdRoC7OM156EQH+UnyKPsC5KxQTZyO53qIo1/mv9LHI2IZpZEXNYFhxOz8emEo8cA==
X-Received: by 2002:a1c:4c17:0:b0:3da:2a59:8a4f with SMTP id z23-20020a1c4c17000000b003da2a598a4fmr17053062wmf.38.1675641605423;
        Sun, 05 Feb 2023 16:00:05 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h12-20020adff4cc000000b002c3d814cc63sm6686091wrp.76.2023.02.05.16.00.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Feb 2023 16:00:04 -0800 (PST)
Message-ID: <29bb163d-ab7b-2fb7-a1c8-cfd720984a8d@gmail.com>
Date:   Mon, 6 Feb 2023 00:59:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] sockaddr.3type: BUGS: Document that libc should be fixed
 using a union
Content-Language: en-US
To:     Rich Felker <dalias@libc.org>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        GCC <gcc@gcc.gnu.org>, glibc <libc-alpha@sourceware.org>,
        =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>,
        Andrew Clayton <a.clayton@nginx.com>,
        Richard Biener <richard.guenther@gmail.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Florian Weimer <fweimer@redhat.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Jakub Jelinek <jakub@redhat.com>,
        Eric Blake <eblake@redhat.com>
References: <20230205152835.17413-1-alx@kernel.org>
 <20230205234359.GF3298@brightrain.aerifal.cx>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230205234359.GF3298@brightrain.aerifal.cx>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------x95GfUR0cu0Edh05BSjdG2MZ"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------x95GfUR0cu0Edh05BSjdG2MZ
Content-Type: multipart/mixed; boundary="------------IQfC8VJhVwILpv50iyFR9e7c";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Rich Felker <dalias@libc.org>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
 GCC <gcc@gcc.gnu.org>, glibc <libc-alpha@sourceware.org>,
 =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
 Stefan Puiu <stefan.puiu@gmail.com>, Igor Sysoev <igor@sysoev.ru>,
 Andrew Clayton <a.clayton@nginx.com>,
 Richard Biener <richard.guenther@gmail.com>,
 Zack Weinberg <zack@owlfolio.org>, Florian Weimer <fweimer@redhat.com>,
 Joseph Myers <joseph@codesourcery.com>, Jakub Jelinek <jakub@redhat.com>,
 Eric Blake <eblake@redhat.com>
Message-ID: <29bb163d-ab7b-2fb7-a1c8-cfd720984a8d@gmail.com>
Subject: Re: [PATCH] sockaddr.3type: BUGS: Document that libc should be fixed
 using a union
References: <20230205152835.17413-1-alx@kernel.org>
 <20230205234359.GF3298@brightrain.aerifal.cx>
In-Reply-To: <20230205234359.GF3298@brightrain.aerifal.cx>

--------------IQfC8VJhVwILpv50iyFR9e7c
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUmljaCwNCg0KT24gMi82LzIzIDAwOjQzLCBSaWNoIEZlbGtlciB3cm90ZToNCj4gT24g
U3VuLCBGZWIgMDUsIDIwMjMgYXQgMDQ6Mjg6MzZQTSArMDEwMCwgQWxlamFuZHJvIENvbG9t
YXIgd3JvdGU6DQo+PiBBcyBkaXNjdXNzZWQgYmVmb3JlLCBhbmQgQmFzdGllbiBhbmQgSSBz
ZWVtIHRvIGFncmVlLCBpZGVhbGx5IHdlIHNob3VsZA0KPj4gZGVmaW5lIHRoZSBmb2xsb3dp
bmcgdHlwZXM6DQo+Pg0KPj4gICAgICBzdHJ1Y3Qgc29ja2FkZHJfc3RvcmFnZSB7DQo+PiAg
ICAgICAgICB1bmlvbiB7DQo+PiAgICAgICAgICAgICAgc3RydWN0IHsNCj4+ICAgICAgICAg
ICAgICAgICAgc2FfZmFtaWx5X3QgICAgICBzc19mYW1pbHk7DQo+PiAgICAgICAgICAgICAg
fTsNCj4+ICAgICAgICAgICAgICBzdHJ1Y3Qgc29ja2FkZHJfaW4gICBzaW47DQo+PiAgICAg
ICAgICAgICAgc3RydWN0IHNvY2thZGRyX2luNiAgc2luNjsNCj4+ICAgICAgICAgICAgICBz
dHJ1Y3Qgc29ja2FkZHJfdW4gICBzdW47DQo+PiAgICAgICAgICAgICAgLy8gLi4uDQo+PiAg
ICAgICAgICB9Ow0KPj4gICAgICB9Ow0KPiANCj4gQUZBSUsgdGhpcyBpcyBub3QgcGVybWl0
dGVkIGJlY2F1c2Ugb2YgbmFtZXNwYWNlLiBzeXMvc29ja2V0LmggaXMgbm90DQo+IHBlcm1p
dHRlZCB0byBleHBvc2Ugc29ja2FkZHJfe2luLGluNix1bn0uIEFuZCBpZiB5b3UgZGVmaW5l
ZA0KPiBkaWZmZXJlbnRseS10YWdnZWQgc3RydWN0dXJlcyB3aXRoIHRoZSBzYW1lIGNvbnRl
bnRzLCBpdCB3b3VsZCBub3QgZG8NCj4gYW55IGdvb2Q7IGFjY2Vzc2luZyB0aGUgbWVtYmVy
cyB3aXRoIHRoZSB3cm9uZy10YWdnZWQgc3RydWN0IHR5cGUNCj4gd291bGQgc3RpbGwgYmUg
VUIuDQoNCkknbSBub3Qgc3VyZS4gIElTTyBDIGhhcyB0aGF0IHJlc3RyaWN0aW9uIHRoYXQg
YSBoZWFkZXIgY2FuIG9ubHkgZGVmaW5lIHdoYXQgdGhlIA0Kc3RhbmRhcmQgc2F5cyBpdCBk
ZWZpbmVzLiAgSG93ZXZlciwgZG9lcyBQT1NJWCBoYXZlIHRoZSBzYW1lIHJlc3RyaWN0aW9u
PyANCkRvZXNuJ3QgUE9TSVggYWxsb3cgaW5jbHVkaW5nIGFueSBvdGhlciBQT1NJWCBoZWFk
ZXJzIChtYXliZSBpdCBkb2VzLCBidXQgSUlSQyANCml0IGRvZXNuJ3QpPyAgU2luY2UgPHN5
cy9zb2NrZXQuaD4gaXMganVzdCBhIFBPU0lYIHRoaW5nLCB0aGF0J3MgdGhlIG9ubHkgDQpz
dGFuZGFyZCB3ZSBzaG91bGQgY2FyZSBhYm91dC4NCg0KPiANCj4gUmVhbGx5LCB0aGVyZSBp
cyBubyBhY3Rpb24gbmVlZGVkIGhlcmUuIE5vdGhpbmcgaXMgd3Jvbmcgb24gbGliYydzDQo+
IHNpZGUuIFRoZSBwcm9ibGVtIGlzIGp1c3QgdGhhdCB0aGUgdHlwZSBpcyAqbm90IHVzZWZ1
bCBmb3IgYW55dGhpbmcqDQo+IGFuZCBzaG91bGQgbm90IGJlIHVzZWQgZXhjZXB0IGluIHRo
ZSBjb250ZXh0IG9mIHNpemVvZiwgd2hpY2ggaXMNCj4gcHVyZWx5IGEgZG9jdW1lbnRhdGlv
biBpc3N1ZS4NCj4gDQo+PiAgICAgIHN0cnVjdCBbW2RlcHJlY2F0ZWRdXSBzb2NrYWRkciB7
DQo+PiAgICAgICAgICBzYV9mYW1pbHlfdCAgICAgICAgICAgICAgc2FfZmFtaWx5Ow0KPj4g
ICAgICB9Ow0KPj4NCj4+ICAgICAgdW5pb24gW1tnbnU6OnRyYW5zcGFyZW50X3VuaW9uXV0g
c29ja2FkZHJfcHRyIHsNCj4+ICAgICAgICAgIHN0cnVjdCBzb2NrYWRkcl9zdG9yYWdlICAq
c3M7DQo+PiAgICAgICAgICBzdHJ1Y3Qgc29ja2FkZHIgICAgICAgICAgKnNhOw0KPj4gICAg
ICB9Ow0KPj4NCj4+IEFuZCB0aGVuIHdlIGNvdWxkIGRlZmluZSBBUElzIGxpa2U6DQo+Pg0K
Pj4gICAgICBpbnQgYmluZChpbnQgc29ja2ZkLCBjb25zdCB1bmlvbiBzb2NrYWRkcl9wdHIg
KmFkZHIsIHNvY2tsZW5fdCBsZW4pOw0KPiANCj4gWW91IGNhbm5vdCBqdXN0IGNoYW5nZSBB
UElzIGJlY2F1c2UgeW91IHdpc2ggdGhleSB3ZXJlIGRpZmZlcmVudC4NCg0KVGhpcyBBUEkg
aXMgY29tcGF0aWJsZS4gIEluIGZhY3QsIGl0IGFscmVhZHkgaXMgbm93IGxpa2UgdGhhdDoN
Cg0KYWx4QGRlYmlhbjovdXNyL2luY2x1ZGUkIGdyZXBjIGJpbmQNCi4veDg2XzY0LWxpbnV4
LWdudS9zeXMvc29ja2V0Lmg6MTEyOg0KZXh0ZXJuIGludCBiaW5kIChpbnQgX19mZCwgX19D
T05TVF9TT0NLQUREUl9BUkcgX19hZGRyLCBzb2NrbGVuX3QgX19sZW4pDQogICAgICBfX1RI
Uk9XOw0KDQphbHhAZGViaWFuOi91c3IvaW5jbHVkZSQgc2VkIC1uIDgzLDg0cCB4ODZfNjQt
bGludXgtZ251L3N5cy9zb2NrZXQuaA0KdHlwZWRlZiB1bmlvbiB7IF9fU09DS0FERFJfQUxM
VFlQRVMNCgkgICAgICB9IF9fQ09OU1RfU09DS0FERFJfQVJHIF9fYXR0cmlidXRlX18gKChf
X3RyYW5zcGFyZW50X3VuaW9uX18pKTsNCg0KDQo+IElkZWFsbHkgYmluZCwgZXRjLiB3b3Vs
ZCBqdXN0IHRha2Ugdm9pZCAqLA0KDQp2b2lkICogaXMgYSBiaXQgdG9vIG11Y2ggdW5zYWZl
LiAgR0NDJ3MgdHJhbnNwYXJlbnQgdW5pb25zIGFyZSBhIHJlc3RyaWN0ZWQgDQpjYXRjaC1t
YW55IHBvaW50ZXIsIHJhdGhlciB0aGFuIGEgY2F0Y2gtYWxsLg0KDQo+IHdoaWNoIGlzIHdo
YXQgdGhlIHN0cnVjdA0KPiBzb2NrYWRkciAqIGlzIGJlaW5nIHVzZWQgYXMuDQoNCkFuZCBp
biBmYWN0LCB2b2lkKiB3b3VsZG4ndCBzb2xlIHRoZSB1bmlvbiBwcm9ibGVtLg0KDQo+IEJ1
dCB0aGV5IGRvbid0LCBzbyBjYWxsZXJzIGhhdmUgdG8gY2FzdC4NCg0KV2l0aCB0aGUgY3Vy
cmVudCBnbGliYyBpbXBsZW1lbnRhdGlvbiwgeW91IGRvbid0IG5lZWQgdG8gY2FzdCwgdGhh
bmtzIHRvIHRoZSANCltbZ251Ojp0cmFuc3BhcmVudF91bmlvbl1dOg0KDQoNCmFseEBkZWJp
YW46fi90bXAkIGNhdCBzb2NrLmMNCiNkZWZpbmUgX0dOVV9TT1VSQ0UNCiNpbmNsdWRlIDxz
eXMvc29ja2V0Lmg+DQojaW5jbHVkZSA8c3lzL3VuLmg+DQoNCmludA0KYmluZF91bihpbnQg
c2ZkLCBjb25zdCBzdHJ1Y3Qgc29ja2FkZHJfdW4gKmFkZHIsIHNvY2tsZW5fdCBsZW4pDQp7
DQoJcmV0dXJuIGJpbmQoc2ZkLCBhZGRyLCBsZW4pOw0KfQ0KYWx4QGRlYmlhbjp+L3RtcCQg
Y2MgLVdhbGwgLVdleHRyYSBzb2NrLmMgLVMNCmFseEBkZWJpYW46fi90bXAkIGNsYW5nIC1X
YWxsIC1XZXh0cmEgc29jay5jIC1TDQphbHhAZGViaWFuOn4vdG1wJA0KDQoNCj4gSXQncyB1
Z2x5IGJ1dCBpdCdzIHJlYWxseSBub3QgYSBiaWcgZGVhbC4gTXVjaCBsZXNzIG9mIGEgYmln
IGRlYWwgdGhhbg0KPiBicmVha2luZyB0aGUgaW50ZXJmYWNlIGJlY2F1c2UgeW91IHRoaW5r
IGl0IHdvdWxkIGxvb2sgcHJldHRpZXIgaWYgaXQNCj4gaGFkIGJlZW4gZG9uZSBkaWZmZXJl
bnRseS4NCg0KSXQncyBub3QgYnJlYWtpbmcgdGhlIGludGVyZmFjZTsgbm90IGluIEdOVSBD
LiAgQ3VycmVudCBjb2RlIHN0aWxsIGZhbGxzIGJhY2sgdG8gDQp0aGUgYSBQT1NJWC1jb21w
bHlpbmcgVUItaW52b2tpbmcgaW50ZXJmYWNlIHdoZW4geW91IGRvbid0IGFzayBmb3IgX0dO
VV9TT1VSQ0UsIA0KYnV0IHdlIGNhbiBrZWVwIHRoYXQuICBJJ20gb25seSBhc2tpbmcgdGhh
dCB3ZSBmaXggdGhlIEdOVSBDIHZlcnNpb24uICBNb3Jlb3ZlciwgDQppbiBQT1NJWC1jb21w
bHlpbmcgY29kZSwgeW91IGNhbiBrZWVwIHRoZSBpbnRlcmZhY2UgcG9pbnRlciwgc2luY2Ug
eW91J2xsIG5lZWQgDQp0byBjYXN0IGFueXdheSwgYnV0IGNhbiBzdGlsbCBtYWtlIHNvY2th
ZGRyX3N0b3JhZ2UgYmUgaW1wbGVtZW50ZWQgdGhyb3VnaCBhbiANCmFub255bW91cyB1bmlv
bi4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gDQo+IFJpY2gNCg0KLS0gDQo8aHR0cDovL3d3
dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQpHUEcga2V5IGZpbmdlcnByaW50OiBBOTM0ODU5
NENFMzEyODNBODI2RkJERDhENTc2MzNENDQxRTI1QkI1DQo=

--------------IQfC8VJhVwILpv50iyFR9e7c--

--------------x95GfUR0cu0Edh05BSjdG2MZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPgQvQACgkQnowa+77/
2zJCkg/+JVsU+rMHSuUcnxOGJCCmZ/dyPFPkWfBpgUqrw8PZrAZu8QLjMsJxs3E1
VOmIegSjfG1tAWn8s5Pnx3gjjPVh1dT7n3+P5GF+yhFP0TM0my8vX8AtvOCraxIw
FbLhOnWPabLK71ibE2+IvNuAZvvaukyy0I0AQsjzd7I83wGbybbvSMTz0o6DBlTe
DnTOUBbQLGyHKPCCXznEfKl+XlLhjBowH/jTbD/8kwfFiESscr90n0rI+RzLxQZp
sZBO2eXLdqtiFSuJRaqm7PnWxQHOc96NvVOY9RIghH6sOOKcUlBfBZ7XiTpqQTT9
Pn6eKyjbKJ0yKFt17R2padaDi/mJ62QCAbyBQut/CtnsoLeqxkLxkofkcdB/+P48
mVUi9L8GGb9bWsJ0MB4x1xq5zRINZZwhGfLw5oKV0aE9Ek+GMp2PUVQHVkzNp+Mv
oMF+sehJjzDYkK7I8nDe7a3tILl9PdUQ7848f7ihy8Ev2eAl0zI/ueO4Ah+h+56B
Yl+zTvKlJEYEWDYV88oFAZ9HclzCiwwgyiNpNk1yAFR8GOlvV92i/4fSWYuBwfky
8NshzXCl2+8IF5tQRMVN/xIKqfA0Ub0Dmme6jHInP32Ly8GyIBnGhBoweryinJJu
amR91Trr0uZIb5WShfNMEDJQFYEJ33Oh9v/7EKzPQBKhcYx8gDU=
=8Bao
-----END PGP SIGNATURE-----

--------------x95GfUR0cu0Edh05BSjdG2MZ--
