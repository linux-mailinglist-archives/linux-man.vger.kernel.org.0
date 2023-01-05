Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0F6F65EA52
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 13:03:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232101AbjAEMDO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 07:03:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231853AbjAEMDN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 07:03:13 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EA3758D16
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 04:03:11 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so1137768wmb.2
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 04:03:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9PNDlCPJ6KwYK2VHNvdB8F0Inc7naBMEf+VKMKpd280=;
        b=dAjj/4oA08nvffoz4igf9tFSc9UcilpIy1F9xQiyGtzvIXesvXQY1ObvmhV1mKMZr7
         y5xZS+fl9G9oBTfTw4lY8jUMdjIPdRwub2rdcIpDJsz/luIP3yh0YjA8ZRqtzRmfIN2V
         jWFwKiLnGt3nk7LiewnnWuf8d4hrufT9/2o/h4KM8PRh1sJ2pOtbiWW7GR1bHD7C4fvM
         b9zOCwQ/tBaZOjQiSeOUr5lSrEAFZXBVcvnxDZfI36FyWEpWnLR0T4cgRhdkfvMTpoVS
         9hII4hqNLZwAyzVIQsx1MzxkB5vwsd8OMNMy6L0kZ8sGeFrD4jZvB9LSOVjUYsd43oi5
         Nxbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9PNDlCPJ6KwYK2VHNvdB8F0Inc7naBMEf+VKMKpd280=;
        b=aleLaejAusye0DSxz4lsFrbCI4RLfHMxKKjCdUwxAyHPymRia0eUUFznpDcnriNnM7
         v5Xf19qcj+frN5LtgPHe1svbayzV8DYsk2wHfpQKtZfwqJl0ONEzriArUVocequpg8cx
         gaaYHojNbTEx/1oGLTI4ChKrHFps7idj0mNUu9CLPWwskD5u09mlp7AxDpiJ1xebqL/D
         bdbCUNtq5OyzyS7Au3DlKpztEU7i3iDlEF1KbKf2z6Em+gk+E9TmwkjpLBVx9h+WEw4n
         NHNpUsrbFX4sKIfZxUtXgQZNUh0vrzk7Q3pSWaKDqJtLP8hlGSZOdJAoegQ14MzhlrZ/
         6KRQ==
X-Gm-Message-State: AFqh2kqMwfKfZRU6ccXKkuFFPmN7h8fhcIx3tDj1QD7UUsl/v3GxaqTp
        lLSv5ZlhT3XdaG3TCFzDIDgCRAjdtJQ=
X-Google-Smtp-Source: AMrXdXsUJ4m3pIm+WRBjjCyC8nN84WwyxHDztwQqJUS+KkheAwNnO918L+9DdLPWQw0GpJrVkk5+bw==
X-Received: by 2002:a05:600c:500e:b0:3cf:88c3:d008 with SMTP id n14-20020a05600c500e00b003cf88c3d008mr40021874wmr.28.1672920190024;
        Thu, 05 Jan 2023 04:03:10 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id s13-20020adfdb0d000000b002420dba6447sm37156476wri.59.2023.01.05.04.03.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 04:03:09 -0800 (PST)
Message-ID: <ee241821-34a4-a5a3-f757-dc7018241bc7@gmail.com>
Date:   Thu, 5 Jan 2023 13:03:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 2/9] ldconfig.8: Fix style nits
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230104073851.h6kg265ev5v4gmjl@illithid>
 <f5b81092-fb68-d57c-0686-c1b3e482f35b@gmail.com>
 <20230104200451.vxgnuunzztnkifig@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230104200451.vxgnuunzztnkifig@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------FAfZkeQgXsQorZFh4nG3LOQY"
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
--------------FAfZkeQgXsQorZFh4nG3LOQY
Content-Type: multipart/mixed; boundary="------------v6ph0AO0Qtt6U4GAGxANHBOZ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <ee241821-34a4-a5a3-f757-dc7018241bc7@gmail.com>
Subject: Re: [PATCH 2/9] ldconfig.8: Fix style nits
References: <20230104073851.h6kg265ev5v4gmjl@illithid>
 <f5b81092-fb68-d57c-0686-c1b3e482f35b@gmail.com>
 <20230104200451.vxgnuunzztnkifig@illithid>
