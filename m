Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DB2E65F798
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 00:34:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233371AbjAEXeU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 18:34:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232331AbjAEXeT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 18:34:19 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE98758828
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 15:34:17 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id m3so73091wmq.0
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 15:34:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PKBWTsF/th71QqmBNESOeaTOW0jqnjzFszaacvmVPjE=;
        b=UuOnP0wGAqv8eqZD3MctTyN8ZRsU5/nilyruXXLerWOGEuOEhXL3JQCz/Dn/5HB0Mk
         EuGNKTrlStqbbsen3/8f/Mztbx49dv4CcuE0zVNR2JzkIdmachGQbBPJ2UgSOnzri9y5
         NayHL7x1DGNJBq7buSa3P6QpXCMJMQdZr5egQW1R1l9kCog3mQdS1/lLnXyOBSF5Dnxe
         vCoaLsVlmRu38t2HMDK69E6BsbzZlkUMxWLtZ9t1PfUMZCuQ5yOacgQfTUHSl1vsr1dB
         1AeUtZM9VKK2rEx9nK6vpCfESjLU51VFZ82brQzNHCGj4NSUSa7vBzIloTgQyXdN4EVc
         Yx+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PKBWTsF/th71QqmBNESOeaTOW0jqnjzFszaacvmVPjE=;
        b=DDhI+CS8KnFeJqeMTOMSktciY0iO6LIX+eKJzXr8xzLov76rhiprkwR+edWgmNlYgZ
         1ZIynbHEdG18waYPknRxBFvnItmnTr3Suq+ysAMIdiW1cfAwrW3S/e2r+sNflLv2Beje
         S0UzbJiF6GSHUZ/nxH8mp8HjzsErQ+BjgAbGeTvtwbfO7rGHYz8y0Q2cG16MWu9M4ukZ
         iTMoA7LPAewwPzeq/vwTXwiuwqWhbjEwjcCzdsz0J+nSLDaToDH+kzN2xRUj2uASzmJu
         cistTyGC7yZ1uZ08fbKXGpB/R1nrZ9mJySbxkKJiv4xyv949HcWbe5hTYmp2GCHIQ9fc
         qwlg==
X-Gm-Message-State: AFqh2kpzkCAGZVQWMZStZLAwUg+sI5AKp35+M/Q/3Du60mriBcWhxwTU
        hGqVv0gxGYI+ssCAhmkvvd1/ywy5V0g=
X-Google-Smtp-Source: AMrXdXv7x2tZ2tP6mxh6q5gC/KbfY9LQiV+ntEI/HRR8XefOn4SCKJxb+qBuzGwvmTw4HsZYyqIl9g==
X-Received: by 2002:a7b:c3c6:0:b0:3d2:3376:6f37 with SMTP id t6-20020a7bc3c6000000b003d233766f37mr37048407wmj.10.1672961656284;
        Thu, 05 Jan 2023 15:34:16 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m42-20020a05600c092a00b003d9a3a0d461sm3700447wmp.4.2023.01.05.15.34.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 15:34:14 -0800 (PST)
Message-ID: <815eeb34-9e41-8e39-0d1d-0f5178b0668b@gmail.com>
Date:   Fri, 6 Jan 2023 00:34:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 01/13] ldconfig.8: srcfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230105225154.fs2i6gct66m5nehh@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230105225154.fs2i6gct66m5nehh@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------qHPAhnIDRBgMBYgnzbYVKog8"
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
--------------qHPAhnIDRBgMBYgnzbYVKog8
Content-Type: multipart/mixed; boundary="------------8YoF9cqZ9K0vDNoKtwvbcpjd";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <815eeb34-9e41-8e39-0d1d-0f5178b0668b@gmail.com>
Subject: Re: [PATCH v3 01/13] ldconfig.8: srcfix
References: <20230105225154.fs2i6gct66m5nehh@illithid>
In-Reply-To: <20230105225154.fs2i6gct66m5nehh@illithid>

