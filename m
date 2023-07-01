Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22E8C744AE1
	for <lists+linux-man@lfdr.de>; Sat,  1 Jul 2023 20:45:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229646AbjGASpi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Jul 2023 14:45:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229530AbjGASpg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Jul 2023 14:45:36 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77A9610DC
        for <linux-man@vger.kernel.org>; Sat,  1 Jul 2023 11:45:34 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-313f61890fbso3302140f8f.3
        for <linux-man@vger.kernel.org>; Sat, 01 Jul 2023 11:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688237132; x=1690829132;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=asdE9uIC4tQh8hmfLncOzeKX9IsPLOUY4D1rBYQnmYU=;
        b=F9NVgeP/VM2+wg2sD588SEDg6GnRDcGSuc7N+96T9OM8dpUg7A312/hK5o9MKvOFSQ
         SvY3xPadwOJkPbCeAgpLzJSeBo1rMvupaNZy3s70S8qlJEPG+n2+X3kjEFP4aWHQTx+a
         UckVohw1j027MmzKlrG9IPZezdFHnGw8vM/GMrNsmWlyOykwtLq8uC9FVwQKyZTp9gtT
         tvSatTLqIzM00v/MWP0uI0ppEkuYuPMaY3lpsyVH8HR9zItLXkf75gyt9kJPO7ut0KgD
         jnyU/6xZI7lPsbpiKn/mk74GUAx9HgDs4sZnMPirmWfuopTeypD01+Kljuk5zpPgeiwA
         Sz4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688237132; x=1690829132;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=asdE9uIC4tQh8hmfLncOzeKX9IsPLOUY4D1rBYQnmYU=;
        b=CvW3p0l84Je6TU4HWNrQ8QziKxPerJR739LpOi7EZpdeGxBzzqYjsOtOIobP8+hDyK
         cGoU9a17TqLyXlApAtFXcNIPmyRJbo0OhTySY9W5bCDo+lcH7qCQhhdqWcqHZ8O9q7ka
         Jw5wbZrW9bByaXtcPtz+A6tsun9uKPYq9sD4DtPNEgEFM8MgqcdWYFRyiPcaYzrfqHRe
         IpRGcTNF1l6ChyZeUm8pegFfnyOhCRTcwUeuwucpQJyR581vRnD6XCb6E0aC3xwEoXq/
         Z4Ys7ygr5AsVPQPoB6RZiIE+664yojyWCTDoohQczvNFrDPqamaUyvy26F1DeoZfQ8sE
         7ZWQ==
X-Gm-Message-State: ABy/qLb022nAa9jAn/6kpxRlnW4HwZ4f2ql3NWc8V/g1nwDPEfqqgeyL
        HXlrV2xNoeW1GOIfSWZCjtQgNv28tug=
X-Google-Smtp-Source: APBJJlGQ7y5Q4UYvlGCDR2zylr5YVL/6nvhA1P9zSUO8MRoon7UIr/UmzVcO4aKyeEidCAAJqP23KA==
X-Received: by 2002:a5d:544d:0:b0:313:e146:1816 with SMTP id w13-20020a5d544d000000b00313e1461816mr4627905wrv.24.1688237132424;
        Sat, 01 Jul 2023 11:45:32 -0700 (PDT)
Received: from [192.168.43.80] ([46.222.175.206])
        by smtp.gmail.com with ESMTPSA id t4-20020a5d5344000000b0030aee3da084sm21459513wrv.49.2023.07.01.11.45.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Jul 2023 11:45:31 -0700 (PDT)
Message-ID: <ca26b14b-341b-5b7e-bddb-e87ff3df2b22@gmail.com>
Date:   Sat, 1 Jul 2023 20:45:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [musl] Re: [libc-coord] Re: [musl] Re: regression in man pages
 for interfaces using loff_t
Content-Language: en-US
To:     Rich Felker <dalias@libc.org>
Cc:     libc-coord@lists.openwall.com, linux-man@vger.kernel.org,
        musl@lists.openwall.com, libc-alpha@sourceware.org,
        Paul Eggert <eggert@cs.ucla.edu>
