Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D80BB64E3B8
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 23:15:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229469AbiLOWPi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Dec 2022 17:15:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229674AbiLOWPg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 15 Dec 2022 17:15:36 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B73B252A5
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 14:15:35 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id y16so782886wrm.2
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 14:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UFGjgYGdqCgwQNeK8b0+EFq55p28bJ/ehpxG3ujyhl0=;
        b=LPY3lK8c+pWXn1SihzxQzTgiPwJgdLLYz/1SUCoft8x/H5SA7lOF6EPDwWg4dFcOGR
         cMzGBZqND0Po4WE/9R8VsotUuJs7I9jrpwjRIbwo2GpEkqzZb5JKDxRqzcArOpJkY4sD
         9Km4yzEyOCAz7uVg5p76Nd+jw91224bFeMWmYF2jHLXM5yUat7ICwaVRZ0LFicW9Cg9n
         l+uNBqf1U1MDDMov5JTGlwNR65AqNrTCyDEc5zOPbRp4ury8ePot6zLMVSpUI3/yIDYm
         QEqpGKl3fkEStfBWpOF2g12HRZ6/8d84VGZVlhOQF3hYhN9GiVZAZrkVobAUX74JGT+3
         S48A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UFGjgYGdqCgwQNeK8b0+EFq55p28bJ/ehpxG3ujyhl0=;
        b=wvDxQt/YewgXrbImEdt9qdJWE8sOXhU5jEXmgbzvLMPSOZ69cltJd6krm5G9UpzGhT
         xHjOEOAlzX1vGEev5p36GZrithcxEtRna6x3EFvYtnvXbiITwZMDpiKHnP5eAp9he7or
         PjIceXlFE+ym2+Co3qtcheL5i/4SxtYq6CIyvGQMTIAjrwknWLrKTtDNrtblkc085E14
         KEsstKHyjpIE+qvZ5vj7IhQlka8TOvZnv+0QjCc8tXeLyNmVeJ2uovr/zyyWXuEPTnmQ
         cnyGcQqsLvzjsYEbMg4sUB7x7XAttpGwAfh/npAW0cMsOoP6ei8GnQ93eZI4ldVXa46T
         QR7A==
X-Gm-Message-State: ANoB5pn65p6e14KJUEHtiehIt83JYEBOGtc3mkqsi1uMtq2NonsUeEcJ
        j/rQqcT6QQTfP8Np8lNp+XE=
X-Google-Smtp-Source: AA0mqf6E0maQSrYZPZpmqrCHk2AsamTaJIFafs04dSOkouVP0xciw+B0FroQSwygbPQeRwNoHLOwCw==
X-Received: by 2002:adf:aa8a:0:b0:242:91e:6a78 with SMTP id h10-20020adfaa8a000000b00242091e6a78mr21085809wrc.34.1671142534024;
        Thu, 15 Dec 2022 14:15:34 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bt19-20020a056000081300b002302dc43d77sm483454wrb.115.2022.12.15.14.15.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Dec 2022 14:15:33 -0800 (PST)
Message-ID: <99a380d9-a352-cf79-4864-2636d33b98f0@gmail.com>
Date:   Thu, 15 Dec 2022 23:15:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Linux man-pages prehistory
Content-Language: en-US
To:     "Andries E. Brouwer" <aeb@cwi.nl>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        groff <groff@gnu.org>
References: <4885c5bc-f7c6-aa32-6d54-5d4529aef811@gmail.com>
 <20221215200819.GA178852@if>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221215200819.GA178852@if>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------63RG8FFLU6RKSenu0i4xT10Z"
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
--------------63RG8FFLU6RKSenu0i4xT10Z
Content-Type: multipart/mixed; boundary="------------rO2nncFdtDUg0rXNC0DRhBgL";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "Andries E. Brouwer" <aeb@cwi.nl>
Cc: linux-man <linux-man@vger.kernel.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>, groff <groff@gnu.org>
Message-ID: <99a380d9-a352-cf79-4864-2636d33b98f0@gmail.com>
Subject: Re: Linux man-pages prehistory
References: <4885c5bc-f7c6-aa32-6d54-5d4529aef811@gmail.com>
 <20221215200819.GA178852@if>
In-Reply-To: <20221215200819.GA178852@if>

