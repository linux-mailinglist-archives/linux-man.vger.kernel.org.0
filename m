Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E70C25AC697
	for <lists+linux-man@lfdr.de>; Sun,  4 Sep 2022 23:16:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231225AbiIDVQX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Sep 2022 17:16:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229596AbiIDVQW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Sep 2022 17:16:22 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11629255BF
        for <linux-man@vger.kernel.org>; Sun,  4 Sep 2022 14:16:21 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id n17-20020a05600c501100b003a84bf9b68bso4675901wmr.3
        for <linux-man@vger.kernel.org>; Sun, 04 Sep 2022 14:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=SJr2rS7T8DQMBgRP8uhcjn2uzIdffAXFazjIh2/rMD0=;
        b=kO8fLkM+8hT1SbVEwLf5cjSVLml9BuPCMRIu4VQ4tVcOq3dc3SvE8jSuMD7IE76L/h
         rEB5BwP9gB6LlL0pMZQS6hxQVfZ5P9jLhOpTcONYi0j9P4zUcpk1dYqwtk4PmGk5Cqsn
         W7n44nBSTXzbvY5kH3/LO4HPsfcjbXT3VCA1jnPnAZXx2umy4KwEJ8iL5H8fDCWu5g9g
         OLahlMrrC2RTjA/49/6BZO+ZKpqd0P+jLHvuT71c3rwV80S4zNOxjxxJJRCIkzY7GMeX
         IwbUJ+z9Ir70mArpu2YuBEYed9jLSPge7314W2uYW8TwBQSv3m2digE+rw+NU2XyvtU9
         XHMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=SJr2rS7T8DQMBgRP8uhcjn2uzIdffAXFazjIh2/rMD0=;
        b=ykf+4lWRzSy209icsK7Au9ALa/WHXC/lPWECBkZKW7jSrAThZL5d1TlXgu3Tb7UrS6
         mmTKkxk6ZF58zn1wcQrvZcGppeuiUwAe/vcLoclKFw+YWv3t1ZcjCPddUu/ae2co0aZD
         1mWZdZWsqAW1Th/bCxttes/9BLoRwVDJ7VTaGIBeqcA1JnrUtbpdkWfMc64GoEYazaI3
         neXoNav9UERNCIEPhZI1md5DCGK2YrZLmuGqYwoAPiQ0ZpU/p0eb1w9CDWOZoMtPGFxa
         +SxDBco+3U9p90VKeTnknBAuW2aTDx8gkXDBGVVlqVTFrKl37BQxr7ImXuymHO4iEItK
         TjwQ==
X-Gm-Message-State: ACgBeo3SagLcXDHdtBbAAm69RQyBxcmZTn4izlJPO4h7uhT95mdpyvok
        0eqBpbUjFe4YedBlq0IH3Nk=
X-Google-Smtp-Source: AA6agR6y7eob13Ig6bphoLfCi4wUvHCHTxke2F+A8Q6Gb9DPBNiavUFsqdi58vT4FQsMu1sEtHX5xA==
X-Received: by 2002:a05:600c:2195:b0:3a6:b3c:c100 with SMTP id e21-20020a05600c219500b003a60b3cc100mr8893115wme.8.1662326179222;
        Sun, 04 Sep 2022 14:16:19 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g13-20020a05600c4ecd00b003a4c6e67f01sm17651830wmq.6.2022.09.04.14.16.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Sep 2022 14:16:18 -0700 (PDT)
Message-ID: <28eb6a53-7865-d75d-8903-77b63e09222d@gmail.com>
Date:   Sun, 4 Sep 2022 23:16:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH v2] _Generic.3: New page documenting _Generic()
To:     Florian Weimer <fweimer@redhat.com>
Cc:     linux-man@vger.kernel.org, JeanHeyd Meneide <wg14@soasis.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>
References: <20220820171009.34196-1-alx.manpages@gmail.com>
 <20220821115506.22850-1-alx.manpages@gmail.com>
 <87mtbv4chu.fsf@oldenburg.str.redhat.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <87mtbv4chu.fsf@oldenburg.str.redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5vioAcDM4eELIO0MvcHtQfw9"
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------5vioAcDM4eELIO0MvcHtQfw9
Content-Type: multipart/mixed; boundary="------------NbrdkUa0ATcvV99lU6acdkAe";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Florian Weimer <fweimer@redhat.com>
Cc: linux-man@vger.kernel.org, JeanHeyd Meneide <wg14@soasis.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Ingo Schwarze <schwarze@usta.de>
Message-ID: <28eb6a53-7865-d75d-8903-77b63e09222d@gmail.com>
Subject: Re: [PATCH v2] _Generic.3: New page documenting _Generic()
References: <20220820171009.34196-1-alx.manpages@gmail.com>
 <20220821115506.22850-1-alx.manpages@gmail.com>
 <87mtbv4chu.fsf@oldenburg.str.redhat.com>
In-Reply-To: <87mtbv4chu.fsf@oldenburg.str.redhat.com>

