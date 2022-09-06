Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 528C15AE66D
	for <lists+linux-man@lfdr.de>; Tue,  6 Sep 2022 13:22:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239450AbiIFLWF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Sep 2022 07:22:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238831AbiIFLWE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Sep 2022 07:22:04 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4717A4A103
        for <linux-man@vger.kernel.org>; Tue,  6 Sep 2022 04:22:02 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id bp20so14458812wrb.9
        for <linux-man@vger.kernel.org>; Tue, 06 Sep 2022 04:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=ywXPXidrUsUKe7Osoy4gSpstIpRirONVwVYetXEUaVI=;
        b=iGypsBb5wPHwYHWGHFhUCF3qgHkVB22rwYFppxuPvuX5QCqt5KQ6yeerQ64iVsROwd
         CPAOYNi+dA3MAnYymEIwfAqwRobjWQrnmSOC/iPZJ7GlbyVfRaJaUprMtSUOTZM8Zcor
         aFhheYR0NTXJMb4uBTiQfzH4N/ObXgCHmWxLqYPnQDr9bgcZ3q8Iu1KwCRqZVPbICJgO
         VBAZNqe7Vcd+w0xQhzbG2DkSs+PQgQ0ghCBnkL7GsyO4MIc5iIMKeknGXl7lLEB+nohH
         R7EFrOs0QswvnQTy3EIqvrz8tIzUOdDsuDkHSeQwtJengtin0TDUT1CItlPY2DXeKfOt
         BGJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=ywXPXidrUsUKe7Osoy4gSpstIpRirONVwVYetXEUaVI=;
        b=zt62f41cTveR6yFcggGOUN0dAESQoQZvp3+hfIP3be0QPKm2iRnPFpJyaJDIxo2w8n
         uB0xn1JX7TKqqZjuuL2VxnPyzrHqplUrItvqTlPd282Xiuw0ymLPIV87RJKGCME9VEL9
         hivFLKZEV0IZAODYvq5eXYdM/1X6m3XMnYOEHBqfd7p/vWksrN/85ucDiG0eHZKdo/3D
         w715YbjMnS9EJNjI/l2S+ZaEzF37e1sh748kmm5W+1OrJWiuvkto0nezyC9SqWfw9Spx
         QGodteXtpxzs0Ek8LFE6iP20HzCFAKI3sZpG6f2+0GhHE7YPH/0kixXyT3HhXmt9RspI
         x8EQ==
X-Gm-Message-State: ACgBeo20unzR8lFntotOS+N8uwbguGHhuWB7uynEB2UTLHlOmoJTZtlW
        xkqJ0ybvhWRwSBr3gvTKQJ4=
X-Google-Smtp-Source: AA6agR5T1kcVNQ87BdEApWAXmSAY1YrTM9I6KJDalBC4QF9urMhjiGEhmTyfYMZSxaju15Cc4zvxAw==
X-Received: by 2002:a5d:4882:0:b0:225:3148:9f85 with SMTP id g2-20020a5d4882000000b0022531489f85mr26560124wrq.224.1662463320247;
        Tue, 06 Sep 2022 04:22:00 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g40-20020a05600c4ca800b003a4f1385f0asm13678649wmp.24.2022.09.06.04.21.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Sep 2022 04:21:59 -0700 (PDT)
Message-ID: <050cc068-70fd-8a77-09e5-2a917c09a37c@gmail.com>
Date:   Tue, 6 Sep 2022 13:21:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH] fanotify_mark.2: Document FAN_MARK_EVICTABLE
Content-Language: en-US
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
        linux-man <linux-man@vger.kernel.org>
References: <20220904154639.2623138-1-amir73il@gmail.com>
 <207e0f01-f625-3f79-42d0-3e87a6882ee7@gmail.com>
 <CAOQ4uxjpNJ=LOrNSMcJqRchwJsGu3_UUSckg3XWUk5qrNP5w0w@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAOQ4uxjpNJ=LOrNSMcJqRchwJsGu3_UUSckg3XWUk5qrNP5w0w@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------K5b19VY40BoJ9MfoC3CJ4A3h"
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------K5b19VY40BoJ9MfoC3CJ4A3h
Content-Type: multipart/mixed; boundary="------------SQDqmp0501tT3N5zVH42ESIj";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
 linux-man <linux-man@vger.kernel.org>
Message-ID: <050cc068-70fd-8a77-09e5-2a917c09a37c@gmail.com>
Subject: Re: [PATCH] fanotify_mark.2: Document FAN_MARK_EVICTABLE
References: <20220904154639.2623138-1-amir73il@gmail.com>
 <207e0f01-f625-3f79-42d0-3e87a6882ee7@gmail.com>
 <CAOQ4uxjpNJ=LOrNSMcJqRchwJsGu3_UUSckg3XWUk5qrNP5w0w@mail.gmail.com>
