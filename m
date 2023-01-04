Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFC0C65DC5A
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 19:50:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239739AbjADSuG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 13:50:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235020AbjADSuF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 13:50:05 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B4221C407
        for <linux-man@vger.kernel.org>; Wed,  4 Jan 2023 10:50:04 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id ay40so26383611wmb.2
        for <linux-man@vger.kernel.org>; Wed, 04 Jan 2023 10:50:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2M3EBUTpSvnkq9RN4bxEwuKMIwd4+LnyDtNlS7Q0xvc=;
        b=gs7CdJB12LRzoZZH0eTN5/gWpmzKflB8k/OqCP2Gn2CWz6o08EzpSX5KoWXSuUtZRr
         okO9LNZ4Zp1VntzMOp4KgmR9su66IB7Pf/NXdK562EUK/HputNTPIprwjo+aQLEB9QCU
         eE0raYwSAFWYEJiNVoGNGxB4POxFLmTrjndxSyHI/gkff1hyd4ie4+3Nz2n2gyDFSP5v
         8DY8l5/Mwr1juSxnOV8d5F8/h81kYTGYHpN1NW3IUARkculirw/R8jU7GtCz+/vYc79o
         cuYnAzFaT3BrS8JQUvEbQKmjPCHOjs6b97vuG17ZQuwLLPBzE0xgYx0jU/T+chxopJIQ
         iaGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2M3EBUTpSvnkq9RN4bxEwuKMIwd4+LnyDtNlS7Q0xvc=;
        b=f0aDFcCJ7tiy9I2tMT8VKqAiM4MydLKLjQXK2wuoYK15yS7ORBie5pfl8IQyBjaFP1
         7M3G6aWGpWgaQ+xtPyPOCAjHuXCXTyl85YdCGz8Omn9hnMqu6HlZnK5boprxgso2F3MT
         W+W+Z7z0VBqU4rrh+QtvrqNGxlMLydsMT2jCjNYmuxZVdVifanFEjR0bkQhpjVHO6Swj
         skh3ZjiZm3sh2LLZmB+kBRC5scv6QavhlczTQCLQqT2s6AS6Fpxj2caACOPVm7hLbZbt
         D6kEYt8KYHtCNrEyaUgnXySJtjSCSz18gVWo20S0ooVf/G/Bhqbh1y8M6POZWi/OzQCD
         1Y3g==
X-Gm-Message-State: AFqh2kqofERQmqYVlRA6vZ+8CEKhOiQlN9eOAIgOmwEUopdBh62C+9uv
        jU7DJg95KVpWkmEx4PkDQMI=
X-Google-Smtp-Source: AMrXdXvQrbhv+EnV3gQlpuDPTBlvo6qU9txfpFeNE1HYNtHzqfhw39mWWycCl8ffnLgWE5IuH6JXuw==
X-Received: by 2002:a7b:c449:0:b0:3d1:e1f4:21dc with SMTP id l9-20020a7bc449000000b003d1e1f421dcmr34785413wmi.14.1672858202629;
        Wed, 04 Jan 2023 10:50:02 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j20-20020a05600c191400b003b4fe03c881sm58900338wmq.48.2023.01.04.10.50.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jan 2023 10:50:02 -0800 (PST)
Message-ID: <f5b81092-fb68-d57c-0686-c1b3e482f35b@gmail.com>
Date:   Wed, 4 Jan 2023 19:50:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 2/9] ldconfig.8: Fix style nits
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230104073851.h6kg265ev5v4gmjl@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230104073851.h6kg265ev5v4gmjl@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------4tJ5CUhy0oe7yGaDeOiy05hO"
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------4tJ5CUhy0oe7yGaDeOiy05hO
Content-Type: multipart/mixed; boundary="------------S20zL51pw4acojDssS65kIiR";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <f5b81092-fb68-d57c-0686-c1b3e482f35b@gmail.com>
Subject: Re: [PATCH 2/9] ldconfig.8: Fix style nits
References: <20230104073851.h6kg265ev5v4gmjl@illithid>
In-Reply-To: <20230104073851.h6kg265ev5v4gmjl@illithid>

