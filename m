Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8CFC8660E97
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 13:12:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230102AbjAGMMj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 07:12:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229671AbjAGMMi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 07:12:38 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 881A34ECA1
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 04:12:37 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id ay40so2771558wmb.2
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 04:12:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3KsetkSpAmcfIm5ZqBAWYkmOH5La1Q1Rfu75oqxJrck=;
        b=beTUa6Ocf8K8+2dCkkmscGiPRePRu06AF3F7ErHHEhJnRypsLm1Fz7zfEN0xRnkxhs
         U7znWIkvJSfFWVPK6HGhNX9tVLq1ODbugtRrOsE16mt5XSSdx5cC5yfTDVnjWwP/3G9I
         Mw+FO3hMQNEFpWi911n/Gc46QQ2yp22+CkRBVY7jdo1vWtUPYYtJTraizY5M13ERp3Pq
         PqDVJUWshJ+GrfAX1pZTYgB4YwjG9Hd8NKOdxAq4/zsE61w0jl2jkGvGN34d1fegSn6j
         wEQCxEUQRqGSt+Vhdf9sCDzLIS+RnPzfX/rh0Ta3YO1kMI8/3kijx8fA0W9JpvYWrgRo
         qNDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3KsetkSpAmcfIm5ZqBAWYkmOH5La1Q1Rfu75oqxJrck=;
        b=x85+P5T0LMT02g2Z2yNUUZ0MgHulDUI+p2jb/3PTNsAmLGnvXBisaqB162g8bbbJdn
         +WTmozB9hQEV1Y3YeutphAbwRcdLA7owNbgcT/qNdfH7cFeSS1yq/mcikLft/NkEraDZ
         UKcYAP+BVnPNLSDqL65j7QNxIFCxpVds91H7Cf+MoPJIFOGNe1zSL1U8FHgeHGv1NKlb
         HwCyvwYVtKx1rfM2imVqwuOYv+mU+l2wiZCvwLhPHerNk0uJYt8caZogl95VVDupD6mO
         QMdoIch3Crvx1DevBusFAkgvtp3hT6zHs7cvfalK7NZR56C9toXYiN9W+i9EgBp/NiQL
         kAmQ==
X-Gm-Message-State: AFqh2kqGqdg8zLJ0UA6w4IpsB0QVI+PlV+cGs9N6Ym2aFDKLHhIy8Ltg
        Re8w5aYwnNw7u7ITxNOOymryv4y1bL0=
X-Google-Smtp-Source: AMrXdXtY9X7RSVQSPt/SNbXzlbxZs9QjV/yGBegrC/hcSuapCuYRMp7eol3sI0ENlM0SyB/vQhpK5Q==
X-Received: by 2002:a05:600c:4d21:b0:3d2:2a72:2573 with SMTP id u33-20020a05600c4d2100b003d22a722573mr41884119wmp.11.1673093556029;
        Sat, 07 Jan 2023 04:12:36 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n7-20020a05600c4f8700b003c6bd12ac27sm5864229wmq.37.2023.01.07.04.12.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jan 2023 04:12:35 -0800 (PST)
Message-ID: <988d2119-b1f4-4bb4-102f-4e68ba6cd039@gmail.com>
Date:   Sat, 7 Jan 2023 13:12:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 04/10] libc.7: wfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, Dave Kemper <saint.snit@gmail.com>
References: <20230107095438.y4e3jh7nlrlrvagv@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230107095438.y4e3jh7nlrlrvagv@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------9n29DFH8kJesIfcfCbNf9VyS"
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------9n29DFH8kJesIfcfCbNf9VyS
Content-Type: multipart/mixed; boundary="------------b3ZXkOB9a4fiAk2pGGd0d0n4";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Dave Kemper <saint.snit@gmail.com>
Message-ID: <988d2119-b1f4-4bb4-102f-4e68ba6cd039@gmail.com>
Subject: Re: [PATCH v4 04/10] libc.7: wfix
References: <20230107095438.y4e3jh7nlrlrvagv@illithid>
In-Reply-To: <20230107095438.y4e3jh7nlrlrvagv@illithid>