In-Reply-To: <CAOQ4uxjpNJ=LOrNSMcJqRchwJsGu3_UUSckg3XWUk5qrNP5w0w@mail.gmail.com>

--------------SQDqmp0501tT3N5zVH42ESIj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQW1pciwNCg0KT24gOS82LzIyIDA4OjAwLCBBbWlyIEdvbGRzdGVpbiB3cm90ZToNCj4g
T24gTW9uLCBTZXAgNSwgMjAyMiBhdCAxMToxMCBQTSBBbGVqYW5kcm8gQ29sb21hcg0KPiA8
YWx4Lm1hbnBhZ2VzQGdtYWlsLmNvbT4gd3JvdGU6DQo+Pg0KPj4gSGkgQW1pciwNCj4+DQo+
PiBPbiA5LzQvMjIgMTc6NDYsIEFtaXIgR29sZHN0ZWluIHdyb3RlOg0KPj4+IEFkZCBzZWN0
aW9uIGFib3V0IGV2aWN0YWJsZSBpbm9kZSBtYXJrcyBhbmQgZXhhbXBsZSB1c2UgY2FzZS4N
Cj4+PiBBZGQgcG9zc2libGUgZXJyb3IgY2FzZSBFRVhJU1QgcmVsYXRlZCB0byBldmljdGFi
bGUgbWFya3MuDQo+Pj4NCj4+PiBSZXZpZXdlZC1ieTogTWF0dGhldyBCb2Jyb3dza2kgPHJl
cG5vcEBnb29nbGUuY29tPg0KPj4+IFNpZ25lZC1vZmYtYnk6IEFtaXIgR29sZHN0ZWluIDxh
bWlyNzNpbEBnbWFpbC5jb20+DQo+Pj4gLS0tDQo+Pj4NCj4+PiBIaSBBbGV4LA0KPj4+DQo+
Pj4gVGhpcyBpcyBhbiB1cGRhdGUgZm9yIGEgbmV3IGZhbm90aWZ5IGZlYXR1cmUgaW4gdjUu
MTkuDQo+Pj4gUGxlYXNlIHdhaXQgdG8gc2VlIGlmIEphbiBoYXMgYW55IGNvbW1ldG5zIGJl
Zm9yZSBtZXJnaW5nLg0KPj4NCj4+IFN1cmUuICBBbHNvLCBwbGVhc2UgY2hlY2sgc29tZSBj
b21tZW50cyBvZiBtaW5lIGJlbG93Lg0KPj4NCj4+IENoZWVycywNCj4+DQo+PiBBbGV4DQo+
Pg0KPj4+DQo+Pj4gVGhhbmtzLA0KPj4+IEFtaXIuDQo+Pj4NCj4+PiAgICBtYW4yL2Zhbm90
aWZ5X21hcmsuMiB8IDUwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrDQo+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDUwIGluc2VydGlvbnMoKykNCj4+Pg0K
Pj4+IGRpZmYgLS1naXQgYS9tYW4yL2Zhbm90aWZ5X21hcmsuMiBiL21hbjIvZmFub3RpZnlf
bWFyay4yDQo+Pj4gaW5kZXggMjY5NmE4MDNhLi43NTdhZDkxNTkgMTAwNjQ0DQo+Pj4gLS0t
IGEvbWFuMi9mYW5vdGlmeV9tYXJrLjINCj4+PiArKysgYi9tYW4yL2Zhbm90aWZ5X21hcmsu
Mg0KPj4+IEBAIC0xNTMsNiArMTUzLDQ0IEBAIElmIHRoaXMgZmxhZyBpcyBub3Qgc2V0LA0K
Pj4+ICAgIHRoZSBpZ25vcmUgbWFzayBpcyBjbGVhcmVkIHdoZW4gYSBtb2RpZnkgZXZlbnQg
b2NjdXJzDQo+Pj4gICAgZm9yIHRoZSBpZ25vcmVkIGZpbGUgb3IgZGlyZWN0b3J5Lg0KPj4+
ICAgIC5QUA0KPj4+ICsuVFANCj4+DQo+PiAuUFAgZm9sbG93ZWQgYnkgYW5vdGhlciBwYXJh
Z3JhcGggbWFjcm8gaXMgYSBuby1vcC4gIFJlbW92ZSAuUFAgYWJvdmUuDQo+Pg0KPj4gQ2hl
Y2sgdGhlICdQYXJhZ3JhcGggbWFjcm9zJyBzdWJzZWN0aW9uIGluIGdyb2ZmX21hbig3KSBm
b3IgbW9yZSBkZXRhaWxzLg0KPj4NCj4+ICQgbWFuIGdyb2ZmX21hbg0KPj4gL14uLi5QYXJh
Z3JhcGggbWFjcm9zDQo+Pg0KPj4+ICsuQlIgRkFOX01BUktfRVZJQ1RBQkxFICIgKHNpbmNl
IExpbnV4IDUuMTkpIg0KPj4+ICsuXCIgY29tbWl0IDVmOWQzYmQ1MjAyNjFmZDdhODUwODE4
YzcxODA5ZmQ1ODBlMGYzMGMNCj4+PiArV2hlbiBhbiBpbm9kZSBtYXJrIGlzIGNyZWF0ZWQg
d2l0aCB0aGlzIGZsYWcsDQo+Pj4gK3RoZSBpbm9kZSBvYmplY3Qgd2lsbCBub3QgYmUgcGlu
bmVkIHRvIHRoZSBpbm9kZSBjYWNoZS4NCj4+PiArVGhlcmVmb3JlLCBhbGxvd2luZyB0aGUg
aW5vZGUgb2JqZWN0IHRvIGJlIGV2aWN0ZWQgZnJvbSB0aGUgaW5vZGUgY2FjaGUNCj4+DQo+
PiBJIHRoaW5rICdUaGVyZWZvcmUnIHNob3VsZCBjb250aW51ZSB0aGUgbGFzdCBzZW50ZW5j
ZSBhbmQgYmUgc2VwYXJhdGVkDQo+PiBieSAnLCcgb3IgJzsnIGluc3RlYWQgb2YgJy4nLCBh
bmQgcG9zc2libHkgcmVtb3ZpbmcgdGhlICcsJyBhZnRlciBpdC4NCj4+DQo+Pj4gK3doZW4g
dGhlIG1lbW9yeSBwcmVzc3VyZSBvbiB0aGUgc3lzdGVtIGlzIGhpZ2guDQo+Pj4gK1RoZSBl
dmljdGlvbiBvZiB0aGUgaW5vZGUgb2JqZWN0IHJlc3VsdHMgaW4gdGhlIGV2aWN0YWJsZSBt
YXJrIGFsc28NCj4+PiArYmVpbmcgbG9zdC4NCj4+DQo+PiBQbGVhc2UgcmV3cmFwIHRoZSBz
ZW50ZW5jZSBhYm92ZSBhY2NvcmRpbmcgdG8gc2VtYW50aWMgbmV3bGluZXMuDQo+Pg0KPj4g
bWFuLXBhZ2VzKDcpOg0KPj4gICAgICBVc2Ugc2VtYW50aWMgbmV3bGluZXMNCj4+ICAgICAg
ICAgIEluIHRoZSBzb3VyY2Ugb2YgYSBtYW51YWwgcGFnZSwgbmV3IHNlbnRlbmNlcyAgc2hv
dWxkICBiZQ0KPj4gICAgICAgICAgc3RhcnRlZCBvbiBuZXcgbGluZXMsIGxvbmcgc2VudGVu
Y2VzIHNob3VsZCBiZSBzcGxpdCBpbnRvDQo+PiAgICAgICAgICBsaW5lcyAgYXQgIGNsYXVz
ZSBicmVha3MgKGNvbW1hcywgc2VtaWNvbG9ucywgY29sb25zLCBhbmQNCj4+ICAgICAgICAg
IHNvIG9uKSwgYW5kIGxvbmcgY2xhdXNlcyBzaG91bGQgYmUgc3BsaXQgYXQgcGhyYXNlIGJv
dW5k4oCQDQo+PiAgICAgICAgICBhcmllcy4gIFRoaXMgY29udmVudGlvbiwgIHNvbWV0aW1l
cyAga25vd24gIGFzICAic2VtYW50aWMNCj4+ICAgICAgICAgIG5ld2xpbmVzIiwgIG1ha2Vz
IGl0IGVhc2llciB0byBzZWUgdGhlIGVmZmVjdCBvZiBwYXRjaGVzLA0KPj4gICAgICAgICAg
d2hpY2ggb2Z0ZW4gb3BlcmF0ZSBhdCB0aGUgbGV2ZWwgb2YgaW5kaXZpZHVhbCBzZW50ZW5j
ZXMsDQo+PiAgICAgICAgICBjbGF1c2VzLCBvciBwaHJhc2VzLg0KPj4NCj4+DQo+Pj4gK1do
ZW4gdGhlIG1hc2sgb2YgYW4gZXZpY3RhYmxlIGlub2RlIG1hcmsgaXMgdXBkYXRlZA0KPj4+
ICt3aXRob3V0IHVzaW5nIHRoZQ0KPj4+ICsuQiBGQU5fTUFSS19FVklDQVRCTEUNCj4+PiAr
ZmxhZywNCj4+PiArdGhlIG1hcmtlZCBpbm9kZSBpcyBwaW5uZWQgdG8gaW5vZGUgY2FjaGUN
Cj4+PiArYW5kIHRoZSBtYXJrIGlzIG5vIGxvbmdlciBldmljdGFibGUuDQo+Pj4gK1doZW4g
dGhlIG1hc2sgb2YgYSBub24tZXZpY3RhYmxlIGlub2RlIG1hcmsgaXMgdXBkYXRlZA0KPj4+
ICt3aXRoIHRoZQ0KPj4+ICsuQiBGQU5fTUFSS19FVklDVEFCTEUNCj4+PiArZmxhZywNCj4+
PiArdGhlIGlub2RlIG1hcmsgcmVtYWlucyBub24tZXZpY3RhYmxlDQo+Pj4gK2FuZCB0aGUg
dXBkYXRlIGZhaWxzIHdpdGgNCj4+PiArLkIgRUVYSVNUDQo+Pj4gK2Vycm9yLg0KPj4+ICtN
b3VudHMgYW5kIGZpbGVzeXN0ZW1zIGFyZSBub3QgZXZpY3RhYmxlLA0KPj4+ICtzbyBhbiBh
dHRlbXB0IHRvIGNyZWF0ZSBhbiBldmljdGFibGUgbW91bnQgb3IgZmlsZXN5c3RlbSBtYXJr
DQo+Pj4gK3dpbGwgcmVzdWx0cyB3aXRoDQo+Pg0KPj4gU29tZSByZXdvcmRpbmcgbmVlZGVk
IG5pIHRoZSBzZW50ZW5jZSBhYm92ZS4NCj4gDQo+IEhvdydzIHRoaXM6DQo+IA0KPiBNb3Vu
dHMgYW5kIGZpbGVzeXN0ZW1zIGFyZSBub3QgZXZpY3RhYmxlIG9iamVjdHMsDQo+IHRoZXJl
Zm9yZSwNCj4gYW4gYXR0ZW1wdCB0byBjcmVhdGUgYSBtb3VudCBtYXJrIG9yIGEgZmlsZXN5
c3RlbSBtYXJrDQo+IHdpdGggdGhlDQo+IC5CIEZBTl9NQVJLX0VWSUNUQUJMRQ0KPiBmbGFn
LA0KPiB3aWxsIHJlc3VsdCBpbiB0aGUgZXJyb3INCj4gLkJSIEVJTlZBTCAuDQo+IA0KPiBU
aGFua3MgZm9yIHRoZSByZXZpZXcsDQo+IEFtaXIuDQoNClllYWgsIHRoYXQgbWFrZXMgc2Vu
c2UgdG8gbWUuDQoNCkknbGwgcmV2aWV3IHlvdXIgdjIgc29vbi4gIE9yIGRvIHlvdSBwbGFu
IGFuIHYzIGFmdGVyIEphbidzIGVtYWlsPw0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQpB
bGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K


