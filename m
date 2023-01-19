Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53769673A93
	for <lists+linux-man@lfdr.de>; Thu, 19 Jan 2023 14:41:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230221AbjASNl3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Jan 2023 08:41:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230415AbjASNlD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Jan 2023 08:41:03 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDBB278A97;
        Thu, 19 Jan 2023 05:41:01 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id r30so1884694wrr.10;
        Thu, 19 Jan 2023 05:41:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q7tf/64pt5h3sRRL1VbBas7gdMr2Jr8DLRwlE6SL4JI=;
        b=mNxbqf1RLqZYqU+tsFpifliKDwpcSsf+gRyWX3AHzFxhLjVj8Z8J0RhP6JYheZAmhR
         9VUY44w0s4A+p+qi8iFiRPaUlxbYm/+UBYI+TglaD8m9VFoOq6iBsVhqZvzNoHe6OkYW
         pSFGqCXtak234+/i2G1QLIDpicnDkl4oJGS6joM8i/eSsYAAUPrZhVNm96jgTbKFOVj8
         ecLfOTgK9gl7G/gOXd16+HxGWcHnovQTLLgtdpOVOt30Rcsj/5VtLyHKacGlZTTjxfs3
         658DcNMx4x1IB7kOf1C9E9ra2kGg3puD651Mrk76pYAUkiyuih/D3mteoxQwMB+Qtnyk
         3f6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q7tf/64pt5h3sRRL1VbBas7gdMr2Jr8DLRwlE6SL4JI=;
        b=7X4W5pHCRTZwexWSaj6sV0IUuofsmayC2CzkkWIPx5hiYZV+j4m08evipFETlNRpvI
         ijJKC+maqZ6Q2TC8rnhxvJOtolGWogxnUfRsffwNqA4WY5ldyUiDh6Q24+QadyQJYeb9
         y96GsKy0zFbS7k0K2HHjhrxIiWv5/AYf9rVhT6jAdze5OU5D41yJjqL372d7eq4Cvo1b
         1g4DRkzFNuJzEjsVf8o0IsTuzysjdazi+MCALlucoocBlilg5A6IypZKbIwkbOSmIpkW
         ATlJypBrqfJSzak1yedXb5S5E2T64Uhyylp3bfDVEE3NEffUPvQqxZ6BppSbNYmHz26D
         EnkA==
X-Gm-Message-State: AFqh2kr/yHVB/NgKTb9q5wbq6FrLlQiM33GCYQkRllLz8Y+s0nIB7MC7
        r1X2E+TNGWBDHiaKT2LaY8k=
X-Google-Smtp-Source: AMrXdXvHI6EZPfGK3UOjArxmqRgU3/7rgKVCeCf0+/DubUqUCLP+VCWeM64g7cC3W7FujNhxlN1Usg==
X-Received: by 2002:a5d:59c3:0:b0:2be:1535:e5b3 with SMTP id v3-20020a5d59c3000000b002be1535e5b3mr11395446wry.41.1674135660343;
        Thu, 19 Jan 2023 05:41:00 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l4-20020a05600012c400b002bbb2d43f65sm30689802wrx.14.2023.01.19.05.40.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jan 2023 05:40:59 -0800 (PST)
Message-ID: <fae3dd39-f86d-97d9-ff9f-d03686cf820d@gmail.com>
Date:   Thu, 19 Jan 2023 14:40:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3] perf_event_open.2: Update recent changes
Content-Language: en-US
To:     Namhyung Kim <namhyung@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Jiri Olsa <jolsa@kernel.org>,
        Alexei Starovoitov <ast@kernel.org>,
        Marco Elver <elver@google.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Kan Liang <kan.liang@linux.intel.com>,
        Stephane Eranian <eranian@google.com>,
        linux-perf-users@vger.kernel.org,
        Namhyung Kim <namhyung@kernel.org>
References: <20230117080846.588289-1-namhyung@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230117080846.588289-1-namhyung@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5Nrs14p3W8iZIFoFMaUEs7KE"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------5Nrs14p3W8iZIFoFMaUEs7KE
Content-Type: multipart/mixed; boundary="------------8kS1kQQvM9TQSFSqrYK4moow";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Namhyung Kim <namhyung@gmail.com>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Jiri Olsa <jolsa@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Marco Elver <elver@google.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Kan Liang <kan.liang@linux.intel.com>, Stephane Eranian
 <eranian@google.com>, linux-perf-users@vger.kernel.org,
 Namhyung Kim <namhyung@kernel.org>
