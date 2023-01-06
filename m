Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6809E65F90F
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 02:28:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230314AbjAFB2U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 20:28:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230391AbjAFB1u (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 20:27:50 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC52A32272
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 17:21:30 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id m26-20020a05600c3b1a00b003d9811fcaafso156961wms.5
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 17:21:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=biehBQdaSyRseR3/sB2vhvgBW/Sw+QNCiA1XoudBVz4=;
        b=AqfmML1agrvrraelsk65seys7ztWD6erjlgQ0CLsj/gl/kDbN7ENzhqQKn9cHTAfEL
         Yg3ww4Y0bftjcadoEdKq2Yp2Vu/cBIwFCFbEVSUeqTnwkEg6gxzQ9uE13PHMGFXSdF8L
         qKtMUMHSKvzlkRE0IaqPr9/IQN9xSum+RjHV3isbvoIVIty/hAcNtLi+3c0FeX+tL41z
         LXpQW6nswuvlR5NAob+epBbExCj9SOG1mj73KLzAkkk8yWMrNyCqqg90N0y9sJo6G7Cg
         74vKl8DFZOBZgmWZZHCBT+tbJPfo9W7dnzXDnevib5R+ksD910pIPI7kVUtsqjp3UmeC
         RNdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=biehBQdaSyRseR3/sB2vhvgBW/Sw+QNCiA1XoudBVz4=;
        b=sntLrR3nskWxUsS1O6I9Kphoad1pF7MrIghOLOsCZSy9nv8O6nn2u4HhRyD/ydyFyW
         HlvsV+sg0QoqSM5y+b9J315r4yMTL7boWWgL3Z6H+LinzVFF7JsZ04gd2931aWAiSnOa
         9kIL2uxnsHmJyqPBWd+2FM0/eEkXSASCv59ikP5f4hgJFU8u2Pu+mNG+wSMh4w5jXUh9
         uGkzri/rcm1bQY1XudqOT+yIzA/K+ApMCa78Jf737d5SBGJE0bkqGN4g3Nw6qNapjJu3
         K+QOjH8CorZ/k7yrZGn1TAGAgZlYJKxn37lY5tZwNEhdv8Yfl3A8A7nWoprLnCiDxRC7
         A1Zg==
X-Gm-Message-State: AFqh2krW7zM6Uj44IXMDEI9fwCGI0QW5qNIl1oT5ME/dGn0MAh4fwGdV
        JclrdM8uzy5rErnui2sg+8Sj+pmB9VI=
X-Google-Smtp-Source: AMrXdXuadAN4ao4OiwEEiNb+ITc6CaTddMUMGZG2iDFAVzjrnqq4wzaI5eJujzzPvy5x0C5tC5RcKQ==
X-Received: by 2002:a05:600c:254:b0:3d2:2c86:d2b2 with SMTP id 20-20020a05600c025400b003d22c86d2b2mr46763888wmj.24.1672968089278;
        Thu, 05 Jan 2023 17:21:29 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i14-20020a05600c354e00b003d1d5a83b2esm4845322wmq.35.2023.01.05.17.21.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 17:21:28 -0800 (PST)
Message-ID: <2ef7c0b8-978e-7bc0-d5b9-88ea9348a677@gmail.com>
Date:   Fri, 6 Jan 2023 02:21:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 05/13] ldconfig.8: Revise and update for glibc 2.32
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230105225246.uid2pwwivc6testz@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230105225246.uid2pwwivc6testz@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1zZKjzcE7z8lANYtQGGYRVMv"
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
--------------1zZKjzcE7z8lANYtQGGYRVMv
Content-Type: multipart/mixed; boundary="------------gm3TdmwNQcU30bGTZqDehqsk";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <2ef7c0b8-978e-7bc0-d5b9-88ea9348a677@gmail.com>
Subject: Re: [PATCH v3 05/13] ldconfig.8: Revise and update for glibc 2.32
References: <20230105225246.uid2pwwivc6testz@illithid>
In-Reply-To: <20230105225246.uid2pwwivc6testz@illithid>