--------------rO2nncFdtDUg0rXNC0DRhBgL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQW5kcmllcyENCg0KT24gMTIvMTUvMjIgMjE6MDgsIEFuZHJpZXMgRS4gQnJvdXdlciB3
cm90ZToNCj4gT24gVGh1LCBEZWMgMTUsIDIwMjIgYXQgMDQ6MjQ6MzFQTSArMDEwMCwgQWxl
amFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBIaSBhbGwhDQo+Pg0KPj4gSSdtIHBsZWFzZWQg
dG8gYW5ub3VuY2UgdGhhdCB0aGVyZSdzIGEgbmV3IGJyYW5jaCBpbiB0aGUgZ2l0IHJlcG9z
aXRvcnksDQo+PiBuYW1lZCAncHJlaGlzdG9yeScsIHdoaWNoIGNvdmVycyBleGFjdGx5IHRo
YXQuDQo+IA0KPiBHb29kISBJIGhhdmUgb25lIHF1ZXN0aW9uOiBkaWQgeW91IHByZXNlcnZl
IHRoZSB0aW1lIHN0YW1wcz8NCg0KSW5pdGlhbGx5IEkgZGlkbid0LCBidXQgSSBhbWVuZGVk
IHRoZSBjb21taXRzIHRvIHVzZSB0aGUgdGltZXN0YW1wIG9mIHRoZSANCnRhcmJhbGwgYXMg
dGhlIGF1dGhvciBkYXRlLg0KDQpJIGRpZCBpdCBieSBjb3B5aW5nIHRoZSB0aW1lc3RhbXAg
ZnJvbSB0aGUgd2Vic2l0ZSBieSBoYW5kLCBzbyBhIHRpbWV6b25lIG9mZnNldCANCm1heSBi
ZSBwcmVzZW50LCBidXQgSSBndWVzcyB0aGF0J3MgYmV0dGVyIHRoYW4gbm90aGluZy4NCg0K
WW91IGNhbiBjaGVjayB0aGUgYnJhbmNoIGhlcmUgOikNCjxodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vZG9jcy9tYW4tcGFnZXMvbWFuLXBhZ2VzLmdpdC9sb2cvP2g9cHJlaGlz
dG9yeT4NCg0KSGVyZSdzIGEgc2FtcGxlOg0KDQoNCiQgZ2l0IGxvZyAtLXByZXR0eT1mdWxs
ZXIgLTIgcHJlaGlzdG9yeQ0KY29tbWl0IDllMGZkYjBjMDE5MjA3OWU1ODQ3ZjQ5ODMyMzc0
ZWEyOGI1YWQ0MzYgKEhFQUQgLT4gcHJlaGlzdG9yeSwgDQprb3JnL3ByZWhpc3RvcnkpDQpB
dXRob3I6ICAgICBLcsOzbm9zIDxLcsOzbm9zQFPEgXR1cm51cz4NCkF1dGhvckRhdGU6IE1v
biBPY3QgMTEgMDA6MDA6MDAgMTk5MyArMDEwMA0KQ29tbWl0OiAgICAgQWxlamFuZHJvIENv
bG9tYXIgPGFseEBrZXJuZWwub3JnPg0KQ29tbWl0RGF0ZTogVGh1IERlYyAxNSAyMzowOToz
OCAyMDIyICswMTAwDQoNCiAgICAgbWFuLXBhZ2VzIDEuMA0KDQogICAgIG1hbi1wYWdlcy0x
LjEgc2VlbXMgdG8gYmUgbWlzc2luZy4gIDovDQoNCiAgICAgTGluazogPGh0dHBzOi8vd3d3
Lndpbi50dWUubmwvfmFlYi9mdHBkb2NzL2xpbnV4LWxvY2FsL21hbnBhZ2VzLmFyY2hpdmUv
Pg0KICAgICBTaWduZWQtb2ZmLWJ5OiBBbGVqYW5kcm8gQ29sb21hciA8YWx4QGtlcm5lbC5v
cmc+DQoNCmNvbW1pdCAzYzIzMDQwNTczNjUwZjM2YTNmMjc3OGEzNjI5ZjRhZTdlNmMxMGFi
DQpBdXRob3I6ICAgICBLcsOzbm9zIDxLcsOzbm9zQFPEgXR1cm51cz4NCkF1dGhvckRhdGU6
IE1vbiBOb3YgMjkgMDA6MDA6MDAgMTk5MyArMDEwMA0KQ29tbWl0OiAgICAgQWxlamFuZHJv
IENvbG9tYXIgPGFseEBrZXJuZWwub3JnPg0KQ29tbWl0RGF0ZTogVGh1IERlYyAxNSAyMzow
OTozOCAyMDIyICswMTAwDQoNCiAgICAgbWFuLXBhZ2VzIDEuMg0KDQogICAgIExpbms6IDxo
dHRwczovL3d3dy53aW4udHVlLm5sL35hZWIvZnRwZG9jcy9saW51eC1sb2NhbC9tYW5wYWdl
cy5hcmNoaXZlLz4NCiAgICAgU2lnbmVkLW9mZi1ieTogQWxlamFuZHJvIENvbG9tYXIgPGFs
eEBrZXJuZWwub3JnPg0KDQo+IA0KPj4gUC5TLjogIEFuZHJpZXMsIGRvIHlvdSBrbm93IGFu
eXRoaW5nIGFib3V0IDEuMT8gIFRoZXJlJ3MgdGhlIGFubm91bmNlIGluDQo+PiB5b3VyIGZ0
cCBzZXJ2ZXIsIGJ1dCB0aGUgdGFyYmFsbCBpcyBtaXNzaW5nLg0KPiANCj4gSWYgbWFuLXBh
Z2VzLTEuMS50YXIuZ3ogaXMgbWlzc2luZyB0aGF0IG1lYW5zIEkgZGlkbnQgaGF2ZSBpdC4N
Cj4gSW4gZmFjdCBJIHNlZSB0aW1lIHN0YW1wcyBpbiAxOTkzIGZvciB0aG9zZSBlYXJseSBm
aWxlcywNCj4gYnV0IDIwMDQgZm9yIG1hbi1wYWdlcy0xLjEtYW5ub3VuY2VkLCBzbyBJIGd1
ZXNzIEkgc2VhcmNoZWQNCj4gZm9yIG1hbi1wYWdlcy0xLjEgYXQgdGhhdCB0aW1lIGFuZCBm
b3VuZCBvbmx5IHRoZSBhbm5vdW5jZW1lbnQuDQoNClllcCwgdGhhdCB3YXMgbXkgZ3Vlc3Mu
ICBXZWxsLCB3ZSBnb3QgZW5vdWdoIGZvciBtb3N0IGFyY2hlb2xvZ3kgcHVycG9zZXMuDQoN
CkNoZWVycywNCkFsZXgNCg0KPiANCj4gQW5kcmllcw0KDQotLSANCjxodHRwOi8vd3d3LmFs
ZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------rO2nncFdtDUg0rXNC0DRhBgL--