--------------SQDqmp0501tT3N5zVH42ESIj--

--------------K5b19VY40BoJ9MfoC3CJ4A3h
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMXLVYACgkQnowa+77/
2zJm8A/+J+yLSkNJRgzsg0wsRmg658eazGLzgu6l8qmYIIUkXDo6VgEMp9pH/9/A
l8zVzNjfpYUTuDQSrbnPKTeKzDyuh9C1IOm0bLpzfoJo9arYmnMn990FDgS2DAB+
npJtysTz9KfKYQBe59dUV2Irq1fjbwMr5ZlRCGdXiVdtSGj1ngT7yRVM8I+x9xZb
zTWFsJflG6faYVRHfUF/cIKTubqXZIdWJ8ou4rVvYeeHPELG1QiAHCGaYXWkp8yt
Arsw+VPsTvGqZm1oeGaoTY2xTVs6n85Wdy1SwGjMH/0bfnRC9W7AKrQbOYxOEYaH
+HitjUSRDFUs14ohNxd0O+QXNXSNGIH4/4J8FeZq9NPw72IrEINECM7zfbUtE9Ut
/70AJKZUD+qsM4u9UjzSWRLLUd5CxWmSi1Fuf6lc40BV9jyfXQJvg24gRu67YwZp
p+q4XTsRK9sfBKOFFZmcrubzDuxlGxI0kDtX+N/+QfQkblzQdiXY+QLXmpAv7SFr
LXQbScOam4uh1aIuHruYdZEGwrn3zpWTtBzuPg0mTRo6QT14RRL3YpM/w3rmBaoK
AT2ilRUuQHBNdO7KNLVI4VLdM2TIBKHGwqSB0HGIqEqgtxllSvx6GEPPmgVOg3+3
3TDqVwxuozGQt1HTgrdjNDWb/b9UQ03hP1w+SW+b/1zZPUmrTEY=
=IwiG
-----END PGP SIGNATURE-----

--------------K5b19VY40BoJ9MfoC3CJ4A3h--