References: <20230628175329.GA16113@brightrain.aerifal.cx>
 <add1e27e-e10c-e70d-ed5e-85bb0d4d4101@cs.ucla.edu>
 <20230628191525.GS20050@brightrain.aerifal.cx>
 <8e65a459-a933-38b4-5f82-f7016c107d91@cs.ucla.edu>
 <20230630233705.GW4163@brightrain.aerifal.cx>
 <f3f58057-f764-b4bf-a3fe-92867cfa3131@cs.ucla.edu>
 <20230701143205.GX4163@brightrain.aerifal.cx>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230701143205.GX4163@brightrain.aerifal.cx>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------3qyrDe0bZpk00Jv10MC1oFuz"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------3qyrDe0bZpk00Jv10MC1oFuz
Content-Type: multipart/mixed; boundary="------------GglAbUcs99mMC7gm0GjhhIjq";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Rich Felker <dalias@libc.org>
Cc: libc-coord@lists.openwall.com, linux-man@vger.kernel.org,
 musl@lists.openwall.com, libc-alpha@sourceware.org,
 Paul Eggert <eggert@cs.ucla.edu>
Message-ID: <ca26b14b-341b-5b7e-bddb-e87ff3df2b22@gmail.com>
Subject: Re: [musl] Re: [libc-coord] Re: [musl] Re: regression in man pages
 for interfaces using loff_t
References: <20230628175329.GA16113@brightrain.aerifal.cx>
 <add1e27e-e10c-e70d-ed5e-85bb0d4d4101@cs.ucla.edu>
 <20230628191525.GS20050@brightrain.aerifal.cx>
 <8e65a459-a933-38b4-5f82-f7016c107d91@cs.ucla.edu>
 <20230630233705.GW4163@brightrain.aerifal.cx>
 <f3f58057-f764-b4bf-a3fe-92867cfa3131@cs.ucla.edu>
 <20230701143205.GX4163@brightrain.aerifal.cx>
In-Reply-To: <20230701143205.GX4163@brightrain.aerifal.cx>

