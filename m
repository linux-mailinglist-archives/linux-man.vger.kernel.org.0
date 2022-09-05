Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93F2E5ADA0F
	for <lists+linux-man@lfdr.de>; Mon,  5 Sep 2022 22:10:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231488AbiIEUK2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Sep 2022 16:10:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229616AbiIEUK1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Sep 2022 16:10:27 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F294130F5C
        for <linux-man@vger.kernel.org>; Mon,  5 Sep 2022 13:10:24 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id v7-20020a1cac07000000b003a6062a4f81so8314657wme.1
        for <linux-man@vger.kernel.org>; Mon, 05 Sep 2022 13:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=NpGioxSa17EuxBNo8BHUPd5EdzaVZbrMI4hibmhMn7U=;
        b=N4PY4j1Fe88f4VbkNTL1jQ9yD+KYzmeAap3wB312n7y0rNWjuLTX4VqBJt/zW+Sxak
         ANPIxblVOtkzTZZjoNUyvOnjxdCKJlXC3pkXn0fcizOYH3srD4fZOyljX8Emmvgc7u/I
         O3SgoseH5dBGPQMieqx3Lq4Jqjd0bX+Xrz/4+Y6IcM32JJdGVR2LsMASoxgAcvhsNmuq
         C3nz5IVNl+FPdDCZAMVX+HVvLHy1T213Yfvbri8z+7oLTenyqX3wpV8QWddjR2F0UA3A
         wd2IWbeFVy6K24ePJE6wxWZuB7LU1BDOFTklsmuo2qLk8IhmocmF/oIvU9DzRt3JO6oY
         WngA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=NpGioxSa17EuxBNo8BHUPd5EdzaVZbrMI4hibmhMn7U=;
        b=A2shrJnz6kFt9Hhd9t4KlFiOSI4L1w8fLmda9b0B0tESO0kYC8ICheF8d5RhSEnJ92
         MN1K2ERTBoSagHrzIbm2NRjeq98UU3r2eav9xUnoy8Plm334AUhTRXmIWhPKPIahFzHo
         XDcTzMTHwEjFS9rxXbDHl9OOyatNwAV/TPtzXFtIRPeyt7TceqDWSmFay+TtpERJmVbX
         0jTNVs7Z0S8D9GqSbm9MNxjnFf82UC5vLm4TAagyWo3ijuNewh3LoymeZCnE8Gqvk45V
         sRN4HeJyxg3iiN5NneGqL8ktbNVE3gcakVmXBytvyp7x4L4IuAaAP/Ko9+FmMPBD0Qi6
         M/kQ==
X-Gm-Message-State: ACgBeo2MOfmfoPIBkGaUz3XkYh3FJt6RxrExVuA489M60+XAzx0Q+biI
        x0P9KxA/JQTkJMKEronEtWCojSn0654=
X-Google-Smtp-Source: AA6agR5BOID5PF0Qhf/Z9DedKWBStyayltXDfc0VzZR7tUM4l961Uha1onWjm3lhQsnElqXAcEW/Vg==
X-Received: by 2002:a05:600c:3556:b0:3a6:220e:6242 with SMTP id i22-20020a05600c355600b003a6220e6242mr11335916wmq.145.1662408623411;
        Mon, 05 Sep 2022 13:10:23 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d6-20020a5d6446000000b00224f5bfa890sm9377854wrw.97.2022.09.05.13.10.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Sep 2022 13:10:22 -0700 (PDT)
Message-ID: <207e0f01-f625-3f79-42d0-3e87a6882ee7@gmail.com>
Date:   Mon, 5 Sep 2022 22:10:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH] fanotify_mark.2: Document FAN_MARK_EVICTABLE
Content-Language: en-US
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
References: <20220904154639.2623138-1-amir73il@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220904154639.2623138-1-amir73il@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0kvcYtsWdRCI2EVCPQzn0s0G"
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0kvcYtsWdRCI2EVCPQzn0s0G
Content-Type: multipart/mixed; boundary="------------ZYKX5YX6HE6E0DCKDbTGUcvU";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
 linux-man@vger.kernel.org