--------------b3ZXkOB9a4fiAk2pGGd0d0n4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS83LzIzIDEwOjU0LCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiAqIFNheSAiR05VL0xpbnV4IGRpc3RyaWJ1dGlvbnMiIGluc3RlYWQgb2YgIkxp
bnV4IGRpc3RyaWJ1dGlvbnMiLg0KPiAqIENsYXJpZnkgY2xhaW0gYWJvdXQgcG9wdWxhcml0
eSBvZiBnbGliYy4NCj4gKiBUaWdodGVuIHdvcmRpbmcuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBHLiBCcmFuZGVuIFJvYmluc29uIDxnLmJyYW5kZW4ucm9iaW5zb25AZ21haWwuY29tPg0K
PiAtLS0NCj4gICBtYW43L2xpYmMuNyB8IDEwMyArKysrKysrKysrKysrKysrKysrKysrKysr
KysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDU1IGlu
c2VydGlvbnMoKyksIDQ4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjcv
bGliYy43IGIvbWFuNy9saWJjLjcNCj4gaW5kZXggNDNlYzAyNjlmLi5jNjE4MDA3NWMgMTAw
NjQ0DQo+IC0tLSBhL21hbjcvbGliYy43DQo+ICsrKyBiL21hbjcvbGliYy43DQo+IEBAIC0x
Niw4MCArMTYsODggQEAgQmVjYXVzZSBvZiBzb21lIGhpc3RvcnkNCj4gICB1c2Ugb2YgdGhl
IHRlcm0gXChscWxpYmNcKHJxDQo+ICAgdG8gcmVmZXIgdG8gdGhlIHN0YW5kYXJkIEMgbGli
cmFyeSBpcyBzb21ld2hhdCBhbWJpZ3VvdXMgb24gTGludXguDQo+ICAgLlNTIGdsaWJjDQo+
IC1CeSBmYXIgdGhlIG1vc3Qgd2lkZWx5IHVzZWQgQyBsaWJyYXJ5IG9uIExpbnV4IGlzIHRo
ZQ0KPiArVGhlIHN0YW5kYXJkIGxpYmMgbW9zdCBwb3B1bGFybHkgdXNlZCB3aXRoIHRoZSBM
aW51eCBrZXJuZWwgaXMNCj4gICAuVVIgaHR0cDovL3d3dy5nbnUub3JnXDovc29mdHdhcmVc
Oi9saWJjLw0KPiAgIEdOVSBDIExpYnJhcnkNCj4gICAuVUUgLA0KPiAtb2Z0ZW4gcmVmZXJy
ZWQgdG8gYXMNCj4gK3dpZGVseSBjYWxsZWQNCj4gICAuSVIgZ2xpYmMgLg0KPiAtVGhpcyBp
cyB0aGUgQyBsaWJyYXJ5IHRoYXQgaXMgbm93YWRheXMgdXNlZCBpbiBhbGwNCj4gLW1ham9y
IExpbnV4IGRpc3RyaWJ1dGlvbnMuDQo+IC1JdCBpcyBhbHNvIHRoZSBDIGxpYnJhcnkgd2hv
c2UgZGV0YWlscyBhcmUgZG9jdW1lbnRlZA0KPiArVGhpcyBpbXBsZW1lbnRhdGlvbiBpcyBu
b3dhZGF5cyB1c2VkDQo+ICtpbiBhbGwgbWFqb3IgR05VL0xpbnV4IGRpc3RyaWJ1dGlvbnMu
DQo+ICtJdHMgZGV0YWlscyBhcmUgZG9jdW1lbnRlZA0KPiAgIGluIHRoZSByZWxldmFudCBw
YWdlcyBvZiB0aGUNCj4gK0xpbnV4DQo+ICAgLkkgbWFuLXBhZ2VzDQo+IC1wcm9qZWN0DQo+
IC0ocHJpbWFyaWx5IGluIFNlY3Rpb24gMyBvZiB0aGUgbWFudWFsKS4NCj4gLURvY3VtZW50
YXRpb24gb2YgZ2xpYmMgaXMgYWxzbyBhdmFpbGFibGUgaW4gdGhlIGdsaWJjIG1hbnVhbCwN
Cj4gLWF2YWlsYWJsZSB2aWEgdGhlIGNvbW1hbmQNCj4gLS5JUiAiaW5mbyBsaWJjIiAuDQo+
IC1SZWxlYXNlIDEuMCBvZiBnbGliYyB3YXMgbWFkZSBpbiBTZXB0ZW1iZXIgMTk5Mi4NCj4g
K3Byb2plY3QsDQo+ICtwcmltYXJpbHkgaW4gc2VjdGlvbiAzIG9mIHRoZSBtYW51YWwuDQo+
ICtnbGliYyBhbHNvIG9mZmVycyBhIG1hbnVhbCBvZiBpdHMgb3duIGluIFRleGluZm8gZm9y
bWF0LA0KPiArYnJvd3NhYmxlIGF0IHRoZSBjb21tYW5kIGxpbmUgd2l0aA0KPiArLlJJIFwo
bHEgImluZm8gbGliYyIgXChycS4NCg0KV2UgbWlnaHQgZG8gYSBncmVhdCBmYXZvdXIgdG8g
b3VyIHJlYWRlcnMgaWYgd2Ugc3VnZ2VzdCBwaXBpbmcgaW5mbygxKSB0byANCmxlc3MoMSks
IGFzIERhdmUgc3VnZ2VzdHMgZXZlcnkgbm93IGFuZCB0aGVuIDopDQoNCj4gK1ZlcnNpb24g
MS4wIG9mIGdsaWJjIHdhcyByZWxlYXNlZCBpbiBTZXB0ZW1iZXIgMTk5Mi4NCj4gICAoVGhl
cmUgd2VyZSBlYXJsaWVyIDAueCByZWxlYXNlcy4pDQo+IC1UaGUgbmV4dCBtYWpvciByZWxl
YXNlIG9mIGdsaWJjIHdhcyAyLjAsDQo+ICtUaGUgbmV4dCBtYWpvciByZWxlYXNlIG9mIGds
aWJjIHdhcyAyLjANCj4gICBhdCB0aGUgYmVnaW5uaW5nIG9mIDE5OTcuDQo+ICAgLlBQDQo+
IC1UaGUgcGF0aG5hbWUNCj4gK1RoZSBmaWxlDQo+ICAgLkkgL2xpYi9saWJjLnNvLjYNCj4g
LShvciBzb21ldGhpbmcgc2ltaWxhcikNCj4gLWlzIG5vcm1hbGx5IGEgc3ltYm9saWMgbGlu
ayB0aGF0DQo+IC1wb2ludHMgdG8gdGhlIGxvY2F0aW9uIG9mIHRoZSBnbGliYyBsaWJyYXJ5
LA0KPiAtYW5kIGV4ZWN1dGluZyB0aGlzIHBhdGhuYW1lIHdpbGwgY2F1c2UgZ2xpYmMgdG8g
ZGlzcGxheQ0KPiAtdmFyaW91cyBpbmZvcm1hdGlvbiBhYm91dCB0aGUgdmVyc2lvbiBpbnN0
YWxsZWQgb24geW91ciBzeXN0ZW0uDQo+ICtvciBzaW1pbGFyDQo+ICtpcyBub3JtYWxseSBh
IHN5bWJvbGljIGxpbmsgdG8gdGhlIGdsaWJjIGxpYnJhcnkuDQo+ICtFeGVjdXRlIGl0IHRv
IGRpc3BsYXkgaW5mb3JtYXRpb24gYWJvdXQgdGhlIHZlcnNpb24gaW5zdGFsbGVkIG9uIHlv
dXINCj4gK3N5c3RlbS4NCj4gICAuU1MgTGludXggbGliYw0KPiAtSW4gdGhlIGVhcmx5IHRv
IG1pZCAxOTkwcywNCj4gLXRoZXJlIHdhcyBmb3IgYSB3aGlsZQ0KPiArSW4gdGhlIGVhcmx5
IHRvIG1pZC0xOTkwcywNCj4gICAuSVIgIkxpbnV4IGxpYmMiICwNCj4gLWEgZm9yayBvZiBn
bGliYyAxLnggY3JlYXRlZCBieSBMaW51eCBkZXZlbG9wZXJzIHdobyBmZWx0IHRoYXQgZ2xp
YmMNCj4gLWRldmVsb3BtZW50IGF0IHRoZSB0aW1lIHdhcyBub3Qgc3VmZmljaW5nIGZvciB0
aGUgbmVlZHMgb2YgTGludXguDQo+ICthIGZvcmsgb2YgZ2xpYmNcfjEsDQo+ICt3YXMgbWFp
bnRhaW5lZCBieSBMaW51eCBkZXZlbG9wZXJzDQo+ICt3aG8gZmVsdCB0aGF0IGdsaWJjIGRl
dmVsb3BtZW50IGF0IHRoZSB0aW1lDQo+ICtkaWQgbm90IG1lZXQgdGhlIExpbnV4IHVzZXIg
Y29tbXVuaXR5J3MgbmVlZHMuDQo+ICAgT2Z0ZW4sDQo+IC10aGlzIGxpYnJhcnkgd2FzIHJl
ZmVycmVkIHRvIChhbWJpZ3VvdXNseSkgYXMganVzdCBcKGxxbGliY1wocnEuDQo+ICt0aGlz
IGxpYnJhcnkgd2FzIHJlZmVycmVkIHRvLA0KPiArc2ltcGx5IGFuZCBhbWJpZ3VvdXNseSwN
Cj4gK2FzIFwobHFsaWJjXChycS4NCj4gICBMaW51eCBsaWJjIHJlbGVhc2VkIG1ham9yIHZl
cnNpb25zIDIsIDMsIDQsIGFuZCA1LA0KPiAtYXMgd2VsbCBhcyBtYW55IG1pbm9yIHZlcnNp
b25zIG9mIHRob3NlIHJlbGVhc2VzLg0KPiAtTGludXggbGliYzQgd2FzIHRoZSBsYXN0IHZl
cnNpb24gdG8gdXNlIHRoZSBhLm91dCBiaW5hcnkgZm9ybWF0LA0KPiAtYW5kIHRoZSBmaXJz
dCB2ZXJzaW9uIHRvIHByb3ZpZGUgKHByaW1pdGl2ZSkgc2hhcmVkIGxpYnJhcnkgc3VwcG9y
dC4NCj4gLUxpbnV4IGxpYmMgNSB3YXMgdGhlIGZpcnN0IHZlcnNpb24gdG8gc3VwcG9ydCB0
aGUgRUxGIGJpbmFyeSBmb3JtYXQ7DQo+IC10aGlzIHZlcnNpb24gdXNlZCB0aGUgc2hhcmVk
IGxpYnJhcnkgc29uYW1lDQo+ICthbG9uZyB3aXRoIG1hbnkgbWlub3IgdXBkYXRlcy4NCj4g
K0xpbnV4IGxpYmNcfjQgd2FzIHRoZSBsYXN0IHRvIHVzZSB0aGUNCj4gK29iamVjdCBmaWxl
IGZvcm1hdCBjYWxsZWQgXChscWEub3V0XChycSwNCj4gK2FuZCB0aGUgZmlyc3Qgb24gTGlu
dXggdG8gcHJvdmlkZSAocHJpbWl0aXZlKSBzaGFyZWQgbGlicmFyeSBzdXBwb3J0Lg0KPiAr
TGludXggbGliY1x+NSB3YXMgdGhlIGZpcnN0IG9uIExpbnV4IHRvIHN1cHBvcnQgRUxGIG9i
amVjdCBjb2RlOw0KPiAraXQgZW1wbG95ZWQgdGhlDQo+ICsuSSBzb25hbWUNCj4gKyhzaGFy
ZWQgb2JqZWN0IG5hbWUpDQo+ICAgLklSIGxpYmMuc28uNSAuDQo+ICAgRm9yIGEgd2hpbGUs
DQo+IC1MaW51eCBsaWJjIHdhcyB0aGUgc3RhbmRhcmQgQyBsaWJyYXJ5IGluIG1hbnkgTGlu
dXggZGlzdHJpYnV0aW9ucy4NCj4gK0xpbnV4IGxpYmMgd2FzIHRoZSBzdGFuZGFyZCBDIGxp
YnJhcnkgaW4gbWFueSBHTlUvTGludXggZGlzdHJpYnV0aW9ucy4NCj4gICAuUFANCj4gLUhv
d2V2ZXIsDQo+IC1ub3R3aXRoc3RhbmRpbmcgdGhlIG9yaWdpbmFsIG1vdGl2YXRpb25zIG9m
IHRoZSBMaW51eCBsaWJjIGVmZm9ydCwNCj4gLWJ5IHRoZSB0aW1lIGdsaWJjIDIuMCB3YXMg
cmVsZWFzZWQNCj4gLShpbiAxOTk3KSwNCj4gK05vdHdpdGhzdGFuZGluZyB0aGUgb3JpZ2lu
YWwgbW90aXZhdGlvbnMgb2YgdGhlIExpbnV4IGxpYmMgZWZmb3J0LA0KPiArYnkgdGhlIHRp
bWUgZ2xpYmMgMi4wIHdhcyByZWxlYXNlZCwNCj4gICBpdCB3YXMgY2xlYXJseSBzdXBlcmlv
ciB0byBMaW51eCBsaWJjLA0KPiAtYW5kIGFsbCBtYWpvciBMaW51eCBkaXN0cmlidXRpb25z
IHRoYXQgaGFkIGJlZW4gdXNpbmcgTGludXggbGliYw0KPiAtc29vbiBzd2l0Y2hlZCBiYWNr
IHRvIGdsaWJjLg0KPiAtVG8gYXZvaWQgYW55IGNvbmZ1c2lvbiB3aXRoIExpbnV4IGxpYmMg
dmVyc2lvbnMsDQo+IC1nbGliYyAyLjAgYW5kIGxhdGVyIHVzZWQgdGhlIHNoYXJlZCBsaWJy
YXJ5IHNvbmFtZQ0KPiAtLklSIGxpYmMuc28uNiAuDQo+ICthbmQgYWxsIG1ham9yIEdOVS9M
aW51eCBkaXN0cmlidXRpb25zIHRoYXQgaGFkIGJlZW4gdXNpbmcgTGludXggbGliYw0KPiAr
c29vbiBzd2l0Y2hlZCAoYmFjaykgdG8gZ2xpYmMuDQo+ICtUbyBhdm9pZCBjb25mdXNpb24g
d2l0aCBMaW51eCBsaWJjIHZlcnNpb25pbmcsDQo+ICtnbGliYyAyLjAgYW5kIGxhdGVyIHVz
ZSB0aGUgc29uYW1lDQo+ICsuSSBsaWJjLnNvLjYNCj4gK29uIExpbnV4IHN5c3RlbXMgdG8g
aW5kaWNhdGUgdGhlaXIgc3RhdHVzIGFzIHN1Y2Nlc3NvcnMNCj4gK3RvIExpbnV4IGxpYmNc
fjUuDQo+ICAgLlBQDQo+ICAgU2luY2UgdGhlIHN3aXRjaCBmcm9tIExpbnV4IGxpYmMgdG8g
Z2xpYmMgMi4wIG9jY3VycmVkIGxvbmcgYWdvLA0KPiAgIC5JIG1hbi1wYWdlcw0KPiAgIG5v
IGxvbmdlciB0YWtlcyBjYXJlIHRvIGRvY3VtZW50IExpbnV4IGxpYmMgZGV0YWlscy4NCj4g
ICBOZXZlcnRoZWxlc3MsDQo+IC10aGUgaGlzdG9yeSBpcyB2aXNpYmxlIGluIHZlc3RpZ2Vz
IG9mIGluZm9ybWF0aW9uDQo+IC1hYm91dCBMaW51eCBsaWJjIHRoYXQgcmVtYWluIGluIGEg
ZmV3IG1hbnVhbCBwYWdlcywNCj4gK3Zlc3RpZ2VzIG9mIHRoaXMgaGlzdG9yeSBsaW5nZXIg
aW4gY29tbWVudHMNCj4gK2Fib3V0IExpbnV4IGxpYmMgaW4gYSBmZXcgbWFudWFsIHBhZ2Vz
XChlbVwNCj4gICBpbiBwYXJ0aWN1bGFyLA0KPiAgIHJlZmVyZW5jZXMgdG8NCj4gICAuSSBs
aWJjNA0KPiAgIGFuZA0KPiAgIC5JUiBsaWJjNSAuDQo+ICAgLlNTIE90aGVyIEMgbGlicmFy
aWVzDQo+IC1UaGVyZSBhcmUgdmFyaW91cyBvdGhlciBsZXNzIHdpZGVseSB1c2VkIEMgbGli
cmFyaWVzIGZvciBMaW51eC4NCj4gLVRoZXNlIGxpYnJhcmllcyBhcmUgZ2VuZXJhbGx5IHNt
YWxsZXIgdGhhbiBnbGliYywNCj4gLWJvdGggaW4gdGVybXMgb2YgZmVhdHVyZXMgYW5kIG1l
bW9yeSBmb290cHJpbnQsDQo+IC1hbmQgb2Z0ZW4gaW50ZW5kZWQgZm9yIGJ1aWxkaW5nIHNt
YWxsIGJpbmFyaWVzLA0KPiAtcGVyaGFwcyB0YXJnZXRlZCBhdCBkZXZlbG9wbWVudCBmb3Ig
ZW1iZWRkZWQgTGludXggc3lzdGVtcy4NCj4gK090aGVyLA0KPiArbGVzcyB3aWRlbHkgdXNl
ZCwNCj4gK0MgbGlicmFyaWVzIGZvciBMaW51eCBleGlzdC4NCj4gK1RoZXkgYXJlIGdlbmVy
YWxseSBzbWFsbGVyIHRoYW4gZ2xpYmMNCj4gK2luIHRlcm1zIG9mIGZlYXR1cmVzIGFuZCBt
ZW1vcnkgZm9vdHByaW50LA0KPiArYW5kIGFyZSBvZnRlbiBpbnRlbmRlZCBmb3IgYnVpbGRp
bmcgc21hbGwgYmluYXJpZXMsDQo+ICtzdWNoIGFzIHRob3NlIHRhcmdldHRpbmcgZW1iZWRk
ZWQgc3lzdGVtcy4NCj4gICBBbW9uZyBzdWNoIGxpYnJhcmllcyBhcmUNCj4gICAuVVIgaHR0
cDovL3d3d1w6LnVjbGliY1w6Lm9yZy8NCj4gICAuSSB1Q2xpYmMNCj4gQEAgLTEwMSwxMCAr
MTA5LDkgQEAgYW5kDQo+ICAgLlVSIGh0dHA6Ly93d3dcOi5tdXNsXC1saWJjXDoub3JnLw0K
PiAgIC5JICJtdXNsIGxpYmMiDQo+ICAgLlVFIC4NCj4gLURldGFpbHMgb2YgdGhlc2UgbGli
cmFyaWVzIGFyZSBjb3ZlcmVkIGJ5IHRoZQ0KPiArRGV0YWlscyBvZiB0aGVzZSBhcmUgb2Zm
ZXJlZCBieSBMaW51eA0KPiAgIC5JIG1hbi1wYWdlcw0KPiAtcHJvamVjdCwNCj4gLXdoZXJl
IHRoZXkgYXJlIGtub3duLg0KPiArd2hlcmUga25vd24uDQo+ICAgLlNIIFNFRSBBTFNPDQo+
ICAgLkJSIHN5c2NhbGxzICgyKSwNCj4gICAuQlIgZ2V0YXV4dmFsICgzKSwNCg0KLS0gDQo8
aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------b3ZXkOB9a4fiAk2pGGd0d0n4--