--------------GglAbUcs99mMC7gm0GjhhIjq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNy8xLzIzIDE2OjMyLCBSaWNoIEZlbGtlciB3cm90ZToNCj4gVGhpcyBpcyB3aHkgdGhl
IG9ubHkgc2FmZSBhbmQgcmVhc29uYWJsZSB0aGluZyB0byBkbywgd2l0aG91dCBhbg0KPiBl
eHRlbnNpdmUgY29uc2Vuc3VzIHByb2Nlc3Mgd29ya2luZyB0byB1bmRlcnN0YW5kIGFuZCBh
c3Nlc3MgdGhlDQo+IGltcGFjdCBvZiBhIGNoYW5nZSwgaXMgTk9UIFRPIE1BS0UgQ0hBTkdF
UyBUTyBFWElTVElORyBJTlRFUkZBQ0UNCj4gU1BFQ0lGSUNBVElPTlMuIEl0J3MgcmVhbGx5
IHVuc2V0dGxpbmcgdGhhdCB0aGlzIHdhcyBkb25lIHVuaWxhdGVyYWxseQ0KPiBpbiBzdWNo
IGFuIGltcG9ydGFudCBzb3VyY2Ugb2YgZG9jdW1lbnRhdGlvbiBhcyBsaW51eC1tYW4uIFVu
bGVzcw0KPiBnbGliYyBmb2xrcyBjb21lIHVwIHdpdGggYSB3YXkgdG8gZ2V0IG9uIGJvYXJk
IHdpdGggY2hhbmdpbmcgaXQgdG8NCj4gb2ZmX3QgbGlrZSB5b3Ugd2FudCwgSSBkbyBub3Qg
d2FudCB0byBnZXQgaW50byBhbm90aGVyIHJvdW5kIG9mIG1ha2luZw0KPiBjaGFuZ2VzIHRv
ICJpbXByb3ZlIiBzb21ldGhpbmcgdGhhdCB3YXMgd3JvbmcgYWJvdXQgaG93IHRoZSBpbnRl
cmZhY2UNCj4gd2FzIHNwZWNpZmllZCBiZWZvcmUuIEkganVzdCB3YW50IHRvIHJldmVydCB0
aGUgYnJlYWthZ2UgYW5kIGVzdGFibGlzaA0KPiB0aGF0IHRoaXMga2luZCBvZiBicmVha2Fn
ZSBzaG91bGQgbm90IGhhcHBlbi4NCg0KSGkgUmljaCwNCg0KU29ycnkgZm9yIHRoZSB0cm91
YmxlIGNhdXNlZC4gIEJ1dCBsZXQgbWUgY2xhcmlmeSBzb21ldGhpbmcuDQoNCldoYXQgaXMg
dGhlIHNwZWMsIGFuZCBob3cgZGlkIHdlIGRldmlhdGUgZnJvbSBpdD8gIEFyZSB3ZSAobGlu
dXgtbWFuKQ0KdGhlIHNwZWM/ICBJcyBpdCB0aGUga2VybmVsPyAgSXMgaXQgZ2xpYmM/ICBQ
cm9iYWJseSwgd2UgYXJlIGFsbC4NCldlIG5lZWQgdG8gY2xhcmlmeSB0aGF0IGJlZm9yZSBh
Y2N1c2luZyBhbnlvbmUgb2YgZGV2aWF0aW5nIGZyb20gdGhlDQpzcGVjLg0KDQpXaGVuIHRo
ZXJlJ3MgZGlzYWdyZWVtZW50IGJldHdlZW4gc29tZSBvZiB0aG9zZSAzIHNvdXJjZXMsIHdo
YXQgdG8gZG8/DQoNCkhlcmUncyB3aGF0IGdsaWJjJ3MgaW5mbyBwYWdlIHNheXMgKGFuZCBJ
IGRvdWJ0IEkgaW5mbHVlbmNlZCBpbnRvDQptb2RpZnlpbmcgdGhhdCk6DQoNCiAgLS0gRnVu
Y3Rpb246IHNzaXplX3QgY29weV9maWxlX3JhbmdlIChpbnQgSU5QVVRGRCwgb2ZmNjRfdCAq
SU5QVVRQT1MsDQogICAgICAgICAgIGludCBPVVRQVVRGRCwgb2ZmNjRfdCAqT1VUUFVUUE9T
LCBzc2l6ZV90IExFTkdUSCwgdW5zaWduZWQgaW50DQogICAgICAgICAgIEZMQUdTKQ0KDQpI
ZXJlJ3Mgd2hhdCB0aGUga2VybmVsIHNheXM6DQoNCiQgZ3JlcGMgLXRmc3AgY29weV9maWxl
X3JhbmdlDQouL2luY2x1ZGUvbGludXgvc3lzY2FsbHMuaDo5ODY6DQphc21saW5rYWdlIGxv
bmcgc3lzX2NvcHlfZmlsZV9yYW5nZShpbnQgZmRfaW4sIGxvZmZfdCBfX3VzZXIgKm9mZl9p
biwNCgkJCQkgICAgaW50IGZkX291dCwgbG9mZl90IF9fdXNlciAqb2ZmX291dCwNCgkJCQkg
ICAgc2l6ZV90IGxlbiwgdW5zaWduZWQgaW50IGZsYWdzKTsNCg0KDQpWZXJ5IG9mdGVuLCB0
aGUgdXNlci1zcGFjZSB3cmFwcGVyIGRpc2FncmVlcyB3aXRoIHRoZSB0eXBlcyB1c2VkIGJ5
DQp0aGUga2VybmVsLCBhbmQgaW4gdGhlIG1hbnVhbCBwYWdlcyB3ZSBwcmlvcml0aXplIHRo
ZSB3cmFwcGVycy4gIEluDQptYW55IGNhc2VzLCBJIGZvdW5kIHRoYXQgdGhlIG1hbnVhbCBw
YWdlcyB3ZXJlIHdyb25nICh0aGV5IHN0YXRlZCBhDQp0eXBlIHRoYXQgd2FzIGRpZmZlcmVu
dCBmcm9tIHRoZSBnbGliYyBvbmUpLCBhbmQgZml4ZWQgdGhlbSBmb3IgZ29vZC4NCkluIHRo
aXMgY2FzZSBpdCBzZWVtcyB0aGUgZml4IHdhcyB3cm9uZywgYW5kIG5vYm9keSBub3RpY2Vk
IGZvciBhIGZldw0KeWVhcnMuICBXZWxsLCBzb3JyeSBmb3IgbWFraW5nIHRoaXMgbWlzdGFr
ZS4gIEkgdGhpbmsgb3ZlcmFsbCwgaW4gdGhlDQpsYXN0IHllYXJzIEkgaGF2ZSBmaXhlZCBt
b3JlIHN0dWZmIHRoYW4gSSBoYXZlIGJyb2tlbi4NCg0KSW4gdGhpcyBjYXNlLCBJJ20gcmVh
ZHkgdG8gZml4IHRoaXMgd2hlbiB5b3UgYWxsIGFncmVlLiAgRG9uJ3Qgd29ycnkNCnRvbyBt
dWNoIGFib3V0IGl0LiAgSSdtIG9uIHZhY2F0aW9uLCBzbyBJJ2xsIGNvbWUgYmFjayB0byB0
aGlzIHRocmVhZCBpbg0KYSBmZXcgZGF5cy4NCg0KVG8gbWUsIHJldmVydGluZyBiYWNrIHRv
IGxvZmZfdCBpcyBmaW5lIGlmIHlvdSBhbGwgYWdyZWUuICBBbHNvLCBpdCdzDQpiZWVuIGFu
IGludGVyZXN0aW5nIHRocmVhZCBhYm91dCB3aHkgd2Ugc2hvdWxkIGF2b2lkIGxvZmZfdCBh
bmQNCm9mZjY0X3QgZm9yIG5ldyBBUElzLiAgSSdsbCBwcm9iYWJseSBkb2N1bWVudCBzb21l
IG9mIHRob3NlIGRldGFpbHMuDQoNCkNoZWVycywNCkFsZXgNCg0KDQotLSANCjxodHRwOi8v
d3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCkdQRyBrZXkgZmluZ2VycHJpbnQ6IEE5MzQ4
NTk0Q0UzMTI4M0E4MjZGQkREOEQ1NzYzM0Q0NDFFMjVCQjUNCg0K