Message-ID: <fae3dd39-f86d-97d9-ff9f-d03686cf820d@gmail.com>
Subject: Re: [PATCH v3] perf_event_open.2: Update recent changes
References: <20230117080846.588289-1-namhyung@gmail.com>
In-Reply-To: <20230117080846.588289-1-namhyung@gmail.com>

--------------8kS1kQQvM9TQSFSqrYK4moow
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTmFtaHl1bmcsDQoNCk9uIDEvMTcvMjMgMDk6MDgsIE5hbWh5dW5nIEtpbSB3cm90ZToN
Cj4gRnJvbTogTmFtaHl1bmcgS2ltIDxuYW1oeXVuZ0BrZXJuZWwub3JnPg0KPiANCj4gQWRk
IG1pc3NpbmcgcGVyZl9ldmVudF9hdHRyIGZpZWxkcywgbmV3IGV2ZW50IGNvZGVzIGFuZCBz
YW1wbGUgdHlwZS4NCj4gQWxzbyBhZGQgZGVzY3JpcHRpb25zIGZvciBQRVJGX0ZPUk1BVF9M
T1NULg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTmFtaHl1bmcgS2ltIDxuYW1oeXVuZ0BrZXJu
ZWwub3JnPg0KDQpUaGFua3MhICBKdXN0IGEgbWlub3IgcXVlc3Rpb24uDQoNCj4gLS0tDQo+
ICAgbWFuMi9wZXJmX2V2ZW50X29wZW4uMiB8IDIwMSArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKystLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxOTMgaW5zZXJ0aW9u
cygrKSwgOCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4yL3BlcmZfZXZl
bnRfb3Blbi4yIGIvbWFuMi9wZXJmX2V2ZW50X29wZW4uMg0KPiBpbmRleCA4ZTk0ZmI0YWMu
LjA1ZjA2Y2Y2OCAxMDA2NDQNCj4gLS0tIGEvbWFuMi9wZXJmX2V2ZW50X29wZW4uMg0KPiAr
KysgYi9tYW4yL3BlcmZfZXZlbnRfb3Blbi4yDQpbLi4uXQ0KDQo+IEBAIC0yNzA0LDYgKzI4
ODEsMTQgQEAgaXMgdGhlIGlub2RlIG51bWJlci4NCj4gICAuSSBpbm9fZ2VuZXJhdGlvbg0K
PiAgIGlzIHRoZSBpbm9kZSBnZW5lcmF0aW9uLg0KPiAgIC5UUA0KPiArLkkgYnVpbGRfaWRf
c2l6ZQ0KPiAraXMgdGhlIGFjdHVhbCBzaXplIG9mDQo+ICsuSSBidWlsZF9pZA0KPiArZmll
bGQgKHVwIHRvIDIwKS4NCg0KRG8gd2Ugd2FudCB0byBkb2N1bWVudCB0aGlzIGxpbWl0PyAg
SXMgaXQgc29tZSBjb250cmFjdCB0aGF0IHdlIHdhbnQgdG8gb2ZmZXIgdG8gDQp1c2Vycz8g
IE9yIGlzIGl0IGp1c3QgYW4gaW1wbGVtZW50YXRpb24gZGV0YWlsIHRoYXQgbWlnaHQgY2hh
bmdlPw0KDQo+ICsuVFANCj4gKy5JIGJ1aWxkX2lkDQo+ICtpcyBhIHJhdyBkYXRhIHRvIGlk
ZW50aWZ5IGEgYmluYXJ5Lg0KPiArLlRQDQo+ICAgLkkgcHJvdA0KPiAgIGlzIHRoZSBwcm90
ZWN0aW9uIGluZm9ybWF0aW9uLg0KPiAgIC5UUA0KDQpBcGFydCBmcm9tIHRoYXQsIEknbGwg
YXBwbHkgdGhlIGZvbGxvd2luZyBjb3NtZXRpYyBjaGFuZ2VzIHRvIHlvdXIgcGF0Y2gsIGlm
IHlvdSANCmFncmVlLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0tDQoNCmRpZmYgLS1naXQg
YS9tYW4yL3BlcmZfZXZlbnRfb3Blbi4yIGIvbWFuMi9wZXJmX2V2ZW50X29wZW4uMg0KaW5k
ZXggMDVmMDZjZjY4Li5hYmZhNTllZmEgMTAwNjQ0DQotLS0gYS9tYW4yL3BlcmZfZXZlbnRf
b3Blbi4yDQorKysgYi9tYW4yL3BlcmZfZXZlbnRfb3Blbi4yDQpAQCAtOTE4LDIxICs5MTgs
MjIgQEAgLlNTIEFyZ3VtZW50cw0KICBSZWNvcmRzIGhhcmR3YXJlIHByb3ZpZGVkIHdlaWdo
dCB2YWx1ZXMgbGlrZSBpbg0KICAuQlIgUEVSRl9TQU1QTEVfV0VJR0hUICwNCiAgYnV0IGl0
IGNhbiByZXByZXNlbnQgbXVsdGlwbGUgdmFsdWVzIGluIGEgc3RydWN0Lg0KLVRoaXMgc2hh
cmVzIHRoZSBzYW1lIHNwYWNlIGFzIHRoZQ0KK1RoaXMgc2hhcmVzIHRoZSBzYW1lIHNwYWNl
IGFzDQogIC5CUiBQRVJGX1NBTVBMRV9XRUlHSFQgLA0KLXNvIHVzZXJzIGNhbiBhcHBseSBl
aXRoZXIgb2YgdGhvc2UsIG5vdCB0aGUgYm90aC4NCi1XaGVuIHVzZWQsIGl0IHdvdWxkIGhh
dmUgdGhlIGZvbGxvd2luZyBmb3JtYXQgYW5kDQotdGhlIG1lYW5pbmcgb2YgZWFjaCBmaWVs
ZHMgaXMgZGVwZW5kZW50IHRvIHRoZQ0KLWhhcmR3YXJlIGltcGxlbWVudGF0aW9uLg0KK3Nv
IHVzZXJzIGNhbiBhcHBseSBlaXRoZXIgb2YgdGhvc2UsDQorbm90IGJvdGguDQorSXQgaGFz
IHRoZSBmb2xsb3dpbmcgZm9ybWF0IGFuZA0KK3RoZSBtZWFuaW5nIG9mIGVhY2ggZmllbGRz
IGlzDQorZGVwZW5kZW50IG9uIHRoZSBoYXJkd2FyZSBpbXBsZW1lbnRhdGlvbi4NCiAgLlBQ
DQogIC5pbiArNG4NCiAgLkVYDQogIHVuaW9uIHBlcmZfc2FtcGxlX3dlaWdodCB7DQotICAg
IHU2NCAgICBmdWxsOyAgICAgICAgIC8qIFBFUkZfU0FNUExFX1dFSUdIVCAqLw0KKyAgICB1
NjQgIGZ1bGw7ICAgICAgICAgICAvKiBQRVJGX1NBTVBMRV9XRUlHSFQgKi8NCiAgICAgIHN0
cnVjdCB7ICAgICAgICAgICAgIC8qIFBFUkZfU0FNUExFX1dFSUdIVF9TVFJVQ1QgKi8NCi0g
ICAgICAgIHUzMiAgICB2YXIxX2R3Ow0KLSAgICAgICAgdTE2ICAgIHZhcjJfdzsNCi0gICAg
ICAgIHUxNiAgICB2YXIzX3c7DQorICAgICAgICB1MzIgIHZhcjFfZHc7DQorICAgICAgICB1
MTYgIHZhcjJfdzsNCisgICAgICAgIHUxNiAgdmFyM193Ow0KICAgICAgfTsNCiAgfTsNCiAg
LkVFDQpAQCAtMTMzNywxNSArMTMzOCwxNSBAQCAuU1MgQXJndW1lbnRzDQogIC5JUiBpbmhl
cml0X3RocmVhZCAiIChzaW5jZSBMaW51eCA1LjEzKSINCiAgLlwiIGNvbW1pdCAyYjI2ZjBh
YTAwNDk5NWY0OWY3YjZmNDEwMGRkMGU0YzM5YTllZDVmDQogIFRoaXMgZGlzYWJsZXMgdGhl
IGluaGVyaXRhbmNlIG9mIHRoZSBldmVudCB0byBhIGNoaWxkIHByb2Nlc3MuDQotT25seSBu
ZXcgdGhyZWFkcyBpbiB0aGUgc2FtZSBwcm9jZXNzICh3aGljaCBpcyBjbG9uZWQgd2l0aA0K
K09ubHkgbmV3IHRocmVhZHMgaW4gdGhlIHNhbWUgcHJvY2Vzcw0KKyh3aGljaCBpcyBjbG9u
ZWQgd2l0aA0KICAuQlIgQ0xPTkVfVEhSRUFEICkNCiAgd2lsbCBpbmhlcml0IHRoZSBldmVu
dC4NCiAgLlRQDQogIC5JUiByZW1vdmVfb25fZXhlYyAiIChzaW5jZSBMaW51eCA1LjEzKSIN
CiAgLlwiIGNvbW1pdCAyZTQ5OGQwYTc0ZTViODhhNjY4OWFlMWI4MTFmMjQ3ZjkxZmYxODhl
DQogIFRoaXMgY2xvc2VzIHRoZSBldmVudCB3aGVuIGl0IHN0YXJ0cyBhIG5ldyBwcm9jZXNz
IGltYWdlIGJ5DQotLkJSIGV4ZWN2ZSAoMikNCi1zeXN0ZW0gY2FsbC4NCisuQlIgZXhlY3Zl
ICgyKS4NCiAgLlRQDQogIC5JUiBzaWd0cmFwICIgKHNpbmNlIExpbnV4IDUuMTMpIg0KICAu
XCIgY29tbWl0IDk3YmE2MmIyNzg2NzQyOTM3NjJjM2Q5MWY3MjRmMWJiOTIyZjA0ZTANCkBA
IC0xNTY4LDEyICsxNTY5LDE0IEBAIC5TUyBBcmd1bWVudHMNCiAgLlwiIGNvbW1pdCBhNGZh
ZjAwZDk5NGM0MGU2NGY2NTY4MDVhYzM3NWM2NWUzMjRlZWZiDQogIFdoZW4NCiAgLkIgUEVS
Rl9TQU1QTEVfQVVYDQotZmxhZyBpcyBzZXQsIHNwZWNpZnkgdGhlIGRlc2lyZWQgc2l6ZSBv
ZiBBVVggZGF0YS4NCitmbGFnIGlzIHNldCwNCitzcGVjaWZ5IHRoZSBkZXNpcmVkIHNpemUg
b2YgQVVYIGRhdGEuDQogIE5vdGUgdGhhdCBpdCBjYW4gZ2V0IHNtYWxsZXIgZGF0YSB0aGFu
IHRoZSBzcGVjaWZpZWQgc2l6ZS4NCiAgLlRQDQogIC5JUiBzaWdfZGF0YSAiIChzaW5jZSBM
aW51eCA1LjEzKSINCiAgLlwiIGNvbW1pdCA5N2JhNjJiMjc4Njc0MjkzNzYyYzNkOTFmNzI0
ZjFiYjkyMmYwNGUwDQotVGhpcyBkYXRhIHdpbGwgYmUgY29waWVkIHRvIHVzZXIncyBzaWdu
YWwgaGFuZGxlciAodGhyb3VnaA0KK1RoaXMgZGF0YSB3aWxsIGJlIGNvcGllZCB0byB1c2Vy
J3Mgc2lnbmFsIGhhbmRsZXINCisodGhyb3VnaA0KICAuSSBzaV9wZXJmDQogIGluIHRoZQ0K
ICAuSVIgc2lnaW5mb190ICkNCkBAIC0xNjYyLDcgKzE2NjUsOCBAQCAuU1MgUmVhZGluZyBy
ZXN1bHRzDQogIC5JUiByZWFkX2Zvcm1hdCAuDQogIC5UUA0KICAuSSBsb3N0DQotVGhlIG51
bWJlciBvZiBsb3N0IHNhbXBsZXMgb2YgdGhpcyBldmVudDsgb25seSBwcmVzZW50IGlmDQor
VGhlIG51bWJlciBvZiBsb3N0IHNhbXBsZXMgb2YgdGhpcyBldmVudDsNCitvbmx5IHByZXNl
bnQgaWYNCiAgLkIgUEVSRl9GT1JNQVRfTE9TVA0KICB3YXMgc3BlY2lmaWVkIGluDQogIC5J
UiByZWFkX2Zvcm1hdCAuDQpAQCAtMjEyMyw4ICsyMTI3LDggQEAgLlNTIE1NQVAgbGF5b3V0
DQogIC5CIFBFUkZfUkVDT1JEX1NXSVRDSA0KICBvcg0KICAuQiBQRVJGX1JFQ09SRF9TV0lU
Q0hfQ1BVX1dJREUNCi1yZWNvcmQgaXMgZ2VuZXJhdGVkLCB0aGlzIGluZGljYXRlcyB0aGUg
Y29udGV4dCBzd2l0Y2gNCi13YXMgYSBwcmVlbXB0aW9uLg0KK3JlY29yZCBpcyBnZW5lcmF0
ZWQsDQordGhpcyBpbmRpY2F0ZXMgdGhlIGNvbnRleHQgc3dpdGNoIHdhcyBhIHByZWVtcHRp
b24uDQogIC5UUA0KICAuQlIgUEVSRl9SRUNPUkRfTUlTQ19NTUFQX0JVSUxEX0lEICIgKHNp
bmNlIExpbnV4IDUuMTIpIg0KICAuXCIgY29tbWl0IDg4YTE2YTEzMDkzMzNlNDNkMzI4NjIx
ZWNlM2U5ZmEzNzAyN2U4ZWINCkBAIC0yODA0LDEwICsyODA4LDExIEBAIC5TUyBNTUFQIGxh
eW91dA0KICAuVFANCiAgLkkgc2l6ZQ0KICAuVFENCi0uSVIgZGF0YSBbc2l6ZV0NCisuSVIg
ZGF0YSBbIHNpemUgXQ0KICBJZg0KICAuQiBQRVJGX1NBTVBMRV9BVVgNCi1pcyBlbmFibGVk
LCB0aGVuIGEgc25hcHNob3Qgb2YgdGhlIGF1eCBidWZmZXIgaXMgcmVjb3JkZWQuDQoraXMg
ZW5hYmxlZCwNCithIHNuYXBzaG90IG9mIHRoZSBhdXggYnVmZmVyIGlzIHJlY29yZGVkLg0K
ICAuUkUNCiAgLlRQDQogIC5CIFBFUkZfUkVDT1JEX01NQVAyDQpAQCAtMjgyMCw3ICsyODI1
LDggQEAgLlNTIE1NQVAgbGF5b3V0DQogIHNoYXJlZCBtYXBwaW5ncy4NCiAgRGVwZW5kaW5n
IG9uIHRoZQ0KICAuQiBQRVJGX1JFQ09SRF9NSVNDX01NQVBfQlVJTERfSUQNCi1iaXQgaW4g
dGhlIGhlYWRlciwgdGhlIGV4dHJhIHZhbHVlcyBoYXZlIGRpZmZlcmVudCBsYXlvdXQgYW5k
IG1lYW5pbmdzLg0KK2JpdCBpbiB0aGUgaGVhZGVyLA0KK3RoZSBleHRyYSB2YWx1ZXMgaGF2
ZSBkaWZmZXJlbnQgbGF5b3V0IGFuZCBtZWFuaW5ncy4NCiAgLklQDQogIC5pbiArNG4NCiAg
LkVYDQoNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------8kS1kQQvM9TQSFSqrYK4moow--