--------------63RG8FFLU6RKSenu0i4xT10Z
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmObnIQACgkQnowa+77/
2zLvgQ/8CLz7IcC1WVTOBZgQfLaQCVZmQt+Uef32ZEgAGMrCsbx6e7FLHBQdm5zz
bXF+dA2tR7SfRrKA3o5RS6L1Pl43TigmpjMIOok/t+iDcO9qvOeyOg72YvHoQ5uj
4Ldir4tJKoaU26rt3T33SaUYjSCeI5hHFcHGR+z2gqY/EEHvO7wbgveJ7UpjDd65
z0nhnVpnbSP2EQ5iRsqyBrPbW0pKbpiU/Vx9Kj6QHTY7jdvK0POR8Vcx2u3jDx7z
KYoOWgFLzeZ8Offus2NblgYyOmk66tZjc51qlh/iQfEufbMNxA0huxdRLVwZSMII
1KjCGZ7c3Mu68xILSXiBiumqax84YuGI/pftTi3G60zwVMZK4wyvxob/MTxEp37X
ihqadGaAaT0vSCbdrlcjk4YBdZwyKXRnlojpQy16JuX8ptAxlvlZmp2wtEUGuVB1
YNaK3JJq5Sl4mBrPMHhReFU6VyDFAABJX/Teg+ONwFAT1yWlGVoK61BJ01yNyw7l
/x4HIliXK84wqxtPLd9cYZRei49ZATtipfPCdARMgivKtAZloUU5hIR9crpiY8AA
MkaTqdDYUoSDcN0mjwIXnO/opGBLglVbxHJbTreKLeNCi0RSzeBX23okMDZa9igP
Q8CsMalfT6aLjtYNlpVDpT5GTRFy8URyVc27lyGZ9rY0D4KUH0Y=
=SjG5
-----END PGP SIGNATURE-----

--------------63RG8FFLU6RKSenu0i4xT10Z--
