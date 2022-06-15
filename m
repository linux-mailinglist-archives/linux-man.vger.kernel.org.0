Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 716F754CD27
	for <lists+linux-man@lfdr.de>; Wed, 15 Jun 2022 17:36:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351500AbiFOPgs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Jun 2022 11:36:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347275AbiFOPgr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Jun 2022 11:36:47 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05ACE27CD2
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 08:36:47 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id r123-20020a1c2b81000000b0039c1439c33cso1333496wmr.5
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 08:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=1zlo78UBzGlUGC3JVTOZm3fTI5X308ul1uGNlkh0BIA=;
        b=gAdFkODHndOm73X+TGj3A0drKT59DulESyrpZb22vFxmPTrgTi6b7chayovPjHhdSG
         +zI2JHXPCUadgds4L833aJZ6UMRuk0RDTl+aALR0uK82zS6rTfCUTB5e1W38+bzYsfuJ
         bkOGfwGiCxUHqUTD10fPZiBuCLp3vxn4J8TVAI8Q1f2Yetiw+ReEG2ViuYxlzIJyPOb0
         fglND+amthlWCZ6J4lwlFCWus2iKbHd2ZSWJ1YiXtzXza1NPSwq0n48splD1yhn1Ca56
         MXU/uXqABwkjk/vcOPpevjFGD+T+LW+jcOJaAiRwYAbMxmvyKu6OYR7LR8/uzC3KTSgy
         I+5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=1zlo78UBzGlUGC3JVTOZm3fTI5X308ul1uGNlkh0BIA=;
        b=nPTSGfuSe58bMKRC6x0HAW7LSm+/IwsCiHCFenrhsrX7JTib3Bxw0RQbZ6KrFMSgJI
         SvgiF3B9LAVxtkwrptY7v38kiktckmrdlF3+lHzHdlKz0Ztm+LRXb4EDJYinS2ud1Le5
         HkTtUlWYPj9TR62/iLOo8weTCqwSNuAT0pyKUxSoDiqYc7gKlfsHT4NDTvhJ8aBZGl6s
         ZiNcafnZ3dGJUSVlYOnpkLqkEX9ZxzLTD4BbUjB3WoCj8we/PZ0rrNQU6Yziu5vkpx5y
         ilJKAXaKCW62JoeGjXg2b7N//khUD7b/a+JzREb+ZpTopxBUHofZ76z1AlijWiFU++F5
         eVqA==
X-Gm-Message-State: AOAM5326SVeJ6sIs3yplm7NRXWnqccUdy82nXZGoGHjRlz8Iwi1x0tRx
        OndVT+igW9N699iRjiwMHwOcyJwFx+M=
X-Google-Smtp-Source: ABdhPJzzt63+MxaP1u8uygMgIc5ueIMymezkUY8M5Zt6r68+5wSqIDnvIuX4J0dJm+/t4RfcncUB9g==
X-Received: by 2002:a7b:c404:0:b0:39c:4389:5834 with SMTP id k4-20020a7bc404000000b0039c43895834mr10672893wmi.70.1655307405388;
        Wed, 15 Jun 2022 08:36:45 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l9-20020a5d4809000000b00219e8d28fb1sm15082828wrq.57.2022.06.15.08.36.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 08:36:44 -0700 (PDT)
Message-ID: <4246201e-0ee5-1019-4c5b-79b9d2d4cbc5@gmail.com>
Date:   Wed, 15 Jun 2022 17:36:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/2] uname.2: fix standard reference wording
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <4a27c7c7295739005855299b23d1ab20b11e0110.1655287466.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <4a27c7c7295739005855299b23d1ab20b11e0110.1655287466.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------VrJUclV3UJFz0VhKjQuwFacG"
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
--------------VrJUclV3UJFz0VhKjQuwFacG
Content-Type: multipart/mixed; boundary="------------fqI92Zisl7Wf2NVYfvN5JPRN";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <4246201e-0ee5-1019-4c5b-79b9d2d4cbc5@gmail.com>
Subject: Re: [PATCH 1/2] uname.2: fix standard reference wording
References: <4a27c7c7295739005855299b23d1ab20b11e0110.1655287466.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <4a27c7c7295739005855299b23d1ab20b11e0110.1655287466.git.nabijaczleweli@nabijaczleweli.xyz>

