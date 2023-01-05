Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 199D065F374
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 19:09:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234433AbjAESJP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 13:09:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233998AbjAESJN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 13:09:13 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30CB31C8
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 10:09:12 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id m7so2491576wrn.10
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 10:09:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9iB3feF7kGwsGLz0heXR9/Q58r6wy78m9xcpAGS3gW4=;
        b=qiOQXB93LOAC098YRxKWZxqpLtl6/6oEIv09oh7zVW9T5Cz9BKzpYBJ64C5IMgcbhG
         cQ6iDFmmHU5rThfNfYkQ48t0wMIR1wEg30ISfIu+G/355t/bWoJrz6oEIGPlfJNCuM7c
         FGUtJlwUQ1TaOhZxZm1W59cJoIfCHN9cVtozmFxxdO8Kr+WrxflSuo+vugUJEbKQlbp+
         vKVL0dazvmp6dpOvDH//kmD8GJIYNWyrvq+jjI6njJbHSdMBVaraaS+eMWFo4Rm9ePS1
         VaByJOgyN8HZqPfn5ay6eoVNEJ7thd1UyZsDJoE/wIpADl/C9OX74PSzMSNRVWWX595K
         gkYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9iB3feF7kGwsGLz0heXR9/Q58r6wy78m9xcpAGS3gW4=;
        b=cuPnRI/BH+snWST2tYrMpLBxzEr2W7wr8mxBttNriUlhDVIpqzUepxe8wSXzAmZKn+
         JJQykHCCce14kQb6Xtg8RymRmO+Vb4UyfArnahQfb3K0ZjFaZ/zHOTKgisP50qia883P
         AUF/DBJzHCxbdakWbVIFyB4pVRJCqbcz+SYkdKe40G2seWmC6OOAG5d8qNHbqqj00gEZ
         5jVZe00TGVZ6psc4MjQys/X4/fpeVHfY/i4fkFMtlR8i87qTzdgOagxfiQSPuw00b0+N
         yKe+zwsVpd0oaZldTMEUmFoK0rxb1PwvPga0vjHqI5guC97qtQP5kDvsYtOxIITA78Mm
         1Iqg==
X-Gm-Message-State: AFqh2kpdsyQxAA6mQCe8Bzy4NDSlWVhEkkwciwbx83v6XcncaET9clb9
        ynBrXkxv9uAITpWzCCf8xKaOn4gNCD4=
X-Google-Smtp-Source: AMrXdXsIb11B5W4QW1BMXod1kzWiODyPjCM6Rqqj3+dIRGDGaDroS4E20+eJIwkVWV6Ygt7I3fRRQw==
X-Received: by 2002:adf:dd81:0:b0:274:2c97:b381 with SMTP id x1-20020adfdd81000000b002742c97b381mr28888547wrl.23.1672942150783;
        Thu, 05 Jan 2023 10:09:10 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p11-20020adfe60b000000b002366e3f1497sm38012144wrm.6.2023.01.05.10.09.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 10:09:10 -0800 (PST)
Message-ID: <a9bd3c47-aa41-7d69-4c5b-3699e0aec214@gmail.com>
Date:   Thu, 5 Jan 2023 19:09:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 2/9] ldconfig.8: Fix style nits
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230104073851.h6kg265ev5v4gmjl@illithid>
 <f5b81092-fb68-d57c-0686-c1b3e482f35b@gmail.com>
 <20230104200451.vxgnuunzztnkifig@illithid>
 <ee241821-34a4-a5a3-f757-dc7018241bc7@gmail.com>
 <20230105123538.kkg53yge3e2fhxjk@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230105123538.kkg53yge3e2fhxjk@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------cHQ0KK0kAutXJFZTwjdRN4zT"
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------cHQ0KK0kAutXJFZTwjdRN4zT
Content-Type: multipart/mixed; boundary="------------dGYL2vEh0Z2oUPb2h5drzR8Q";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <a9bd3c47-aa41-7d69-4c5b-3699e0aec214@gmail.com>
Subject: Re: [PATCH 2/9] ldconfig.8: Fix style nits
References: <20230104073851.h6kg265ev5v4gmjl@illithid>
 <f5b81092-fb68-d57c-0686-c1b3e482f35b@gmail.com>
 <20230104200451.vxgnuunzztnkifig@illithid>
 <ee241821-34a4-a5a3-f757-dc7018241bc7@gmail.com>
 <20230105123538.kkg53yge3e2fhxjk@illithid>
In-Reply-To: <20230105123538.kkg53yge3e2fhxjk@illithid>

