Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7BD764E39C
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 23:03:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229841AbiLOWD2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Dec 2022 17:03:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229718AbiLOWD1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 15 Dec 2022 17:03:27 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FE722649F
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 14:03:24 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id v7so632623wmn.0
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 14:03:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b22XZffRDf5P5xoBLFQ9I+jm6jBJbrmzQC20iL/eHr4=;
        b=O/0SlpCUGv04QNQyHcpkNPxkSrS+FGcB8dPJq/ky3/8d6v03IzvzKWBX8stkjkZlF8
         BLD6dLvyN2/ozPrMDt7sK0CzGgpGFztVVzs2wP8T3+tvE7Ls1oq12GCTdkGIb58J843s
         qP2PAiLZJ62i1zg3rO1UFg85fLpCssNoxLzwUoYGHei87GndeiVUCh158HiDuhKDrgoX
         ZMMlJgtYfTCMNEoO0k5It/sWRRvBFyDagkmI4g+eYetd7fwFcv1HGuEwZcxdSS+UJPga
         rin3xjh2FyT+U4ksuvyl2WQgAOozZ0E8iNmRf7z9Q3d6Q/9P2bciKA341hOx1IiNRNxL
         qffw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=b22XZffRDf5P5xoBLFQ9I+jm6jBJbrmzQC20iL/eHr4=;
        b=c8/iITQW6Id4Z83E6io6OFwUa0UeBNtFGN7SSJAMg1UPP5uDx8i3FUF0pRsLxnHrZp
         4GIA0JQSG41l3SesqojWK99ViP/CLcvxSZXEQASaE9yWK4RU9ilzBQyhyWqAyZne/L3r
         9RiZWu3I2c0b7c+NwJiswOFWUkLCm4s7nphkjkUxZOH4yLeQIETxYuJlJhmNzzTDFvDz
         d4u/NmFzg+Vi76eE1jAKPOCMnRkJuLxiM0Qirxo3ZUlq46IqTfRhzk7M4KlhexY5HMpR
         Nm/qvc3a/NG4w3lo91XUvuzOH2Fkd+YOVf9kFY6M/hkzScFgVCNSrqmDiiZcDPLj7I3d
         65sQ==
X-Gm-Message-State: ANoB5pko+Vadr8nT+dHTZ5ReYgqBCssFVh1jY+KWCIhNcVOe91H/iINw
        qFNRAgaz386UW/3ovPrl2M0=
X-Google-Smtp-Source: AA0mqf7qLZqLzZpIu7rzfgomScV40k1oY8GRQa5Ojutf4T8njzmu+ELD57GVQ2HdYf45xA3/7I4kaA==
X-Received: by 2002:a7b:c30e:0:b0:3cf:735c:9d54 with SMTP id k14-20020a7bc30e000000b003cf735c9d54mr24039043wmj.1.1671141802971;
        Thu, 15 Dec 2022 14:03:22 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o3-20020a05600c510300b003cfa3a12660sm15901652wms.1.2022.12.15.14.03.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Dec 2022 14:03:22 -0800 (PST)
Message-ID: <a3a44007-85dc-6f06-0a7e-d60ac329540f@gmail.com>
Date:   Thu, 15 Dec 2022 23:03:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [-Wstringop-overflow=] strncat(3)
Content-Language: en-US
To:     Martin Sebor <msebor@gmail.com>, Andrew Pinski <pinskia@gmail.com>
Cc:     gcc@gcc.gnu.org, linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        groff <groff@gnu.org>, Martin Sebor <msebor@redhat.com>
References: <30a77019-ded0-fe3b-d0db-6c77842674db@gmail.com>
 <CA+=Sn1nkz5FKFFx3e+A42nhpAF-TLW0Gmdgn4a5NL0KkCpuWNg@mail.gmail.com>
 <c306794f-8bfd-6b88-0baa-352d4c8b6871@gmail.com>
 <746bce22-9b6f-9452-5f0e-0e257738a03d@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <746bce22-9b6f-9452-5f0e-0e257738a03d@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5p5kc1T96xyaerEcz0G831aT"
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
--------------5p5kc1T96xyaerEcz0G831aT
Content-Type: multipart/mixed; boundary="------------9iyi2cl7EHJx4fV0t8saNC20";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Martin Sebor <msebor@gmail.com>, Andrew Pinski <pinskia@gmail.com>
Cc: gcc@gcc.gnu.org, linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>, groff <groff@gnu.org>,
 Martin Sebor <msebor@redhat.com>