In-Reply-To: <20230104200451.vxgnuunzztnkifig@illithid>

--------------v6ph0AO0Qtt6U4GAGxANHBOZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS80LzIzIDIxOjA0LCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiBIaSBBbGV4LA0KPiANCj4gQXQgMjAyMy0wMS0wNFQxOTo1MDowMSswMTAwLCBB
bGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+IE9uIDEvNC8yMyAwODozOCwgRy4gQnJhbmRl
biBSb2JpbnNvbiB3cm90ZToNCj4+PiAqIEluIHN5bm9wc2VzLCBzZXQgZWxsaXBzZXMgYXMg
c2VwYXJhdGUgIm9wZXJhbmRzIiB0byBiZXR0ZXINCj4+PiAgICBzdWdnZXN0IGFyZ3VtZW50
IHNlcGFyYXRpb24gYnkgd2hpdGUgc3BhY2UuDQo+Pg0KPj4gUGxlYXNlIGV4cGxhaW4gdGhp
cyBiZXR0ZXIgdG8gbWUuICBNYXliZSBhbiBleGFtcGxlIGRpZmZlcmVuY2U/DQo+IA0KPiBJ
dCBpcyBoYXJkIHRvIGxvY2F0ZSBleGFtcGxlcyBvZiB3aGVyZSBJIHRoaW5rIGVsaXNpb24g
b2Ygd2hpdGUgc3BhY2UNCj4gYmVmb3JlIGFuIGVsbGlwc2lzIGluIGEgY29tbWFuZCBzdW1t
YXJ5IHdvdWxkIGJlIGNvcnJlY3QsIHNvIEkgaGF2ZSB0bw0KPiBjb250cml2ZSBvbmUuDQo+
IA0KPiBDb25zaWRlciBzb21lIHN1cGVyLWNvbXBsaWNhdGVkIGJ1dCB0cmFkaXRpb25hbGx5
LXN5bnRheGVkIGZvcm0gb2YgdGhlDQo+IHRhcigxKSBjb21tYW5kLg0KPiANCj4gdGFyIGNm
di4uLiBhcmNoaXZlIG1lbWJlciAuLi4NCj4gDQo+IFRoZXJlIG1pZ2h0IGJlIGEgX2J1bmNo
XyBvZiBmbGFnIGxldHRlcnMgaW4gdGhlIGZpcnN0IGFyZ3VtZW50LCBhbmQgYQ0KPiB0ZXJz
ZSBvciBsYXp5IG1hbiBwYWdlIG1pZ2h0IG5vdCBwcmVzZW50IHRoZW0gYWxsIGluIHRoZSBz
eW5vcHNpcy4gIEl0DQo+IHdvdWxkIGJlIHdyb25nIHRvIGhhdmUgd2hpdGUgc3BhY2UgYXMg
aW4gImNmdiAuLi4iIGJlY2F1c2Ugb25jZSB0aGF0DQoNCkFoaCwgeWVzLCB3ZSBkb24ndCB3
YW50IHRoYXQuDQoNCj4gZmlyc3QgYXJndW1lbnQgaXMgZmluaXNoZWQsIHRoZSBjb21tYW5k
IGlzIGxvb2tpbmcgZm9yIGFuIGFyY2hpdmUgZmlsZQ0KPiBuYW1lIChvciAiLSIsIHRyYWRp
dGlvbmFsbHkpLiAgQnkgY29udHJhc3QsIGVhY2ggbWVtYmVyIG9mIHRoZSBhcmNoaXZlDQo+
IG9uZSB3YW50cyB0byBleHRyYWN0IF9tdXN0XyBiZSBzZXBhcmF0ZWQgYnkgd2hpdGUgc3Bh
Y2UuDQo+IA0KPiBJIGFja25vd2xlZGdlIHRoYXQgdGhlIEdOVSB0YXIoMSkgbWFuIHBhZ2Ug
aXMgbm90IHdyaXR0ZW4gaW4gdGhlIHN0eWxlIEkNCj4gcHJlc2NyaWJlIG9yIHByZXNlbnRl
ZCBhYm92ZS4gIEl0IGFwcGVhcnMgdG8gaGV3IGNsb3NlbHkgdG8gVGV4aW5mbw0KPiBjb252
ZW50aW9ucyBldmVuIHdoZXJlIGl0IG5lZWQgbm90LCBhcyB3aXRoIHRoZSBzaG91dGluZyBm
dWxsIGNhcGl0YWxzLg0KPiAoU3RpbGwsIHRoZSBwYWdlIGlzIGEgYmlnIGltcHJvdmVtZW50
IG92ZXIgdGhlIGZvcm0gaXQgaGFkIDIwIHllYXJzIG9yDQo+IHNvIGFnbywgd2hlbiBJSVJD
IGl0IHdhcyBvbmUgb2YgdGhlIG1hbnkgdGhhdCB0b2xkIHlvdSB0byByZWFkIGluZm8NCj4g
ZmlsZXMgb3IgcG91bmQgc2FuZC4pDQo+IA0KPiBPZmZpY2lhbCBHTlUgcmVzaXN0YW5jZSB0
byBtYW4gcGFnZXMgaXMgYnJvYWQgYW5kIGRlZXAsIGJ1dCBub3QNCj4gdW5pdmVyc2FsLg0K
DQpJcyB0aGVyZSBzdGlsbCByZXNpc3RhbmNlIGFwYXJ0IGZyb20gd3JpdHRlbj8gIE1vc3Qg
Y29udHJpYnV0b3JzIHRvIEdOVSB0b2RheSANCnNlZW0gdG8gdXNlIG1hbiBwYWdlcy4gIFRo
ZXJlIGFyZSBzdGlsbCBhIGZldyBwcm9qZWN0cywgbGlrZSBtYWtlKDEpIHdoaWNoIHdvdWxk
IA0KYmUgYmV0dGVyIHdpdGggbWFudWFsIHBhZ2VzIGRvY3VtZW50aW5nIHRoZSBsYW5ndWFn
ZSwgYnV0IG1vc3QgaGF2ZSB1c2VmdWwgDQptYW51YWwgcGFnZXMsIGRvbid0IHRoZXk/ICBN
YXliZSBEZWJpYW4gaGVscGVkIGdldCB0aGVyZS4NCg0KPiANCj4+PiAqIEluIHN5bm9wc2Vz
LCBwcmV2ZW50IGJyZWFrcyB3aXRoaW4gb3B0aW9uIGJyYWNrZXRzLg0KPiANCj4gV2Ugd291
bGQgbW9yZSBwcmVmZXIgdGhlIHN5bm9wc2lzIHRvIGJyZWFrIGxpa2UgdGhpczoNCj4gDQo+
ICAgIC9zYmluL2xkY29uZmlnIFstbk52WF0gWy1DIGNhY2hlXSBbLWYgY29uZl0NCj4gICAg
Wy1yIHJvb3RdIGRpcmVjdG9yeSAuLi4NCj4gDQo+IC4uLnRoYW4gdGhpcy4NCj4gDQo+ICAg
IC9zYmluL2xkY29uZmlnIFstbk52WF0gWy1DIGNhY2hlXSBbLWYgY29uZl0gWy1yDQo+ICAg
IHJvb3RdIGRpcmVjdG9yeSAuLi4NCj4gDQo+IElmIHdlIHVzZSBTWS9ZUyBhbmQgZW1wbG95
IFx+IGp1ZGljaW91c2x5LCB3ZSdsbCBldmVuIGdldCB0aGlzLg0KPiANCj4gICAgL3NiaW4v
bGRjb25maWcgWy1uTnZYXSBbLUMgY2FjaGVdIFstZiBjb25mXQ0KPiAgICAgICAgICAgICAg
ICAgICBbLXIgcm9vdF0gZGlyZWN0b3J5IC4uLg0KDQpIbW1tLCBsb29rcyB2ZXJ5IGdvb2Qu
DQoNCj4gDQo+IE1hZ25pZmlxdWUhICA8Y2hlZidzIGtpc3M+DQo+IA0KPj4+ICogVHlwZXNl
dCBlbGxpcHNlcyBtb3JlIGF0dHJhY3RpdmVseSBvbiB0cm9mZiBkZXZpY2VzLg0KPj4+ICog
U29ydCBvcHRpb24gZmxhZ3MgaW4gRW5nbGlzaCBsZXhpY29ncmFwaGljIG9yZGVyLg0KPj4+
ICogRGUtcGFyZW50aGVzaXplIGNvbnRlbnQgdGhhdCBzZWVtcyBpbXBvcnRhbnQuDQo+Pj4g
KiBQZXJmb3JtIGEgS2VtcGVyIG5vdGVjdG9teS4gIFRoYXQgaXMsIHN0b3Agc2F5aW5nICJu
b3RlIHRoYXQiDQo+Pj4gICAgZm9sbG93ZWQgYnkgc29tZSBkZWNsYXJhdGl2ZSBzdGF0ZW1l
bnQuICBUaGlzIHRyb3BlIGlzIGFsbCBvdmVyDQo+Pj4gICAgVW5peCBkb2N1bWVudGF0aW9u
IGFuZCBJIGV2ZW4gc2VlIGl0IGluIElTTyBzdGFuZGFyZHMuICBUaGUgbGF0dGVyDQo+Pj4g
ICAgZG9lc24ndCBzZXJ2ZSB0byByZWNvbW1lbmQgaXQ7IGFzIERhdmUgS2VtcGVyIGhhcyBw
b2ludGVkIG91dCwNCj4+PiAgICBldmVyeXRoaW5nIHdlIHB1dCBpbiB0ZWNobmljYWwgZG9j
dW1lbnRhdGlvbiBzaG91bGQgYmUgd29ydGh5IG9mDQo+Pj4gICAgbm90ZSB1bmxlc3MgcGxh
Y2VkIGluIGEgZm9vdG5vdGUsIG1hcmtlZCBhcyAidW5uZWNlc3Nhcnkgb24gYQ0KPj4+ICAg
IGZpcnN0IHJlYWRpbmciLCBvciBzaW1pbGFyLiAgSXQgaXMgdGhlIGV4Y2VwdGlvbiwgbm90
IHRoZSBydWxlLg0KPj4+ICAgIElmIHlvdSBmZWVsIHRoZSBuZWVkIHRvIHNheSAibm90ZSB0
aGF0IiwgY29uc2lkZXIgd2hhdCBhZGphY2VudA0KPj4+ICAgIG1hdGVyaWFsIHlvdSBzaG91
bGRuJ3QgYmUgc2F5aW5nIGF0IGFsbC4NCj4+PiAqIFNheSAic3ltYm9saWMgbGluayIgaW5z
dGVhZCBvZiAic3ltbGluayIuDQo+Pj4gKiBXaGVuIG9uZSBzZW50ZW5jZSBleHBsYWlucyB0
aGUgcHJldmlvdXMsIHVzZSBhIHNlbWljb2xvbi4NCj4+PiAqIFNldCBsaXRlcmFscyB1c2Vk
IGFzIGFyZ3VtZW50cyB0byBgLWNgIG9wdGlvbiBpbiBib2xkLCBub3QNCj4+PiAgICBpdGFs
aWNzLg0KPj4+ICogUGxhY2UgdGhlIG1vZGlmaWVyICJvbmx5IiBtb3JlIGNhcmVmdWxseS4N
Cj4+PiAqIFJlY2FzdCBvcHRpb24gZGVzY3JpcHRpb25zIHRvIGJlIGluIHRoZSBpbXBlcmF0
aXZlIG1vb2QuDQo+Pj4gKiBSZWNhc3QgZmlsZSBkZXNjcmlwdGlvbnMgdG8gdXNlIHRoZSBw
YXJhZ3JhcGggdGFnIGFzIHRoZSBzdWJqZWN0DQo+Pj4gb2YgdGhlIGZpcnN0IHNlbnRlbmNl
Lg0KPj4+DQo+Pj4gU2lnbmVkLW9mZi1ieTogRy4gQnJhbmRlbiBSb2JpbnNvbiA8Zy5icmFu
ZGVuLnJvYmluc29uQGdtYWlsLmNvbT4NCj4+DQo+PiBQbGVhc2UgYnJlYWsgdGhpcyBmdXJ0
aGVyIGludG8gZmZpeCwgd2ZpeCwgYW5kIHRmaXgsIGlmL3doZXJlIGl0IG1ha2VzDQo+PiBz
ZW5zZS4gTW92aW5nIGNvZGUgYXJvdW5kIGFsc28gdXN1YWxseSBnb2VzIGluIGEgc2VwYXJh
dGUgY29tbWl0LCB3aXRoDQo+PiBubyBvdGhlciBjb2RlIGNoYW5nZXMgKHRoYXQgd291bGQg
YmUgZm9yIHRoZSBzb3J0aW5nKS4NCj4gDQo+IE9rYXksIGZvciB2MyBJJ2xsIHNwbGl0IHRo
ZSAic3R5bGUiIGNoYW5nZSBpbnRvIGZmaXgsIHRmaXgsIHdmaXgsIGFuZA0KPiB0aGUgbGV4
aWNhbCBhcnJhbmdlbWVudCBvZiB0aGUgYXJndW1lbnRmdWwgb3B0aW9ucyB0byBsZGNvbmZp
Zyg4KS4NCj4gDQo+Pj4gLXdpbGwgb25seSBsb29rIGF0IGZpbGVzIHRoYXQgYXJlIG5hbWVk
DQo+Pj4gK3dpbGwgbG9vayBvbmx5IGF0IGZpbGVzIHRoYXQgYXJlIG5hbWVkDQo+Pg0KPj4g
V291bGQgeW91IG1pbmQgZXhwbGFpbmluZyB0aGUgZGlmZmVyZW5jZSB0byBhIG5vbi1uYXRp
dmUgc3BlYWtlcj8NCj4gDQo+IFN1cmUuICBDb25zaWRlciB0aGUgc2VudGVuY2U6DQo+IA0K
PiBJIGF0ZSBwaXp6YSB5ZXN0ZXJkYXkuDQo+IA0KPiBXZSBjYW4gaW5zZXJ0IHRoZSBtb2Rp
ZmllciAib25seSIgaW4gX2ZpdmVfIGRpZmZlcmVudCBwbGFjZXMgaW4gdGhpcw0KPiBzZW50
ZW5jZSwgcHJvZHVjaW5nIGZpdmUgZGlzdGluY3QgbWVhbmluZ3MuICBGb3IgYWRkaXRpb25h
bCBFbmdsaXNoDQo+IGxhbmd1YWdlIGZ1biwgdGhlc2UgYXJlIG5vdCB0aGUgb25seSBwb3Nz
aWJsZSBpbnRlcnByZXRhdGlvbnM7IGJ1dCBhbGwNCj4gYXJlIHBsYXVzaWJsZS4NCj4gDQo+
IE9ubHkgSSBhdGUgcGl6emEgeWVzdGVyZGF5LiAgLT4gIE90aGVyIHBlb3BsZSBhdGUgc29t
ZXRoaW5nIGVsc2UuDQo+IEkgb25seSBhdGUgcGl6emEgeWVzdGVyZGF5LiAgLT4gIEkgZGlk
bid0IF9tYWtlXyB0aGUgcGl6emEuDQo+IEkgYXRlIG9ubHkgcGl6emEgeWVzdGVyZGF5LiAg
LT4gIEkgZGlkbid0IGVhdCBhbnl0aGluZyBlbHNlLg0KPiBJIGF0ZSBwaXp6YSBvbmx5IHll
c3RlcmRheS4gIC0+ICBJdCBoYXNuJ3QgYmVlbiBsb25nIHNpbmNlIEkgYXRlIHBpenphLg0K
PiBJIGF0ZSBwaXp6YSB5ZXN0ZXJkYXkgb25seS4gIC0+ICBJIHVzdWFsbHkgZG9uJ3QsIGJ1
dCBmZWxsIG9mZiB0aGUgd2Fnb24uDQoNCkhtbW0sIHBpenphISAgTmljZSBleGFtcGxlcy4g
IFRoYW5rcyENCg0KPiANCj4+PiAtd2lsbCBvbmx5IGxvb2sgYXQgZmlsZXMgdGhhdCBhcmUg
bmFtZWQNCj4+PiArd2lsbCBsb29rIG9ubHkgYXQgZmlsZXMgdGhhdCBhcmUgbmFtZWQNCj4g
DQo+IEhlcmUsIHRoZSByZXN0cmljdGlvbiBhcHBsaWVzIHRvIHRoZSBzZXQgb2YgcG9zc2li
bGUgZmlsZXMgImxvb2tlZCBhdCIuDQo+IEF0IHRoZSBzYW1lIHRpbWUsIGZpbGVzIGFyZSBu
b3Qgc2ltcGx5ICJsb29rZWQgYXQiOyBsZGNvbmZpZyg4KSBtYXkNCj4gcmVwbGFjZSB0aGVt
IGJ5IHJld3JpdGluZyB0aGUgdGFyZ2V0IG9mIGEgc3ltYm9saWMgbGluay4gIFNvIGl0IGlz
IG5vdA0KPiBjb3JyZWN0IHRvIHN1Z2dlc3QgdGhhdCBmaWxlcyBhcmUgIm9ubHkgbG9va2Vk
IGF0Ii4NCg0KTWFrZXMgc2Vuc2UuDQoNCj4gDQo+Pj4gLUludGVuZGVkIGZvciB1c2UgYnkg
ZXhwZXJ0cyBvbmx5Lg0KPiBbLi4uXQ0KPj4+ICtJbnRlbmRlZCBmb3IgdXNlIG9ubHkgYnkg
ZXhwZXJ0cy4NCj4+DQo+PiBTYW1lIGhlcmUuDQo+IA0KPiBUaGVyZSdzIG5vIHNpZ25pZmlj
YW50IGRpZmZlcmVuY2UgaW4gbWVhbmluZyBoZXJlLCB0byBteSBleWVzOyB0aGUNCj4gbGF0
dGVyIHJlYWRzIG1vcmUgbGlrZSBpZGlvbWF0aWMgRW5nbGlzaCB0byBtZS4NCg0KT2theS4N
Cg0KPiANCj4gUmVnYXJkcywNCj4gQnJhbmRlbg0KDQpDaGVlcnMsDQpBbGV4DQoNCi0tIA0K
PGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------v6ph0AO0Qtt6U4GAGxANHBOZ--

