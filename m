Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2496564D275
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 23:45:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229448AbiLNWp1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 17:45:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbiLNWp0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 17:45:26 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D9B237231
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 14:45:25 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id m14so1325231wrh.7
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 14:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=C2+5xDXejPiz8kw9fT25hrw2C0aupDuXtem5QTirSDM=;
        b=aimrPJA4FzVUSyXg72QGSIzoEiPeGQlayKEt6JMQ93XT/BkJWmC1aJ9Vtl+o8cmXm0
         vw5Mc5ziCRffMZF9UdFmW6MS2X4865HpYYRAU7cL+w3a1EdaZiWRZlkox5WGY/CronZi
         KdvXnet0vbkzqk7SvhRHB22pC5YbNspDnbNy3AxvOzIqydC5JGpwtZSZkF3iV/ndggYi
         SFWlKTX02nGv4CxHLlI3WJRXVqsf4oEjDxIx+SuejMliRIu8urQ+dy2Ma+t1tQ+7FJvR
         xoJMCuFhAENVpm1jXeyRnEFdeau4lJ8dJPxb0Y/RF2G1AXmxuRtQnECArj8Y9T37pLo9
         4LVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C2+5xDXejPiz8kw9fT25hrw2C0aupDuXtem5QTirSDM=;
        b=heZccd5I8bh37j5I7Gs6dqtiBP4iC4S6vXmsaClCHoz8PYYDbqBr7ayZnY8HvehfgY
         z4MtvI04WcIWsgGhwJJayzMQlP1JzgQDzUky4dc7pWHp6Jk9TTcFHrKxNBL2wWZQ9sBb
         UFBSXf1LkLOLMNKOMlOasiHKdJ0f4c04P0jkObopeq9D0pK3m1U/bJ1Vif0D96as95ir
         RHb8JAphCX3mQr4wHoXPKziUWdSxePmKF3NbBr6/pEjXuMDyMZMew9yzcpqXJysjbgLS
         5Si6wx/hz//6KQcCTReY56cxmzfG2HiaE/KA+/wYuXSSRePyMrw78pdXRofHQUkcp7tC
         LtZw==
X-Gm-Message-State: ANoB5pmOa/Z1eCpJfvRN6OfIkHyWDEceC5lp3TtD5UHYovMpOkPEjYEH
        GdldmQJ+CmX6IeJRIjgmpd5861vzU/I=
X-Google-Smtp-Source: AA0mqf7QW095seoZUhDtA8lmqNIti8QHzOj8gSYVwKdB1wo09pHTk5cR598Ni2I2Sl0uMmGSHzOeQg==
X-Received: by 2002:a5d:564a:0:b0:24c:f1ca:b2df with SMTP id j10-20020a5d564a000000b0024cf1cab2dfmr13599865wrw.67.1671057923844;
        Wed, 14 Dec 2022 14:45:23 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h18-20020adffa92000000b002420d51e581sm3955858wrr.67.2022.12.14.14.45.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 14:45:23 -0800 (PST)
Message-ID: <30a77019-ded0-fe3b-d0db-6c77842674db@gmail.com>
Date:   Wed, 14 Dec 2022 23:45:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Content-Language: en-US
To:     gcc@gcc.gnu.org
Cc:     linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: [-Wstringop-overflow=] strncat(3)
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------vNrb9MAUnjW9d9tJDoVjuzLf"
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
--------------vNrb9MAUnjW9d9tJDoVjuzLf
Content-Type: multipart/mixed; boundary="------------ldQ002ssRNC8OrwRWdeDvw0T";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: gcc@gcc.gnu.org
Cc: linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>
Message-ID: <30a77019-ded0-fe3b-d0db-6c77842674db@gmail.com>
Subject: [-Wstringop-overflow=] strncat(3)