--------------8YoF9cqZ9K0vDNoKtwvbcpjd
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS81LzIzIDIzOjUxLCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiAqIERyb3Agc3RhbGUgRklYTUUgYW5ub3RhdGlvbiByZWdhcmRpbmcgY29tbWl0
IElEIGZvciBgLWlgIG9wdGlvbi4NCj4gKiBEcm9wIHJlZHVuZGFudCBgUERgIG1hY3JvIGNh
bGxzLg0KPiAqIEJyZWFrIGlucHV0IGxpbmVzIGFmdGVyIGNvbW1hcy4NCj4gKiBTZXQgbXVs
dGktd29yZCBwYXJlbnRoZXRpY2FscyBvbiB0aGVpciBvd24gaW5wdXQgbGluZXMuDQo+ICog
QnJlYWsgaW5wdXQgbGluZXMgYXQgcGhyYXNlIGJvdW5kYXJpZXMgbW9yZSBvZnRlbi4NCj4g
KiBQcm90ZWN0IGxpdGVyYWxzIGZyb20gYXV0b21hdGljIGh5cGhlbmF0aW9uIHdpdGggYFwl
YCBlc2NhcGUgc2VxdWVuY2UuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBHLiBCcmFuZGVuIFJv
Ymluc29uIDxnLmJyYW5kZW4ucm9iaW5zb25AZ21haWwuY29tPg0KDQpQYXRjaCBhcHBsaWVk
LiAgVGhhbmtzIQ0KDQpBbGV4DQoNCj4gLS0tDQo+ICAgbWFuOC9sZGNvbmZpZy44IHwgNzQg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAg
IDEgZmlsZSBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspLCAzMCBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9tYW44L2xkY29uZmlnLjggYi9tYW44L2xkY29uZmlnLjgNCj4g
aW5kZXggZDYwOGFhZjU2Li4wYTQ2OTVlMDkgMTAwNjQ0DQo+IC0tLSBhL21hbjgvbGRjb25m
aWcuOA0KPiArKysgYi9tYW44L2xkY29uZmlnLjgNCj4gQEAgLTksMjIgKzksMjAgQEANCj4g
ICAuU0ggTkFNRQ0KPiAgIGxkY29uZmlnIFwtIGNvbmZpZ3VyZSBkeW5hbWljIGxpbmtlciBy
dW4tdGltZSBiaW5kaW5ncw0KPiAgIC5TSCBTWU5PUFNJUw0KPiAtLkJSIC9zYmluL2xkY29u
ZmlnICIgWyIgXC1uTnZYViAiXSBbIiBcLWYgIiBcZkljb25mXGZQXSBbIiBcLUMgIiBcZklj
YWNoZVxmUF0gWyIgXC1yICIgXGZJcm9vdFxmUF0iDQo+IC0uSVIgZGlyZWN0b3J5IFwuLi4N
Cj4gICAuUEQgMA0KPiArLkJSIC9zYmluL2xkY29uZmlnICIgWyIgXC1uTnZYViAiXSBbIiBc
LWYgIiBcZkljb25mXGZQXSBbIiBcLUMgIiBcZkljYWNoZVxmUF0gWyIgXC1yICIgXGZJcm9v
dFxmUF0iDQo+ICsuSVIgZGlyZWN0b3J5IC4uLg0KPiAgIC5QUA0KPiAtLlBEDQo+ICAgLkIg
L3NiaW4vbGRjb25maWcNCj4gICAuQiBcLWwNCj4gICAuUkIgWyBcLXYgXQ0KPiAtLklSIGxp
YnJhcnkgXC4uLg0KPiAtLlBEIDANCj4gKy5JUiBsaWJyYXJ5IC4uLg0KPiAgIC5QUA0KPiAt
LlBEDQo+ICAgLkIgL3NiaW4vbGRjb25maWcNCj4gICAuQiBcLXANCj4gKy5QRA0KPiAgIC5T
SCBERVNDUklQVElPTg0KPiAtLkIgbGRjb25maWcNCj4gKy5CIFwlbGRjb25maWcNCj4gICBj
cmVhdGVzIHRoZSBuZWNlc3NhcnkgbGlua3MgYW5kIGNhY2hlIHRvIHRoZSBtb3N0IHJlY2Vu
dCBzaGFyZWQNCj4gICBsaWJyYXJpZXMgZm91bmQgaW4gdGhlIGRpcmVjdG9yaWVzIHNwZWNp
ZmllZCBvbiB0aGUgY29tbWFuZCBsaW5lLA0KPiAgIGluIHRoZSBmaWxlDQo+IEBAIC0zNyw3
ICszNSw4IEBAIGFuZA0KPiAgIC5JIC9saWINCj4gICBhbmQNCj4gICAuSSAvdXNyL2xpYg0K
PiAtYXJlIHRoZSB0cnVzdGVkIGRpcmVjdG9yaWVzIGZvciAzMi1iaXQgbGlicmFyaWVzLCB3
aGlsZQ0KPiArYXJlIHRoZSB0cnVzdGVkIGRpcmVjdG9yaWVzIGZvciAzMi1iaXQgbGlicmFy
aWVzLA0KPiArd2hpbGUNCj4gICAuSSAvbGliNjQNCj4gICBhbmQNCj4gICAuSSAvdXNyL2xp
YjY0DQo+IEBAIC00NywxMyArNDYsMTcgQEAgVGhlIGNhY2hlIGlzIHVzZWQgYnkgdGhlIHJ1
bi10aW1lIGxpbmtlciwNCj4gICAuSSBsZC5zbw0KPiAgIG9yDQo+ICAgLklSIGxkXC1saW51
eC5zbyAuDQo+IC0uQiBsZGNvbmZpZw0KPiArLkIgXCVsZGNvbmZpZw0KPiAgIGNoZWNrcyB0
aGUgaGVhZGVyIGFuZCBmaWxlbmFtZXMgb2YgdGhlIGxpYnJhcmllcyBpdCBlbmNvdW50ZXJz
IHdoZW4NCj4gICBkZXRlcm1pbmluZyB3aGljaCB2ZXJzaW9ucyBzaG91bGQgaGF2ZSB0aGVp
ciBsaW5rcyB1cGRhdGVkLg0KPiAgIC5QUA0KPiAtLkIgbGRjb25maWcNCj4gLXdpbGwgYXR0
ZW1wdCB0byBkZWR1Y2UgdGhlIHR5cGUgb2YgRUxGIGxpYnJhcmllcyAoaS5lLiwgbGliYzUg
b3IgbGliYzYvZ2xpYmMpDQo+IC1iYXNlZCBvbiB3aGF0IEMgbGlicmFyaWVzLCBpZiBhbnks
IHRoZSBsaWJyYXJ5IHdhcyBsaW5rZWQgYWdhaW5zdC4NCj4gKy5CIFwlbGRjb25maWcNCj4g
K3dpbGwgYXR0ZW1wdCB0byBkZWR1Y2UgdGhlIHR5cGUgb2YgRUxGIGxpYnJhcmllcw0KPiAr
KGkuZS4sDQo+ICtsaWJjNSBvciBsaWJjNi9nbGliYykNCj4gK2Jhc2VkIG9uIHdoYXQgQyBs
aWJyYXJpZXMsDQo+ICtpZiBhbnksDQo+ICt0aGUgbGlicmFyeSB3YXMgbGlua2VkIGFnYWlu
c3QuDQo+ICAgLlwiIFRoZSBmb2xsb3dpbmcgc2VudGVuY2UgbG9va3Mgc3VzcGVjdA0KPiAg
IC5cIiAocGVyaGFwcyBoaXN0b3JpY2FsIGNydWZ0KSAtLSBNVEssIEp1bCAyMDA1DQo+ICAg
LlwiIFRoZXJlZm9yZSwgd2hlbiBtYWtpbmcgZHluYW1pYyBsaWJyYXJpZXMsDQo+IEBAIC02
MSwxNCArNjQsMTggQEAgYmFzZWQgb24gd2hhdCBDIGxpYnJhcmllcywgaWYgYW55LCB0aGUg
bGlicmFyeSB3YXMgbGlua2VkIGFnYWluc3QuDQo+ICAgLlBQDQo+ICAgU29tZSBleGlzdGlu
ZyBsaWJyYXJpZXMgZG8gbm90IGNvbnRhaW4gZW5vdWdoIGluZm9ybWF0aW9uDQo+ICAgdG8g
YWxsb3cgdGhlIGRlZHVjdGlvbiBvZiB0aGVpciB0eXBlLg0KPiAtVGhlcmVmb3JlLCB0aGUN
Cj4gK1RoZXJlZm9yZSwNCj4gK3RoZQ0KPiAgIC5JIC9ldGMvbGQuc28uY29uZg0KPiAgIGZp
bGUgZm9ybWF0IGFsbG93cyB0aGUgc3BlY2lmaWNhdGlvbiBvZiBhbiBleHBlY3RlZCB0eXBl
Lg0KPiAgIFRoaXMgaXMgdXNlZA0KPiAgIC5JIG9ubHkNCj4gICBmb3IgdGhvc2UgRUxGIGxp
YnJhcmllcyB3aGljaCB3ZSBjYW4gbm90IHdvcmsgb3V0Lg0KPiAgIFRoZSBmb3JtYXQNCj4g
LWlzICJkaXJuYW1lPVRZUEUiLCB3aGVyZSBUWVBFIGNhbiBiZSBsaWJjNCwgbGliYzUsIG9y
IGxpYmM2Lg0KPiAraXMgImRpcm5hbWU9VFlQRSIsDQo+ICt3aGVyZSBUWVBFIGNhbiBiZSBs
aWJjNCwNCj4gK2xpYmM1LA0KPiArb3IgbGliYzYuDQo+ICAgKFRoaXMgc3ludGF4IGFsc28g
d29ya3Mgb24gdGhlIGNvbW1hbmQgbGluZS4pDQo+ICAgU3BhY2VzIGFyZQ0KPiAgIC5JIG5v
dA0KPiBAQCAtNzYsMTIgKzgzLDEyIEBAIGFsbG93ZWQuDQo+ICAgQWxzbyBzZWUgdGhlDQo+
ICAgLkIgXC1wDQo+ICAgb3B0aW9uLg0KPiAtLkIgbGRjb25maWcNCj4gKy5CIFwlbGRjb25m
aWcNCj4gICBzaG91bGQgbm9ybWFsbHkgYmUgcnVuIGJ5IHRoZSBzdXBlcnVzZXIgYXMgaXQg
bWF5IHJlcXVpcmUgd3JpdGUNCj4gICBwZXJtaXNzaW9uIG9uIHNvbWUgcm9vdCBvd25lZCBk
aXJlY3RvcmllcyBhbmQgZmlsZXMuDQo+ICAgLlBQDQo+ICAgTm90ZSB0aGF0DQo+IC0uQiBs
ZGNvbmZpZw0KPiArLkIgXCVsZGNvbmZpZw0KPiAgIHdpbGwgb25seSBsb29rIGF0IGZpbGVz
IHRoYXQgYXJlIG5hbWVkDQo+ICAgLkkgbGliKi5zbyoNCj4gICAoZm9yIHJlZ3VsYXIgc2hh
cmVkIG9iamVjdHMpIG9yDQo+IEBAIC04OSw5ICs5NiwxMCBAQCB3aWxsIG9ubHkgbG9vayBh
dCBmaWxlcyB0aGF0IGFyZSBuYW1lZA0KPiAgIChmb3IgdGhlIGR5bmFtaWMgbG9hZGVyIGl0
c2VsZikuDQo+ICAgT3RoZXIgZmlsZXMgd2lsbCBiZSBpZ25vcmVkLg0KPiAgIEFsc28sDQo+
IC0uQiBsZGNvbmZpZw0KPiAtZXhwZWN0cyBhIGNlcnRhaW4gcGF0dGVybiB0byBob3cgdGhl
IHN5bWxpbmtzIGFyZSBzZXQgdXAsIGxpa2UgdGhpcw0KPiAtZXhhbXBsZSwgd2hlcmUgdGhl
IG1pZGRsZSBmaWxlDQo+ICsuQiBcJWxkY29uZmlnDQo+ICtleHBlY3RzIGEgY2VydGFpbiBw
YXR0ZXJuIHRvIGhvdyB0aGUgc3ltbGlua3MgYXJlIHNldCB1cCwNCj4gK2xpa2UgdGhpcyBl
eGFtcGxlLA0KPiArd2hlcmUgdGhlIG1pZGRsZSBmaWxlDQo+ICAgLlJCICggbGliZm9vLnNv
LjENCj4gICBoZXJlKSBpcyB0aGUgU09OQU1FIGZvciB0aGUgbGlicmFyeToNCj4gICAuUFAN
Cj4gQEAgLTEwNywxNiArMTE1LDE5IEBAIGFmdGVyIGFuIHVwZ3JhZGUuDQo+ICAgLlRQDQo+
ICAgLkJSIFwtYyAiIFxmSWZtdFxmUCwgIiBcLVwtZm9ybWF0PVxmSWZtdFxmUA0KPiAgIChT
aW5jZSBnbGliYyAyLjIpDQo+ICsuXCIgY29tbWl0IDQ1ZWNhNGQxNDFjMDQ3OTUwZGI0OGM2
OWM4OTQxMTYzZDBhNjFmY2QNCj4gICBDYWNoZSBmb3JtYXQgdG8gdXNlOg0KPiAgIC5JUiBv
bGQgLA0KPiAgIC5JUiBuZXcgLA0KPiAgIG9yDQo+IC0uSVIgY29tcGF0IC4NCj4gLVNpbmNl
IGdsaWJjIDIuMzIsIHRoZSBkZWZhdWx0IGlzDQo+ICsuSVIgXCVjb21wYXQgLg0KPiArU2lu
Y2UgZ2xpYmMgMi4zMiwNCj4gK3RoZSBkZWZhdWx0IGlzDQo+ICAgLklSIG5ldyAuDQo+ICAg
LlwiIGNvbW1pdCBjYWQ2NGY3NzhhY2VkODRlZmRhYTA0YWU2NGY4NzM3Yjg2ZjA2M2FiDQo+
IC1CZWZvcmUgdGhhdCwgaXQgd2FzDQo+IC0uSVIgY29tcGF0IC4NCj4gK0JlZm9yZSB0aGF0
LA0KPiAraXQgd2FzDQo+ICsuSVIgXCVjb21wYXQgLg0KPiAgIC5UUA0KPiAgIC5CSSAiXC1D
ICIgY2FjaGUNCj4gICBVc2UNCj4gQEAgLTEyOSwxMSArMTQwLDEwIEBAIFVzZQ0KPiAgIC5J
IGNvbmYNCj4gICBpbnN0ZWFkIG9mDQo+ICAgLklSIC9ldGMvbGQuc28uY29uZiAuDQo+IC0u
XCIgRklYTUUgZ2xpYmMgMi43IGFkZGVkIC1pDQo+ICAgLlRQDQo+ICAgLkJSIFwtaSAiLCAi
IFwtXC1pZ25vcmVcLWF1eFwtY2FjaGUNCj4gICAoU2luY2UgZ2xpYmMgMi43KQ0KPiAtLlwi
ICAgICAgICAgICAgIGNvbW1pdCAyN2Q5ZmZkYTE3ZGY0ZDIzODg2ODdhZmQxMjg5Nzc3NGZk
ZTM5YmNjDQo+ICsuXCIgY29tbWl0IDI3ZDlmZmRhMTdkZjRkMjM4ODY4N2FmZDEyODk3Nzc0
ZmRlMzliY2MNCj4gICBJZ25vcmUgYXV4aWxpYXJ5IGNhY2hlIGZpbGUuDQo+ICAgLlRQDQo+
ICAgLkIgXC1sDQo+IEBAIC0xNTQsNyArMTY0LDggQEAgSW1wbGllcw0KPiAgIERvbid0IHJl
YnVpbGQgdGhlIGNhY2hlLg0KPiAgIFVubGVzcw0KPiAgIC5CIFwtWA0KPiAtaXMgYWxzbyBz
cGVjaWZpZWQsIGxpbmtzIGFyZSBzdGlsbCB1cGRhdGVkLg0KPiAraXMgYWxzbyBzcGVjaWZp
ZWQsDQo+ICtsaW5rcyBhcmUgc3RpbGwgdXBkYXRlZC4NCj4gICAuVFANCj4gICAuQlIgXC1w
ICIsICIgXC1cLXByaW50XC1jYWNoZQ0KPiAgIFByaW50IHRoZSBsaXN0cyBvZiBkaXJlY3Rv
cmllcyBhbmQgY2FuZGlkYXRlIGxpYnJhcmllcyBzdG9yZWQgaW4NCj4gQEAgLTE2Nyw4ICsx
NzgsOSBAQCBhcyB0aGUgcm9vdCBkaXJlY3RvcnkuDQo+ICAgLlRQDQo+ICAgLkJSIFwtdiAi
LCAiIFwtXC12ZXJib3NlDQo+ICAgVmVyYm9zZSBtb2RlLg0KPiAtUHJpbnQgY3VycmVudCB2
ZXJzaW9uIG51bWJlciwgdGhlIG5hbWUgb2YgZWFjaCBkaXJlY3RvcnkgYXMgaXQNCj4gLWlz
IHNjYW5uZWQsIGFuZCBhbnkgbGlua3MgdGhhdCBhcmUgY3JlYXRlZC4NCj4gK1ByaW50IGN1
cnJlbnQgdmVyc2lvbiBudW1iZXIsDQo+ICt0aGUgbmFtZSBvZiBlYWNoIGRpcmVjdG9yeSBh
cyBpdCBpcyBzY2FubmVkLA0KPiArYW5kIGFueSBsaW5rcyB0aGF0IGFyZSBjcmVhdGVkLg0K
PiAgIE92ZXJyaWRlcyBxdWlldCBtb2RlLg0KPiAgIC5UUA0KPiAgIC5CUiBcLVYgIiwgIiBc
LVwtdmVyc2lvbg0KPiBAQCAtMTc4LDcgKzE5MCw4IEBAIFByaW50IHByb2dyYW0gdmVyc2lv
bi4NCj4gICBEb24ndCB1cGRhdGUgbGlua3MuDQo+ICAgVW5sZXNzDQo+ICAgLkIgXC1ODQo+
IC1pcyBhbHNvIHNwZWNpZmllZCwgdGhlIGNhY2hlIGlzIHN0aWxsIHJlYnVpbHQuDQo+ICtp
cyBhbHNvIHNwZWNpZmllZCwNCj4gK3RoZSBjYWNoZSBpcyBzdGlsbCByZWJ1aWx0Lg0KPiAg
IC5TSCBGSUxFUw0KPiAgIC5cIiBGSVhNRSBTaW5jZSBnbGliYy0yLjMuNCwgImluY2x1ZGUi
IGRpcmVjdGl2ZXMgYXJlIHN1cHBvcnRlZCBpbiBsZC5zby5jb25mDQo+ICAgLlwiDQo+IEBA
IC0xODksNyArMjAyLDggQEAgaXMgYWxzbyBzcGVjaWZpZWQsIHRoZSBjYWNoZSBpcyBzdGls
bCByZWJ1aWx0Lg0KPiAgIFJ1bi10aW1lIGxpbmtlci9sb2FkZXIuDQo+ICAgLlRQDQo+ICAg
LkkgL2V0Yy9sZC5zby5jb25mDQo+IC1GaWxlIGNvbnRhaW5pbmcgYSBsaXN0IG9mIGRpcmVj
dG9yaWVzLCBvbmUgcGVyIGxpbmUsDQo+ICtGaWxlIGNvbnRhaW5pbmcgYSBsaXN0IG9mIGRp
cmVjdG9yaWVzLA0KPiArb25lIHBlciBsaW5lLA0KPiAgIGluIHdoaWNoIHRvIHNlYXJjaCBm
b3IgbGlicmFyaWVzLg0KPiAgIC5UUA0KPiAgIC5JIC9ldGMvbGQuc28uY2FjaGUNCg0KLS0g
DQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------8YoF9cqZ9K0vDNoKtwvbcpjd--

