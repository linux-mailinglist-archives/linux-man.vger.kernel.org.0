Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65E6574BE5B
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 18:02:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229436AbjGHQCo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 12:02:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230249AbjGHQCn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 12:02:43 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53EF21992
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 09:02:40 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id CD72260DB4
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 16:02:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 327F5C433C8;
        Sat,  8 Jul 2023 16:02:37 +0000 (UTC)
Message-ID: <a02eb61b-e5ae-71f9-0eea-14d77729d768@gmail.com>
Date:   Sat, 8 Jul 2023 18:02:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] memchr.3: rawmemchr doesn't have an n parameter
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <etk3j3tom3mzgm43gm5bpiwrittjrpf6zriqikhw2xsej6ltse@3gnfru2czeyu>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <etk3j3tom3mzgm43gm5bpiwrittjrpf6zriqikhw2xsej6ltse@3gnfru2czeyu>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------EcWjv4ixpoCZ3qyuSr8Vl8gX"
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
        FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,NICE_REPLY_A,NML_ADSP_CUSTOM_MED,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------EcWjv4ixpoCZ3qyuSr8Vl8gX
Content-Type: multipart/mixed; boundary="------------Q4BONox72S09ptePLPekx9aH";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <a02eb61b-e5ae-71f9-0eea-14d77729d768@gmail.com>
Subject: Re: [PATCH] memchr.3: rawmemchr doesn't have an n parameter
References: <etk3j3tom3mzgm43gm5bpiwrittjrpf6zriqikhw2xsej6ltse@3gnfru2czeyu>
In-Reply-To: <etk3j3tom3mzgm43gm5bpiwrittjrpf6zriqikhw2xsej6ltse@3gnfru2czeyu>

--------------Q4BONox72S09ptePLPekx9aH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNi8yMy8yMyAxODo1NCwg0L3QsNCxIHdyb3RlOg0KPiBUaGUgL3BvaW50LyBpcyBpdCdz
IHVuYm91bmRlZDsNCj4gICAgZ2l0IGdyZXAgLUYgJ3ZvaWQgIicgfCBncmVwIC1GICdbXScN
Cj4gZGlkbid0IHJldHVybiBhbnl0aGluZyBzbyBJIHJldmVydGVkIGl0IHRvIGEgdm9pZCou
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBaGVsZW5pYSBaaWVtaWHFhHNrYSA8bmFiaWphY3ps
ZXdlbGlAbmFiaWphY3psZXdlbGkueHl6Pg0KPiAtLS0NCg0KT29wcywgbXkgYmFkLiAgUGF0
Y2ggYXBwbGllZC4gIFRoYW5rcywNCkFsZXgNCg0KPiAgIG1hbjMvbWVtY2hyLjMgfCAyICst
DQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvbWFuMy9tZW1jaHIuMyBiL21hbjMvbWVtY2hyLjMNCj4gaW5k
ZXggZTI5MTZkYzlhLi4wMzA4MDZhYTAgMTAwNjQ0DQo+IC0tLSBhL21hbjMvbWVtY2hyLjMN
Cj4gKysrIGIvbWFuMy9tZW1jaHIuMw0KPiBAQCAtMjMsNyArMjMsNyBAQCAuU0ggU1lOT1BT
SVMNCj4gICAuQkkgInZvaWQgKm1lbWNocihjb25zdCB2b2lkICIgcyBbLiBuICJdLCBpbnQg
IiBjICIsIHNpemVfdCAiIG4gKTsNCj4gICAuQkkgInZvaWQgKm1lbXJjaHIoY29uc3Qgdm9p
ZCAiIHMgWy4gbiAiXSwgaW50ICIgYyAiLCBzaXplX3QgIiBuICk7DQo+ICAgLlBQDQo+IC0u
QkkgIltbZGVwcmVjYXRlZF1dIHZvaWQgKnJhd21lbWNocihjb25zdCB2b2lkICIgcyBbLiBu
ICJdLCBpbnQgIiBjICk7DQo+ICsuQkkgIltbZGVwcmVjYXRlZF1dIHZvaWQgKnJhd21lbWNo
cihjb25zdCB2b2lkICoiIHMgIiwgaW50ICIgYyApOw0KPiAgIC5maQ0KPiAgIC5QUA0KPiAg
IC5SUyAtNA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCkdQ
RyBrZXkgZmluZ2VycHJpbnQ6IEE5MzQ4NTk0Q0UzMTI4M0E4MjZGQkREOEQ1NzYzM0Q0NDFF
MjVCQjUNCg0K

--------------Q4BONox72S09ptePLPekx9aH--

--------------EcWjv4ixpoCZ3qyuSr8Vl8gX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSpiJcACgkQnowa+77/
2zISAQ//Z353YPqO7XnOQ4ZYGGC/qaSmwGbGeDUAuw/2OtcR4D4Lv31NFU2Evxj+
mrTGSbDADYRBN/WUs0Ul8p+MllszkCXG9AOmMpkkdO4SgiSjLl5KW7GVq3vxhgoY
y1ttZjpVixql/TWVr4heb7qKW+438ebdu5gINBHmDJzhEUgn15Vng5F9abMpJ48w
wSlQEUV14if8f6w0aijFl2mhmPWCwph7Tt0jKCmkIc0vTTzwr7HRaDljEI2EhI54
fIHtcGzEPPMjbsklal46JG4KIeyDlVLJxpCH3iqWSFDCrk+AgjpfboxWwOq7OjvY
AJi+E3cMkPqElmpSYeRzLvGcDHMFLTws6kgjwREop3d+OnSQVZe8ziULpY+mICe+
5SKVdkGmzcbdH6GFm1sWjoQTLWBfvhpj7eKs+a5rGVd2R0wBn6bsTcXbXITNkxjw
5cuJ3j2qecPWSFAM1H4lijQg1MxKGGPoWy+7a11H0VYDeFZT9HNnbdEOdIqex+Um
6sA8A2q71yPFaJT42q97pHRWZRtiS9oqLRGTv5Z2p6AlHWtJ04XAYuX9TgWEg5JP
0mciz9nyxR+ICtJ4j1jo+ZuHl+uRDJORHPgIXpnxHHAe6imWUsqqr/1iXTnlORZZ
5CxMrMitJNUPtCsUoEKFGXzhzB+In4Ha4XfTFtB11hWeVlS0qpk=
=U6oO
-----END PGP SIGNATURE-----

--------------EcWjv4ixpoCZ3qyuSr8Vl8gX--