--------------gm3TdmwNQcU30bGTZqDehqsk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS81LzIzIDIzOjUyLCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KDQo+ICogQ29tbWVudCBvdXQgbXVsdGlwbGUgcGFyYWdyYXBocyBkaXNjdXNzaW5n
IGxpYmM0IGFuZCBsaWJjNSBzaGFyZWQNCj4gICAgbGlicmFyeSBzdXBwb3J0LiAgSXQgd2Fz
IHJlbW92ZWQgdXBzdHJlYW0gaW4gSnVseTsgYW5ub3RhdGUgY29tbWl0Lg0KDQoNClsuLi5d
DQoNCj4gQEAgLTUwLDUwICs1Miw1NyBAQCBhbmQNCj4gICAuSSAvdXNyL2xpYjY0DQo+ICAg
YXJlIHVzZWQgZm9yIDY0LWJpdCBsaWJyYXJpZXMuDQo+ICAgLlBQDQo+IC1UaGUgY2FjaGUg
aXMgdXNlZCBieSB0aGUgcnVuLXRpbWUgbGlua2VyLA0KPiArSXQgYWxzbyBtYWludGFpbnMg
YSBjYWNoZQ0KPiArdXNlZCBieSB0aGUgcnVuLXRpbWUgbGlua2VyLA0KPiAgIC5JIGxkLnNv
DQo+ICAgb3INCj4gICAuSVIgbGRcLWxpbnV4LnNvIC4NCj4gICAuQiBcJWxkY29uZmlnDQo+
ICAgY2hlY2tzIHRoZSBoZWFkZXIgYW5kIGZpbGVuYW1lcyBvZiB0aGUgbGlicmFyaWVzIGl0
IGVuY291bnRlcnMgd2hlbg0KPiAgIGRldGVybWluaW5nIHdoaWNoIHZlcnNpb25zIHNob3Vs
ZCBoYXZlIHRoZWlyIGxpbmtzIHVwZGF0ZWQuDQo+IC0uUFANCj4gLS5CIFwlbGRjb25maWcN
Cj4gLXdpbGwgYXR0ZW1wdCB0byBkZWR1Y2UgdGhlIHR5cGUgb2YgRUxGIGxpYnJhcmllcw0K
PiAtKGkuZS4sDQo+IC1saWJjNSBvciBsaWJjNi9nbGliYykNCj4gLWJhc2VkIG9uIHdoYXQg
QyBsaWJyYXJpZXMsDQo+IC1pZiBhbnksDQo+IC10aGUgbGlicmFyeSB3YXMgbGlua2VkIGFn
YWluc3QuDQo+IC0uXCIgVGhlIGZvbGxvd2luZyBzZW50ZW5jZSBsb29rcyBzdXNwZWN0DQo+
IC0uXCIgKHBlcmhhcHMgaGlzdG9yaWNhbCBjcnVmdCkgLS0gTVRLLCBKdWwgMjAwNQ0KPiAt
LlwiIFRoZXJlZm9yZSwgd2hlbiBtYWtpbmcgZHluYW1pYyBsaWJyYXJpZXMsDQo+IC0uXCIg
aXQgaXMgd2lzZSB0byBleHBsaWNpdGx5IGxpbmsgYWdhaW5zdCBsaWJjICh1c2UgXC1sYyku
DQo+IC0uUFANCj4gLVNvbWUgZXhpc3RpbmcgbGlicmFyaWVzIGRvIG5vdCBjb250YWluIGVu
b3VnaCBpbmZvcm1hdGlvbg0KPiAtdG8gYWxsb3cgdGhlIGRlZHVjdGlvbiBvZiB0aGVpciB0
eXBlLg0KPiAtVGhlcmVmb3JlLA0KPiAtdGhlDQo+IC0uSSAvZXRjL2xkLnNvLmNvbmYNCj4g
LWZpbGUgZm9ybWF0IGFsbG93cyB0aGUgc3BlY2lmaWNhdGlvbiBvZiBhbiBleHBlY3RlZCB0
eXBlLg0KPiAtVGhpcyBpcyB1c2VkDQo+IC0uSSBvbmx5DQo+IC1mb3IgdGhvc2UgRUxGIGxp
YnJhcmllcyB3aGljaCB3ZSBjYW4gbm90IHdvcmsgb3V0Lg0KPiAtVGhlIGZvcm1hdA0KPiAt
aXMgImRpcm5hbWU9VFlQRSIsDQo+IC13aGVyZSBUWVBFIGNhbiBiZSBsaWJjNCwNCj4gLWxp
YmM1LA0KPiAtb3IgbGliYzYuDQo+IC0oVGhpcyBzeW50YXggYWxzbyB3b3JrcyBvbiB0aGUg
Y29tbWFuZCBsaW5lLikNCj4gLVNwYWNlcyBhcmUNCj4gLS5JIG5vdA0KPiAtYWxsb3dlZC4N
Cj4gLUFsc28gc2VlIHRoZQ0KPiAtLkIgXC1wDQo+IC1vcHRpb24uDQo+ICsuXCIgU3VwcG9y
dCBmb3IgbGliYzQgYW5kIGxpYmM1IGRyb3BwZWQgaW4NCj4gKy5cIiA4ZWU4Nzg1OTJjNGE2
NDI5MzcxNTJjODMwOGI4ZmFlZjg2YmNmYzQwICgyMDIyLTA3LTE0KSBhcyAib2Jzb2xldGUN
Cj4gKy5cIiBmb3Igb3ZlciB0d2VudHkgeWVhcnMiLg0KDQpJIHByZWZlciByZW1vdmluZyB0
aGUgY29kZSBjb21wbGV0ZWx5LiAgU2luY2UgcmVtb3ZpbmcgY29kZSBpcyBtb3JlIGRlbGlj
YXRlLCANCmFuZCB0byBoZWxwIHdob2V2ZXIgbWF5IHdhbnQgdG8gaW52ZXN0aWdhdGUgaGlz
dG9yeSBpbiB0aGUgZnV0dXJlLCBwbGVhc2UgZG8gc28gDQppbiBhIHNlcGFyYXRlIGNvbW1p
dC4gIEkgZ3Vlc3MgaXQgd2lsbCBiZSBiZXR0ZXIgaWYgdGhhdCBjb21taXQgcmVtb3Zpbmcg
Y29kZSANCmdvZXMgYmVmb3JlIHRoZSBnZW5lcmFsIHJldmlzaW9uIG9mIHRoZSBwYWdlLg0K
DQpDaGVlcnMsDQoNCkFsZXgNCg0KPiArLlwiLlBQDQo+ICsuXCIuQiBcJWxkY29uZmlnDQo+
ICsuXCJ3aWxsIGF0dGVtcHQgdG8gZGVkdWNlIHRoZSB0eXBlIG9mIEVMRiBsaWJyYXJpZXMN
Cj4gKy5cIihpLmUuLA0KPiArLlwibGliYzUgb3IgbGliYzYvZ2xpYmMpDQo+ICsuXCJiYXNl
ZCBvbiB3aGF0IEMgbGlicmFyaWVzLA0KPiArLlwiaWYgYW55LA0KPiArLlwidGhlIGxpYnJh
cnkgd2FzIGxpbmtlZCBhZ2FpbnN0Lg0KPiArLlwiLlwiIFRoZSBmb2xsb3dpbmcgc2VudGVu
Y2UgbG9va3Mgc3VzcGVjdA0KPiArLlwiLlwiIChwZXJoYXBzIGhpc3RvcmljYWwgY3J1ZnQp
IC0tIE1USywgSnVsIDIwMDUNCj4gKy5cIi5cIiBUaGVyZWZvcmUsIHdoZW4gbWFraW5nIGR5
bmFtaWMgbGlicmFyaWVzLA0KPiArLlwiLlwiIGl0IGlzIHdpc2UgdG8gZXhwbGljaXRseSBs
aW5rIGFnYWluc3QgbGliYyAodXNlIFwtbGMpLg0KPiArLlwiLlBQDQo+ICsuXCJTb21lIGV4
aXN0aW5nIGxpYnJhcmllcyBkbyBub3QgY29udGFpbiBlbm91Z2ggaW5mb3JtYXRpb24NCj4g
Ky5cInRvIGFsbG93IHRoZSBkZWR1Y3Rpb24gb2YgdGhlaXIgdHlwZS4NCj4gKy5cIlRoZXJl
Zm9yZSwNCj4gKy5cInRoZQ0KPiArLlwiLkkgL2V0Yy9sZC5zby5jb25mDQo+ICsuXCJmaWxl
IGZvcm1hdCBhbGxvd3MgdGhlIHNwZWNpZmljYXRpb24gb2YgYW4gZXhwZWN0ZWQgdHlwZS4N
Cj4gKy5cIlRoaXMgaXMgdXNlZA0KPiArLlwiLkkgb25seQ0KPiArLlwiZm9yIHRob3NlIEVM
RiBsaWJyYXJpZXMgd2hpY2ggd2UgY2FuIG5vdCB3b3JrIG91dC4NCj4gKy5cIlRoZSBmb3Jt
YXQNCj4gKy5cImlzICJkaXJuYW1lPVRZUEUiLA0KPiArLlwid2hlcmUgVFlQRSBjYW4gYmUg
bGliYzQsDQo+ICsuXCJsaWJjNSwNCj4gKy5cIm9yIGxpYmM2Lg0KPiArLlwiKFRoaXMgc3lu
dGF4IGFsc28gd29ya3Mgb24gdGhlIGNvbW1hbmQgbGluZS4pDQo+ICsuXCJTcGFjZXMgYXJl
DQo+ICsuXCIuSSBub3QNCj4gKy5cImFsbG93ZWQuDQo+ICsuXCJBbHNvIHNlZSB0aGUNCj4g
Ky5cIi5CIFwtcA0KPiArLlwib3B0aW9uLg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRy
by1jb2xvbWFyLmVzLz4NCg==