--------------fqI92Zisl7Wf2NVYfvN5JPRN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkg0L3QsNCxLA0KDQpPbiA2LzE1LzIyIDEyOjA0LCDQvdCw0LEgd3JvdGU6DQo+IElzc3Vl
IDY6DQo+ICAgICAgSUVFRSBTdGQgMTAwMy4xLTIwMDEvQ29yIDItMjAwNCwgaXRlbSBYQkQv
VEMyL0Q2LzI3IGlzIGFwcGxpZWQsDQo+IGNoYW5naW5nIHRoZSBkZXNjcmlwdGlvbiBvZiBu
b2RlbmFtZSB3aXRoaW4gdGhlIHV0c25hbWUgc3RydWN0dXJlIGZyb20NCj4gYGBhbiBpbXBs
ZW1lbnRhdGlvbi1kZWZpbmVkIGNvbW11bmljYXRpb25zIG5ldHdvcmsnJyB0bw0KPiBgYHRo
ZSBjb21tdW5pY2F0aW9ucyBuZXR3b3JrIHRvIHdoaWNoIHRoaXMgbm9kZSBpcyBhdHRhY2hl
ZCwgaWYgYW55JycuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBaGVsZW5pYSBaaWVtaWHFhHNr
YSA8bmFiaWphY3psZXdlbGlAbmFiaWphY3psZXdlbGkueHl6Pg0KPiAtLS0NCj4gICBtYW4y
L3VuYW1lLjIgfCAxMSArKysrKystLS0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2Vy
dGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuMi91bmFt
ZS4yIGIvbWFuMi91bmFtZS4yDQo+IGluZGV4IDk0YzljOTUxYS4uYjQzZjVkOGQ2IDEwMDY0
NA0KPiAtLS0gYS9tYW4yL3VuYW1lLjINCj4gKysrIGIvbWFuMi91bmFtZS4yDQo+IEBAIC0y
OSw4ICsyOSw4IEBAIHN0cnVjdCBpcyBkZWZpbmVkIGluDQo+ICAgLkVYDQo+ICAgc3RydWN0
IHV0c25hbWUgew0KPiAgICAgICBjaGFyIHN5c25hbWVbXTsgICAgLyogT3BlcmF0aW5nIHN5
c3RlbSBuYW1lIChlLmcuLCAiTGludXgiKSAqLw0KPiAtICAgIGNoYXIgbm9kZW5hbWVbXTsg
ICAvKiBOYW1lIHdpdGhpbiAic29tZSBpbXBsZW1lbnRhdGlvblwtZGVmaW5lZA0KPiAtICAg
ICAgICAgICAgICAgICAgICAgICAgICBuZXR3b3JrIiAqLw0KPiArICAgIGNoYXIgbm9kZW5h
bWVbXTsgICAvKiBOYW1lIHdpdGhpbiBjb21tdW5pY2F0aW9ucyBuZXR3b3JrDQo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgIHRvIHdoaWNoIHRoZSBub2RlIGlzIGF0dGFjaGVkLCBp
ZiBhbnkgKi8NCj4gICAgICAgY2hhciByZWxlYXNlW107ICAgIC8qIE9wZXJhdGluZyBzeXN0
ZW0gcmVsZWFzZQ0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKGUuZy4sICIyLjYu
MjgiKSAqLw0KPiAgICAgICBjaGFyIHZlcnNpb25bXTsgICAgLyogT3BlcmF0aW5nIHN5c3Rl
bSB2ZXJzaW9uICovDQo+IEBAIC03Myw5ICs3MywxMCBAQCBTbywgZm91ciBvZiB0aGUgZmll
bGRzIG9mIHRoZSBzdHJ1Y3QgYXJlIG1lYW5pbmdmdWwuDQo+ICAgT24gdGhlIG90aGVyIGhh
bmQsIHRoZSBmaWVsZA0KPiAgIC5JIG5vZGVuYW1lDQo+ICAgaXMgbWVhbmluZ2xlc3M6DQo+
IC1pdCBnaXZlcyB0aGUgbmFtZSBvZiB0aGUgcHJlc2VudCBtYWNoaW5lIGluIHNvbWUgdW5k
ZWZpbmVkDQo+IC1uZXR3b3JrLCBidXQgdHlwaWNhbGx5IG1hY2hpbmVzIGFyZSBpbiBtb3Jl
IHRoYW4gb25lIG5ldHdvcmsNCj4gLWFuZCBoYXZlIHNldmVyYWwgbmFtZXMuDQo+ICtpdCBn
aXZlcyB0aGUgbmFtZSBvZiB0aGUgcHJlc2VudCBtYWNoaW5lIGluIHNvbWUgInRoZSIgbmV0
d29yaw0KDQpUaGF0IHJlYWRzIGEgYml0IHdlaXJkLiAgSXMgaXQgYSB0eXBvLCBvciBpcyBp
dCBpbnRlbmRlZD8NCg0KUmVnYXJkcywNCg0KQWxleA0KDQo+ICt0byB3aGljaCBpdCdzIGF0
dGFjaGVkLA0KPiArYnV0IHR5cGljYWxseSBtYWNoaW5lcyBhcmUgaW4gbW9yZSB0aGFuIG9u
ZSBuZXR3b3JrDQo+ICthbmQgaGF2ZSBzZXZlcmFsIG5hbWVzIGJ5IHdoaWNoIHRoZXkncmUg
cmVhY2hhYmxlLg0KPiAgIE1vcmVvdmVyLCB0aGUga2VybmVsIGhhcyBubyB3YXkgb2Yga25v
d2luZw0KPiAgIGFib3V0IHN1Y2ggdGhpbmdzLCBzbyBpdCBoYXMgdG8gYmUgdG9sZCB3aGF0
IHRvIGFuc3dlciBoZXJlLg0KPiAgIFRoZSBzYW1lIGhvbGRzIGZvciB0aGUgYWRkaXRpb25h
bA0KDQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29s
b21hci5lcy8+DQo=

