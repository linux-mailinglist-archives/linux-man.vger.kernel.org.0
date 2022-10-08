Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF7015F817F
	for <lists+linux-man@lfdr.de>; Sat,  8 Oct 2022 02:18:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229493AbiJHASB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Oct 2022 20:18:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229511AbiJHASA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Oct 2022 20:18:00 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50760BC624
        for <linux-man@vger.kernel.org>; Fri,  7 Oct 2022 17:17:59 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id j16so9359157wrh.5
        for <linux-man@vger.kernel.org>; Fri, 07 Oct 2022 17:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yqefeU0H6QwvwL/MWnTH5LEdRZZ23i4n46DlDB1s09U=;
        b=Z6XWIoZI6DTtzSbzLjOxam6FT9Boi1fnUvG66rAtZNaNZ/2gNlB3o05Gb2T4aa0bmt
         eYY2uw4iuLCW44ivlDJCFVj96NI8M5rvGXsMQ6NFBywuujhVsFd7ckmJse0jN561XrQI
         hEU1v81w8nYUiyVxzL0f3xlyR7OOWnirw18pweGyy840x31S28nB7h0ds0fAONPDAOgQ
         G6dwb987RDgT6q/2k7L0NazhXr6rMXX5rqVZDyUkfSLIXNIfRUbZczA+xyG2HZEz+5Xo
         XPTx4lHdud5iqFurV/NmFu6EbEQpVMTAPGcKGrIEgv37Qk5ackne0OIU9sSDQnyrUjPI
         aIxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yqefeU0H6QwvwL/MWnTH5LEdRZZ23i4n46DlDB1s09U=;
        b=nBkM30A3TvKrIrpV9CaIU5+UVFWzl9erHgxZxir5hojGffl4WZv/YLzd3pCkqWJVoS
         Wadl/a+0LtzAAPM/NG8z/6WI4zJzdwU1aOAInhm6K7RdUrrIYY60P7+Ztsjy4P9YU6GR
         Q0AZmuBk1dUHQ1kejEX6zqytszwr5S/9MEktDBKrE9vP8BbPMwkG3fctVbr8wODoNtM9
         d/lIa+SKDbtZ5Dm/L1eT7lNDL4S7CKYoaFFOI4NFjUiSaU1enULukUHqFOSHuum5WVG1
         FVuefhHhrlaELTLff+E5YABo7CfHgbkMny0U6aWJ1OtUc+n3zgeyBVQhl4juM9wtZ19t
         sRdw==
X-Gm-Message-State: ACrzQf3RMI8uZZ47BGdVY1yE7/KC0b4SriRLSuSYbnwfV6wD55wBh9I4
        bGeQwf+o3LvZV4CZZlWFMMKBLMq9R94=
X-Google-Smtp-Source: AMsMyM5lgRQjZEUNfgs0av5TKTBWKK55fphCBEMqGWXxl2B9bsYBPHuPRdu4z05fPzKWmDIP6Arp8A==
X-Received: by 2002:a5d:4e4f:0:b0:22e:3e3a:a65d with SMTP id r15-20020a5d4e4f000000b0022e3e3aa65dmr4833947wrt.115.1665188277818;
        Fri, 07 Oct 2022 17:17:57 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id s4-20020adff804000000b00226dedf1ab7sm3165462wrp.76.2022.10.07.17.17.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Oct 2022 17:17:57 -0700 (PDT)
Message-ID: <a021af5a-7694-b09c-523b-54e758fb2880@gmail.com>
Date:   Sat, 8 Oct 2022 02:17:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH] mlock.2, pivot_root.2, poll.2, select.2, fopen.3,
 capabilities.7: tfix
Content-Language: en-US
To:     =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220921154602.446336-1-stepnem@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220921154602.446336-1-stepnem@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------uMwQjhZ2cU7TRpnVjksJPShP"
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------uMwQjhZ2cU7TRpnVjksJPShP
Content-Type: multipart/mixed; boundary="------------9n01yF1FOwvKRMFnGfgJYFKQ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <a021af5a-7694-b09c-523b-54e758fb2880@gmail.com>
Subject: Re: [PATCH] mlock.2, pivot_root.2, poll.2, select.2, fopen.3,
 capabilities.7: tfix