--------------dGYL2vEh0Z2oUPb2h5drzR8Q
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS81LzIzIDEzOjM1LCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiBIaSBBbGV4LA0KPiANCj4gQXQgMjAyMy0wMS0wNVQxMzowMzowMSswMTAwLCBB
bGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+IE9uIDEvNC8yMyAyMTowNCwgRy4gQnJhbmRl
biBSb2JpbnNvbiB3cm90ZToNCj4+PiBPZmZpY2lhbCBHTlUgcmVzaXN0YW5jZSB0byBtYW4g
cGFnZXMgaXMgYnJvYWQgYW5kIGRlZXAsIGJ1dCBub3QNCj4+PiB1bml2ZXJzYWwuDQo+Pg0K
Pj4gSXMgdGhlcmUgc3RpbGwgcmVzaXN0YW5jZSBhcGFydCBmcm9tIHdyaXR0ZW4/DQo+IA0K
PiBUaGlzIGlzIGhhcmQgdG8gbWUgdG8ganVkZ2UsIGJ1dCBJIGFsc28gaW50ZXJwcmV0IHVu
b3J0aG9kb3ggbWFuIHBhZ2UNCj4gdHlwb2dyYXBoeSBhcyBjb25zdGl0dXRpdmUgb2YgcmVz
aXN0YW5jZS4gIEkgY3JlZGl0IEFsYmVydCBDYWhhbGFuIHdpdGgNCj4gZ2l2aW5nIG1lIGEg
Zm9ybWF0aXZlIGV4cGVyaWVuY2UgaW4gcmVhZGluZyBhIG1hbiBwYWdlIHRoYXQgd2FzIHdy
aXR0ZW4NCj4gd2l0aCByZXNlbnRtZW50LlsxXQ0KDQpIZWghICBUaGF0IG9uZSBkZWZpbml0
ZWx5IGNvdW50cyBhcyByZXNpc3RhbmNlLg0KDQo+ICBDb3VudGxlc3MgdGhvdXNhbmRzIG9m
IERlYmlhbiBwcygxKSBwYWdlIHJlYWRlcnMsDQo+IG9mdGVuIHVuZGVyIHN0cmVzcyB0cnlp
bmcgdG8gZmlndXJlIG91dCBob3cgdG8gaWRlbnRpZnkgYW5kIGtpbGwgYSByb2d1ZQ0KPiBw
cm9jZXNzLCBhdHRlbXB0ZWQgc2VsZi1oZWxwIGFuZCBmb3VuZCB0aGVtc2VsdmVzIHNlcnZl
ZCBhIGRpbm5lciBwbGF0ZQ0KPiBvZiBzdGVhbWluZyBkb2N1bWVudGFyeSBob3N0aWxpdHks
IGlubm9jZW50IGJ5c3RhbmRlcnMgY2F1Z2h0IHVwIGluIGENCj4gcG9pbnRsZXNzIHZlbmRl
dHRhIGFnYWluc3QgYSB0ZXh0IGZvcm1hdHRpbmcgbGFuZ3VhZ2UuDQoNClRoZXcgY3VycmVu
dCBwYWdlIGlzIGJldHRlciwgYnV0IHRoZSBjb21tYW5kIGlzIHNvIGh1Z2UgdGhhdCBJJ2xs
IGRpZSBiZWZvcmUgDQprbm93aW5nIGhvdyB0byB1c2UgaXQgbW9yZSB0aGFuIHRoZSBjb3Vw
bGUgb2Ygb3B0aW9ucyBJIG5vcm1hbGx5IHVzZS4NCg0KPiANCj4gV2hlbiBNci4gQ2FoYWxh
biBwYXNzZXMsIEkgaG9wZSBoaXMgZmFtaWx5IGhhcyB0aGUgZnVuZHMgdG8gZW5ncmF2ZSB0
aGUNCj4gZmlyc3QgY29tbWVudCBibG9jayBmcm9tIGhpcyBwcygxKSByZXdyaXRlIG9uIGhp
cyBoZWFkc3RvbmUuDQoNCkl0IHdvdWxkIGJlIGlyb25pYyBpZiB0aGV5IGluZGVudGVkIGFu
eXRoaW5nIGluIGhpcyBoZWFkc3RvbmUgOikNCg0KPiANCj4+IE1vc3QgY29udHJpYnV0b3Jz
IHRvIEdOVSB0b2RheSBzZWVtIHRvIHVzZSBtYW4gcGFnZXMuICBUaGVyZSBhcmUgc3RpbGwN
Cj4+IGEgZmV3IHByb2plY3RzLCBsaWtlIG1ha2UoMSkgd2hpY2ggd291bGQgYmUgYmV0dGVy
IHdpdGggbWFudWFsIHBhZ2VzDQo+PiBkb2N1bWVudGluZyB0aGUgbGFuZ3VhZ2UsIGJ1dCBt
b3N0IGhhdmUgdXNlZnVsIG1hbnVhbCBwYWdlcywgZG9uJ3QNCj4+IHRoZXk/DQo+IA0KPiBH
TlUgcHJvZ3JhbXMgd2hvc2UgbWFudWFscyBoYXZlIEludmFyaWFudCBTZWN0aW9ucyBvciBD
b3ZlciBUZXh0cyB1bmRlcg0KPiB0aGUgRkRMIHRlbmQgYWxzbyB0byBsYWNrIGZyZWVseS1s
aWNlbnNlZCBtYW4gcGFnZXMuDQo+IA0KPiBGb3J0dW5hdGVseSBncm9mZiBkb2Vzbid0IGhh
dmUgdGhpcyBwcm9ibGVtLCBiZWNhdXNlIGl0J3MgYWxsDQo+IGR1YWwtbGljZW5zZWQgR1BM
Lg0KPiANCj4+IE1heWJlIERlYmlhbiBoZWxwZWQgZ2V0IHRoZXJlLg0KPiANCj4gSSdkIGxp
a2UgdG8gdGhpbmsgc28uICBJIHdhcyBhcm91bmQgd2hlbiBEZWJpYW4gc3RpbGwgdG9vayBh
IGxvdCBvZiBjcmFwDQo+IGZvciBhZG9wdGluZyB0aGF0IHN0YW5jZS4gIE5vdyBpdCBoYXMg
dXNlcnMgd2hvIHdlcmVuJ3QgYm9ybiB5ZXQgd2hlbg0KPiB0aGF0IHBvbGljeSBkZWNpc2lv
biB3YXMgbWFkZS4NCj4gDQo+IElmIHlvdSBkb24ndCBoYXZlIGZ1cnRoZXIgY29tbWVudHMg
b24gdjIgSSdsbCBtYWtlIGEgZmV3IG1vcmUgY2hhbmdlcyB0bw0KPiB2MyBhbmQgc3VibWl0
IGl0Lg0KDQpQbGVhc2Ugc3VibWl0IGl0LiAgV2UnbGwgc2VlLg0KDQpDaGVlcnMsDQoNCkFs
ZXgNCg0KPiANCj4gUmVnYXJkcywNCj4gQnJhbmRlbg0KPiANCj4gWzFdIGh0dHBzOi8vZ2l0
bGFiLmNvbS9wcm9jcHMtbmcvcHJvY3BzL2Jsb2IvN2FjOWEwZTFmNTYwNjY5NmRjNzk5Yjc3
M2Q1ZWM3MDE4M2NhOTFhMy9wcy9wcy4xDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJv
LWNvbG9tYXIuZXMvPg0K