--------------ldQ002ssRNC8OrwRWdeDvw0T
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCkkgd2FzIHJld3JpdGluZyB0aGUgc3RybmNhdCgzKSBtYW51YWwgcGFnZSwgYW5k
IHdoZW4gSSB0cmllZCB0byBjb21waWxlIHRoZSANCmV4YW1wbGUgcHJvZ3JhbSwgSSBnb3Qg
YSBzdXJwcmlzZSBmcm9tIHRoZSBjb21waWxlci4NCg0KSGVyZSBnb2VzIHRoZSBwYWdlOg0K
DQoNCiAgIHN0cm5jYXQoMykgICAgICAgICAgICAgICBMaWJyYXJ5IEZ1bmN0aW9ucyBNYW51
YWwgICAgICAgICAgICAgIHN0cm5jYXQoMykNCg0KICAgTkFNRQ0KICAgICAgICAgIHN0cm5j
YXQgIC0gIGNvbmNhdGVuYXRlICBhICBudWxs4oCQcGFkZGVkICBjaGFyYWN0ZXIgc2VxdWVu
Y2UgaW50byBhDQogICAgICAgICAgc3RyaW5nDQoNCiAgIExJQlJBUlkNCiAgICAgICAgICBT
dGFuZGFyZCBDIGxpYnJhcnkgKGxpYmMsIC1sYykNCg0KICAgU1lOT1BTSVMNCiAgICAgICAg
ICAjaW5jbHVkZSA8c3RyaW5nLmg+DQoNCiAgICAgICAgICBjaGFyICpzdHJuY2F0KGNoYXIg
KnJlc3RyaWN0IGRzdCwgY29uc3QgY2hhciBzcmNbcmVzdHJpY3QgLnN6XSwNCiAgICAgICAg
ICAgICAgICAgICAgICAgICBzaXplX3Qgc3opOw0KDQogICBERVNDUklQVElPTg0KICAgICAg
ICAgIFRoaXMgZnVuY3Rpb24gY2F0ZW5hdGVzIHRoZSBpbnB1dCBjaGFyYWN0ZXIgc2VxdWVu
Y2UgY29udGFpbmVkICBpbg0KICAgICAgICAgIGEgIG51bGzigJBwYWRkZWQgIGZpeGVk4oCQ
d2lkdGggIGJ1ZmZlciwgIGludG8gIGEgc3RyaW5nIGF0IHRoZSBidWZmZXINCiAgICAgICAg
ICBwb2ludGVkIHRvIGJ5IGRzdC4gIFRoZSBwcm9ncmFtbWVyIGlzIHJlc3BvbnNpYmxlIGZv
ciBhbGxvY2F0aW5nIGENCiAgICAgICAgICBidWZmZXIgbGFyZ2UgZW5vdWdoLCB0aGF0IGlz
LCBzdHJsZW4oZHN0KSArIHN0cm5sZW4oc3JjLCBzeikgKyAxLg0KDQogICAgICAgICAgQW4g
aW1wbGVtZW50YXRpb24gb2YgdGhpcyBmdW5jdGlvbiBtaWdodCBiZToNCg0KICAgICAgICAg
ICAgICBjaGFyICoNCiAgICAgICAgICAgICAgc3RybmNhdChjaGFyICpyZXN0cmljdCBkc3Qs
IGNvbnN0IGNoYXIgKnJlc3RyaWN0IHNyYywgc2l6ZV90IHN6KQ0KICAgICAgICAgICAgICB7
DQogICAgICAgICAgICAgICAgICBpbnQgICBsZW47DQogICAgICAgICAgICAgICAgICBjaGFy
ICAqZW5kOw0KDQogICAgICAgICAgICAgICAgICBsZW4gPSBzdHJubGVuKHNyYywgc3opOw0K
ICAgICAgICAgICAgICAgICAgZW5kID0gZHN0ICsgc3RybGVuKGRzdCk7DQogICAgICAgICAg
ICAgICAgICBlbmQgPSBtZW1wY3B5KGVuZCwgc3JjLCBsZW4pOw0KICAgICAgICAgICAgICAg
ICAgKmVuZCA9ICdcMCc7DQoNCiAgICAgICAgICAgICAgICAgIHJldHVybiBkc3Q7DQogICAg
ICAgICAgICAgIH0NCg0KICAgUkVUVVJOIFZBTFVFDQogICAgICAgICAgc3RybmNhdCgpIHJl
dHVybnMgZGVzdC4NCg0KICAgQVRUUklCVVRFUw0KICAgICAgICAgIFsuLi5dDQoNCiAgIFNU
QU5EQVJEUw0KICAgICAgICAgIFBPU0lYLjHigJAyMDAxLCBQT1NJWC4x4oCQMjAwOCwgQzg5
LCBDOTksIFNWcjQsIDQuM0JTRC4NCg0KICAgQ0FWRUFUUw0KICAgICAgICAgIFRoZSAgbmFt
ZSBvZiB0aGlzIGZ1bmN0aW9uIGlzIGNvbmZ1c2luZy4gIFRoaXMgZnVuY3Rpb24gaGFzIG5v
IHJl4oCQDQogICAgICAgICAgbGF0aW9uIHdpdGggc3RybmNweSgzKS4NCg0KICAgICAgICAg
IElmIHRoZSBkZXN0aW5hdGlvbiBidWZmZXIgaXMgbm90IGxhcmdlIGVub3VnaCwgdGhlIGJl
aGF2aW9yIGlzIHVu4oCQDQogICAgICAgICAgZGVmaW5lZC4gIFNlZSBfRk9SVElGWV9TT1VS
Q0UgaW4gZmVhdHVyZV90ZXN0X21hY3Jvcyg3KS4NCg0KICAgQlVHUw0KICAgICAgICAgIFRo
aXMgZnVuY3Rpb24gIGNhbiAgYmUgIHZlcnkgIGluZWZmaWNpZW50LiAgIFJlYWQgIGFib3V0
ICBTaGxlbWllbA0KICAgICAgICAgIHRoZSAgICAgICBwYWludGVyICAgICAg4p+oaHR0cHM6
Ly93d3cuam9lbG9uc29mdHdhcmUuY29tLzIwMDEvMTIvMTEvDQogICAgICAgICAgYmFjay10
by1iYXNpY3Mv4p+pLg0KDQogICBFWEFNUExFUw0KICAgICAgICAgICNpbmNsdWRlIDxzdGRp
by5oPg0KICAgICAgICAgICNpbmNsdWRlIDxzdGRsaWIuaD4NCiAgICAgICAgICAjaW5jbHVk
ZSA8c3RyaW5nLmg+DQoNCiAgICAgICAgICBpbnQNCiAgICAgICAgICBtYWluKHZvaWQpDQog
ICAgICAgICAgew0KICAgICAgICAgICAgICBjaGFyICAgIGJ1ZltCVUZTSVpdOw0KICAgICAg
ICAgICAgICBzaXplX3QgIGxlbjsNCg0KICAgICAgICAgICAgICBidWZbMF0gPSAnXDAnOyAg
Ly8gVGhlcmXigJlzIG5vIOKAmWNweeKAmSBmdW5jdGlvbiB0byB0aGlzIOKAmWNhdOKAmS4N
CiAgICAgICAgICAgICAgc3RybmNhdChidWYsICJIZWxsbyAiLCA2KTsNCiAgICAgICAgICAg
ICAgc3RybmNhdChidWYsICJ3b3JsZCIsIDQyKTsgIC8vIFBhZGRpbmcgbnVsbCBieXRlcyBp
Z25vcmVkLg0KICAgICAgICAgICAgICBzdHJuY2F0KGJ1ZiwgIiEiLCAxKTsNCiAgICAgICAg
ICAgICAgbGVuID0gc3RybGVuKGJ1Zik7DQogICAgICAgICAgICAgIHByaW50ZigiW2xlbiA9
ICV6dV06IDwlcz5cbiIsIGxlbiwgYnVmKTsNCg0KICAgICAgICAgICAgICBleGl0KEVYSVRf
U1VDQ0VTUyk7DQogICAgICAgICAgfQ0KDQogICBTRUUgQUxTTw0KICAgICAgICAgIHN0cmlu
ZygzKSwgc3RyaW5nX2NvcHkoMykNCg0KICAgTGludXggbWFu4oCQcGFnZXMgKHVucmVsZWFz
ZWQpICAgICAgKGRhdGUpICAgICAgICAgICAgICAgICAgICAgICBzdHJuY2F0KDMpDQoNCg0K
QW5kIHdoZW4geW91IGNvbXBpbGUgdGhhdCwgeW91IGdldDoNCg0KJCBjYyAtV2FsbCAtV2V4
dHJhIC4vc3RybmNhdC5jDQouL3N0cm5jYXQuYzogSW4gZnVuY3Rpb24g4oCYbWFpbuKAmToN
Ci4vc3RybmNhdC5jOjEyOjEyOiB3YXJuaW5nOiDigJhzdHJuY2F04oCZIHNwZWNpZmllZCBi
b3VuZCA2IGVxdWFscyBzb3VyY2UgbGVuZ3RoIA0KWy1Xc3RyaW5nb3Atb3ZlcmZsb3c9XQ0K
ICAgIDEyIHwgICAgICAgICAgICBzdHJuY2F0KGJ1ZiwgIkhlbGxvICIsIDYpOw0KICAgICAg
IHwgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+DQouL3N0cm5jYXQuYzox
NDoxMjogd2FybmluZzog4oCYc3RybmNhdOKAmSBzcGVjaWZpZWQgYm91bmQgMSBlcXVhbHMg
c291cmNlIGxlbmd0aCANClstV3N0cmluZ29wLW92ZXJmbG93PV0NCiAgICAxNCB8ICAgICAg
ICAgICAgc3RybmNhdChidWYsICIhIiwgMSk7DQogICAgICAgfCAgICAgICAgICAgIF5+fn5+
fn5+fn5+fn5+fn5+fn5+DQoNCg0KU28sIHdoYXQ/ICBXaGVyZSdzIHRoZSBwcm9ibGVtPyAg
VGhpcyBmdW5jdGlvbiBkb2VzIGV4YWN0bHkgdGhhdDogInRha2UgYW4gDQp1bnRlcm1pbmF0
ZWQgY2hhcmFjdGVyIHNlcXVlbmNlIGFuZCBjYXRlbmF0ZSBpdCB0byBhbiBleGlzdGluZyBz
dHJpbmciLiAgQ2xhbmcgDQpzZWVtcyB0byBiZSBmaW5lIHdpdGggdGhlIGNvZGUuDQoNCkNo
ZWVycywNCg0KQWxleA0KDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIu
ZXMvPg0K