References: <20220921154602.446336-1-stepnem@gmail.com>
In-Reply-To: <20220921154602.446336-1-stepnem@gmail.com>

--------------9n01yF1FOwvKRMFnGfgJYFKQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgxaB0xJtww6FuLA0KDQpPbiA5LzIxLzIyIDE3OjQ2LCDFoHTEm3DDoW4gTsSbbWVjIHdy
b3RlOg0KPiBTaWduZWQtb2ZmLWJ5OiDFoHTEm3DDoW4gTsSbbWVjIDxzdGVwbmVtQGdtYWls
LmNvbT4NCj4gLS0tDQo+ICAgbWFuMi9tbG9jay4yICAgICAgICB8IDIgKy0NCj4gICBtYW4y
L3Bpdm90X3Jvb3QuMiAgIHwgMiArLQ0KPiAgIG1hbjIvcG9sbC4yICAgICAgICAgfCAyICst
DQo+ICAgbWFuMi9zZWxlY3QuMiAgICAgICB8IDIgKy0NCj4gICBtYW4zL2ZvcGVuLjMgICAg
ICAgIHwgMiArLQ0KPiAgIG1hbjcvY2FwYWJpbGl0aWVzLjcgfCA0ICsrLS0NCj4gICA2IGZp
bGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9tYW4yL21sb2NrLjIgYi9tYW4yL21sb2NrLjINCj4gaW5kZXggZmMxMzhm
NmZkZjQ0Li5kYTFmZjY5NzY5ZDMgMTAwNjQ0DQo+IC0tLSBhL21hbjIvbWxvY2suMg0KPiAr
KysgYi9tYW4yL21sb2NrLjINCj4gQEAgLTM2LDcgKzM2LDcgQEAgYW5kDQo+ICAgcGVyZm9y
bSB0aGUgY29udmVyc2Ugb3BlcmF0aW9uLA0KPiAgIHVubG9ja2luZyBwYXJ0IG9yIGFsbCBv
ZiB0aGUgY2FsbGluZyBwcm9jZXNzJ3MgdmlydHVhbA0KPiAgIGFkZHJlc3Mgc3BhY2UsIHNv
IHRoYXQgcGFnZXMgaW4gdGhlIHNwZWNpZmllZCB2aXJ0dWFsIGFkZHJlc3MgcmFuZ2UgbWF5
DQo+IC1vbmNlIG1vcmUgdG8gYmUgc3dhcHBlZCBvdXQgaWYgcmVxdWlyZWQgYnkgdGhlIGtl
cm5lbCBtZW1vcnkgbWFuYWdlci4NCj4gK29uY2UgbW9yZSBiZSBzd2FwcGVkIG91dCBpZiBy
ZXF1aXJlZCBieSB0aGUga2VybmVsIG1lbW9yeSBtYW5hZ2VyLg0KPiAgIC5QUA0KPiAgIE1l
bW9yeSBsb2NraW5nIGFuZCB1bmxvY2tpbmcgYXJlIHBlcmZvcm1lZCBpbiB1bml0cyBvZiB3
aG9sZSBwYWdlcy4NCj4gICAuU1MgbWxvY2soKSwgbWxvY2syKCksIGFuZCBtdW5sb2NrKCkN
Cj4gZGlmZiAtLWdpdCBhL21hbjIvcGl2b3Rfcm9vdC4yIGIvbWFuMi9waXZvdF9yb290LjIN
Cj4gaW5kZXggZjJkZjI1ZDEyN2IwLi5lY2I5MmMxMDNhMmMgMTAwNjQ0DQo+IC0tLSBhL21h
bjIvcGl2b3Rfcm9vdC4yDQo+ICsrKyBiL21hbjIvcGl2b3Rfcm9vdC4yDQo+IEBAIC02MCw3
ICs2MCw3IEBAIG11c3Qgbm90IGJlIG9uIHRoZSBzYW1lIG1vdW50IGFzIHRoZSBjdXJyZW50
IHJvb3QuDQo+ICAgLklQIFwtDQo+ICAgXGZJcHV0X29sZFxmUCBtdXN0IGJlIGF0IG9yIHVu
ZGVybmVhdGggXGZJbmV3X3Jvb3RcZlA7DQo+ICAgdGhhdCBpcywgYWRkaW5nIHNvbWUgbm9u
bmVnYXRpdmUNCj4gLW51bWJlciBvZiAiXGZJLy4uXGZQIiBwcmVmaXhlcyB0byB0aGUgcGF0
aG5hbWUgcG9pbnRlZCB0byBieQ0KPiArbnVtYmVyIG9mICJcZkkvLi5cZlAiIHN1ZmZpeGVz
IHRvIHRoZSBwYXRobmFtZSBwb2ludGVkIHRvIGJ5DQoNCkknZCBsaWtlIHRoaXMgY2hhbmdl
IHRvIGJlIHNlcGFyYXRlIGZyb20gdGhlIHJlc3QsIGFzIGl0J3Mgbm90IGFuIA0Kb2J2aW91
cyB3cml0aW5nIHR5cG8sIGJ1dCByYXRoZXIgb25lIHRoYXQgbmVlZHMgdW5kZXJzdGFuZGlu
ZyB0aGUgY29udGV4dC4NCg0KV291bGQgeW91IG1pbmQgc3BsaXR0aW5nIGludG8gYSBzZXBh
cmF0ZSBwYXRjaD8NCg0KVGhhbmtzLA0KDQpBbGV4DQoNCj4gICAuSSBwdXRfb2xkDQo+ICAg
bXVzdCB5aWVsZCB0aGUgc2FtZSBkaXJlY3RvcnkgYXMgXGZJbmV3X3Jvb3RcZlAuDQo+ICAg
LklQIFwtDQo+IGRpZmYgLS1naXQgYS9tYW4yL3BvbGwuMiBiL21hbjIvcG9sbC4yDQo+IGlu
ZGV4IDhkMmIwOGQ2M2M2Yy4uNDU5Y2IzODNhNzAyIDEwMDY0NA0KPiAtLS0gYS9tYW4yL3Bv
bGwuMg0KPiArKysgYi9tYW4yL3BvbGwuMg0KPiBAQCAtNTc3LDcgKzU3Nyw3IEBAIG1haW4o
aW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkNCj4gICAgICAgaWYgKHBmZHMgPT0gTlVMTCkNCj4g
ICAgICAgICAgIGVyckV4aXQoIm1hbGxvYyIpOw0KPiAgIA0KPiAtICAgIC8qIE9wZW4gZWFj
aCBmaWxlIG9uIGNvbW1hbmQgbGluZSwgYW5kIGFkZCBpdCBcKGFxcGZkc1woYXEgYXJyYXku
ICovDQo+ICsgICAgLyogT3BlbiBlYWNoIGZpbGUgb24gY29tbWFuZCBsaW5lLCBhbmQgYWRk
IGl0IHRvIFwoYXFwZmRzXChhcSBhcnJheS4gKi8NCj4gICANCj4gICAgICAgZm9yIChuZmRz
X3QgaiA9IDA7IGogPCBuZmRzOyBqKyspIHsNCj4gICAgICAgICAgIHBmZHNbal0uZmQgPSBv
cGVuKGFyZ3ZbaiArIDFdLCBPX1JET05MWSk7DQo+IGRpZmYgLS1naXQgYS9tYW4yL3NlbGVj
dC4yIGIvbWFuMi9zZWxlY3QuMg0KPiBpbmRleCAwZmMwNzVkNDg4OTcuLjQxM2JhZjNkNmZl
ZiAxMDA2NDQNCj4gLS0tIGEvbWFuMi9zZWxlY3QuMg0KPiArKysgYi9tYW4yL3NlbGVjdC4y
DQo+IEBAIC01NDcsNyArNTQ3LDcgQEAgT24gc29tZSBVTklYIHN5c3RlbXMsDQo+ICAgLkJS
IHNlbGVjdCAoKQ0KPiAgIHVuYmxvY2tzIGFuZCByZXR1cm5zLCB3aXRoIGFuIGluZGljYXRp
b24gdGhhdCB0aGUgZmlsZSBkZXNjcmlwdG9yIGlzIHJlYWR5DQo+ICAgKGEgc3Vic2VxdWVu
dCBJL08gb3BlcmF0aW9uIHdpbGwgbGlrZWx5IGZhaWwgd2l0aCBhbiBlcnJvciwNCj4gLXVu
bGVzcyBhbm90aGVyIHByb2Nlc3MgcmVvcGVucyBmaWxlIGRlc2NyaXB0b3IgYmV0d2VlbiB0
aGUgdGltZQ0KPiArdW5sZXNzIGFub3RoZXIgcHJvY2VzcyByZW9wZW5zIHRoZSBmaWxlIGRl
c2NyaXB0b3IgYmV0d2VlbiB0aGUgdGltZQ0KPiAgIC5CUiBzZWxlY3QgKCkNCj4gICByZXR1
cm5lZCBhbmQgdGhlIEkvTyBvcGVyYXRpb24gaXMgcGVyZm9ybWVkKS4NCj4gICBPbiBMaW51
eCAoYW5kIHNvbWUgb3RoZXIgc3lzdGVtcyksDQo+IGRpZmYgLS1naXQgYS9tYW4zL2ZvcGVu
LjMgYi9tYW4zL2ZvcGVuLjMNCj4gaW5kZXggZDJmYjZhYmVhY2Y0Li5hMmQzYjVhYjRlY2Mg
MTAwNjQ0DQo+IC0tLSBhL21hbjMvZm9wZW4uMw0KPiArKysgYi9tYW4zL2ZvcGVuLjMNCj4g
QEAgLTEyMyw3ICsxMjMsNyBAQCBjYWxsZWQgZm9yIGl0cyBzeW5jaHJvbml6aW5nIHNpZGUg
ZWZmZWN0KS4NCj4gICBPcGVuaW5nIGEgZmlsZSBpbiBhcHBlbmQgbW9kZSAoXGZCYVxmUCBh
cyB0aGUgZmlyc3QgY2hhcmFjdGVyIG9mDQo+ICAgLklSIG1vZGUgKQ0KPiAgIGNhdXNlcyBh
bGwgc3Vic2VxdWVudCB3cml0ZSBvcGVyYXRpb25zIHRvIHRoaXMgc3RyZWFtIHRvIG9jY3Vy
DQo+IC1hdCBlbmQtb2YtZmlsZSwgYXMgaWYgcHJlY2VkZWQgdGhlIGNhbGw6DQo+ICthdCBl
bmQtb2YtZmlsZSwgYXMgaWYgcHJlY2VkZWQgYnkgdGhlIGNhbGw6DQo+ICAgLlBQDQo+ICAg
LmluICs0bg0KPiAgIC5FWA0KPiBkaWZmIC0tZ2l0IGEvbWFuNy9jYXBhYmlsaXRpZXMuNyBi
L21hbjcvY2FwYWJpbGl0aWVzLjcNCj4gaW5kZXggZWY1NmM2M2Y5YTM0Li5jOTkxYjE3YjU2
NjYgMTAwNjQ0DQo+IC0tLSBhL21hbjcvY2FwYWJpbGl0aWVzLjcNCj4gKysrIGIvbWFuNy9j
YXBhYmlsaXRpZXMuNw0KPiBAQCAtMTA0MCw3ICsxMDQwLDcgQEAgVGhlcmVmb3JlLCB3aGVu
IGFzc2lnbmluZyBjYXBhYmlsaXRpZXMgdG8gYSBmaWxlDQo+ICAgaWYgd2Ugc3BlY2lmeSB0
aGUgZWZmZWN0aXZlIGZsYWcgYXMgYmVpbmcgZW5hYmxlZCBmb3IgYW55IGNhcGFiaWxpdHks
DQo+ICAgdGhlbiB0aGUgZWZmZWN0aXZlIGZsYWcgbXVzdCBhbHNvIGJlIHNwZWNpZmllZCBh
cyBlbmFibGVkDQo+ICAgZm9yIGFsbCBvdGhlciBjYXBhYmlsaXRpZXMgZm9yIHdoaWNoIHRo
ZSBjb3JyZXNwb25kaW5nIHBlcm1pdHRlZCBvcg0KPiAtaW5oZXJpdGFibGUgZmxhZ3MgaXMg
ZW5hYmxlZC4NCj4gK2luaGVyaXRhYmxlIGZsYWcgaXMgZW5hYmxlZC4NCj4gICAuXCINCj4g
ICAuU1MgRmlsZSBjYXBhYmlsaXR5IGV4dGVuZGVkIGF0dHJpYnV0ZSB2ZXJzaW9uaW5nDQo+
ICAgVG8gYWxsb3cgZXh0ZW5zaWJpbGl0eSwNCj4gQEAgLTEyNzEsNyArMTI3MSw3IEBAIGZp
bGUgcGVybWl0dGVkIGNhcGFiaWxpdGllcywgdGhlbg0KPiAgIGZhaWxzIHdpdGggdGhlIGVy
cm9yDQo+ICAgLkJSIEVQRVJNIC4NCj4gICBUaGlzIHByZXZlbnRzIHBvc3NpYmxlIHNlY3Vy
aXR5IHJpc2tzIHRoYXQgY291bGQgYXJpc2Ugd2hlbg0KPiAtYSBjYXBhYmlsaXR5LWR1bWIg
YXBwbGljYXRpb24gaXMgZXhlY3V0ZWQgd2l0aCBsZXNzIHByaXZpbGVnZSB0aGF0IGl0IG5l
ZWRzLg0KPiArYSBjYXBhYmlsaXR5LWR1bWIgYXBwbGljYXRpb24gaXMgZXhlY3V0ZWQgd2l0
aCBsZXNzIHByaXZpbGVnZSB0aGFuIGl0IG5lZWRzLg0KPiAgIE5vdGUgdGhhdCwgYnkgZGVm
aW5pdGlvbiwNCj4gICB0aGUgYXBwbGljYXRpb24gY291bGQgbm90IGl0c2VsZiByZWNvZ25p
emUgdGhpcyBwcm9ibGVtLA0KPiAgIHNpbmNlIGl0IGRvZXMgbm90IGVtcGxveSB0aGUNCj4g
DQo+IGJhc2UtY29tbWl0OiBiZjhmNTQxNWExZGQzMjk2ZDM3NDEwMDg5MzY0NThhZWFmODc2
OWZjDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------9n01yF1FOwvKRMFnGfgJYFKQ--