Message-ID: <207e0f01-f625-3f79-42d0-3e87a6882ee7@gmail.com>
Subject: Re: [PATCH] fanotify_mark.2: Document FAN_MARK_EVICTABLE
References: <20220904154639.2623138-1-amir73il@gmail.com>
In-Reply-To: <20220904154639.2623138-1-amir73il@gmail.com>

--------------ZYKX5YX6HE6E0DCKDbTGUcvU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQW1pciwNCg0KT24gOS80LzIyIDE3OjQ2LCBBbWlyIEdvbGRzdGVpbiB3cm90ZToNCj4g
QWRkIHNlY3Rpb24gYWJvdXQgZXZpY3RhYmxlIGlub2RlIG1hcmtzIGFuZCBleGFtcGxlIHVz
ZSBjYXNlLg0KPiBBZGQgcG9zc2libGUgZXJyb3IgY2FzZSBFRVhJU1QgcmVsYXRlZCB0byBl
dmljdGFibGUgbWFya3MuDQo+IA0KPiBSZXZpZXdlZC1ieTogTWF0dGhldyBCb2Jyb3dza2kg
PHJlcG5vcEBnb29nbGUuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBBbWlyIEdvbGRzdGVpbiA8
YW1pcjczaWxAZ21haWwuY29tPg0KPiAtLS0NCj4gDQo+IEhpIEFsZXgsDQo+IA0KPiBUaGlz
IGlzIGFuIHVwZGF0ZSBmb3IgYSBuZXcgZmFub3RpZnkgZmVhdHVyZSBpbiB2NS4xOS4NCj4g
UGxlYXNlIHdhaXQgdG8gc2VlIGlmIEphbiBoYXMgYW55IGNvbW1ldG5zIGJlZm9yZSBtZXJn
aW5nLg0KDQpTdXJlLiAgQWxzbywgcGxlYXNlIGNoZWNrIHNvbWUgY29tbWVudHMgb2YgbWlu
ZSBiZWxvdy4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gDQo+IFRoYW5rcywNCj4gQW1pci4N
Cj4gDQo+ICAgbWFuMi9mYW5vdGlmeV9tYXJrLjIgfCA1MCArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKw0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA1MCBpbnNl
cnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuMi9mYW5vdGlmeV9tYXJrLjIgYi9t
YW4yL2Zhbm90aWZ5X21hcmsuMg0KPiBpbmRleCAyNjk2YTgwM2EuLjc1N2FkOTE1OSAxMDA2
NDQNCj4gLS0tIGEvbWFuMi9mYW5vdGlmeV9tYXJrLjINCj4gKysrIGIvbWFuMi9mYW5vdGlm
eV9tYXJrLjINCj4gQEAgLTE1Myw2ICsxNTMsNDQgQEAgSWYgdGhpcyBmbGFnIGlzIG5vdCBz
ZXQsDQo+ICAgdGhlIGlnbm9yZSBtYXNrIGlzIGNsZWFyZWQgd2hlbiBhIG1vZGlmeSBldmVu
dCBvY2N1cnMNCj4gICBmb3IgdGhlIGlnbm9yZWQgZmlsZSBvciBkaXJlY3RvcnkuDQo+ICAg
LlBQDQo+ICsuVFANCg0KLlBQIGZvbGxvd2VkIGJ5IGFub3RoZXIgcGFyYWdyYXBoIG1hY3Jv
IGlzIGEgbm8tb3AuICBSZW1vdmUgLlBQIGFib3ZlLg0KDQpDaGVjayB0aGUgJ1BhcmFncmFw
aCBtYWNyb3MnIHN1YnNlY3Rpb24gaW4gZ3JvZmZfbWFuKDcpIGZvciBtb3JlIGRldGFpbHMu
DQoNCiQgbWFuIGdyb2ZmX21hbg0KL14uLi5QYXJhZ3JhcGggbWFjcm9zDQoNCj4gKy5CUiBG
QU5fTUFSS19FVklDVEFCTEUgIiAoc2luY2UgTGludXggNS4xOSkiDQo+ICsuXCIgY29tbWl0
IDVmOWQzYmQ1MjAyNjFmZDdhODUwODE4YzcxODA5ZmQ1ODBlMGYzMGMNCj4gK1doZW4gYW4g
aW5vZGUgbWFyayBpcyBjcmVhdGVkIHdpdGggdGhpcyBmbGFnLA0KPiArdGhlIGlub2RlIG9i
amVjdCB3aWxsIG5vdCBiZSBwaW5uZWQgdG8gdGhlIGlub2RlIGNhY2hlLg0KPiArVGhlcmVm
b3JlLCBhbGxvd2luZyB0aGUgaW5vZGUgb2JqZWN0IHRvIGJlIGV2aWN0ZWQgZnJvbSB0aGUg
aW5vZGUgY2FjaGUNCg0KSSB0aGluayAnVGhlcmVmb3JlJyBzaG91bGQgY29udGludWUgdGhl
IGxhc3Qgc2VudGVuY2UgYW5kIGJlIHNlcGFyYXRlZCANCmJ5ICcsJyBvciAnOycgaW5zdGVh
ZCBvZiAnLicsIGFuZCBwb3NzaWJseSByZW1vdmluZyB0aGUgJywnIGFmdGVyIGl0Lg0KDQo+
ICt3aGVuIHRoZSBtZW1vcnkgcHJlc3N1cmUgb24gdGhlIHN5c3RlbSBpcyBoaWdoLg0KPiAr
VGhlIGV2aWN0aW9uIG9mIHRoZSBpbm9kZSBvYmplY3QgcmVzdWx0cyBpbiB0aGUgZXZpY3Rh
YmxlIG1hcmsgYWxzbw0KPiArYmVpbmcgbG9zdC4NCg0KUGxlYXNlIHJld3JhcCB0aGUgc2Vu
dGVuY2UgYWJvdmUgYWNjb3JkaW5nIHRvIHNlbWFudGljIG5ld2xpbmVzLg0KDQptYW4tcGFn
ZXMoNyk6DQogICAgVXNlIHNlbWFudGljIG5ld2xpbmVzDQogICAgICAgIEluIHRoZSBzb3Vy
Y2Ugb2YgYSBtYW51YWwgcGFnZSwgbmV3IHNlbnRlbmNlcyAgc2hvdWxkICBiZQ0KICAgICAg
ICBzdGFydGVkIG9uIG5ldyBsaW5lcywgbG9uZyBzZW50ZW5jZXMgc2hvdWxkIGJlIHNwbGl0
IGludG8NCiAgICAgICAgbGluZXMgIGF0ICBjbGF1c2UgYnJlYWtzIChjb21tYXMsIHNlbWlj
b2xvbnMsIGNvbG9ucywgYW5kDQogICAgICAgIHNvIG9uKSwgYW5kIGxvbmcgY2xhdXNlcyBz
aG91bGQgYmUgc3BsaXQgYXQgcGhyYXNlIGJvdW5k4oCQDQogICAgICAgIGFyaWVzLiAgVGhp
cyBjb252ZW50aW9uLCAgc29tZXRpbWVzICBrbm93biAgYXMgICJzZW1hbnRpYw0KICAgICAg
ICBuZXdsaW5lcyIsICBtYWtlcyBpdCBlYXNpZXIgdG8gc2VlIHRoZSBlZmZlY3Qgb2YgcGF0
Y2hlcywNCiAgICAgICAgd2hpY2ggb2Z0ZW4gb3BlcmF0ZSBhdCB0aGUgbGV2ZWwgb2YgaW5k
aXZpZHVhbCBzZW50ZW5jZXMsDQogICAgICAgIGNsYXVzZXMsIG9yIHBocmFzZXMuDQoNCg0K
PiArV2hlbiB0aGUgbWFzayBvZiBhbiBldmljdGFibGUgaW5vZGUgbWFyayBpcyB1cGRhdGVk
DQo+ICt3aXRob3V0IHVzaW5nIHRoZQ0KPiArLkIgRkFOX01BUktfRVZJQ0FUQkxFDQo+ICtm
bGFnLA0KPiArdGhlIG1hcmtlZCBpbm9kZSBpcyBwaW5uZWQgdG8gaW5vZGUgY2FjaGUNCj4g
K2FuZCB0aGUgbWFyayBpcyBubyBsb25nZXIgZXZpY3RhYmxlLg0KPiArV2hlbiB0aGUgbWFz
ayBvZiBhIG5vbi1ldmljdGFibGUgaW5vZGUgbWFyayBpcyB1cGRhdGVkDQo+ICt3aXRoIHRo
ZQ0KPiArLkIgRkFOX01BUktfRVZJQ1RBQkxFDQo+ICtmbGFnLA0KPiArdGhlIGlub2RlIG1h
cmsgcmVtYWlucyBub24tZXZpY3RhYmxlDQo+ICthbmQgdGhlIHVwZGF0ZSBmYWlscyB3aXRo
DQo+ICsuQiBFRVhJU1QNCj4gK2Vycm9yLg0KPiArTW91bnRzIGFuZCBmaWxlc3lzdGVtcyBh
cmUgbm90IGV2aWN0YWJsZSwNCj4gK3NvIGFuIGF0dGVtcHQgdG8gY3JlYXRlIGFuIGV2aWN0
YWJsZSBtb3VudCBvciBmaWxlc3lzdGVtIG1hcmsNCj4gK3dpbGwgcmVzdWx0cyB3aXRoDQoN
ClNvbWUgcmV3b3JkaW5nIG5lZWRlZCBuaSB0aGUgc2VudGVuY2UgYWJvdmUuDQoNCj4gKy5C
IEVJTlZBTA0KPiArZXJyb3IuDQo+ICtGb3IgZXhhbXBsZSwNCj4gK2lub2RlIG1hcmtzIGNh
biBiZSB1c2VkIGluIGNvbWJpbmF0aW9uIHdpdGggbW91bnQgbWFya3MNCj4gK3RvIHJlZHVj
ZSB0aGUgYW1vdW50IG9mIGV2ZW50cyBmcm9tIG5vbmludGVyZXN0aW5nIHBhdGhzLg0KPiAr
VGhlIGV2ZW50IGxpc3RlbmVyIHJlYWRzIGV2ZW50cywNCj4gK2NoZWNrcyBpZiB0aGUgcGF0
aCByZXBvcnRlZCBpbiB0aGUgZXZlbnQgaXMgb2YgaW50ZXJlc3QNCg0Kcy8kLywvDQoNCj4g
K2FuZCBpZiBpdCBpcyBub3QsDQo+ICt0aGUgbGlzdGVuZXIgc2V0cyBhIG1hcmsgd2l0aCBh
biBpZ25vcmUgbWFzayBvbiB0aGUgZGlyZWN0b3J5Lg0KPiArRXZpY3RhYmxlIGlub2RlIG1h
cmtzIGFsbG93IHVzaW5nIHRoaXMgbWV0aG9kIGZvciBhIGxhcmdlIG51bWJlciBvZiBkaXJl
Y3Rvcmllcw0KPiArd2l0aG91dCB0aGUgY29uY2VybiBvZiBwaW5uaW5nIGFsbCBpbm9kZXMg
YW5kIGV4aGF1c3RpbmcgdGhlIHN5c3RlbSdzIG1lbW9yeS4NCj4gKy5QUA0KPiAgIC5JIG1h
c2sNCj4gICBkZWZpbmVzIHdoaWNoIGV2ZW50cyBzaGFsbCBiZSBsaXN0ZW5lZCBmb3IgKG9y
IHdoaWNoIHNoYWxsIGJlIGlnbm9yZWQpLg0KPiAgIEl0IGlzIGEgYml0IG1hc2sgY29tcG9z
ZWQgb2YgdGhlIGZvbGxvd2luZyB2YWx1ZXM6DQo+IEBAIC00MDksNiArNDQ3LDE4IEBAIGlz
IG5laXRoZXINCj4gICAuQiBBVF9GRENXRA0KPiAgIG5vciBhIHZhbGlkIGZpbGUgZGVzY3Jp
cHRvci4NCj4gICAuVFANCj4gKy5CIEVFWElTVA0KPiArVGhlIGZpbGVzeXN0ZW0gb2JqZWN0
IGluZGljYXRlZCBieQ0KPiArLkkgZGlyZmQNCj4gK2FuZA0KPiArLkkgcGF0aG5hbWUNCj4g
K2hhcyBhIG1hcmsgdGhhdCB3YXMgdXBkYXRlZCB3aXRob3V0IHRoZQ0KPiArLkIgRkFOX01B
UktfRVZJQ1RBQkxFDQo+ICtmbGFnLA0KPiArYW5kIHRoZSB1c2VyIGF0dGVtcHRlZCB0byB1
cGRhdGUgdGhlIG1hcmsgd2l0aA0KPiArLkIgRkFOX01BUktfRVZJQ1RBQkxFDQo+ICtmbGFn
Lg0KPiArLlRQDQo+ICAgLkIgRUlOVkFMDQo+ICAgQW4gaW52YWxpZCB2YWx1ZSB3YXMgcGFz
c2VkIGluDQo+ICAgLkkgZmxhZ3MNCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6
Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------ZYKX5YX6HE6E0DCKDbTGUcvU--