--------------fqI92Zisl7Wf2NVYfvN5JPRN--

--------------VrJUclV3UJFz0VhKjQuwFacG
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKp/IIACgkQnowa+77/
2zLS+A/8DEKdvxdF2Uz6ziGh+BwL6zSM0hJ6hNH13ky6uAUQVSyx2LTmNIuKg6Jo
DO9THSfVczyf4VvjsGFLJU7yzX/KCCqksuOnLtELS+P6jQ5ijWSEiI6Up/iyTBvv
CXLdoFyWTZGFed6YbJO7t/K7mxAvLBSg//quI0F9eAHQg6n4mRsUwZcwsGCGMOWA
Al1Rc8Lt9JTh59oRWZ/dJnoOXokNKLXu3+hV7xwCAE1I7pm9CiOWYfyvB1/4oKXs
4e9j8UW3CbFMRwR2951L/vgoET541/iFfcpeKwcjL4oJvzBM9DdWejwj+XLyQnPt
OdpdQI+0fYcRQ3PXaOeLMfuQkNBwWqXUpLZCBqWSXefSIy16EhaIjUu/Hvs1WzH+
g0JBCrU/utDOXaGfEZW2J79S/tbJ6UQny5gd1ggpCw1VzQmSYPzmoABjFa1b42Qp
98qXFEUFj+iKIukmz+6jncmm8Tcl0YAxh8gNgSrIeg3FK2UYMVlOslY+ztDYSmVW
/10ee9wMc8DOUCHf2bde00vH+31CMzjvz7PQXppby3H9jMVXiYL4VcqpUYOTdFRl
2/w1eAb6zgd2Y9dD1CkJanEabY40fJyWUOkPt6PWVNB+qMeRKqifcTm83AJpf1Of
hCDnOyUvpW/MpBbOfAJdz0axlcprUDCucIz874PJu/0pLIS6P28=
=8fYE
-----END PGP SIGNATURE-----

--------------VrJUclV3UJFz0VhKjQuwFacG--