--------------NbrdkUa0ATcvV99lU6acdkAe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRmxvcmlhbiwNCg0KT24gOC8yMy8yMiAwOTo1OCwgRmxvcmlhbiBXZWltZXIgd3JvdGU6
DQo+IE5vdGUgdGhhdCB0aGlzIGFwcHJvYWNoIGRvZXMgbm90IHJlYWxseSB3b3JrIHRoYXQg
d2VsbCBpbiBwcmFjdGljZQ0KPiBiZWNhdXNlIG1hY3JvcyB1c2luZyBfR2VuZXJpYyBleHBh
bmQgYWxsIHRoZSBhbHRlcm5hdGl2ZXMgKGluIGN1cnJlbnQNCj4gaW1wbGVtZW50YXRpb25z
OyBkb2luZyB0aGlzIGRpZmZlcmVudGx5IHJlcXVpcmVzIGRldmlhdGluZyBmcm9tIHRoZQ0K
PiBsYXllcmVkIGltcGxlbWVudGF0aW9uIHN0cmF0ZWd5IHN1Z2dlc3RlZCBpbiB0aGUgQyBz
dGFuZGFyZCkuICBUaGlzDQo+IG1lYW5zIHRoYXQgX0dlbmVyaWMtdXNpbmcgbWFjcm9zIGNh
biBvbmx5IGJlIG5lc3RlZCBtYXliZSB0aHJlZSBvciBmb3VyDQo+IGxldmVscyBkZWVwLCBk
ZXBlbmRpbmcgb24gdGhlIG51bWJlciBvZiBfR2VuZXJpYyBhbHRlcm5hdGl2ZXMgb24gZWFj
aA0KPiBsZXZlbC4gIEZvciA8dGdtYXRoLmg+LCB0aGlzIGlzIHJlYWxseSBub3QgZW5vdWdo
LCBzbyBhIGhpZ2gtcXVhbGl0eQ0KPiBpbXBsZW1lbnRhdGlvbiBvZiA8dGdtYXRoLmg+IHVz
aW5nIF9HZW5lcmljIGlzIG5vdCBmZWFzaWJsZS4gIEdDQw0KPiBwcm92aWRlcyBfX2J1aWx0
aW5fdGdtYXRoLCB3aGljaCBpcyBkZXNpZ25lZCBpbiBzdWNoIGEgd2F5IHRoYXQgd2hlbg0K
PiB1c2VkIGluIGEgbWFjcm8sIHRoZSBtYWNybyBhcmd1bWVudCBpcyBvbmx5IGV4cGFuZGVk
IG9uY2UuDQo+IA0KPiBNYXliZSBtZW50aW9uIHRoaXMgdW5kZXIgQlVHUz8NCj4gDQo+IEMr
KyB0ZW1wbGF0ZXMgZG8gbm90IHN1ZmZlciBmcm9tIHRoaXMgcGFydGljdWxhciBwcm9ibGVt
Lg0KDQoNCkhlaCwgSSBkb24ndCBrbm93IGhvdyB0aGlzIGRpZG4ndCBvb2N1ciB0byBtZSBi
ZWZvcmUuICBXZWxsLCBtYXliZSBpdCdzIA0KYmVjYXVzZSBpdCdzIG5vbi1zdGFuZGFyZCAo
YnV0IHRoZSBzdGFuZGFyZCBtaWdodCB2ZXJ5IHdlbGwgYmVuZWZpdCBmcm9tIA0KYWRkaW5n
IHRoaXMsIElNTykuDQoNCkFuIGFsd2F5c19pbmxpbmUgZnVuY3Rpb24gd2l0aCBubyBleHRl
cm4gZGVmaW5pdGlvbiBiZWhhdmVzIGFzIGlmIGl0IA0Kd2VyZSBhIG1hY3JvICh0cnlpbmcg
dG8gdGFrZSBhIHBvaW50ZXIgdG8gaXQsIG9yIHNvbWV0aGluZyB0aGF0IG5lZWRzIGEgDQps
aW5rZXIgc3ltYm9sLCB3aWxsIHJlc3VsdCBpbiBsaW5rZXIgZXJyb3JzLCB3aGljaCBpcyBu
b3QgdGhlIG1vc3QgDQpyZWFkYWJsZSBlcnJvciwgYnV0IGdvb2QgZW5vdWdoKSwgaW4gdGhl
IHNlbnNlIHRoYXQgaXQgZG9lc24ndCBoYXZlIEFCSSANCmlzc3VlcywgYnV0IGhhcyB0aGUg
YmVuZWZpdCBvZiBub3QgY3JlYXRpbmcgY29kZSBleHBvbmVudGlhbGx5Lg0KDQoNCkNoZWVy
cywNCg0KQWxleA0KDQotLS0NCg0KZGlmZiAtLWdpdCBhL21hbjMvX0dlbmVyaWMuMyBiL21h
bjMvX0dlbmVyaWMuMw0KaW5kZXggZjNkYWY5OGMxLi4zYmQ1ZjMwNmMgMTAwNjQ0DQotLS0g
YS9tYW4zL19HZW5lcmljLjMNCisrKyBiL21hbjMvX0dlbmVyaWMuMw0KQEAgLTMwLDcgKzMw
LDkgQEAgQzExIGFuZCBsYXRlci4NCiAgVGhlIGZvbGxvd2luZyBwcm9ncmFtIGRlbW9uc3Ry
YXRlcyBob3cgdG8gd3JpdGUNCiAgYSByZXBsYWNlbWVudCBmb3IgdGhlIHN0YW5kYXJkDQog
IC5CUiBpbWF4YWJzICgzKQ0KLWZ1bmN0aW9uLCB3aGljaCBiZWluZyBhIGZ1bmN0aW9uIGNh
bid0IHJlYWxseSBwcm92aWRlIHdoYXQgaXQgcHJvbWlzZXM6DQorZnVuY3Rpb24sIHdoaWNo
IGJlaW5nIGFuDQorLkkgZXh0ZXJuDQorZnVuY3Rpb24gY2FuJ3QgcmVhbGx5IHByb3ZpZGUg
d2hhdCBpdCBwcm9taXNlczoNCiAgc2VhbWxlc3NseSB1cGdyYWRpbmcgdG8gdGhlIHdpZGVz
dCBhdmFpbGFibGUgdHlwZS4NCiAgLlBQDQogIC5cIiBTUkMgQkVHSU4gKF9HZW5lcmljLmMp
DQpAQCAtMzksMTEgKzQxLDE2IEBAIHNlYW1sZXNzbHkgdXBncmFkaW5nIHRvIHRoZSB3aWRl
c3QgYXZhaWxhYmxlIHR5cGUuDQogICNpbmNsdWRlIDxzdGRpby5oPg0KICAjaW5jbHVkZSA8
c3RkbGliLmg+DQoNCi0jZGVmaW5lIG15X2ltYXhhYnMoaikgIF9HZW5lcmljKElOVE1BWF9D
KDApLCAgXGUNCi0gICAgbG9uZzogICAgICAgICAgIGxhYnMoaiksICAgICAgICAgICAgICAg
ICAgXGUNCi0gICAgbG9uZyBsb25nOiAgICAgIGxsYWJzKGopICAgICAgICAgICAgICAgICAg
XGUNCi0gLyogbG9uZyBsb25nIGxvbmc6IGxsbGFicyhqKSAqLyAgICAgICAgICAgICAgXGUN
Ci0pDQorW1tnbnU6OmFsd2F5c19pbmxpbmVdXQ0KK2lubGluZSBpbnRtYXhfdA0KK215X2lt
YXhhYnMoaW50bWF4X3QgaikNCit7DQorICAgIHJldHVybiBfR2VuZXJpYyhqLA0KKyAgICAg
ICAgbG9uZzogICAgICAgICAgIGxhYnMoaiksDQorICAgICAgICBsb25nIGxvbmc6ICAgICAg
bGxhYnMoaikNCisgICAgIC8qIGxvbmcgbG9uZyBsb25nOiBsbGxhYnMoaikgKi8NCisgICAg
KQ0KK30NCg0KICBpbnQNCiAgbWFpbih2b2lkKQ0KDQoNCg0KDQotLSANCkFsZWphbmRybyBD
b2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------NbrdkUa0ATcvV99lU6acdkAe--