--------------0kvcYtsWdRCI2EVCPQzn0s0G
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMWV6IACgkQnowa+77/
2zKi5w//Z3Ta6b8SgArCWe8VT+01fbHT4vd2or9EOU2GW6P45ypSKJYuDps8YA2B
wax1GN3DIJ6S261zO9s35nU4RfWs7bo/dXb60r0VCfNXwQgsNwY/5IQlxuK+ss6S
eVRQldkB1qfRUQjZYtRIZN8wM1F7PGv76WIV0obzP622tdUVyvukmbEBuLYuWqLx
R32ojiiX/JkdwFodzIG20YKsLbw+aHvRaFkaO5cIdTue9IN6EltbHWPhBn8OhKsY
g1YORHOzjWRVtMVD/jfIP8zobkW3x9oJrmrIkglyLG0K6V/Z7MZeSgbAWoJECfPj
Z15qVgY3hLkKib7HVDsa1GG9YEGe1d/TW0fqhOC7qmqigcuy3L5uPWDcEKXK/pST
ZUeV/ekrAri/yHQ0VfMuP8yqZcI25KPMvf4TH4FJt9zS44yA3NJfPXlySR+//1Ww
Zodwl+3Ot7+tyVksX49SSfquab3cndUOZd0JcuI2tKVApI9b7IAPH0TT3WGoSz3W
LsCUcO/i3hXDgoTBaHj5g98XPVNDZaIOgbfI5sFlM7SinTPy73w0HJ8OBgSS5ZUi
eZQ+cXWU9zT65T4AXak253y5aQWvs/cL4tz3WuG9vmXkQkIhXiJz1x2XDGqX7mmw
q/GlpsS958aZrBg3ZJZRvzHZwJEZN1DB72eHQV18SQLf4MkovJk=
=5YB/
-----END PGP SIGNATURE-----

--------------0kvcYtsWdRCI2EVCPQzn0s0G--
