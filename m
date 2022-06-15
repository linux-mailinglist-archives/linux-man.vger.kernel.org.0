Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78AE554CE99
	for <lists+linux-man@lfdr.de>; Wed, 15 Jun 2022 18:26:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346084AbiFOQ0o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Jun 2022 12:26:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349229AbiFOQ0n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Jun 2022 12:26:43 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F8DD37A15
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 09:26:42 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id m16-20020a7bca50000000b0039c8a224c95so1417399wml.2
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 09:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=reB62iMI/iHfX+67XMRURSXVqfqYF3kKXkHxsISMmlA=;
        b=HG4VerkKOOc6nkvKtDC/DrwO1xYFDGRoDiz/Tlqn18M3drGw9r1k8rBTFORUtPH7qt
         kch55vVRPgMmEsyvHATxoz9LMyvuKTYW1lC7VaYT2jFajX8sYp6TtmfGatoR92pHkSPL
         E6IWVkibtUxMKddOiDcXSazAz+g47Oc5yyWDGh9T4WII3TvEFFdBo1URFZnG8mM3PAxH
         2x2NxEHuKti7066IiZwpnA1sI/ZtPSdK216XpdXjS+W1bXZ80SYHN8o/LFtsq66rxP6f
         otdPgnR5zMvjZDbm1RFFSXqOcVLhbktuqaW4aew5H7oIcl1L2+MHZ9AITa4MACdqdqQA
         OfJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=reB62iMI/iHfX+67XMRURSXVqfqYF3kKXkHxsISMmlA=;
        b=kkSDbHNiaOLypktLoWgC94XMxMxL4rWGoP1sMvufnLCDViyLNEmwrCdIeRKdm9KCtj
         yNevihV2AVmA3IToURepeMMcjR2UMdRzhlvLTHfLawXdX9cIg6BuI4IfR8s3DIXcoVxt
         J+InpyV0Tb/+bGhe1dfxnd+SO3AnLZH90vZqjWiX6TnZC38nE/3K2Zwz4T+bBC8yZUOp
         vzjFGSzqF5oEjtKOyrEchD6IcQvEp5rKpSrTVBkcTsOcwSTqVCHiBbnt8E1h0iGERNuV
         WM7XjMQlYNF7CwBSv7c5Ih0n2dOgsfPttRVkW2GrvECEwPRBnFGlqONhVDe9KlcMej5F
         HBwA==
X-Gm-Message-State: AJIora9hu/Dki3NRO5RmPdqJLTbETFLJl7M0ApDla66ArgDlNgbX0VNT
        2US/PypbJkh5szFWx7ASUyc=
X-Google-Smtp-Source: AGRyM1siP7r4JIGm4SrUFmrGeSwDV+IVjdAKc3J0v3E6JY2Zh2Hi0ckcfct3DBymppmHBXbu8RJ2aA==
X-Received: by 2002:a05:600c:2054:b0:39c:3f73:3552 with SMTP id p20-20020a05600c205400b0039c3f733552mr253353wmg.15.1655310400946;
        Wed, 15 Jun 2022 09:26:40 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id w15-20020a1cf60f000000b0039747cf8354sm2922844wmc.39.2022.06.15.09.26.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 09:26:40 -0700 (PDT)
Message-ID: <9e740310-6a05-5a05-b403-98369960830e@gmail.com>
Date:   Wed, 15 Jun 2022 18:26:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [patch] RLIMIT_NPROC not enforced for root user, irrespective
 capabilities
Content-Language: en-US
To:     Eric Paris <eparis@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        David Howells <dhowells@redhat.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>,
        "Schneider, Robert" <robert.schneider03@sap.com>
References: <PAXPR02MB72147C88F7E9F82CC1AA577F8FAD9@PAXPR02MB7214.eurprd02.prod.outlook.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <PAXPR02MB72147C88F7E9F82CC1AA577F8FAD9@PAXPR02MB7214.eurprd02.prod.outlook.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------26ArlP06SfwpZbjUsJ72pYET"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------26ArlP06SfwpZbjUsJ72pYET
Content-Type: multipart/mixed; boundary="------------q0dNl9H20g0yiX60Y50607Lk";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Eric Paris <eparis@redhat.com>, Andrew Morton
 <akpm@linux-foundation.org>, David Howells <dhowells@redhat.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
 "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>,
 "Schneider, Robert" <robert.schneider03@sap.com>
Message-ID: <9e740310-6a05-5a05-b403-98369960830e@gmail.com>
Subject: Re: [patch] RLIMIT_NPROC not enforced for root user, irrespective
 capabilities
References: <PAXPR02MB72147C88F7E9F82CC1AA577F8FAD9@PAXPR02MB7214.eurprd02.prod.outlook.com>
In-Reply-To: <PAXPR02MB72147C88F7E9F82CC1AA577F8FAD9@PAXPR02MB7214.eurprd02.prod.outlook.com>