--------------5Nrs14p3W8iZIFoFMaUEs7KE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPJSFgACgkQnowa+77/
2zI1qQ/9FQFO3BZjKV1Z9giW60ZMuSMytenhxu70rLKFT/hUwDeD4m+ZH2FxsdpR
DTrrOwjyo23qCMrH++w8dRKUa5zn2xa+MMdL5g912da/4+0PyyrXZoAZN2jDrvG8
L4z4y3bhwnFWuAUUy+H/ca0ATnJS5E8qbsoRLtCR0j+VJKXDhINYlcHjO3dexmuW
kVl/vuRR4pHI3yVDX5BUFXRLUKilQ2KDGsrpo3ow3saMbXLo5t9IS2FdhqcICk6e
uXRO8MUz6+BdNZ35OU4QSBVmxrb+iPETe5Jqncp/um4v4hPhOd69YDS/LHaP84+e
s2RDzpFW/vpME+734e9TWjqrbG7PZoEB42V0XVsxYARuovou/k2wylV9NaqpeZuj
fSVb5kMPfUyxz7abXM5mOkCBLTGHbjYKBuF2hliZL9FaHjBnbDcmJDxhR0YjsFhO
JB2xWkU7PysyIcWc3Qqp1qxSGVLR3N6mwJ1c4nBaNrV8idJSMaj5Lk4DVeETEx2W
OlQW+Oe37OFvfp+RLCwOtj5peZPkkQXSus/7aDyxCZN71Su/lXtZWXsOSdezmBM8
dV33FSqrZuVuhuHZf+vJiC4UBWXD94rrbYsqB2jA/cSUgJ51I0CvclaTJgel52b2
e9thtXHxWLTKKpjuP5wYKHwvmTAQkGnVvTsPV4ykFhCC3isn/IE=
=oaMn
-----END PGP SIGNATURE-----

--------------5Nrs14p3W8iZIFoFMaUEs7KE--