--------------S20zL51pw4acojDssS65kIiR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEvNC8yMyAwODozOCwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3cm90ZTo+ICogU2V0
IGBUSGAgcGFnZSB0aXRsZSBpbiANCmxvd2VyY2FzZS4+ICogSW4gc3lub3BzZXMsIHNldCBl
bGxpcHNlcyBhcyBzZXBhcmF0ZSAib3BlcmFuZHMiIHRvIGJldHRlciANCnN1Z2dlc3Q+ICAg
IGFyZ3VtZW50IHNlcGFyYXRpb24gYnkgd2hpdGUgc3BhY2UuDQpQbGVhc2UgZXhwbGFpbiB0
aGlzIGJldHRlciB0byBtZS4gIE1heWJlIGFuIGV4YW1wbGUgZGlmZmVyZW5jZT8NCg0KPiAq
IEluIHN5bm9wc2VzLCBwcmV2ZW50IGJyZWFrcyB3aXRoaW4gb3B0aW9uIGJyYWNrZXRzLg0K
PiAqIFR5cGVzZXQgZWxsaXBzZXMgbW9yZSBhdHRyYWN0aXZlbHkgb24gdHJvZmYgZGV2aWNl
cy4NCj4gKiBTb3J0IG9wdGlvbiBmbGFncyBpbiBFbmdsaXNoIGxleGljb2dyYXBoaWMgb3Jk
ZXIuDQo+ICogRGUtcGFyZW50aGVzaXplIGNvbnRlbnQgdGhhdCBzZWVtcyBpbXBvcnRhbnQu
DQo+ICogUGVyZm9ybSBhIEtlbXBlciBub3RlY3RvbXkuICBUaGF0IGlzLCBzdG9wIHNheWlu
ZyAibm90ZSB0aGF0Ig0KPiAgICBmb2xsb3dlZCBieSBzb21lIGRlY2xhcmF0aXZlIHN0YXRl
bWVudC4gIFRoaXMgdHJvcGUgaXMgYWxsIG92ZXIgVW5peA0KPiAgICBkb2N1bWVudGF0aW9u
IGFuZCBJIGV2ZW4gc2VlIGl0IGluIElTTyBzdGFuZGFyZHMuICBUaGUgbGF0dGVyIGRvZXNu
J3QNCj4gICAgc2VydmUgdG8gcmVjb21tZW5kIGl0OyBhcyBEYXZlIEtlbXBlciBoYXMgcG9p
bnRlZCBvdXQsIGV2ZXJ5dGhpbmcgd2UNCj4gICAgcHV0IGluIHRlY2huaWNhbCBkb2N1bWVu
dGF0aW9uIHNob3VsZCBiZSB3b3J0aHkgb2Ygbm90ZSB1bmxlc3MgcGxhY2VkDQo+ICAgIGlu
IGEgZm9vdG5vdGUsIG1hcmtlZCBhcyAidW5uZWNlc3Nhcnkgb24gYSBmaXJzdCByZWFkaW5n
Iiwgb3Igc2ltaWxhci4NCj4gICAgSXQgaXMgdGhlIGV4Y2VwdGlvbiwgbm90IHRoZSBydWxl
LiAgSWYgeW91IGZlZWwgdGhlIG5lZWQgdG8gc2F5ICJub3RlDQo+ICAgIHRoYXQiLCBjb25z
aWRlciB3aGF0IGFkamFjZW50IG1hdGVyaWFsIHlvdSBzaG91bGRuJ3QgYmUgc2F5aW5nIGF0
IGFsbC4NCj4gKiBTYXkgInN5bWJvbGljIGxpbmsiIGluc3RlYWQgb2YgInN5bWxpbmsiLg0K
PiAqIFdoZW4gb25lIHNlbnRlbmNlIGV4cGxhaW5zIHRoZSBwcmV2aW91cywgdXNlIGEgc2Vt
aWNvbG9uLg0KPiAqIFNldCBsaXRlcmFscyB1c2VkIGFzIGFyZ3VtZW50cyB0byBgLWNgIG9w
dGlvbiBpbiBib2xkLCBub3QgaXRhbGljcy4NCj4gKiBQbGFjZSB0aGUgbW9kaWZpZXIgIm9u
bHkiIG1vcmUgY2FyZWZ1bGx5Lg0KPiAqIFJlY2FzdCBvcHRpb24gZGVzY3JpcHRpb25zIHRv
IGJlIGluIHRoZSBpbXBlcmF0aXZlIG1vb2QuDQo+ICogUmVjYXN0IGZpbGUgZGVzY3JpcHRp
b25zIHRvIHVzZSB0aGUgcGFyYWdyYXBoIHRhZyBhcyB0aGUgc3ViamVjdCBvZg0KPiAgICB0
aGUgZmlyc3Qgc2VudGVuY2UuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBHLiBCcmFuZGVuIFJv
Ymluc29uIDxnLmJyYW5kZW4ucm9iaW5zb25AZ21haWwuY29tPg0KDQoNClBsZWFzZSBicmVh
ayB0aGlzIGZ1cnRoZXIgaW50byBmZml4LCB3Zml4LCBhbmQgdGZpeCwgaWYvd2hlcmUgaXQg
bWFrZXMgc2Vuc2UuIA0KTW92aW5nIGNvZGUgYXJvdW5kIGFsc28gdXN1YWxseSBnb2VzIGlu
IGEgc2VwYXJhdGUgY29tbWl0LCB3aXRoIG5vIG90aGVyIGNvZGUgDQpjaGFuZ2VzICh0aGF0
IHdvdWxkIGJlIGZvciB0aGUgc29ydGluZykuDQoNCj4gLS0tDQo+ICAgbWFuOC9sZGNvbmZp
Zy44IHwgNTQgKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCAyNyBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW44L2xkY29uZmlnLjggYi9tYW44L2xkY29u
ZmlnLjgNCj4gaW5kZXggMGU3NGMxNzkxLi4yZTU0Y2ZhZDQgMTAwNjQ0DQo+IC0tLSBhL21h
bjgvbGRjb25maWcuOA0KPiArKysgYi9tYW44L2xkY29uZmlnLjgNCj4gQEAgLTUsNyArNSw3
IEBADQo+ICAgLlwiDQo+ICAgLlwiIE1vZGlmaWVkLCA2IE1heSAyMDAyLCBNaWNoYWVsIEtl
cnJpc2ssIDxtdGsubWFucGFnZXNAZ21haWwuY29tPg0KPiAgIC5cIiAgIENoYW5nZSBsaXN0
ZWQgb3JkZXIgb2YgL3Vzci9saWIgYW5kIC9saWINCj4gLS5USCBMRENPTkZJRyA4IChkYXRl
KSAiTGludXggbWFuLXBhZ2VzICh1bnJlbGVhc2VkKSINCj4gKy5USCBsZGNvbmZpZyA4IChk
YXRlKSAiTGludXggbWFuLXBhZ2VzICh1bnJlbGVhc2VkKSINCj4gICAuU0ggTkFNRQ0KPiAg
IGxkY29uZmlnIFwtIGNvbmZpZ3VyZSBkeW5hbWljIGxpbmtlciBydW4tdGltZSBiaW5kaW5n
cw0KPiAgIC5TSCBTWU5PUFNJUw0KPiBAQCAtMTQsMTggKzE0LDE4IEBAIGxkY29uZmlnIFwt
IGNvbmZpZ3VyZSBkeW5hbWljIGxpbmtlciBydW4tdGltZSBiaW5kaW5ncw0KPiAgIC5cIiAt
LXZlcmJvc2UsIC1WLCAtLXZlcnNpb24sIC0/LCAtLWhlbHAsIC0tdXNhZ2UNCj4gICAuQiAv
c2Jpbi9sZGNvbmZpZw0KPiAgIC5SQiBbIFwtbk52WFYgXQ0KPiAtLlJCIFsgXC1mDQo+IC0u
SVIgY29uZiBdDQo+IC0uUkIgWyBcLUMNCj4gKy5SQiBbIFwtQ1x+XGMNCj4gICAuSVIgY2Fj
aGUgXQ0KPiAtLlJCIFsgXC1yDQo+ICsuUkIgWyBcLWZcflxjDQo+ICsuSVIgY29uZiBdDQo+
ICsuUkIgWyBcLXJcflxjDQo+ICAgLklSIHJvb3QgXQ0KPiAtLklSIGRpcmVjdG9yeSAuLi4N
Cj4gKy5JUiBkaXJlY3RvcnkgXH4uXHwuXHwuDQo+ICAgLlBQDQo+ICAgLkIgL3NiaW4vbGRj
b25maWcNCj4gICAuQiBcLWwNCj4gICAuUkIgWyBcLXYgXQ0KPiAtLklSIGxpYnJhcnkgLi4u
DQo+ICsuSVIgbGlicmFyeSBcfi5cfC5cfC4NCj4gICAuUFANCj4gICAuQiAvc2Jpbi9sZGNv
bmZpZw0KPiAgIC5CIFwtcA0KPiBAQCAtMzksOCArMzksOCBAQCBpbiB0aGUgZmlsZQ0KPiAg
IGFuZCBpbiB0aGUgdHJ1c3RlZCBkaXJlY3RvcmllcywNCj4gICAuSSAvbGliDQo+ICAgYW5k
DQo+IC0uSSAvdXNyL2xpYg0KPiAtKG9uIHNvbWUgNjQtYml0IGFyY2hpdGVjdHVyZXMgc3Vj
aCBhcyB4ODYtNjQsDQo+ICsuSVIgL3Vzci9saWIgLg0KPiArT24gc29tZSA2NC1iaXQgYXJj
aGl0ZWN0dXJlcyBzdWNoIGFzIHg4Ni02NCwNCj4gICAuSSAvbGliDQo+ICAgYW5kDQo+ICAg
LkkgL3Vzci9saWINCj4gQEAgLTQ5LDcgKzQ5LDcgQEAgd2hpbGUNCj4gICAuSSAvbGliNjQN
Cj4gICBhbmQNCj4gICAuSSAvdXNyL2xpYjY0DQo+IC1hcmUgdXNlZCBmb3IgNjQtYml0IGxp
YnJhcmllcykuDQo+ICthcmUgdXNlZCBmb3IgNjQtYml0IGxpYnJhcmllcy4NCj4gICAuUFAN
Cj4gICBUaGUgY2FjaGUgaXMgdXNlZCBieSB0aGUgcnVuLXRpbWUgbGlua2VyLA0KPiAgIC5J
IGxkLnNvDQo+IEBAIC05Niw5ICs5Niw4IEBAIG9wdGlvbi4NCj4gICBzaG91bGQgbm9ybWFs
bHkgYmUgcnVuIGJ5IHRoZSBzdXBlcnVzZXIgYXMgaXQgbWF5IHJlcXVpcmUgd3JpdGUNCj4g
ICBwZXJtaXNzaW9uIG9uIHNvbWUgcm9vdCBvd25lZCBkaXJlY3RvcmllcyBhbmQgZmlsZXMu
DQo+ICAgLlBQDQo+IC1Ob3RlIHRoYXQNCj4gICAuQiBcJWxkY29uZmlnDQo+IC13aWxsIG9u
bHkgbG9vayBhdCBmaWxlcyB0aGF0IGFyZSBuYW1lZA0KPiArd2lsbCBsb29rIG9ubHkgYXQg
ZmlsZXMgdGhhdCBhcmUgbmFtZWQNCg0KV291bGQgeW91IG1pbmQgZXhwbGFpbmluZyB0aGUg
ZGlmZmVyZW5jZSB0byBhIG5vbi1uYXRpdmUgc3BlYWtlcj8NCg0KPiAgIC5JIGxpYiouc28q
DQo+ICAgKGZvciByZWd1bGFyIHNoYXJlZCBvYmplY3RzKSBvcg0KPiAgIC5JIGxkXC0qLnNv
Kg0KPiBAQCAtMTA2LDcgKzEwNSw3IEBAIHdpbGwgb25seSBsb29rIGF0IGZpbGVzIHRoYXQg
YXJlIG5hbWVkDQo+ICAgT3RoZXIgZmlsZXMgd2lsbCBiZSBpZ25vcmVkLg0KPiAgIEFsc28s
DQo+ICAgLkIgXCVsZGNvbmZpZw0KPiAtZXhwZWN0cyBhIGNlcnRhaW4gcGF0dGVybiB0byBo
b3cgdGhlIHN5bWxpbmtzIGFyZSBzZXQgdXAsDQo+ICtleHBlY3RzIGEgY2VydGFpbiBwYXR0
ZXJuIHRvIGhvdyB0aGUgc3ltYm9saWMgbGlua3MgYXJlIHNldCB1cCwNCj4gICBsaWtlIHRo
aXMgZXhhbXBsZSwNCj4gICB3aGVyZSB0aGUgbWlkZGxlIGZpbGUNCj4gICAuUkIgKCBsaWJm
b28uc28uMQ0KPiBAQCAtMTI3LDE4ICsxMjYsMjAgQEAgYWZ0ZXIgYW4gdXBncmFkZS4NCj4g
ICAuQkkgXC1cLWZvcm1hdD0gZm10DQo+ICAgKFNpbmNlIGdsaWJjIDIuMikNCj4gICAuXCIg
Y29tbWl0IDQ1ZWNhNGQxNDFjMDQ3OTUwZGI0OGM2OWM4OTQxMTYzZDBhNjFmY2QNCj4gLUNh
Y2hlIGZvcm1hdCB0byB1c2U6DQo+IC0uSVIgb2xkICwNCj4gLS5JUiBuZXcgLA0KPiArVXNl
IGNhY2hlIGZvcm1hdA0KPiArLklSIGZtdCAsDQo+ICt3aGljaCBpcyBvbmUgb2YNCj4gKy5C
UiBvbGQgLA0KPiArLkJSIG5ldyAsDQo+ICAgb3INCj4gLS5JUiBcJWNvbXBhdCAuDQo+ICsu
QlIgXCVjb21wYXQgLg0KPiAgIFNpbmNlIGdsaWJjIDIuMzIsDQo+ICAgdGhlIGRlZmF1bHQg
aXMNCj4gLS5JUiBuZXcgLg0KPiArLkJSIG5ldyAuDQo+ICAgLlwiIGNvbW1pdCBjYWQ2NGY3
NzhhY2VkODRlZmRhYTA0YWU2NGY4NzM3Yjg2ZjA2M2FiDQo+ICAgQmVmb3JlIHRoYXQsDQo+
ICAgaXQgd2FzDQo+IC0uSVIgXCVjb21wYXQgLg0KPiArLkJSIFwlY29tcGF0IC4NCj4gICAu
VFANCj4gICAuQkkgXC1DXH4gY2FjaGUNCj4gICBVc2UNCj4gQEAgLTE2MSwxMyArMTYyLDEy
IEBAIElnbm9yZSBhdXhpbGlhcnkgY2FjaGUgZmlsZS4NCj4gICAuVFANCj4gICAuQiBcLWwN
Cj4gICAoU2luY2UgZ2xpYmMgMi4yKQ0KPiAtTGlicmFyeSBtb2RlLg0KPiAtTWFudWFsbHkg
bGluayBpbmRpdmlkdWFsIGxpYnJhcmllcy4NCj4gLUludGVuZGVkIGZvciB1c2UgYnkgZXhw
ZXJ0cyBvbmx5Lg0KPiArSW50ZXJwcmV0IGVhY2ggb3BlcmFuZCBhcyBhIGxpYmFyeSBuYW1l
IGFuZCBjb25maWd1cmUgaXRzIGxpbmtzLg0KPiArSW50ZW5kZWQgZm9yIHVzZSBvbmx5IGJ5
IGV4cGVydHMuDQoNClNhbWUgaGVyZS4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gICAuVFAN
Cj4gICAuQiBcLW4NCj4gLVByb2Nlc3Mgb25seSB0aGUgZGlyZWN0b3JpZXMgc3BlY2lmaWVk
IG9uIHRoZSBjb21tYW5kIGxpbmUuDQo+IC1Eb24ndCBwcm9jZXNzIHRoZSB0cnVzdGVkIGRp
cmVjdG9yaWVzLA0KPiArUHJvY2VzcyBvbmx5IHRoZSBkaXJlY3RvcmllcyBzcGVjaWZpZWQg
b24gdGhlIGNvbW1hbmQgbGluZTsNCj4gK2Rvbid0IHByb2Nlc3MgdGhlIHRydXN0ZWQgZGly
ZWN0b3JpZXMsDQo+ICAgbm9yIHRob3NlIHNwZWNpZmllZCBpbg0KPiAgIC5JUiAvZXRjL2xk
LnNvLmNvbmYgLg0KPiAgIEltcGxpZXMNCj4gQEAgLTIxOCwxNSArMjE4LDE1IEBAIHRoZSBj
YWNoZSBpcyBzdGlsbCByZWJ1aWx0Lg0KPiAgIC5QRCAwDQo+ICAgLlRQDQo+ICAgLkkgL2xp
Yi9sZC5zbw0KPiAtUnVuLXRpbWUgbGlua2VyL2xvYWRlci4NCj4gK2lzIHRoZSBydW4tdGlt
ZSBsaW5rZXIvbG9hZGVyLg0KPiAgIC5UUA0KPiAgIC5JIC9ldGMvbGQuc28uY29uZg0KPiAt
RmlsZSBjb250YWluaW5nIGEgbGlzdCBvZiBkaXJlY3RvcmllcywNCj4gK2NvbnRhaW5zIGEg
bGlzdCBvZiBkaXJlY3RvcmllcywNCj4gICBvbmUgcGVyIGxpbmUsDQo+ICAgaW4gd2hpY2gg
dG8gc2VhcmNoIGZvciBsaWJyYXJpZXMuDQo+ICAgLlRQDQo+ICAgLkkgL2V0Yy9sZC5zby5j
YWNoZQ0KPiAtRmlsZSBjb250YWluaW5nIGFuIG9yZGVyZWQgbGlzdCBvZiBsaWJyYXJpZXMg
Zm91bmQgaW4gdGhlIGRpcmVjdG9yaWVzDQo+ICtjb250YWlucyBhbiBvcmRlcmVkIGxpc3Qg
b2YgbGlicmFyaWVzIGZvdW5kIGluIHRoZSBkaXJlY3Rvcmllcw0KPiAgIHNwZWNpZmllZCBp
bg0KPiAgIC5JUiAvZXRjL2xkLnNvLmNvbmYgLA0KPiAgIGFzIHdlbGwgYXMgdGhvc2UgZm91
bmQgaW4gdGhlIHRydXN0ZWQgZGlyZWN0b3JpZXMuDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxl
amFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------S20zL51pw4acojDssS65kIiR--