Message-ID: <a3a44007-85dc-6f06-0a7e-d60ac329540f@gmail.com>
Subject: Re: [-Wstringop-overflow=] strncat(3)
References: <30a77019-ded0-fe3b-d0db-6c77842674db@gmail.com>
 <CA+=Sn1nkz5FKFFx3e+A42nhpAF-TLW0Gmdgn4a5NL0KkCpuWNg@mail.gmail.com>
 <c306794f-8bfd-6b88-0baa-352d4c8b6871@gmail.com>
 <746bce22-9b6f-9452-5f0e-0e257738a03d@gmail.com>
In-Reply-To: <746bce22-9b6f-9452-5f0e-0e257738a03d@gmail.com>

--------------9iyi2cl7EHJx4fV0t8saNC20
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWFydGluLA0KDQpPbiAxMi8xNS8yMiAyMTo1MCwgTWFydGluIFNlYm9yIHdyb3RlOg0K
PiBPbiAxMi8xNC8yMiAxNjoxNCwgQWxlamFuZHJvIENvbG9tYXIgdmlhIExpYmMtYWxwaGEg
d3JvdGU6DQpbLi4uXQ0KDQo+Pj4+DQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludA0K
Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtYWluKHZvaWQpDQo+Pj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHsNCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjaGFywqDC
oMKgIGJ1ZltCVUZTSVpdOw0KPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNp
emVfdMKgIGxlbjsNCj4+Pj4NCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBi
dWZbMF0gPSAnXDAnO8KgIC8vIFRoZXJl4oCZcyBubyDigJljcHnigJkgZnVuY3Rpb24gdG8g
dGhpcyDigJljYXTigJkuDQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3Ry
bmNhdChidWYsICJIZWxsbyAiLCA2KTsNCj4gDQo+IFRoZXJlJ3Mgbm90aGluZyB3cm9uZyB3
aXRoIHRoaXMgYnV0IHRoZSB0d28gbGluZXMgYWJvdmUgd291bGQgYmUNCj4gbW9yZSBzaW1w
bHkgY29kZWQgYXMgb25lOg0KPiANCj4gIMKgIHN0cmNweShidWYsICJIZWxsbyAiKTsNCg0K
SSB1c2VkIGEgc3RyaW5nIGxpdGVyYWwgdG8gYXZvaWQgaGF2aW5nIHRvIHRoaW5rIGhhcmQg
b2YgYW4gZXhhbXBsZSB1c2luZyANCnV0bXB4KDUpLCB3aGljaCB3b3VsZCBiZSB0aGUgYWN0
dWFsIGNvZGUgZm9yIHdoaWNoIEkgd2FudCB1c2VycyB0byB1c2UgdGhpcyANCmZ1bmN0aW9u
Lg0KDQpXaXRoIHRpbWUsIEkgZXhwZWN0IHRvIGRldmVsb3Agc3VjaCBleGFtcGxlIHByb2dy
YW0uDQoNCj4gDQo+IFRoZSBvcmlnaW5hbCBjb2RlIHN1Z2dlc3RzIGEgbWlzdW5kZXJzdGFu
ZGluZyBvZiBzdHJuY3B5J3MgcHVycG9zZToNCg0KQnkgdGhlICJvcmlnaW5hbCBjb2RlIiB3
aGF0IGFyZSB5b3UgZXhhY3RseSByZWZlcnJpbmcgdG8/ICBUaGUgY29kZSBxdW90ZWQgDQph
Ym92ZSwgb3IgYW5vdGhlcj8NCg0KSW4gYW55IGNhc2UsIHRoZSBjb2RlIGlzIHVzaW5nIHN0
cm5jYXQoMykgbm90IHN0cm5jcHkoMykuDQoNCj4gdGhhdCBpdCB3cml0ZXMgZXhhY3RseSA2
IGJ5dGVzIGludG8gdGhlIGRlc3RpbmF0aW9uLg0KDQpUaGF0J3MgdGhlIHB1cnBvc2Ugb2Yg
c3RybmNweSgzKS4gIEknbGwgcXVvdGUgdGhlIHZlcnNpb25zIG9mIHRoZSBwYWdlcyB0aGF0
IEknbSANCnByb3Bvc2luZzoNCg0KDQpzdHJuY3B5KDMpOg0KICAgICAgICBUaGVzZSBmdW5j
dGlvbnMgY29weSB0aGUgc3RyaW5nIHBvaW50ZWQgdG8gYnkgc3JjICBpbnRvICBhICBudWxs
4oCQcGFkZGVkDQogICAgICAgIGNoYXJhY3RlciBzZXF1ZW5jZSBhdCB0aGUgZml4ZWTigJB3
aWR0aCBidWZmZXIgcG9pbnRlZCB0byBieSBkc3QuICBJZiB0aGUNCiAgICAgICAgZGVzdGlu
YXRpb24gYnVmZmVyLCBsaW1pdGVkIGJ5IGl0cyBzaXplLCBpc27igJl0IGxhcmdlIGVub3Vn
aCB0byBob2xkIHRoZQ0KICAgICAgICBjb3B5LCAgdGhlIHJlc3VsdGluZyBjaGFyYWN0ZXIg
c2VxdWVuY2UgaXMgdHJ1bmNhdGVkLiAgVGhleSBvbmx5IGRpZmZlcg0KICAgICAgICBpbiB0
aGUgcmV0dXJuIHZhbHVlLg0KDQoNClRoZSBkZXNjcmlwdGlvbiBhYm92ZSBzYXlzIHRoYXQg
dGhlIGRlc3RpbmF0aW9uIGJ1ZmZlciBpcyBsaW1pdGVkIGJ5IGl0cyBzaXplLCANCnNvIGFz
IHlvdSBzYXksIHRoaXMgZnVuY3Rpb24gY29waWVzIGV4YWN0bHkgNiBieXRlcyAodGhlIGNo
YXJhY3RlciBzZXF1ZW5jZSArIA0KbnVsbCBwYWRkaW5nKS4NCg0KDQpzdHJuY2F0KDMpDQog
ICAgICAgIFRoaXMgIGZ1bmN0aW9uICBjYXRlbmF0ZXMgIHRoZSAgaW5wdXQgY2hhcmFjdGVy
IHNlcXVlbmNlIGNvbnRhaW5lZCBpbiBhDQogICAgICAgIG51bGzigJBwYWRkZWQgZml4ZWTi
gJB3aWR0aCBidWZmZXIsIGludG8gYSBzdHJpbmcgYXQgdGhlIGJ1ZmZlciBwb2ludGVkICB0
bw0KICAgICAgICBieSAgZHN0LiAgIFRoZSAgcHJvZ3JhbW1lciBpcyByZXNwb25zaWJsZSBm
b3IgYWxsb2NhdGluZyBhIGJ1ZmZlciBsYXJnZQ0KICAgICAgICBlbm91Z2gsIHRoYXQgaXMs
IHN0cmxlbihkc3QpICsgc3RybmxlbihzcmMsIHN6KSArIDEuDQoNCg0KQnV0IHN0cm5jYXQo
Mykgd3JpdGVzIHdoYXRldmVyIGlzIHRoZSBsZW5ndGggb2YgdGhlIGNoYXJhY3RlciBzZXF1
ZW5jZSBwYXNzZWQgYXMgDQppbnB1dCAoaWdub3JpbmcgdGhlIHBhZGRpbmcgbnVsbCBieXRl
cyksIHBsdXMgYSB0ZXJtaW5hdGluZyBudWxsIGJ5dGUuDQoNCg0KPsKgIFRoYXQncyB3aGF0
DQo+IHRoZSB3YXJuaW5nIHBvaW50cyBvdXQuDQoNClRoZSB3YXJuaW5nIHdvdWxkIGJlIGZh
aXIgZm9yIHN0cm5jcHkoMyksIGJ1dCBub3QgZm9yIHN0cm5jYXQoMykuDQoNCj4gDQo+Pj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RybmNhdChidWYsICJ3b3JsZCIsIDQy
KTvCoCAvLyBQYWRkaW5nIG51bGwgYnl0ZXMgaWdub3JlZC4NCj4+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBzdHJuY2F0KGJ1ZiwgIiEiLCAxKTsNCj4+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBsZW4gPSBzdHJsZW4oYnVmKTsNCj4+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBwcmludGYoIltsZW4gPSAlenVdOiA8JXM+XG4iLCBsZW4s
IGJ1Zik7DQo+Pj4+DQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZXhpdChF
WElUX1NVQ0NFU1MpOw0KPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9DQo+Pj4+DQo+Pj4+
IMKgwqDCoCBTRUUgQUxTTw0KPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJpbmcoMyks
IHN0cmluZ19jb3B5KDMpDQo+Pj4+DQo+Pj4+IMKgwqDCoCBMaW51eCBtYW7igJBwYWdlcyAo
dW5yZWxlYXNlZCnCoMKgwqDCoMKgIChkYXRlKSBzdHJuY2F0KDMpDQo+Pj4+DQo+Pj4+DQo+
Pj4+IEFuZCB3aGVuIHlvdSBjb21waWxlIHRoYXQsIHlvdSBnZXQ6DQo+Pj4+DQo+Pj4+ICQg
Y2MgLVdhbGwgLVdleHRyYSAuL3N0cm5jYXQuYw0KPj4+PiAuL3N0cm5jYXQuYzogSW4gZnVu
Y3Rpb24g4oCYbWFpbuKAmToNCj4+Pj4gLi9zdHJuY2F0LmM6MTI6MTI6IHdhcm5pbmc6IOKA
mHN0cm5jYXTigJkgc3BlY2lmaWVkIGJvdW5kIDYgZXF1YWxzIHNvdXJjZSBsZW5ndGgNCj4+
Pj4gWy1Xc3RyaW5nb3Atb3ZlcmZsb3c9XQ0KPj4+PiDCoMKgwqDCoCAxMiB8wqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBzdHJuY2F0KGJ1ZiwgIkhlbGxvICIsIDYpOw0KPj4+PiDCoMKgwqDC
oMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBefn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+DQo+Pj4+IC4vc3RybmNhdC5jOjE0OjEyOiB3YXJuaW5nOiDigJhzdHJuY2F04oCZIHNw
ZWNpZmllZCBib3VuZCAxIGVxdWFscyBzb3VyY2UgbGVuZ3RoDQo+Pj4+IFstV3N0cmluZ29w
LW92ZXJmbG93PV0NCj4+Pj4gwqDCoMKgwqAgMTQgfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
c3RybmNhdChidWYsICIhIiwgMSk7DQo+Pj4+IMKgwqDCoMKgwqDCoMKgIHzCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIF5+fn5+fn5+fn5+fn5+fn5+fn5+DQo+Pj4+DQo+Pj4+DQo+Pj4+IFNv
LCB3aGF0P8KgIFdoZXJlJ3MgdGhlIHByb2JsZW0/wqAgVGhpcyBmdW5jdGlvbiBkb2VzIGV4
YWN0bHkgdGhhdDogInRha2UgYW4NCj4+Pj4gdW50ZXJtaW5hdGVkIGNoYXJhY3RlciBzZXF1
ZW5jZSBhbmQgY2F0ZW5hdGUgaXQgdG8gYW4gZXhpc3Rpbmcgc3RyaW5nIi4NCj4gDQo+IFN0
cm5jYXQgaGFzIGhpc3RvcmljYWxseSBoYWQgdHdvIGRpc3RpbmN0IHVzZSBjYXNlcy7CoCBP
bmUgb2YgdGhlbQ0KPiAtLSB0byBjb25zdHJhaW4gdGhlIGFtb3VudCBvZiBkYXRhIHRvIGNv
cHkgdG8gdGhlIHNwYWNlIHJlbWFpbmluZw0KPiBpbiB0aGUgZGVzdGluYXRpb24gLS0gZ2Fp
bmVkIHBvcHVsYXJpdHkgd2l0aCB0aGUgcHVzaCB0byByZWR1Y2UNCj4gYnVmZmVyIG92ZXJm
bG93IHdlYWtuZXNzZXMgaW4gY29kZS7CoCBNaXN0YWtlcyBpbiB0aGVzZSB1c2VzIGdhdmUN
Cj4gcmlzZSB0byBhIHdob2xlIG90aGVyIGNsYXNzIG9mIHNlY3VyaXR5IGJ1Z3MsIHRvIHRo
ZSBleHRlbnQgdGhhdA0KPiBDRVJUIGZlbHQgaXQgbmVjZXNzYXJ5IHRvIHB1Ymxpc2ggdGhl
IHN0cm5jcHkgYW5kIHN0cm5jYXQgYmVzdA0KPiBwcmFjdGljZS7CoCBUaGUgR0NDIHdhcm5p
bmcgaW4gdHVybiB3YXMgYWRkZWQgdG8gc3VwcG9ydCB0aGUgQ0VSVA0KPiBndWlkZWxpbmUu
wqAgSSB0b3VjaCBvbiBzb21lIG9mIHRoaXMgaW4gYSBibG9nIHBvc3QgSSB3cm90ZSBhIGZl
dw0KPiB5ZWFycyBhZ286DQo+IA0KPiBodHRwczovL2RldmVsb3BlcnMucmVkaGF0LmNvbS9i
bG9nLzIwMTgvMDUvMjQvZGV0ZWN0aW5nLXN0cmluZy10cnVuY2F0aW9uLXdpdGgtZ2NjLTgN
Cg0KV2hpbGUgdGhpcyBpcyB0cnVlLCB0aGF0J3MgYmVjYXVzZSB0aGVyZSB3YXMgbm90aGlu
ZyBtb3JlIGFwcHJvcHJpYXRlLCBzdWNoIGFzIA0Kc3RybGNhdCgzKS4NCg0KTXkgcG9pbnQg
aXMgdGhhdCBzdHJuY2F0KDMpIGlzIGZhciBmcm9tIGJlaW5nIGEgZ29vZCB0b29sIGZvciB0
aGF0LCBhbmQgc2hvdWxkIA0KbmV2ZXIgYmUgdXNlZCBmb3IgdGhhdCBwdXJwb3NlIGluIGdv
b2QgY29kZTsgZXNwZWNpYWxseSBub3cgdGhhdCB3ZSBoYXZlIA0Kc3RybGNhdCgzKSB3aWRl
bHkgYXZhaWxhYmxlIGluIG1vc3QgaWYgbm90IGFsbCBQT1NJWCBzeXN0ZW1zIChpbiBMaW51
eCB0aHJvdWdoIA0KbGliYnNkKS4NCg0KSSdsbCBxdW90ZSBzb21lIHBhcnQgb2YgdGhlIGxp
bmsgYWJvdmU6DQoNCnwgICAgc3RybmNhdCAoZGVzdCwgc3JjLCBkZXN0X3NpemUgLSBzdHJs
ZW4gKGRlc3QpIC0gMSk7DQp8DQp8IENhbGxzIHRoYXQgaGF2ZSB0aGlzIGZvcm0gYXJlIG5v
dCBkaWFnbm9zZWQuDQoNClRoYXQgY29kZSBpcyBhIHNvdXJjZSBvZiBidWdzLiAgU3VjaCBj
b2RlIHNob3VsZCBfYWx3YXlzXyBiZSByZXBsYWNlZCBieSANCnN0cmxjYXQoMykgYXM6DQoN
CiAgICAgc3RybGNhdChkc3QsIHNyYywgc2l6ZW9mKGRzdCk7DQoNCg0KfCBPdGhlciBjYWxs
cywgc3VjaCBhcyB0aG9zZSB3aGVyZQ0KfCB0aGUgc2l6ZSBpcyBkZXJpdmVkIGluIHNvbWUg
d2F5IGZyb20gdGhlIHNpemUgb3IgbGVuZ3RoIG9mIHRoZSBzb3VyY2Ugc3RyaW5nLA0KfCBh
cmUgZGlhZ25vc2VkIGJ5IC1Xc3RyaW5nb3Atb3ZlcmZsb3cuIFRoYXQgaW5jbHVkZXMgdW5z
YWZlIGNhbGxzIGxpa2UNCg0KVGhlIG9ubHkgc2FuZSB1c2Ugb2Ygc3RybmNhdCgzKSBpcyB0
aGF0LiAgSXQncyBhIHVzZSB3aGVyZSBubyBvdGhlciBmdW5jdGlvbiANCnNlcnZlcyBiZXR0
ZXIuICBUbyByZWFkIGEgcG9zc2libHkgbm9uLXRlcm1pbmF0ZWQgY2hhcmFjdGVyIHNlcXVl
bmNlIGZyb20gYSANCmZpeGVkLXdpZHRoIGJ1ZmZlcjsgYW5kIHRoZSBzaXplIGlzIHRoZSBv
bmx5IHdheSBzdHJuY2F0KDMpIGNhbiBrbm93IHdoZW4gdG8gDQpzdG9wIHJlYWRpbmcuDQoN
CnwNCnwgICAgc3RybmNhdCAoZGVzdCwgc3JjLCBzdHJsZW4gKHNyYykpOyAgIC8vIGluY29y
cmVjdCAtIHdhcm5pbmcNCg0KVGhpcyBjYWxsIGRvZXNuJ3QgbWFrZSBhbnkgc2Vuc2U7IEkg
YWdyZWUuICBJdCBzaG91bGQgX2Fsd2F5c18gYmUgcmVwbGFjZWQgYnkgDQpzdHJjYXQoMykg
YXM6DQoNCiAgICAgc3RyY2F0KGRzdCwgc3JjKTsNCg0KSSBhY2tub3dsZWRnZSB0aGF0IHRo
aXMgaXMgdGhlIGNhc2UgSSBzaG93IGluIHRoZSBtYW51YWwgcGFnZSwgYnV0IG9ubHkgYmVj
YXVzZSANCnRoZXJlIGlzIG5vIGZvcm0gdG8gY3JlYXRlIGFuIHVudGVybWluYXRlZCBzdHJp
bmcgbGl0ZXJhbCAoSSB0YWtlIHRoaXMgDQpvcHBvcnR1bml0eSB0byByZS1zdWdnZXN0ICJm
b28idSBhcyBhbiB1bnRlcm1pbmF0ZWQgc3RyaW5nIGxpdGVyYWwpLg0KDQpJJ2xsIHRyeSB0
byBjb21lIHVwIHdpdGggYW4gZXhhbXBsZSBwcm9ncmFtIHRoYXQgYXZvaWRzIHRoaXMuDQoN
CnwNCnwgYW5kDQp8DQp8ICAgIHN0cm5jYXQgKGRlc3QsIHNyYywgc2l6ZW9mIHNyYyk7ICAg
Ly8gaW5jb3JyZWN0IC0gd2FybmluZw0KDQpUaGlzIGlzIHRoZSBfcGVyZmVjdF8gdXNlIGNh
c2UgZm9yIHN0cm5jYXQoMykuICBObyBvdGhlciBmdW5jdGlvbiBpcyBiZXR0ZXIuDQoNCkxl
dCdzIHNheSB5b3UgaGF2ZSB0aGUgZm9sbG93aW5nOg0KDQpjaGFyIHNyY1s1XSA9IHsnaCcs
ICdlJywgJ2wnLCAnbCcsICdvJ307DQoNCkhvdyBkbyB5b3UgY29weSB0aGF0IGludG8gYSBz
dHJpbmc/ICBzdHJuY2F0KDMpLiAgdXRtcHgoNSkgaXMgb25lIG9mIHRoZSANCmV4YW1wbGVz
IHdoZXJlIHRoaXMgaGFwcGVucy4NCg0KSSdsbCBtb2RpZnkgdGhlIGV4YW1wbGUgcHJvZ3Jh
bSB0byB1c2UgdGhpcywgdG8gYXZvaWQgYmVpbmcgbWlzbGVhZGluZy4gIEknbGwgDQpyZXBs
YWNlIHN0cmluZyBsaXRlcmFscyBieSBjaGFyYWN0ZXIgc2VxdWVuY2VzLg0KDQoNCj4gDQo+
IFRoZSBzcGVjaWZpYyB1c2VzIG9mIHRoZSBmdW5jdGlvbiBhYm92ZSBhcmUgY29udHJpdmVk
ICh0aGVyZSdzDQo+IG5vIHBvaW50IGluIGNhbGxpbmcgc3RybmNhdCB0byBhcHBlbmQgdGhl
IGZ1bGwgc3RyaW5nIC0tIHN0cmNhdA0KPiB3aWxsIGRvIHRoYXQgbW9yZSBjbGVhcmx5IGFu
ZCBlZmZpY2llbnRseSkgYnV0IHRoZSBnZW5lcmFsIHVzZQ0KPiBjYXNlIC0tIGxpbWl0aW5n
IHRoZSBhbW91bnQgb2YgY29waWVkIGRhdGEgdG8gYW4gaW5pdGlhbA0KPiBzdWJzdHJpbmcg
b2YgdGhlIHNvdXJjZSBzZXF1ZW5jZSAtLSBhbHRob3VnaCB2YWxpZCBhbmQgb3JpZ2luYWxs
eQ0KPiBpbnRlbmRlZCAoaXQncyBvbmUgb2YgdGhlIHR3byB1c2VzIG9mIHRoZSBmdW5jdGlv
biBpbiBVTklYIHY3KSwNCj4gaXMgbm90IG9uZSB0aGF0IGVpdGhlciB0aGUgZ3VpZGVsaW5l
IG9yIHRoZSB3YXJuaW5nIGNvbnNpZGVyLg0KPiBUaGV5IGNhbiBvbmx5IGNvbnNpZGVyIG9u
ZSB1c2UgY2FzZXMsIGFuZCB0aGV5IGNob3NlIHRoZSBvbmUNCj4gdGhhdCB3YXMgb2JzZXJ2
ZWQgYmVoaW5kIHNlY3VyaXR5IGJ1Z3MuIA0KDQpJdCdzIHNhZCB0aGF0IHN0cm5jYXQoMykg
aGFzIGJlZW4gdXNlZCBzbyBtdWNoIGZvciBsaW1pdGluZyB0aGUgZGVzdCBjb3B5LiAgSXQn
cyANCnByZXR0eSB1bnNhZmUgZm9yIHRoYXQsIHdlIGFncmVlLiAgSG93IGFib3V0IGFsbG93
aW5nIHRoZSBzYWZlIHVzZSBvZiBpdCAoaS5lLiwgDQpzaXplIGRlcml2ZWQgZnJvbSBzb3Vy
Y2UgYnVmZmVyKSwgYW5kIHdhcm4gYWJvdXQgdXNlcyB3aGVyZSB0aGUgc2l6ZSBpcyBkZXJp
dmVkIA0KZnJvbSB0aGUgZHN0IHN0cmluZz8gIEknbSBnb2luZyB0byByZXdyaXRlIHRoZSBt
YW51YWwgcGFnZSBpbiB0aGF0IGRpcmVjdGlvbi4NCg0KPiBUaGF0IGNob2ljZSB1bmF2b2lk
YWJseQ0KPiBsZWFkcyB0byBzb21lIGZhbHNlIHBvc2l0aXZlcy7CoCBUaGUgZXhwZWN0ZWQg
d2F5IHRvIGRlYWwgd2l0aA0KPiB0aGVtIGlzIHRvIHN1cHByZXNzIHRoZSB3YXJuaW5nIGJ5
IG9uZSBvZiB0aGUgdXN1YWwgbWVjaGFuaXNtcw0KPiAoY29tbWFuZCBsaW5lIG9wdGlvbiBv
ciAjcHJhZ21hIEdDQyBkaWFnbm9zdGljKS4NCg0KVGhlIG9ubHkgdXNlIGNhc2UgdGhhdCBH
Q0MgaXMgYWxsb3dpbmcgaXMgYmV0dGVyIHNlcnZlZCBieSBzdHJsY3B5KDMpIGFuZCANCnN0
cmxjYXQoMykuICBJIHN1Z2dlc3QgY2hhbmdpbmcgdGhlIHdhcm5pbmcgdG8gcHJvdGVjdCB0
aGUgb25seSBuYXR1cmFsIHVzZSBjYXNlIA0KZm9yIHN0cm5jYXQoMyksIGFuZCB3YXJuIGFi
b3V0IHVzZXMgb2YgaXQgc3VwcGxhbnRpbmcgc3RybGNhdCgzKSAoYW5kIG1heWJlIA0Kc3Vn
Z2VzdCB1c2luZyBzdHJsY2F0KDMpKS4NCg0KPiANCj4gTWFydGluDQoNClRoYW5rcyENCg0K
QWxleA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------9iyi2cl7EHJx4fV0t8saNC20--

