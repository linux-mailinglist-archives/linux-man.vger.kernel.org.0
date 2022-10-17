Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B16E600D73
	for <lists+linux-man@lfdr.de>; Mon, 17 Oct 2022 13:10:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229793AbiJQLK4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Oct 2022 07:10:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229592AbiJQLK4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Oct 2022 07:10:56 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B18BB578AE
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 04:10:54 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id j7so17921023wrr.3
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 04:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WSoC5GhGirHpRP3Uvsek6Ck6D6j4AG+qId5vh71SNaQ=;
        b=VKZXKusmBrmTYxbe5K4WVf7eP66Zt+bCk6z+trjk9sf9QQRMXtyP+MqemhE5qDijci
         Bu5vz2HxcCjzMrlZEcm7LVoC6TJGj5XOY0NzS9lQd/hUhlOy2KKFgQsGekjlS/NL/Wsy
         fPmlxqtBz0qa7WqtLEanXbrlnmVImOBLxYIYvLQCe9nPe0iF2AvIkAnFD85L2NBkErGu
         xZj8V9vBjMFnfOon78D6aLUhnTSLArWSdkYRBS3B7+JnUgOt2/XFka1y7qMhzaINciOa
         GJFkasGR2KEHuoLqCsA0RPnQJRqkWosti9BcJxPuGfgBewUQBUJt6ViP/1/levfQsVA2
         jamQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WSoC5GhGirHpRP3Uvsek6Ck6D6j4AG+qId5vh71SNaQ=;
        b=SIKE6plraFUmvC1ry5FGqniegBM1XsYz3e9++rIB6Ho7mN+zeFp+oVDOARlmDCtc0t
         lgfUPjEKXwp/Y6hD+fbawR9SZR2BvxbTos8+rcbSXsmMIgIUeNSXTlUhPtyBszgDWTXV
         R90of8/9/Tld0bMjrbq3P+1h6gDybL7aDgqxj/D4R3IBNJd6G1Bw8jotd4p0UfrHiepw
         N75douz8ejaRp5D87/qk2eHrce3A2uHFz/FMDPJur3EIzTHyl1kx0nQgrGCurHTueWhJ
         j+cJsDOeeKkLG6zBzrxchURAI+G/3oqe0yBwtbEH2VJlwUjhd7FvetSMctO5fVLJqdv/
         MMxg==
X-Gm-Message-State: ACrzQf0OI48qsh+3sOlfe7VcHalJJ39FOuQtuH8ZrLTGA8C4788YAyqW
        8B8Hr56Wb9dueh/CEwTCXPn07so/qvQ=
X-Google-Smtp-Source: AMsMyM5odOgTJM7ilyL4YTa6V7njzPMCRs0qZDVfJrFMLPbyEdXFVHTvDif3CDtBPx7il8h5GCZBRg==
X-Received: by 2002:a05:6000:71d:b0:22e:71d1:8c50 with SMTP id bs29-20020a056000071d00b0022e71d18c50mr5807268wrb.239.1666005053224;
        Mon, 17 Oct 2022 04:10:53 -0700 (PDT)
Received: from [192.168.43.80] ([31.221.171.215])
        by smtp.gmail.com with ESMTPSA id i8-20020a05600c2d8800b003c64c186206sm9678065wmg.16.2022.10.17.04.10.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 04:10:52 -0700 (PDT)
Message-ID: <9b96f437-63c7-3e68-dd62-5fdbd6612689@gmail.com>
Date:   Mon, 17 Oct 2022 13:10:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Subdirs of man*/ (was: [PATCH] ascii.7: chase down History to
 earliest) (refers: man -M tcl)
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        Ingo Schwarze <schwarze@usta.de>
Cc:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Groff <groff@gnu.org>
References: <20221017012257.kb25curb3gajgsxd@tarta.nabijaczleweli.xyz>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221017012257.kb25curb3gajgsxd@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------6xaRGR8XwvvH8vz8OZ9aknr0"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------6xaRGR8XwvvH8vz8OZ9aknr0
Content-Type: multipart/mixed; boundary="------------k3gP0471rS8fo0fSzihk6E50";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
 Ingo Schwarze <schwarze@usta.de>