--------------dGYL2vEh0Z2oUPb2h5drzR8Q--

--------------cHQ0KK0kAutXJFZTwjdRN4zT
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO3Ej4ACgkQnowa+77/
2zJXoA//fppRTYy3K78jxkX85BFlIErxLfiuSPVwHoskvwhqq4QeeiEdptBPHLPm
5HOYl26Lg0A2th+5EiIhBl3o0UTPwJOZ3OJCsOE6sSsL/0T6kE+ZQYd7dbK5LwCH
Z/TcePKRHVtUTl2JSLV/4YAdBNHV5DncOiRVgbLuxAWP2l2P/OIhgNSHkOpbYDV0
q/FN1GynLI/PcB5KgOLnYK/uY4JkiAhTi0XPHW9QdLMwsjW+u7VIaeSjEWVpQlX+
TAsnpUnF/92f3cQUdENtfzGL/nhOKjseci6ijSG1n3rQc7pw09kr1DSIbEnTsT1+
n4jd5U4IJDRpreyysf4v8t+oybfck/jBQwKSpwPlcqSGjjkbZXwVcIvnptcStza6
e6i2FGOuZzYSV1fbEIVz3vdEP57EWvwrYe1pLo2pcRMhMjK2NEqXUPBHSS3gK5Aj
FIDqyaKL395kGy7Je5oVSItopwmF2GNhlUJULbF2rF09co+HKDZOqSRnMiw4WtqQ
gVDUYrcmJBAa7Up+Rzfe/q1T8/Do2vGCMl4g7XFUWgMPSiYT1XVF4JqeZZgq0+dt
qO0q/jD7FgYLIpIwYbdTsGehBG32nA6REffjN1EjDFTFVckckr+r8uIyJtRtux8V
8vKvyONE3E4Qq5wHBhTF3RdLOYqimV8n/V+DD262cq1gms+pSbM=
=ApVp
-----END PGP SIGNATURE-----

--------------cHQ0KK0kAutXJFZTwjdRN4zT--