--------------FAfZkeQgXsQorZFh4nG3LOQY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO2vHUACgkQnowa+77/
2zI3ABAAibc/4PSYIeC4AssJb6krI2jHrVD36zqfz8kOGr4eOSbAhPL4Raa++Jjn
OrQTN23r7n88jQx1An8NUE3QWAfoeov+0wVCFgxl+swEuOsHTnTeikXZ1SeYPXDa
rmfHqR4Q6zhJqFoWZ7Xlj9TBBNLMQFW6TSHFKvptceuoCMnLq8QRrVpNe1WaMiku
O0YNLjN/fW81/mKwZXvzCl+hENUq/RMVO/iXXHjVClAyN6rKoLEI2zsZEawWRHlO
oZkGNZF7Gc902I87WM4HEwbCnWfsMED5qZlQJubos/IoKz8emjqCyY2MIdWLyVar
XajqJzkNQ4zAzZm/40l0bcC0HrVcJnqPncMn2XdCc4BN0RJl8uTonN77/99wXknI
Pti6l+5mFDCz7aO9eOnziIbXrCnDRBNAkX2boj2yXwY8OBTUHewiq+KaLtMJ0L72
G9BOGv2lwfqruY0UOBl645hv/gcRyDyD/j7Ovv/LNla4mHna+lrf2a29D1e5bC3Y
S54p9yysWLmdqF4aDHPUWzoBbSu54X4xsVp0ENEDU68wF5sV/85XW5kq0rboLycz
8567S6Vsk8jlTQqMqXGNJCXpdMTy2BUHAUt33P8jOS91WCdKh45sUVH0jODoBLeL
Cx30h3O2DYmAXz6mjHeV7Gaf7mfI9LfZiPlQfsxXzszoprOqWMg=
=H7hb
-----END PGP SIGNATURE-----

--------------FAfZkeQgXsQorZFh4nG3LOQY--