--------------9n29DFH8kJesIfcfCbNf9VyS
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO5YbIACgkQnowa+77/
2zK1ZA//VN/4yLuCBs/k542cTdQY/k69As5wiqhAQOmynuAYvVdwJ8Hnk8GlAt7t
lQqLLbvM54vUKB0t3OFVQKjVx/s8PHyuIedXTce5MumIH9f5BfcQ2Wpe0YYu5EbB
a6nnqGShsguc6jSqVtf01FSZjndHGWn7BnaZ2KmBbttnXH41VRrshfSCpolSSA92
2Bv9LmV+P7EaXuAdFlAOc0mkImmweoDSuIgjeRA7QKN4nxA+gw4RwKDsKND+kplk
XgCXOaRhizZSbCfwFKhSoE7XfehmK5H7Ug436BPhlUmVtLdWE42gVyfAiMrFeE3S
8W6S2JC3RZd8WpaYHNwhieP/vKNw/7K/NiZ9lEeh8kS8Mg4eeAmRp2v0vB/LZ6kJ
b1e4AKnAQajFDJYtVLqZ/x5jvchZ2JlGj1lfMFmEvVIKKUzzJo9+bJzMzjGjrl7+
lGd3GKoZVgN/228EOLnQpxkfUJksFSoIu7N6owH9CuPx00yrcXM2X+tMmb30C4Fw
KbDnI8QkUIQj2z8df4w3kQgAYhoX/kd8HZWkgv9ptQ3TidsNcODkxbDzp1IVGTbN
VtLBFFkEgCXnGjfxZ1aE6sW3nsJ/EdQXxuO780NzSLZFBKbHgF0+MkdMYndvynWI
ZsMjTO1k9UfXcZGHXpAeMlK4hBd1fl/ypb7Ayr2+9NhqwyzPepQ=
=hNpU
-----END PGP SIGNATURE-----

--------------9n29DFH8kJesIfcfCbNf9VyS--