--------------qHPAhnIDRBgMBYgnzbYVKog8
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO3XnUACgkQnowa+77/
2zLeRhAAnHk5/XhNty2gm620BmxBV9TxcB+z0hcZ4b1ySbksuUxMHXcueXbgFOIJ
zZFnU1cKZBo4VseR7x6cKP531zK9hh5ytpfdl4Lp6+aNox0X7aZaTsotZIcClor1
j5GnH+1KwOm/RaTzwCW3+DazBfojeN2CbpdS3OYLlFd9qQMK0DtqDZlXuUmIBHgF
j7rOuAVBlYD+hxXHGK28zW0xurh/0iX4bAnBQVkmUKzcLeAjlBoNiY4WNLKULhDO
KxlzDH5/1lUtZDQT+dtKxLob9LVkxBh0JoGcsZArG5soPF1V9YV0yPI30mwi7UMp
qO9nAi8z2hr0S805bEDiYS/dX7+FqurT+QM4tTgM5HYCp7CMvm8u4VfmHefVBEJo
y/tej6uQidf5tQtpk3n4b15yFMzvuBS6ViPI7duYG7WPm8ANlG72iB7yfI7p6Kc2
kA8LooKopDys5skVininUXnTng8Jg23bXFTADlaPa9ze++RHVGa5K8pmj/DeI83I
y+e18B6UCAmglupWLg1PO8R1bPDAP4x0q5zvygceDoxw+wWF5vAzVE0YVms/JWiO
zPVJFtfq2LlDAUrFIRe76zTHLHtuhrCDNvrv8kxUXtAgz12ZhwcgKrMR57TnKWmb
FtrT4WcroSI6fYaGDhzC8xKjvsPoMRKY0EyFMRzafj2QN0KnIwA=
=8UAi
-----END PGP SIGNATURE-----

--------------qHPAhnIDRBgMBYgnzbYVKog8--