--------------4tJ5CUhy0oe7yGaDeOiy05hO
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO1ylkACgkQnowa+77/
2zJCIxAAhmp5w/2hjMZSoN5R3HJpNjCOYC7PUfgu2cmqqDWIoY3tzKfnqvQQiu+J
q2iYU2g/1ol1Uo79mNjBNPoEe2XRdgmfiG9yPYxyubwHsYgWkV1btdllD+GEg9+5
pGzrLqJIgMYcFZTOikTqI+VF9KBHifkULgX7f0BkMFXfM8XuNZdFdqEVT6lYzz1P
l9skkAXC7iydFDSaclq/YaUYWsAqCpz8ef/sHLdH5h3xNM7jPHgxVmoQyegEiBd3
nESePY7145os3ceQoquqxHtSCFvFAgEluvsWeFSbmMUMMjimAM+dDxeV+FnI6+3r
VuGTpntKvUNedSx639vZARaUM+sWNm0lxm2yShYTiGvRoM9WWZb9S9o38a1HW1qT
xEXPZikH2lJGpVPla5MzcJ8NM6gGv8Q1HhnlyDLfXr/BU0EmDvZ99MpFlvdyIur3
8WoeeQp6IbLJ3m7WeU3k3/MayxKwpGJrjVs7pwc05Pe0z60fuzU8yBxYU7ykdiee
4pfR9GZUbSB/67itR13R1EK5CzvTn4Lo1ZZM8C7qxUZRxbcL2j/RTe7cGNYBrgCK
g8oj+b6k+vPfq1ewOw4o51TN3GSQCl8dhpIwW/QyOKuAbuPeTVMx9cgXGgsnK3ta
LWfaATYcxt+nVSHjUqLM+T9RYodBURqpga+/gW/2yjOJEO2H++U=
=jg6T
-----END PGP SIGNATURE-----

--------------4tJ5CUhy0oe7yGaDeOiy05hO--