--------------gm3TdmwNQcU30bGTZqDehqsk--

--------------1zZKjzcE7z8lANYtQGGYRVMv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO3d5cACgkQnowa+77/
2zJC+BAAkVB9I0F3ctyKs6wdkOjd6YW4EVQh/Joi8curBdWxzO+PCRiRPfAAg+z/
rNucj+ZXBnk9fHW0ViP6xfIbwyZ+IlcY6dN7pZl8E9HCtsrWFFXKmhdeHDxEb1aO
YBE9bIAVLAN4QOB1A60htmbgsVIgPoB7HVq1va1jZSiIZv0gIUcl5SoXH0KCET9n
UO2zskcF4vKIT34lI4iqinsy2a8BMndnCPYS/6Mq2PBlzgMcoEf7kLkKM0U8MB6o
EyQ6+Kti4OLzRApsSTcEO+lskFbpWRDQUuMiL+3zappRaIC13138zNbLBrve/jpm
LmE4F0rIC65C4JdhqYTqUfo9UVsPF5UruSi14+1hGM36O42GppOTaqMzNEn3PqWB
27Rn0FeqRQId09dBgBTpT3II1xonKDqkpNTl7fV6b6QuuD9lXVyC+fXaV77S4jmj
hhT5uxtZIn/Mh/bO0zjtVq9Kmr3N1ajZrpg2uSqmNo51uYmcyPBF/8DPuSVldZ7U
VzfYfUKA8/5FpsAjE1WrpVxgHxCIGkO0YX0oA07omSw0VzfgheUBdh4cmS6OvCOW
X0Vya+kCrjtO425GMQInNMG+HnkI5Pn2WA1vJ8vOAnu1i8zqzeeCgf5LQ3f2PVCu
v1/SJM/h4wQZVubJZhEjzpoOLiXX5aHBhfYxdz6RdIFe4McHyc8=
=m0T8
-----END PGP SIGNATURE-----

--------------1zZKjzcE7z8lANYtQGGYRVMv--