--------------GglAbUcs99mMC7gm0GjhhIjq--

--------------3qyrDe0bZpk00Jv10MC1oFuz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSgdEIACgkQnowa+77/
2zJWgA//a2XQeRx3mxCBmHHDJ2EnFfsJB+r0MgwGI0hE7vWFKIzqfPJxgh70NInf
DKvbuyUQH2lhjX+APXaZiWEj/cDt/3rmQLDTlGTPGaIbah64O+NmrOJ6BaFZFcdw
DTAjBUP69KPKUrn/zng86g6GqryHUWGK32i7L4AxRLdf3UDBZon6TUldsFfkJx3y
m29v3ZbcAGcHLAX44rNaAQ+shuzNRwIaa8SrVW1lff0m/P6SFRoqraI+WvUdwD7g
7ARFxxqgllC4k3c9aVVHbCEkSN5zCwzZG6umY92wxfcfehiRYR4cCEZn8l4rzqCP
PCAbDIzMZdKKPgVktheWxJoY3qYzneXAuBu5TXCrAP+AysDTph9XU2E2iIKQa/ql
pfido1oUr9Za/9KNN5seKV/vRrcVn4RxEYWWCmrwUKckbzdfA+aubiCcxKYpOsem
f9e+s2nfb9TJGnLqbifjNjgmG0hJYZmz/9aboxph+xEtMTxAeUNdmJ8aLOQ4fNH0
qUeo0deP+fZbKN1dUi8YCjHJZ7iQWXtqSXL8ejGJB1mf20KfKH7kaHe+j7FjmBjd
d2LQAnxeEWt0vyJ/qRRbqWkv5zONJDNkvfn6XqHXG4A7/lAS/ub9Vxvsiz4PHrq0
uPODXYmAGJjxG4NBVVl23wn2APFpofUnwny0uu538sgEjhPt6Lk=
=zFm3
-----END PGP SIGNATURE-----

--------------3qyrDe0bZpk00Jv10MC1oFuz--