Cc: linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>, Groff <groff@gnu.org>
Message-ID: <9b96f437-63c7-3e68-dd62-5fdbd6612689@gmail.com>
Subject: Subdirs of man*/ (was: [PATCH] ascii.7: chase down History to
 earliest) (refers: man -M tcl)
References: <20221017012257.kb25curb3gajgsxd@tarta.nabijaczleweli.xyz>
In-Reply-To: <20221017012257.kb25curb3gajgsxd@tarta.nabijaczleweli.xyz>

--------------k3gP0471rS8fo0fSzihk6E50
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

W0NDICs9IGdyb2ZmQCwgc2luY2UgaXQgd2FzIENDZCBpbiB0aGUgb2xkIGNvbnZlcnNhdGlv
biByZWZlcnJlZCB0byBoZXJlXQ0KDQpIaSBJbmdvLA0KDQpPbiA3LzI3LzIyIDE3OjMyLCBJ
bmdvIFNjaHdhcnplIHdyb3RlOg0KID4gQWxlamFuZHJvIENvbG9tYXIgd3JvdGUgb24gU3Vu
LCBKdWwgMjQsIDIwMjIgYXQgMDY6MTc6NDBQTSArMDIwMDoNCiA+PiBJIHdvbmRlcmVkIGZv
ciBhIGxvbmcgdGltZSB3aGF0IGhhcHBlbnMgaWYgeW91IGNyZWF0ZSBzdWJkaXJzIHdpdGhp
biBhDQogPj4gbWFuPyBzZWN0aW9uLiAgSG93IGRvIG1hbigxKXMgaGFuZGxlIDwvdXNyL3No
YXJlL21hbi9tYW4zL3B5dGhvbi9mb28uMz4/DQogPiBPbiAqQlNEIHN5c3RlbXMsIHRoYXQg
dHlwaWNhbGx5IG1lYW5zOg0KID4NCiA+ICAgIFRoZSBhcmNoaXRlY3R1cmUtc3BlY2lmaWMg
bGlicmFyeSBmdW5jdGlvbiBmb28oMykNCiA+ICAgIGZvciB0aGUgInB5dGhvbiIgaGFyZHdh
cmUgYXJjaGl0ZWN0dXJlLg0KID4NCiA+IEhlcmUgYXJlIGEgZmV3IGV4YW1wbGVzIGZyb20g
T3BlbkJTRDoNCiA+DQogPiAgICAvdXNyL3NoYXJlL21hbi9tYW4xL3NwYXJjNjQvbWtzdW5j
ZC4xDQogPiAgICAvdXNyL3NoYXJlL21hbi9tYW4yL2FybXY3L2FybV9zeW5jX2ljYWNoZS4y
DQogPiAgICAvdXNyL3NoYXJlL21hbi9tYW4yL2kzODYvaTM4Nl9pb3BsLjINCiA+ICAgIC91
c3Ivc2hhcmUvbWFuL21hbjMvb2N0ZW9uL2NhY2hlZmx1c2guMw0KID4gICAgL3Vzci9zaGFy
ZS9tYW4vbWFuMy9zZ2kvZ2V0X2ZwY19jc3IuMw0KID4gICAgL3Vzci9zaGFyZS9tYW4vbWFu
NC9hbHBoYS9pcm9uZ2F0ZS40DQogPiAgICAvdXNyL3NoYXJlL21hbi9tYW40L2FtZDY0L21w
Ymlvcy40DQogPiAgICAvdXNyL3NoYXJlL21hbi9tYW40L2x1bmE4OGsvY2J1cy40DQogPiAg
ICAvdXNyL3NoYXJlL21hbi9tYW40L21hY3BwYy9vcGVucGljLjQNCiA+ICAgIC91c3Ivc2hh
cmUvbWFuL21hbjQvcG93ZXJwYzY0L29wYWxjb25zLjQNCiA+ICAgIC91c3Ivc2hhcmUvbWFu
L21hbjQvcmlzY3Y2NC9zZmdwaW8uNA0KID4gICAgL3Vzci9zaGFyZS9tYW4vbWFuNS9zcGFy
YzY0L2xkb20uY29uZi41DQogPiAgICAvdXNyL3NoYXJlL21hbi9tYW44L2hwcGEvYm9vdC44
DQogPiAgICAvdXNyL3NoYXJlL21hbi9tYW44L21hY3BwYy9wZGlzay44DQogPiAgICAvdXNy
L3NoYXJlL21hbi9tYW44L3NnaS9zZ2l2b2wuOA0KID4gICAgL3Vzci9zaGFyZS9tYW4vbWFu
OC9zcGFyYzY0L2xkb21jdGwuOA0KDQoNCk9uIDEwLzE3LzIyIDAzOjIyLCDQvdCw0LEgd3Jv
dGU6DQo+IENmLiwgd2VsbCwgdGhlIFVOSVggUHJvZ3JhbW1lcidzIE1hbnVhbDoNCj4gICAg
aHR0cHM6Ly93d3cudHVocy5vcmcvQXJjaGl2ZS9EaXN0cmlidXRpb25zL1Jlc2VhcmNoL0Rl
bm5pc192MS9VTklYX1Byb2dyYW1tZXJzTWFudWFsX05vdjcxLnBkZg0KPiBQREYgcGFnZSAx
OTE7IHllcywgdGhlIHR5cG9ncmFwaGljYWwgY29udmVudGlvbiBoZXJlIGlzIGluc2FuZSwg
YW5kDQo+IHRoZSBjb250ZW1wcmFyeS1jb3JyZWN0IHdheSB0byByZWZlciB0byB0aGlzIHBh
Z2UgZnJvbSB3aXRoaW4gdGhlIG1hbnVhbA0KPiB3b3VsZCBiZSAvanVzdC8gIi9ldGMvYXNj
aWkiLCBidXQsIGdpdmVuIHRoZSBjb250ZXh0LCAiL2V0Yy9hc2NpaSAoVklJKSINCj4gbWFr
ZXMgdGhlIG1vc3Qgc2Vuc2UgdG8gbWUNCg0KSSBqdXN0IHNhdyB0aGlzIGFuZCB3b25kZXJl
ZCBpZiB0aGUgc3ViZGlycyBpbiB0aGUgcGFzdCB3ZXJlIHVzZWQgYXMgDQpqdXN0IHBhcnQg
b2YgdGhlIG1hbnVhbCBwYWdlIG5hbWUuLi4NCg0KSSBoYXZlIGJlZW4gcmVtZW1iZXJpbmcg
ZXZlcnkgbm93IGFuZCB0aGVuIHRoZSBkaXNjdXNzaW9uIHdlIGhhZCBhYm91dCBhIA0KaHlw
b3RoZXRpY2FsIC1NLCBhbmQgdGhpbmsgd2UgbmVlZCBpdCBvciBzb21ldGhpbmcgbGlrZSB0
aGF0LiAgSSBndWVzcyANCnN1YmRpcnMgYXJlIG5vdCBwb3NzaWJsZSBub3dhZGF5cyBiZWNh
dXNlIG9mIHRoZSB0cmFuc2xhdGlvbiB1c2FnZSwgYnV0IA0KSSdtIGN1cmlvdXMgYWJvdXQg
aWYgdGhhdCB3YXMgZGlmZmVyZW50IGluIHRoZSBwYXN0IG9yIHdoYXQuDQoNCkRvZXMgYW55
b25lIGtub3c/DQoNCkNoZWVycywNCg0KQWxleA0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBB
aGVsZW5pYSBaaWVtaWHFhHNrYSA8bmFiaWphY3psZXdlbGlAbmFiaWphY3psZXdlbGkueHl6
Pg0KPiAtLS0NCj4gICBtYW43L2FzY2lpLjcgfCA0ICstLS0NCj4gICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
bWFuNy9hc2NpaS43IGIvbWFuNy9hc2NpaS43DQo+IGluZGV4IDFiYmE3YmJhYS4uNzFlODkz
ODRiIDEwMDY0NA0KPiAtLS0gYS9tYW43L2FzY2lpLjcNCj4gKysrIGIvbWFuNy9hc2NpaS43
DQo+IEBAIC0xMzQsOSArMTM0LDcgQEAgRjogLyA/IE8gXyBvIERFTA0KPiAgIC5maQ0KPiAg
IC5TSCBOT1RFUw0KPiAgIC5TUyBIaXN0b3J5DQo+IC1Bbg0KPiAtLkIgYXNjaWkNCj4gLW1h
bnVhbCBwYWdlIGFwcGVhcmVkIGluIFZlcnNpb24gNyBvZiBBVCZUIFVOSVguDQo+ICsvZXRj
L2FzY2lpIChWSUkpIGFwcGVhcnMgaW4gdGhlIFVOSVggUHJvZ3JhbW1lcidzIE1hbnVhbC4N
Cj4gICAuUFANCj4gICBPbiBvbGRlciB0ZXJtaW5hbHMsIHRoZSB1bmRlcnNjb3JlIGNvZGUg
aXMgZGlzcGxheWVkIGFzIGEgbGVmdCBhcnJvdywNCj4gICBjYWxsZWQgYmFja2Fycm93LCB0
aGUgY2FyZXQgaXMgZGlzcGxheWVkIGFzIGFuIHVwLWFycm93IGFuZCB0aGUgdmVydGljYWwN
Cg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQoNCg==