--------------5p5kc1T96xyaerEcz0G831aT
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmObmaIACgkQnowa+77/
2zJKTRAAmJZdBbN+fiXQSGaZAnYtwYRCtjWsj/28uB4ZIibCz5jiqx+4bn4C2bkw
Fu1KpDB6gL/M3vN17bfpmJQT8EIOvpJ6QKk4AcTBJoUCUwzAcNd3SjWwz8aL4x2w
aiE3XEmal48AKaoighH8I3JP0CLBaZATRgUyq7u9ZNllJMcR/9I0RRwmnLW87vjT
m+yLrsDMjLOHRt2QLLHaUVwYbevL/1Vv7smbxnM7jJLmNyItzrJFpOowz1DkVT/K
FVRSLmaLKsjsH+lSnXSXCes1bjDmfDlBMjMizQsRNABHmqewUFDPIHRqIQVxtnjf
Ml2Y1+PfjxeDg9dZS7CLQgbbr8vhNJlgLDFHHxujGctabsPs7SgJT0NjmF/+8c4Y
X9kWf1v1omJ+f6aKvwq5iTZYsfgVZN0WXV2yJFB6k1ml3lUI0kryWxq31WYqqSEP
5Dyx561lfKbA2YvRSr4MYLNcoajtyAA0hpXZPol6AH3x9dzqAhE+7BXh3lWtb4Ho
rMuOChsibhuOB1jxHwet51vm778YGeZWCX53f2GMgw0p0mjSGdX58/DQWaT2CTCa
vWC7RsDc/Lvnjnizmhf7/P+7SeXjRqigaufkd//lWScUuQd9LRxHsq24Bt9UPeXq
kFSviav7UGwca/tJMxIYpfIE8rV/1EoPjDZ+AEc0dMHmtter4d8=
=ZCtE
-----END PGP SIGNATURE-----

--------------5p5kc1T96xyaerEcz0G831aT--
