Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B3CA54F875
	for <lists+linux-man@lfdr.de>; Fri, 17 Jun 2022 15:46:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1382007AbiFQNpM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Jun 2022 09:45:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1382224AbiFQNpL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Jun 2022 09:45:11 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F080328E00
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 06:45:09 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id m32-20020a05600c3b2000b0039756bb41f2so2427030wms.3
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 06:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=cb5ML6+imL2OxueF7HHAsZ3VZN3kdo/1IZ2hhEvUkxw=;
        b=OwxhsQpLi7YrUaCLuw9ud1OIHw6APIiQgKwf/uim0UEFrKtXH/zCm54mdKlRt6+vqR
         s96/82uLN6UtFOhfGMXAIoOGIwTxUMsK9h86cicTqLTVcbc/fzglobqiUHopqtTj+g2J
         BAnmfbMdSg3QsObdQAhpJxBMAp43/k69FrgjQrqdKnUVWiv5tMkDa/JU/FIfIRU9vkXh
         isKpTsCX6QJlAQ1pKi7OXmNys1tPlqMW/DCwZlJkbDB85ql2+WgrhNCyyN3koVJTf4OK
         nXFkXmudpYVwxB3z9g29+DANuejyVwwJHKeejyejzrzcmC9z/YDgwTfWsG1YSQcvEyGC
         dSnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=cb5ML6+imL2OxueF7HHAsZ3VZN3kdo/1IZ2hhEvUkxw=;
        b=ZQlfSGAXtZSjQIIzT1wFCFZrMvYmUPOQLYtwI2Ox150bONhezBaCb7E7G/Olr5/DWA
         P9FS7CeBwdgVUKmXQAFsXdQKaTE4taMOnttVqi1KDjE1RKsCFxZpOXCwvETwjK9+u7UG
         Uv4N88lHnKOb891UB9iF7V8xqX87gDv1wQ+7dpAhSPgJj8tHZdUVJDB79oOdIsiCG6pa
         s3kqtxi0n7OzdiGrCUvuDhVm8VGP8fvexNpuIkxtGo+v7g7P9opaTnfPj8S+bVP1ntWp
         cuqwhaRDRRsX/0TVAmiJb625AX0PG4dQh/OutbBEIJmVIFie0EJ49MdQoSdPRvTIVJN3
         /peA==
X-Gm-Message-State: AJIora8YCBnzvvZOeE8Qz9Z5QKLsEsAtZCQAxuMxo895m6/oYa8HQtu+
        3saWnZSP9LC3+kPOhJfn+Nk=
X-Google-Smtp-Source: AGRyM1vYDTqLEq8AE+AGCiSeC/7otoCRPGI+26vq+TMFq+DtgdnI7WlhaS10JDkSU3FFbLebP0XCSQ==
X-Received: by 2002:a05:600c:1e85:b0:39c:8628:ca96 with SMTP id be5-20020a05600c1e8500b0039c8628ca96mr10257865wmb.176.1655473508337;
        Fri, 17 Jun 2022 06:45:08 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g16-20020a05600c4ed000b003974860e15esm10951425wmq.40.2022.06.17.06.45.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jun 2022 06:45:07 -0700 (PDT)
Message-ID: <355e81c7-ec67-0b66-d7b5-41861e6796b5@gmail.com>
Date:   Fri, 17 Jun 2022 15:44:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v6] fanotify.7, fanotify_mark.2: Document FAN_FS_ERROR
Content-Language: en-US
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org,
        Gabriel Krisman Bertazi <krisman@collabora.com>
References: <20220617130014.1660717-1-amir73il@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220617130014.1660717-1-amir73il@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------r2sXsB5fhQfMKZU4QtkRSco8"
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------r2sXsB5fhQfMKZU4QtkRSco8
Content-Type: multipart/mixed; boundary="------------0XdkUKJyn1fk30e4HMw020Ke";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
 Matthew Bobrowski <repnop@google.com>, linux-man@vger.kernel.org,
 Gabriel Krisman Bertazi <krisman@collabora.com>
