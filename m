Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6FEF624890
	for <lists+linux-man@lfdr.de>; Thu, 10 Nov 2022 18:47:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229958AbiKJRrw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 12:47:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230315AbiKJRru (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 12:47:50 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82B0531EE9
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 09:47:49 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id k8so3381324wrh.1
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 09:47:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-language:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qbMNVQMvrlMRoLLxUWLPlg9g6CiIjN38L1sEYgw/0Hs=;
        b=kN5Zrd5rwdgVV0hBGmaT81L2b9AvmbhqxoSqYEjgQLIWywg+Z0JI85F0/9VATTOM/a
         9rP+AcWcckYNH94BpXf9rF8D/NH/wQJV50OdoG7uOq80EP1OPwAQ/KM5ReRna3GKl38y
         2NbQXmLOzjg4NM8jq0qu6rLi/vwy5ThQ2Yjg7SZMCkqOaBlHRXsIQRfZCKRQqiWmgRdf
         8Xxh+ipYAqqXSlXCK+W9HT0PlXOWMNhcSwhyAnk9mP5D+Hv1sfWrYMtYDRpCBX6LMkm/
         3gTUyTgebKOxPEkaTbyW7aoGQR0iv+uECmfOy8YDR2zLSHvfNIaRiQtFscMIjkjvp7Cv
         /E4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-language:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qbMNVQMvrlMRoLLxUWLPlg9g6CiIjN38L1sEYgw/0Hs=;
        b=Q1JkimmVlaf/Rv+WHzkOrQQhP19rdlCuP+fuURvl16hGl6EXqwswUF4O7AJxv+lzw0
         +qinrktEuvMOIg3DAf24pJpoerMfc7+Gfb0jeUbDZGXRQYKjfAlZTILEzam6Ej1fKsLW
         pP76jFy4fyjFWtHwBTpUZw89qMgD+4WO6dOjLhEwbBXqUiNEo5pOGm+EtZf79ZUAcaTY
         V7nYKF7nrCbo8OKYygvil39v+RBSPTRWxNiSwIqQnFZk3Pmu3IOe3c9EuENlEjjY5GE9
         qL40oxEIYR0qtwpyHQuDHdGUHqgZducL3wCOdnKNoFaDT/XMUKkA3DR+/kMAroECjmzO
         jbxQ==
X-Gm-Message-State: ACrzQf3IijbH1MG20KmrP1Q7XzYvPqBK6SK62F8Au9A7j0w5mm2arljL
        aEFg01gNHIXAN8Cka6X+SrI=
X-Google-Smtp-Source: AMsMyM634BQcgX7t49J6rMB2IBhNgOWA+f34g8DlcuYZZtyYflh1f1dLJHg9+ip3QYIBKCr/5QliUg==
X-Received: by 2002:adf:d1ea:0:b0:236:777d:74fd with SMTP id g10-20020adfd1ea000000b00236777d74fdmr42717765wrd.657.1668102467749;
        Thu, 10 Nov 2022 09:47:47 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i5-20020adffc05000000b0023660f6cecfsm16521676wrr.80.2022.11.10.09.47.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 09:47:46 -0800 (PST)
Message-ID: <01da77c7-fed2-0fc1-ae6a-770885057a27@gmail.com>
Date:   Thu, 10 Nov 2022 18:47:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org
References: <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <20221110094033.ptpfsqpvvx2yd5xs@illithid>
 <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>
Content-Language: en-US
In-Reply-To: <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------trKD64UkR1r09z058exjCEl5"
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
--------------trKD64UkR1r09z058exjCEl5
Content-Type: multipart/mixed; boundary="------------8246JE2XDzzz6HsYhLShZtR1";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org
Message-ID: <01da77c7-fed2-0fc1-ae6a-770885057a27@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <20221110094033.ptpfsqpvvx2yd5xs@illithid>
 <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>
In-Reply-To: <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>

--------------8246JE2XDzzz6HsYhLShZtR1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

W3JlbW92ZWQgZ2NjQCBhbmQgb3RoZXIgdW5pbnRlcmVzdGVkIHBlb3BsZTsgYWRkZWQgZ3Jv
ZmZAXQ0KDQpIaSBCcmFuZGVuIQ0KDQpPbiAxMS8xMC8yMiAxMTo1OSwgQWxlamFuZHJvIENv
bG9tYXIgd3JvdGU6DQo+PiBBbHNvLCBhcyBzb29uIGFzIEJlcnRyYW5kIGFuZCBJIGNhbiBn
ZXQgZ3JvZmYgMS4yMyBvdXRbMV0sIEkgYW0gaG9waW5nDQo+PiB5b3Ugd2lsbCwgc2hvcnRs
eSB0aGVyZWFmdGVyLCBtaWdyYXRlIHRvIHRoZSBuZXcgYE1SYCBtYWNyby4NCj4gDQo+IE5v
dCBhcyBzb29uIGFzIGl0IGdldHMgcmVsZWFzZWQsIGJlY2F1c2UgSSBleHBlY3QgKGF0IGxl
YXN0IGEgZGVjZW50IGFtb3VudCBvZikgDQo+IGNvbnRyaWJ1dG9ycyB0byBiZSBhYmxlIHRv
IHJlYWQgdGhlIHBhZ2VzIHRvIHdoaWNoIHRoZXkgY29udHJpYnV0ZSB0bywgYnV0IGFzIA0K
PiBzb29uIGFzIGl0IG1ha2VzIGl0IGludG8gRGViaWFuIHN0YWJsZSwgeWVzLCB0aGF0J3Mg
aW4gbXkgcGxhbnMuwqAgU28sIGlmIHlvdSANCj4gbWFrZSBpdCBiZWZvcmUgdGhlIGZyZWV6
ZSwgdGhhdCBtZWFucyBhcm91bmQgYSBjb3VwbGUgb2YgbW9udGhzIGZyb20gbm93Lg0KDQpJ
IHdvbid0IGJlIGFwcGx5aW5nIHRoZSBwYXRjaCBub3csIHRvIGF2b2lkIGNvbnRyaWJ1dG9y
cyBzZWVpbmcgcGVvcGxlIHN1ZGRlbmx5IA0Kbm90IHNlZWluZyBtYW4gcGFnZSByZWZlcmVu
Y2VzIHdoaWxlIHByZXBhcmluZyBwYXRjaGVzLiAgQnV0IEknbGwgc3RhcnQgDQpwcmVwYXJp
bmcgdGhlIHBhdGNoLCB0byBzZWUgd2hlcmUgYXJlIHRoZSBtb3N0IGRpZmZpY3VsdCBwYXJ0
cy4gIEFuZCBtYXliZSANCnJlcG9ydCBzb21lIGlzc3VlcyB3aXRoIHRoZSB1c2FiaWxpdHku
DQoNCk15IGZpcnN0IHRoaW5nIHdhcyB0byBydW46DQoNCiQgZ3JlcCAtcm4gJ15cLkJSIC4q
IChbMS05XVx3KiknDQoNCkknbSBzdXJwcmlzZWQgZm9yIGdvb2QgdGhhdCBpdCBzZWVtcyB0
aGF0IHRoZXJlIGFyZSBubyBmYWxzZSBwb3NpdGl2ZXMuICBJIA0KZGlkbid0IGV4cGVjdCB0
aGF0LiAgQnV0IHNpbmNlIHRoaW5ncyBsaWtlIGV4aXQoMSkgYXJlIGNvZGUsIHRoZXkgYXJl
IHByb2JhYmx5IA0KZWl0aGVyIG5vdCBoaWdobGlnaHRlZCBhdCBhbGwsIG9yIG1heWJlIGFy
ZSBpdGFsaWNpemVkIChhcyBjb2RlIGlzKS4gIFNvIHRoYXQncyANCmEgZ29vZCB0aGluZy4N
Cg0KSXQgc2hvd2VkIGEgZmV3IGxpbmVzIHRoYXQgbWlnaHQgYmUgcHJvYmxlbWF0aWMsIGJ1
dCB0aGF0J3MgYWN0dWFsbHkgYmFkIGNvZGUsIA0Kd2hpY2ggSSBuZWVkIHRvIGZpeDoNCg0K
bWFuNy9jcmVkZW50aWFscy43OjI3MDouQlIgc2V0dWlkICIoMikgKCIgc2V0Z2lkICgyKSkN
Cm1hbjcvY3JlZGVudGlhbHMuNzoyNzQ6LkJSIHNldGV1aWQgIigyKSAoIiBzZXRlZ2lkICgy
KSkNCm1hbjcvY3JlZGVudGlhbHMuNzoyNzc6LkJSIHNldGZzdWlkICIoMikgKCIgc2V0ZnNn
aWQgKDIpKQ0KbWFuNy9jcmVkZW50aWFscy43OjI4MDouQlIgc2V0cmV1aWQgIigyKSAoIiBz
ZXRyZWdpZCAoMikpDQptYW43L2NyZWRlbnRpYWxzLjc6Mjg0Oi5CUiBzZXRyZXN1aWQgIigy
KSAoIiBzZXRyZXNnaWQgKDIpKQ0KDQpUaG9zZSBhcmUgYXNraW5nIGZvciBhIDItbGluZSB0
aGluZywgd2hlcmUgdGhlIHNlY29uZCBsaW5lIGlzIFJCIGluc3RlYWQgb2YgQlIuIA0KV2hp
Y2ggcmVtaW5kcyBtZSB0byBjaGVjayBSQjoNCg0KJCBncmVwIC1ybiAnXlwuUkIgLiogKFsx
LTldXHcqKScNCg0KVGhlcmUgYXJlIG11Y2ggbGVzcyBjYXNlcywgYW5kIGFsc28gc2VlbSB0
byBiZSBmaW5lIHRvIHNjcmlwdCwgd2l0aCBhIGZldyBtaW5vciANCmZmaXhlcyB0b28uDQoN
ClRoZSBiaWcgaXNzdWUgaXMgdGhhdCB5b3VyIE1SIGRvZXNuJ3Qgc3VwcG9ydCBsZWFkaW5n
IHRleHQ6DQoNCiAgICAgICAgLk1SIHBhZ2XigJB0aXRsZSBtYW51YWzigJBzZWN0aW9uIFt0
cmFpbGluZ+KAkHRleHRdDQoNCkkgcmVtZW1iZXIgd2UgaGFkIHRoaXMgZGlzY3Vzc2lvbiBh
Ym91dCB3aGF0IHRvIGRvIHdpdGggaXQuICBBIDR0aCBhcmd1bWVudD8gDQpUaGVyZSdzIGFs
c28gY29uZmxpY3Qgd2l0aCBhIGh5cG90aGV0aWNhbCBsaW5rIHRoYXQgd2UgbWlnaHQgd2Fu
dCB0byBhZGQgbGF0ZXIuDQoNCk15IG9waW5pb24gaXMgdGhhdCB0aGUgNHRoIGFyZ3VtZW50
IHNob3VsZCBiZSB0aGUgbGVhZGluZyB0ZXh0LiAgQXNraW5nIHRvIHVzZSANCnRoZSBlc2Nh
cGUgKHdhcyBpdCBcYz8pIHNlcXVlbmNlIHRvIHdvcmthcm91bmQgdGhhdCBsaW1pdGF0aW9u
IGlzIG5vdCB2ZXJ5IG5pY2UuIA0KICBFc3BlY2lhbGx5IGZvciBzY3JpcHRpbmcgdGhlIGNo
YW5nZS4NCg0KSWYgeW91IHdhbnQgYSA1dGggYXJndW1lbnQgZm9yIGEgVVJJLCB5b3UgY2Fu
IHNwZWNpZnkgdGhlIGxlYWRpbmcgdGV4dCBhcyAiIiwgDQp3aGljaCBpcyBub3QgbXVjaCBv
ZiBhbiBpc3N1ZS4gIEFuZCB5b3Uga2VlcCB0aGUgdHJhaWxpbmcgdGV4dCBhbmQgdGhlIGxl
YWRpbmcgDQpvbmUgdG9nZXRoZXIuDQoNCldoYXQgYXJlIHlvdXIgdGhvdWdodHM/ICBXaGF0
IHNob3VsZCB3ZSBkbz8NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KPGh0dHA6Ly93d3cu
YWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------8246JE2XDzzz6HsYhLShZtR1--

--------------trKD64UkR1r09z058exjCEl5
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNtOToACgkQnowa+77/
2zIloxAAj7FIlW6L05YSmiFX2K4ZOghvhrA3SYgeSCZn6chUHl772eW3FdgEPNQ9
fv8Zh3t6egojDiAjrGCGVWiDXSnpfuTGiPcUWte5lQ9F+KKWvXipv3icvZOxi0WJ
o2nWYQA6iBESxBdA8HQUVLffXoWpAVbsuD+7gdM0dswZDABwSd3gHvnoJ8jVvntj
U5CXm/7WzePAynSiPSpuEziTVHrjyVU6U2xhHEsScn4hB4brSARUXo91JKQpXz2P
ibA2PdgfCLS+ZUhksV9VUMbhBOmC7kNiZpGoItrJ9sZTLIQWP16l6FULrKCLuqsX
CMKnXClEPJx6uIj2djG9LBM0j/Dt2cavHsUhwwJ48gB70DOhb65yQ0xl9Ez4z1jj
19mhm5WV2NSue2KrJDiy4FX6eqjpAlTFcnx0W5XxO25wv1yIo56ovVHLmJhMAcxj
9ecxEN3KGydLyslc2h0pgznCPyI9tPZnJRrWI/QUjs2CQy/s6C/ew0emoe3LswhN
8ywpA8dooCENA5Rp3QPZxajQQfXCQhW/+qNM194VoXVVojHPHTsqNKjk7J5yez5p
dxVWBXj2s5kDlw+CpeRHsufwkl/KoaDWS9Mly6sWdwAQHpGg+FH60dV5b5T42zNU
R4/8a20BLYVSwyGeg4P5v4R02MiuZaC1FPH+NnFZh8p3ytSsKvY=
=b7JZ
-----END PGP SIGNATURE-----

--------------trKD64UkR1r09z058exjCEl5--