--------------ldQ002ssRNC8OrwRWdeDvw0T--

--------------vNrb9MAUnjW9d9tJDoVjuzLf
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOaUfAACgkQnowa+77/
2zKzFA//bYeSQ/3SvlPogPyjGb6JpK2jKbVqEOjllkUQMxVaD5uEaUZgAsH552Ok
wm0xXfCOvOufPaEK84Hm8D4y52/YDrSuLhIGCbw2priLMNXA1iEmabrwOnAroYD+
KifQUJKUjG2FIatHLHjPc/HTUb8PYqa/l5OriDBdapxAE/AItzfb6ITYFyS5tL1m
QDEKglhdo4W3iCss5p4L430uvKG4Chpzum4Mtm1ci9OaOM0ES47J8S+hT9MdLjI9
B34px7pg2a/AiOSZSOTK9kvQJReR9v2/4FNoF5IvzoDwNGB96J+jjwBlvzMDmLvy
1MjZm0FDf+jdF1nppXpjZjDxBPP3wCbvuRk5ZZTv4MqYCjmdwtvbDVhPoPvTKt3z
89GXrAHeac62KFyt0sQrZqxEMO5DX2dzzOmYC+9qJadse2hMPrP5fEjslF7k+A3z
KrICcpp3xw4GGWhcyzf1PADBRxoV24loUUfaKm5OViOMabWs+liXncOrB5y2GNck
rm8Dgyf07HAkrOAflzpWonOipoSpBNA+EuKw8cW2e12SiPFCeUtm4c0xqxd8cIgw
EQMw0lFgW7QXdB9Wac+yZmXuJh03+I2eb8z7i+XFO3w2uSbQTHnSDEyNw0vyPbxk
h++kK5DGGrVuXzLuHO+y7MNo/YbIweLrcGuVzkaYqX/bg9ZpQCo=
=wj/7
-----END PGP SIGNATURE-----

--------------vNrb9MAUnjW9d9tJDoVjuzLf--