--------------uMwQjhZ2cU7TRpnVjksJPShP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNAwbQACgkQnowa+77/
2zJhhA//ePYkYXnrAbGGLwfI66iVOmbYwvoHpVrkaFIAeZXYjdEg/fXecxJC3TEs
9/NF5f38xyHpIzP/7bR5wZ2BPJIr2iqv+CzZZNqQu9YGDYWulxVG9VdHgxxySmG7
itYfZyo9SlXBqQgLucLi6UQikyAy2I7MFBohT5BRXRd4ognOmTE0dxwAlCNdqdwM
zIUIOhSzwL0W1/3pOUgeMmEi/5R6b4+6p39OobuqwZL1J3cg8TH76O20rim3Pfuu
cmTLqLcGJUsdGDiv8bAVfYgDZZp6cKWvMsvpxT5R214dJhnV/pOKKwogHdawRdbm
Yj55sHBWDx1ljbfEHef9dofE9mX/i2xTP7/txw1F9PmZ15Qop/mOVeTr2G7QlVxn
a0qSaOs4vNVZorhYAc2yc26vS+cxFpKXIxdgT+5C1pby+92s1ZJ8PkpaAdVSTMcf
l3QrzMEUkkjEbfI//XMK80klyB6dQyb5kpzXMXFyEMoTuvtpGHuGdQSHnnakYlea
G2jJW+t7nZmv9xWNsCLAKI4aEfPAunvUNPL25w7dG8KfNlJWmeLSFGJGpsvEUQmn
EUJlX29mhsrXkgfMuvwIvkIAWMgME2ZnBjO4XmJGZbijzuaYgterBfPaBDIZXHxe
M7N4ey4MkAr8wTcyNvKsZUWEGPmDZhV+Cgn9BHgZkbt7GDy13wQ=
=xJSa
-----END PGP SIGNATURE-----

--------------uMwQjhZ2cU7TRpnVjksJPShP--