--------------q0dNl9H20g0yiX60Y50607Lk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRXJpYywgQW5kcmV3LCBhbmQgRGF2aWQsDQoNCk9uIDYvMTUvMjIgMTg6MDQsIFNjaG5l
aWRlciwgUm9iZXJ0IHdyb3RlOg0KPiBIaSwNCj4gDQo+IEkndmUgbm90aWNlZCB0aGF0IHVp
ZCAwIGlnbm9yZXMgUkxJTUlUX05QUk9DIGV2ZW4gaWYgaXQgZG9lc24ndCBoYXZlIG5laXRo
ZXIgQ0FQX1NZU19BRE1JTiBub3IgQ0FQX1NZU19SRVNPVVJDRS4NCj4gVGhlIGNvcnJlc3Bv
bmRpbmcga2VybmVsIGNvZGUgaXMgaW4ga2VybmVsL2ZvcmsuYyBsaW5lIDIxMDAsDQo+IGh0
dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L2xhdGVzdC9zb3VyY2Uva2VybmVsL2Zv
cmsuYyNMMjEwMA0KPiANCj4gICAgICAgICAgaWYgKGlzX3Vjb3VudHNfb3ZlcmxpbWl0KHRh
c2tfdWNvdW50cyhwKSwgVUNPVU5UX1JMSU1JVF9OUFJPQywgcmxpbWl0KFJMSU1JVF9OUFJP
QykpKSB7DQo+ICAgICAgICAgICAgICAgICAgaWYgKHAtPnJlYWxfY3JlZC0+dXNlciAhPSBJ
TklUX1VTRVIgJiYNCj4gICAgICAgICAgICAgICAgICAgICAgIWNhcGFibGUoQ0FQX1NZU19S
RVNPVVJDRSkgJiYgIWNhcGFibGUoQ0FQX1NZU19BRE1JTikpDQo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICBnb3RvIGJhZF9mb3JrX2NsZWFudXBfY291bnQ7DQo+ICAgICAgICAgIH0g
PiBJIGRvbid0IHVuZGVyc3RhbmQgX3doeV8gdWlkIDAgaXMgZXhjbHVkZWQgaW4gc3VjaCBh
IHdheSwgYW5kIEknbSBub3QgDQpzdXJlIGlmIHAtPnJlYWxfY3JlYWQtPnVzZXIgIT0gSU5J
VF9VU0VSIHJlYWxseSBjaGVja3MgdGhlIHJ1aWQuDQo+IEFueXdheSwgaGVyZSdzIGEgcGF0
Y2ggZm9yIHRoZSBtYW4gcGFnZSBvZiBnZXRybGltaXQgdGhhdCB3b3VsZCBoYXZlIGhlbHBl
ZCBtZSBzYXZlIHNvbWUgdHJvdWJsZSA6KQ0KPiANCg0KQ291bGQgeW91IHBsZWFzZSBjb25m
aXJtIHRoYXQgdGhpcyBtYW51YWwgcGFnZSB1cGRhdGUgaXMgcHJlY2lzZT8NCg0KVGhhbmtz
LA0KDQpBbGV4DQoNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4yL2dldHJsaW1pdC4yIGIvbWFu
Mi9nZXRybGltaXQuMg0KPiBpbmRleCA2NDhmZDNjODUuLjcyNjg1NTZlNiAxMDA2NDQNCj4g
LS0tIGEvbWFuMi9nZXRybGltaXQuMg0KPiArKysgYi9tYW4yL2dldHJsaW1pdC4yDQo+IEBA
IC0zNTksNyArMzU5LDggQEAgbGltaXQgaXMgbm90IGVuZm9yY2VkIGZvciBwcm9jZXNzZXMg
dGhhdCBoYXZlIGVpdGhlciB0aGUNCj4gICAuQiBDQVBfU1lTX0FETUlODQo+ICAgb3IgdGhl
DQo+ICAgLkIgQ0FQX1NZU19SRVNPVVJDRQ0KPiAtY2FwYWJpbGl0eS4NCj4gK2NhcGFiaWxp
dHksDQo+ICtvciBydW4gd2l0aCByZWFsIHVzZXIgSUQgMC4NCj4gICAuVFANCj4gICAuQiBS
TElNSVRfUlNTDQo+ICAgVGhpcyBpcyBhIGxpbWl0IChpbiBieXRlcykgb24gdGhlIHByb2Nl
c3MncyByZXNpZGVudCBzZXQNCj4gDQo+IA0KPiBSb2JlcnQNCg0KLS0gDQpBbGVqYW5kcm8g
Q29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------q0dNl9H20g0yiX60Y50607Lk--

--------------26ArlP06SfwpZbjUsJ72pYET
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKqCDcACgkQnowa+77/
2zIq7A/+M/ICr/sAaN4kDz0n8U0HBTeV5cb8VUJSqrqTgIFfcxIdsb4ZVwTjZ2Vz
jDonDAZCEmRo/VqKtPkf3jh/5JsTCv/LtlR/NIJ1ElAc97pb6coyMBtbqVgDTtPQ
P9K8d4C0G1awWiPOjrs4d1NTSb+5j/P6CLx4ojVigxZthuc2KFu25j1YUCqTzbqN
OQ3rEZadWpsvOxSNpSf93Duvj0NjhWPTTA+2x4wq9EGOcnaHje7ORy8dPCrGcS5y
JmTPy8rwJzZlzBIu53gob75SPTqB0S16ridRYl+r80J+AOjS8KqWWQMBuOEqDu+V
yVq1Dbv+/BUiX/Dd1ggu7K5reQb61T96B6qtC6Jekn/PNwvyY3cGL/GzGKE4cEXJ
UZbZSqYJ61PB47SPfbrEWH71nqnby/KUutXZNkcT/kT0IEbdzr+mqNvh8/Pzd4LJ
gAAd2DWNL18Ysw7NMpdvabhJD/qjwWj7MfJ9eGRHP8u1+2S8YtPHqDNtZXefhfez
CWMAFmuywuuoheJPl+GdIhphDqjQ37rVKscmOYT/AJzCccAEtjhUK1nm77rijdde
Ayts7PEwxEOZKxYJGLNyYWOl5kHh4SzGQLrPcvZogU6Ck7kGDjHtv1f5PqmnyU6J
GIX3xacKl5anWMXViHdEU9W90lyAZbwHMV6LI71k3k00I4eMPsc=
=mKJ1
-----END PGP SIGNATURE-----

--------------26ArlP06SfwpZbjUsJ72pYET--