Message-ID: <355e81c7-ec67-0b66-d7b5-41861e6796b5@gmail.com>
Subject: Re: [PATCH v6] fanotify.7, fanotify_mark.2: Document FAN_FS_ERROR
References: <20220617130014.1660717-1-amir73il@gmail.com>
In-Reply-To: <20220617130014.1660717-1-amir73il@gmail.com>

--------------0XdkUKJyn1fk30e4HMw020Ke
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQW1pciwNCg0KT24gNi8xNy8yMiAxNTowMCwgQW1pciBHb2xkc3RlaW4gd3JvdGU6DQo+
IEZyb206IEdhYnJpZWwgS3Jpc21hbiBCZXJ0YXppIDxrcmlzbWFuQGNvbGxhYm9yYS5jb20+
DQo+IA0KPiBGQU5fRlNfRVJST1IgaXMgYSBuZXcgZXZlbnQgZm9yIGZhbm90aWZ5IHRvIHJl
cG9ydCBmaWxlc3lzdGVtIGVycm9ycw0KPiB0aGF0IG1pZ2h0IGxlYWQgdG8gc29tZSBjb3Jy
dXB0aW9uLg0KPiBUaGlzIGRvY3VtZW50cyBob3cgdG8gdXNlIHRoZSBmZWF0dXJlIGFuZCBz
cGVjaWZpYyBjYXZlYXRzLg0KPiANCj4gUmV2aWV3ZWQtYnk6IEphbiBLYXJhIDxqYWNrQHN1
c2UuY3o+DQo+IFJldmlld2VkLWJ5OiBBbWlyIEdvbGRzdGVpbiA8YW1pcjczaWxAZ21haWwu
Y29tPg0KPiBSZXZpZXdlZC1ieTogTWF0dGhldyBCb2Jyb3dza2kgPHJlcG5vcEBnb29nbGUu
Y29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBHYWJyaWVsIEtyaXNtYW4gQmVydGF6aSA8a3Jpc21h
bkBjb2xsYWJvcmEuY29tPiA+IC0tLQ0KPiANCj4gSGkgQWxleCwNCj4gDQo+IFBvc3Rpbmcg
djYgb2YgR2FicmllbCdzIHBhdGNoIHdpdGggbWlub3IgZml4ZXMgcGVyIHlvdXIgcmVxdWVz
dC4NCj4gUmViYXNlZCBvbiB0b3Agb2YgdXBzdHJlYW0uDQoNClBhdGNoIGFwcGxpZWQuICBU
aGFua3MhDQoNCkJUVywgcGxlYXNlIGNoZWNrIGEgY29tbWVudCBiZWxvdy4NCg0KQ2hlZXJz
LA0KDQpBbGV4DQoNCj4gDQo+IFRoYW5rcywNCj4gQW1pci4NCj4gDQo+IA0KPiAgIG1hbjIv
ZmFub3RpZnlfbWFyay4yIHwgMzAgKysrKysrKysrKysrKysrKysrKw0KPiAgIG1hbjcvZmFu
b3RpZnkuNyAgICAgIHwgNzEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysNCj4gICAyIGZpbGVzIGNoYW5nZWQsIDEwMSBpbnNlcnRpb25zKCspDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvbWFuMi9mYW5vdGlmeV9tYXJrLjIgYi9tYW4yL2Zhbm90aWZ5X21h
cmsuMg0KPiBpbmRleCA5YTQ1Y2JiNzcuLjNkYzUzOGI3ZiAxMDA2NDQNCj4gLS0tIGEvbWFu
Mi9mYW5vdGlmeV9tYXJrLjINCj4gKysrIGIvbWFuMi9mYW5vdGlmeV9tYXJrLjINCj4gQEAg
LTIwMyw2ICsyMDMsMjkgQEAgQ3JlYXRlIGFuIGV2ZW50IHdoZW4gYSBtYXJrZWQgZmlsZSBv
ciBkaXJlY3RvcnkgaXRzZWxmIGlzIGRlbGV0ZWQuDQo+ICAgQW4gZmFub3RpZnkgZ3JvdXAg
dGhhdCBpZGVudGlmaWVzIGZpbGVzeXN0ZW0gb2JqZWN0cyBieSBmaWxlIGhhbmRsZXMNCj4g
ICBpcyByZXF1aXJlZC4NCj4gICAuVFANCj4gKy5CUiBGQU5fRlNfRVJST1IgIiAoc2luY2Ug
TGludXggNS4xNikiDQo+ICsuXCIgY29tbWl0IDk3MDliZDU0OGYxMWEwOTJkMTI0Njk4MTE4
MDEzZjY2ZTE3NDBmOWINCj4gK0NyZWF0ZSBhbiBldmVudCB3aGVuIGEgZmlsZXN5c3RlbSBl
cnJvcg0KPiArbGVhZGluZyB0byBpbmNvbnNpc3RlbnQgZmlsZXN5c3RlbSBtZXRhZGF0YSBp
cyBkZXRlY3RlZC4NCj4gK0FuIGFkZGl0aW9uYWwgaW5mb3JtYXRpb24gcmVjb3JkIG9mIHR5
cGUNCj4gKy5CIEZBTl9FVkVOVF9JTkZPX1RZUEVfRVJST1INCj4gK2lzIHJldHVybmVkIGZv
ciBlYWNoIGV2ZW50IGluIHRoZSByZWFkIGJ1ZmZlci4NCj4gK0FuIGZhbm90aWZ5IGdyb3Vw
IHRoYXQgaWRlbnRpZmllcyBmaWxlc3lzdGVtIG9iamVjdHMgYnkgZmlsZSBoYW5kbGVzDQo+
ICtpcyByZXF1aXJlZC4NCj4gKy5JUA0KPiArRXZlbnRzIG9mIHN1Y2ggdHlwZSBhcmUgZGVw
ZW5kZW50IG9uIHN1cHBvcnQNCj4gK2Zyb20gdGhlIHVuZGVybHlpbmcgZmlsZXN5c3RlbS4N
Cj4gK0F0IHRoZSB0aW1lIG9mIHdyaXRpbmcsDQo+ICtvbmx5IHRoZQ0KPiArLkIgZXh0NA0K
PiArZmlsZXN5c3RlbSByZXBvcnRzDQo+ICsuQiBGQU5fRlNfRVJST1INCj4gK2V2ZW50cy4N
Cj4gKy5JUA0KPiArU2VlDQo+ICsuQlIgZmFub3RpZnkgKDcpDQo+ICtmb3IgYWRkaXRpb25h
bCBkZXRhaWxzLg0KPiArLlRQDQo+ICAgLkJSIEZBTl9NT1ZFRF9GUk9NICIgKHNpbmNlIExp
bnV4IDUuMSkiDQo+ICAgLlwiIGNvbW1pdCAyMzUzMjhkMWZhNDI1MWM2ZGNiMzIzNTEyMTli
YjU1M2E1ODgzOGQyDQo+ICAgQ3JlYXRlIGFuIGV2ZW50IHdoZW4gYSBmaWxlIG9yIGRpcmVj
dG9yeSBoYXMgYmVlbiBtb3ZlZCBmcm9tIGEgbWFya2VkDQo+IEBAIC0zOTEsNiArNDE0LDEz
IEBAIGFuZCBtYXNrIGNvbnRhaW5zIGEgZmxhZyBmb3IgcGVybWlzc2lvbiBldmVudHMNCj4g
ICBvcg0KPiAgIC5CUiBGQU5fQUNDRVNTX1BFUk0gKS4NCj4gICAuVFANCj4gKy5CIEVJTlZB
TA0KPiArVGhlIGdyb3VwIHdhcyBpbml0aWFsaXplZCB3aXRob3V0DQo+ICsuQiBGQU5fUkVQ
T1JUX0ZJRA0KPiArYnV0IG9uZSBvciBtb3JlIGV2ZW50IHR5cGVzIHNwZWNpZmllZCBpbiB0
aGUNCj4gKy5JIG1hc2sNCj4gK3JlcXVpcmUgaXQuDQo+ICsuVFANCj4gICAuQiBFTk9ERVYN
Cj4gICBUaGUgZmlsZXN5c3RlbSBvYmplY3QgaW5kaWNhdGVkIGJ5DQo+ICAgLkkgcGF0aG5h
bWUNCj4gZGlmZiAtLWdpdCBhL21hbjcvZmFub3RpZnkuNyBiL21hbjcvZmFub3RpZnkuNw0K
PiBpbmRleCBhMGRjMGRmYmEuLmY0ZDM5MTYwMyAxMDA2NDQNCj4gLS0tIGEvbWFuNy9mYW5v
dGlmeS43DQo+ICsrKyBiL21hbjcvZmFub3RpZnkuNw0KPiBAQCAtMjI4LDYgKzIyOCwyNSBA
QCBzdHJ1Y3QgZmFub3RpZnlfZXZlbnRfaW5mb19waWRmZCB7DQo+ICAgLkVFDQo+ICAgLmlu
DQo+ICAgLlBQDQo+ICtJbiBjYXNlIG9mIGENCj4gKy5CIEZBTl9GU19FUlJPUg0KPiArZXZl
bnQsDQo+ICthbiBhZGRpdGlvbmFsIGluZm9ybWF0aW9uIHJlY29yZCBkZXNjcmliaW5nIHRo
ZSBlcnJvciB0aGF0IG9jY3VycmVkDQo+ICtpcyByZXR1cm5lZCBhbG9uZ3NpZGUgdGhlIGdl
bmVyaWMNCj4gKy5JIGZhbm90aWZ5X2V2ZW50X21ldGFkYXRhDQo+ICtzdHJ1Y3R1cmUgd2l0
aGluIHRoZSByZWFkIGJ1ZmZlci4NCj4gK1RoaXMgc3RydWN0dXJlIGlzIGRlZmluZWQgYXMg
Zm9sbG93czoNCj4gKy5QUA0KPiArLmluICs0bg0KPiArLkVYDQo+ICtzdHJ1Y3QgZmFub3Rp
ZnlfZXZlbnRfaW5mb19lcnJvciB7DQo+ICsgICAgc3RydWN0IGZhbm90aWZ5X2V2ZW50X2lu
Zm9faGVhZGVyIGhkcjsNCj4gKyAgICBfX3MzMiBlcnJvcjsNCj4gKyAgICBfX3UzMiBlcnJv
cl9jb3VudDsNCj4gK307DQoNClNpbmNlIHRoaXMgaXMgb2xkLCBJJ20gYXBwbHlpbmcgaXQg
YXMgaXMuDQpCdXQgaWYgeW91IGRvbid0IG1pbmQsIEknZCBsaWtlIHRvIHNlZSB0eXBlcyBk
ZXNjcmliZWQgaW4gc2VwYXJhdGUgcGFnZXMgDQppbiB0aGUgc3Vic2VjdGlvbiAzdHlwZS4g
IFNvLCBmb3IgZnV0dXJlIHBhZ2VzLCBwbGVhc2UgY29uc2lkZXIgdGhhdDopLg0KDQpTZWUg
Zm9yIGV4YW1wbGUgaW92ZWMoM3R5cGUpLCBvciB1aW50OF90KDN0eXBlKS4NCg0KPGh0dHBz
Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9kb2NzL21hbi1wYWdlcy9tYW4tcGFnZXMuZ2l0
L2NvbW1pdC8/aWQ9NmM4MDlkZjc3YjM1OWJiM2E5ZTA2ZjMyNTQ3ZTBhZWQxNTU0MDhiZT4N
CjxodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vZG9jcy9tYW4tcGFnZXMvbWFuLXBh
Z2VzLmdpdC9jb21taXQvP2lkPWNiMzM2NjE2OTUzMTUxMGJjYzdkNDQ1ZTE1ZGY2ODM5NjI5
MWEwNWQ+DQoNClRoYXQgaGVscHMga2VlcCBpbmZvcm1hdGlvbiBtb3JlIG9yZ2FuaXplZCwg
YW5kIGRlZHVwbGljYXRlIGl0Lg0KQW5kIG1ha2VzIGl0IGVhc3kgdG8gY2hlY2sgYG1hbiBp
b3ZlY2AgZm9yIGEgcXVpY2sgcmVmZXJlbmNlLg0KDQpUaGlzIGlzIGZvbGxvd2luZyB3aGF0
IHN0YXJ0ZWQgaW4gbWFuLXBhZ2VzLTUuMDkgaW4gc3lzdGVtX2RhdGFfdHlwZXMoNykuDQoN
CjxodHRwczovL2xpbnV4LW1hbi1wYWdlcy5ibG9nc3BvdC5jb20vMjAyMC8xMS9tYW4tcGFn
ZXMtNTA5LWlzLXJlbGVhc2VkLmh0bWw+DQoNClNlZSBhbHNvOg0KDQo8aHR0cHM6Ly9zdGFj
a292ZXJmbG93LmNvbS9xdWVzdGlvbnMvNTUxOTAzMTcvd2hlcmUtaXMtc3NpemUtdC1kZWZp
bmVkLWluLWxpbnV4Pg0KPGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1hbi9mYjY0
NjNmNi00OWQ3LWU0NzMtZDVlMS0xY2RmODM3NWU0OThAZ21haWwuY29tL1QvI3U+DQoNCj4g
Ky5FRQ0KPiArLmluDQo+ICsuUFANCj4gICBBbGwgaW5mb3JtYXRpb24gcmVjb3JkcyBjb250
YWluIGEgbmVzdGVkIHN0cnVjdHVyZSBvZiB0eXBlDQo+ICAgLklSIGZhbm90aWZ5X2V2ZW50
X2luZm9faGVhZGVyIC4NCj4gICBUaGlzIHN0cnVjdHVyZSBob2xkcyBtZXRhLWluZm9ybWF0
aW9uIGFib3V0IHRoZSBpbmZvcm1hdGlvbiByZWNvcmQNCj4gQEAgLTM2OSw2ICszODgsOSBA
QCBBIGNoaWxkIGZpbGUgb3IgZGlyZWN0b3J5IHdhcyBkZWxldGVkIGluIGEgd2F0Y2hlZCBw
YXJlbnQuDQo+ICAgLkIgRkFOX0RFTEVURV9TRUxGDQo+ICAgQSB3YXRjaGVkIGZpbGUgb3Ig
ZGlyZWN0b3J5IHdhcyBkZWxldGVkLg0KPiAgIC5UUA0KPiArLkIgRkFOX0ZTX0VSUk9SDQo+
ICtBIGZpbGVzeXN0ZW0gZXJyb3Igd2FzIGRldGVjdGVkLg0KPiArLlRQDQo+ICAgLkIgRkFO
X01PVkVEX0ZST00NCj4gICBBIGZpbGUgb3IgZGlyZWN0b3J5IGhhcyBiZWVuIG1vdmVkIGZy
b20gYSB3YXRjaGVkIHBhcmVudCBkaXJlY3RvcnkuDQo+ICAgLlRQDQo+IEBAIC02NDMsNiAr
NjY1LDI1IEBAIGFuZCB0aGUgcGlkZmQgaXMgbm8gbG9uZ2VyIHJlcXVpcmVkLA0KPiAgIHRo
ZSBwaWRmZCBzaG91bGQgYmUgY2xvc2VkIHZpYQ0KPiAgIC5CUiBjbG9zZSAoMikuDQo+ICAg
LlBQDQo+ICtUaGUgZmllbGRzIG9mIHRoZQ0KPiArLkkgZmFub3RpZnlfZXZlbnRfaW5mb19l
cnJvcg0KPiArc3RydWN0dXJlIGFyZSBhcyBmb2xsb3dzOg0KPiArLlRQDQo+ICsuSSBoZHIN
Cj4gK1RoaXMgaXMgYSBzdHJ1Y3R1cmUgb2YgdHlwZQ0KPiArLklSIGZhbm90aWZ5X2V2ZW50
X2luZm9faGVhZGVyIC4NCj4gK1RoZQ0KPiArLkkgaW5mb190eXBlDQo+ICtmaWVsZCBpcyBz
ZXQgdG8NCj4gKy5CUiBGQU5fRVZFTlRfSU5GT19UWVBFX0VSUk9SIC4NCj4gKy5UUA0KPiAr
LkkgZXJyb3INCj4gK0lkZW50aWZpZXMgdGhlIHR5cGUgb2YgZXJyb3IgdGhhdCBvY2N1cnJl
ZC4NCj4gKy5UUA0KPiArLkkgZXJyb3JfY291bnQNCj4gK1RoaXMgaXMgYSBjb3VudGVyIG9m
IHRoZSBudW1iZXIgb2YgZXJyb3JzIHN1cHByZXNzZWQNCj4gK3NpbmNlIHRoZSBsYXN0IGVy
cm9yIHdhcyByZWFkLg0KPiArLlBQDQo+ICAgVGhlIGZvbGxvd2luZyBtYWNyb3MgYXJlIHBy
b3ZpZGVkIHRvIGl0ZXJhdGUgb3ZlciBhIGJ1ZmZlciBjb250YWluaW5nDQo+ICAgZmFub3Rp
ZnkgZXZlbnQgbWV0YWRhdGEgcmV0dXJuZWQgYnkgYQ0KPiAgIC5CUiByZWFkICgyKQ0KPiBA
QCAtNzMyLDYgKzc3MywzNiBAQCBmaWVsZC4NCj4gICBJbiB0aGF0IGNhc2UsIHRoZSBhdWRp
dCBzdWJzeXN0ZW0gd2lsbCBsb2cgaW5mb3JtYXRpb24gYWJvdXQgdGhlIGFjY2Vzcw0KPiAg
IGRlY2lzaW9uIHRvIHRoZSBhdWRpdCBsb2dzLg0KPiAgIC5cIg0KPiArLlNTIE1vbml0b3Jp
bmcgZmlsZXN5c3RlbXMgZm9yIGVycm9ycw0KPiArQSBzaW5nbGUNCj4gKy5CIEZBTl9GU19F
UlJPUg0KPiArZXZlbnQgaXMgc3RvcmVkIHBlciBmaWxlc3lzdGVtIGF0IG9uY2UuDQo+ICtF
eHRyYSBlcnJvciBtZXNzYWdlcyBhcmUgc3VwcHJlc3NlZCBhbmQgYWNjb3VudGVkIGZvciBp
biB0aGUNCj4gKy5JIGVycm9yX2NvdW50DQo+ICtmaWVsZCBvZiB0aGUgZXhpc3RpbmcNCj4g
Ky5CIEZBTl9GU19FUlJPUg0KPiArZXZlbnQgcmVjb3JkLA0KPiArYnV0IGRldGFpbHMgYWJv
dXQgdGhlIGVycm9ycyBhcmUgbG9zdC4NCj4gKy5QUA0KPiArRXJyb3JzIHJlcG9ydGVkIGJ5
DQo+ICsuQiBGQU5fRlNfRVJST1INCj4gK2FyZSBnZW5lcmljDQo+ICsuSSBlcnJubw0KPiAr
dmFsdWVzLA0KPiArYnV0IG5vdCBhbGwga2luZHMgb2YgZXJyb3IgdHlwZXMgYXJlIHJlcG9y
dGVkIGJ5IGFsbCBmaWxlc3lzdGVtcy4NCj4gKy5QUA0KPiArRXJyb3JzIG5vdCBkaXJlY3Rs
eSByZWxhdGVkIHRvIGEgZmlsZSAoaS5lLiBzdXBlciBibG9jayBjb3JydXB0aW9uKQ0KPiAr
YXJlIHJlcG9ydGVkIHdpdGggYW4gaW52YWxpZA0KPiArLklSIGZpbGVfaGFuZGxlIC4NCj4g
K0ZvciB0aGVzZSBlcnJvcnMsIHRoZQ0KPiArLkkgZmlsZV9oYW5kbGUNCj4gK3dpbGwgaGF2
ZSB0aGUgZmllbGQNCj4gKy5JIGhhbmRsZV90eXBlDQo+ICtzZXQgdG8NCj4gKy5CUiBGSUxF
SURfSU5WQUxJRCAsDQo+ICthbmQgdGhlIGhhbmRsZSBidWZmZXIgc2l6ZSBzZXQgdG8NCj4g
Ky5CUiAwIC4NCj4gKy5cIg0KPiAgIC5TUyBDbG9zaW5nIHRoZSBmYW5vdGlmeSBmaWxlIGRl
c2NyaXB0b3INCj4gICBXaGVuIGFsbCBmaWxlIGRlc2NyaXB0b3JzIHJlZmVycmluZyB0byB0
aGUgZmFub3RpZnkgbm90aWZpY2F0aW9uIGdyb3VwIGFyZQ0KPiAgIGNsb3NlZCwgdGhlIGZh
bm90aWZ5IGdyb3VwIGlzIHJlbGVhc2VkIGFuZCBpdHMgcmVzb3VyY2VzDQoNCi0tIA0KQWxl
amFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==