--------------k3gP0471rS8fo0fSzihk6E50--

--------------6xaRGR8XwvvH8vz8OZ9aknr0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNNODsACgkQnowa+77/
2zJGTw/9H5Hvb62gyjFraQ45uKgpSxeK4YGACMBfHV/LYz5SCkgCXsURFi6/AJQU
30wFlvArkldhmQ2nGAncGNSuH98PaG0trcSxdFmfGqFnqedARg0xQ52/+hFqWDaD
vpxA/KWhNcCDk0coPWWb9h/NRJKlFW/JcNnYKM3z6KSQQEVKxd0IbQf3gC53QMvR
uhObamhPKX8YyXk5roKIdcnpOsL/XJ6d0BNtPKmVVskZqmKh8keltgLJf7Nh1q9o
AmE3H5DwXKZZ4sT5K1BlHCAwOxYDtLGCLeFSYAP9aIjryXy+x1Ie0B3TIDFgAXNW
FEhseVNWEGKTUyJZzsVbwrQ+n8qRYvL93a3L+yzef/N5HLXgFTO13uLGN3I5kWWA
V5MT/I6/Nb4At83D7PwDi5k/ekTiFC7AmUau8itAg2d3RZvJzbM+YaFyBUXhZLTG
ak5GG3Vf6YlZVzUzA/wlHPJMLdI3B42NCdUXfet3HFLzPw6BmJ7hxBUW6ZmUFWn2
53GuyTRTAVkeHkFnBB9wd6Tc7xmaMZot92H5rhd5J014DdI1idolVmeK39/TwVWB
9YhjIJEyu92gV/hZdC9NkYzi108SI52MBpG4Lup5vNHYi7B1yIg5gv9qjRJGcP7h
yAG9GlmJbpacgqavDD4yN986IqJwr3yp+pc6GTCHpx/h9JYQ4/U=
=j0yp
-----END PGP SIGNATURE-----

--------------6xaRGR8XwvvH8vz8OZ9aknr0--