--------------5vioAcDM4eELIO0MvcHtQfw9
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMVFZkACgkQnowa+77/
2zJLAg/9HlmAoXgoYXY+dkxhgvIQoS8vpm0gdhvgHhtYLegpXs41b9CgkNJU9pv/
IXdWAnbx4kk2Ha7Y/rSJCEup1V9se5g1Hme+Fuu2c2xyajtWrSkaK1Sm8ZjIC+9k
Mbom5SWJY3QeP35M1WIjmqHTENJpurlhwtosq6RJv4f/geQT7soUQbSeiiU702w1
HfNP4xkM2bF8xekxwExDI3EoyOKps66GEKoJYp2+uYHnl2dAO0ylD4311+sPldyp
O/JgFjraJ6Aes+rVCFq7fiKvJqUiq/9ApSIvtXdOIlcj5sQNEZWA3SDGeK1dqpb3
kpc1JojvTHajF7od1EnMPl+LHjsBfvXlcVZuyTbhGGHPzeRK6I7Kd3o+uGG/JPpf
ATMsxxjSXZFtHFGhpebf3gyff4i7NrBhuy9YCRZ9RYWVO6B8GmsxnczObwQaVijp
Ncl2I+vOSf5YqV75VoRWQXe6X1d2X3FXq/JVSOPvdusC0fdhpUERQL6GjRDNAtlL
AgvJ7Nvza6NuciEhjs+iRVvvXXmMjKia2XWV9g2dpnw4RfuLsueIzzRtPz3rPgw3
f9lFfv4RKB3bt87MRoyNtoNDyA84YnJReIEZNGjX0Yhaxa47cqzH1L6ZRPwL1Lp5
Kik2V2Jthren1CLJ4VGOPS3b3ceGMbu7vXCBNXMw3D4ywM0i5vU=
=tr/o
-----END PGP SIGNATURE-----

--------------5vioAcDM4eELIO0MvcHtQfw9--