--------------0XdkUKJyn1fk30e4HMw020Ke--

--------------r2sXsB5fhQfMKZU4QtkRSco8
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKshVoACgkQnowa+77/
2zL7HBAAipi1Ep+WfLBIArWy8c/F6rlGFuP3dQN6NB/dmQdvKoJ6GjZlP0FLWn/s
xUs0z6Pclu4eySyA7XKlAWJnJr5KQryGKHFIhY0SRm6LkACCIau6DYdhnUrUxeRV
MMRi61BAo37TLvPUMtflMiDiG5SQIrsyeHtwYAxc2hCeyENjL1HwLZyrQgwo1nps
zFr03J+jMzmdmkae4WcTcoQN14w2jR9cJzx9wDMRcnnZCagoe4PvC3YFp60GB6Q6
xkqNt/TMlRE3U4BMrldDIyJIU2ImFFC4DS+gWonmRqSMH/4ZyiV03vNFcj9AE5lW
34YNmvY3ru+nMYiCphncarObkGJ95E4jjosPsGa1rZ+ecJYTSXZuQE7k2EUxRDS6
GmGsWSkiI3HunF/CxSbLc5SdsYSRbimF3HniwyJ2rTL8kDjQdRqjSTcGDWlqn9GX
mRWcNq5M+oeV0jdUxyy+EwtJvKxvuNbhZXqrR7coJIbIYDp5rx7/ENxmgBJ7a02v
l0hXAfcRiXlC8rRAs9yZVfO6dZd2O8m12o297tRG9mjRUHFr/2XDtBkYciclmoBU
p3YsiJYH/oCYj3Rzz4h8cxy7MsLbsnjw51M866Mt014eGXSXSep1RvSrSajg5xSw
zb/A5hPQJdqz8hedDG+kuBVZYS0Ddu+merhhMHl4J8shJAXACT4=
=Hk4U
-----END PGP SIGNATURE-----

--------------r2sXsB5fhQfMKZU4QtkRSco8--
