Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA42F581A0D
	for <lists+linux-man@lfdr.de>; Tue, 26 Jul 2022 21:02:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232004AbiGZTCx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Jul 2022 15:02:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231810AbiGZTCw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Jul 2022 15:02:52 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C21F3138C
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 12:02:51 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id h9so21439372wrm.0
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 12:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=sLHTN2s1s+4nBPys+WVgvdCLrG1qYr0BMZ8l5GMEIrc=;
        b=YC+yr17+D2vlno5hmyIiAwNtfeRfKDFeaXnvJeeaJERa/e6H7aoQ0z0XIQqElF7OgD
         Lqa05PLTzkZ1GyGzPSptrOU/wyPUI9AF+H/XWEnm7UhMXWXe9XQylAnAMezK3nOxxrtY
         uibvxviulaIcW2jT0v3XIonJnGcash27w9EtDsUaABSvVDVB8uyNyglLKQOli9CPlrw/
         aJ8C7CMSiJQZmhrcEKsG123txtwGIz9I7HljuOZs/kl27khsU6taVRgUHxTZtuo2rEW8
         syi8nbnTeRMmTc4qh6MYiFx8cYalmPZFGXUsDoYW0yB+881RyN/8fHu7ibwy9Xt5Q7DP
         DPWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=sLHTN2s1s+4nBPys+WVgvdCLrG1qYr0BMZ8l5GMEIrc=;
        b=l4n72hL5N5wDN/5ObjopiupsPAaEmdoQ8E9/etP2azfMX1GiqX+k2kI9LgOxy9jE69
         7Y1NcCS5WHgJNc6XoCqupAbka6Li3f9Gh4jcpNUUrQwtNcfD1M6EQP7COI1DHMfoQrmV
         EP9wRlSSY+E6ANgmBG5+XemEQMRe0gv45J0w+FWzNziiClUCYDkAUmYWH85G4Vhhva2R
         JL/hjxDYcmh+yMInFTupw3mPp+COUedDCxqCXAHOMd4JwlPnxrWsYKLaYmLSURcaRqFy
         /heOe3E3JbSJIdJh9u6yynCpM1Avlch7RIncYw1gtRk+wtycltcpK6lOEzuust0NTFPa
         nDPw==
X-Gm-Message-State: AJIora9wz3rb6e57wDXnDx2UH++6sCu3+SRSIEN14IlOeDM54AWy5uY+
        cTOM/sbXcPRhxycEwNlAfB4lLtsSK90=
X-Google-Smtp-Source: AGRyM1vN7jRTqiqF7mWY4bjEVX94ID7vhi/Mc6tNz4/h3MOd2y3Jpyn88qUQzCkCGLz4Sym26UFtQw==
X-Received: by 2002:adf:d1eb:0:b0:21e:5545:9ac9 with SMTP id g11-20020adfd1eb000000b0021e55459ac9mr11896748wrd.458.1658862169422;
        Tue, 26 Jul 2022 12:02:49 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j20-20020a5d6e54000000b0021d65e9d449sm14882570wrz.73.2022.07.26.12.02.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jul 2022 12:02:48 -0700 (PDT)
Message-ID: <f2c85cee-9ef0-eaad-d1b4-21352a324c9b@gmail.com>
Date:   Tue, 26 Jul 2022 21:02:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH] man-pages.7: Document CAVEATS section
Content-Language: en-US
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     linux-man@vger.kernel.org
References: <20220726120817.100462-1-alx.manpages@gmail.com>
 <Yt/yMJuhXd+jH3sp@asta-kit.de>
 <7effe1a8-c1b4-5542-932a-7edf436036ce@gmail.com>
 <YuAKPTxrbJ2XuqJN@asta-kit.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <YuAKPTxrbJ2XuqJN@asta-kit.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------In6OucMDK9p8QTf0b7PKYJL0"
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
--------------In6OucMDK9p8QTf0b7PKYJL0
Content-Type: multipart/mixed; boundary="------------hL8wur0QaeY7J6kCdlk07Q0P";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>
Cc: linux-man@vger.kernel.org
Message-ID: <f2c85cee-9ef0-eaad-d1b4-21352a324c9b@gmail.com>
Subject: Re: [PATCH] man-pages.7: Document CAVEATS section
References: <20220726120817.100462-1-alx.manpages@gmail.com>
 <Yt/yMJuhXd+jH3sp@asta-kit.de>
 <7effe1a8-c1b4-5542-932a-7edf436036ce@gmail.com>
 <YuAKPTxrbJ2XuqJN@asta-kit.de>
In-Reply-To: <YuAKPTxrbJ2XuqJN@asta-kit.de>

--------------hL8wur0QaeY7J6kCdlk07Q0P
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSW5nbywNCg0KT24gNy8yNi8yMiAxNzozNywgSW5nbyBTY2h3YXJ6ZSB3cm90ZToNCj4g
SGkgQWxlamFuZHJvLA0KPiANCj4gQWxlamFuZHJvIENvbG9tYXIgd3JvdGUgb24gVHVlLCBK
dWwgMjYsIDIwMjIgYXQgMDQ6Mjk6NDlQTSArMDIwMDoNCj4+IE9uIDcvMjYvMjIgMTU6NTQs
IEluZ28gU2Nod2FyemUgd3JvdGU6DQo+Pj4gQWxlamFuZHJvIENvbG9tYXIgd3JvdGUgb24g
VHVlLCBKdWwgMjYsIDIwMjIgYXQgMDI6MDg6MThQTSArMDIwMDoNCj4gDQo+Pj4+IENBVkVB
VFMgaXMgYW4gaW50ZXJlc3Rpbmcgc2VjdGlvbiBmcm9tIE9wZW5CU0QuDQo+IA0KPj4+IEl0
IGlzIG5vIGRvdWJ0IG5pY2Ugd2hlbiBjcmVkaXQgaXMgZ2l2ZW4gdG8gT3BlbkJTRCwNCj4+
PiBidXQgaW4gdGhpcyBjYXNlLCBpdCBoYXBwZW5zIHRvIGJlIHVuZGVzZXJ2ZWQuICA7LSkN
Cj4+Pg0KPj4+IEkgc2VlIHRoZSBmb2xsb3dpbmcgZWFybHkgdXNlcyBvZiAiLlNIIENBVkVB
VFMiOg0KPj4+DQo+Pj4gICAgKiA0LjJCU0QgZXhlY3ZlKDIpLCByZWxlYXNlZCBTZXB0ZW1i
ZXIgMTk4MywgYXV0aG9yIHVua25vd24NCj4+PiAgICAqIDQuM0JTRC1UYWhvZSBwYXRjaCgx
KSwgcmVsZWFzZWQgSnVuZSAxOTg4LCBhdXRob3I6IExhcnJ5IFdhbGwNCj4+PiAgICAqIDQu
M0JTRC1SZW5vIGFtZCg4KSwgcmVsZWFzZWQgSnVuZSAxOTkwLCBhdXRob3I6IEphbi1TaW1v
biBQZW5kcnkNCj4+PiAgICAqIDQuNEJTRCBzdHJmdGltZSgzKSwgcmVsZWFzZWQgSnVuZSAx
OTkzLCBhdXRob3I6IEFybm9sZCBSb2JiaW5zDQo+Pj4gICAgKiA0LjRCU0QgZ3ppcCgxKSwg
cmVsZWFzZWQgSnVuZSAxOTkzLCBhdXRob3IgKHVuc3VyZSkgSmVhbi1sb3VwIEdhaWxseSA/
DQo+Pj4gICAgKiA0LjRCU0QgbW91bnRfa2VybmZzKDgpLCByZWxlYXNlZCBKdW5lIDE5OTMs
IGF1dGhvcjogSmFuLVNpbW9uIFBlbmRyeQ0KPj4+DQo+Pj4gVGhlIGZpcnN0IGluc3RhbmNl
IG9mICIuU2ggQ0FWRUFUUyIgaSBmb3VuZCBpczoNCj4+Pg0KPj4+ICAgICogNC40QlNELUxp
dGUxIHJlYWxwYXRoKDMpLCByZWxlYXNlZCBBcHJpbCAxOTk0LCBhdXRob3IgS2VpdGggQm9z
dGljDQo+Pj4NCj4+PiBJdCBkb2Vzbid0IGxvb2sgYXMgaWYgdGhlIFVDIENTUkcgdXNlZCBD
QVZFQVRTIGluIGFkZGl0aW9uYWwgZmlsZXMuDQo+Pj4NCj4+PiBTdGFuZGFyZGl6YXRpb24g
d2FzIGRlY2lkZWQgaW4gTmV0QlNEIGR1cmluZyBhIGRpc2N1c3Npb24NCj4+PiBvbiA8dGVj
aC11c2VybGV2ZWxAbmV0YnNkLm9yZz4gbGVhZGluZyB0byB0aGlzIGNvbW1pdDoNCj4+Pg0K
Pj4+ICAgICAvc3JjL3NoYXJlL21pc2MvbWRvYy50ZW1wbGF0ZSByZXZpc2lvbiAxLjYNCj4+
PiAgICAgZGF0ZTogMjAwMi0wNy0xMCAwOTo0NToxOCArMDAwMDsgIGF1dGhvcjogeWFtdDsg
IGxpbmVzOiArMiAtMTsNCj4+PiAgICAgYWRkIENBVkVBVFMgc2VjdGlvbi4gZGlzY3Vzc2Vk
IG9uIHRlY2gtdXNlcmxldmVsLg0KPj4+DQo+Pj4gVGhlIGxvZ2luIG5hbWUgInlhbXQiIGJl
bG9uZ3MgdG8gWUFNQU1PVE8gVGFrYXNoaS4NCj4+Pg0KPj4+IEl0IHdhcyB0aGVuIHF1aWNr
bHkgcGlja2VkIHVwIGluIE9wZW5CU0QgYnkgSmFzb24gTWNJbnR5cmUuDQo+Pj4NCj4+PiBT
byB0aGUgc2VjdGlvbiBoYXMgYSB0cmFkaXRpb24gb2YgYWxtb3N0IDQwIHllYXJzIGFuZCBo
YXMgYmVlbg0KPj4+IHN0YW5kYXJkaXplZCBpbiAqQlNEIGZvciBhYm91dCB0d28gZGVjYWRl
cywgZXZlbiB0aG91Z2ggaXQgd2FzDQo+Pj4gbm90IG9yaWdpbmFsbHkgYSBCU0QgaW52ZW50
aW9uLg0KPiANCj4+IFdhc24ndCBpdCBhIEJTRCBpbnZlbnRpb24/ICBUaGUgc291cmNlcyB5
b3UgbWVudGlvbmVkIHNlZW0gdG8gc2F5IGl0IGlzLg0KPiANCj4gV2VsbCwgaSBsb29rZWQg
dGhyb3VnaCBCU0QgaGlzdG9yeSBmaXJzdCBiZWNhdXNlIHRoYXQncyBlYXNpZXN0IGZvciBt
ZSwNCj4gYnV0IGl0IGlzIHN0cmlraW5nIHRoYXQgdGhlIGF1dGhvcnMgbGlzdGVkIGFib3Zl
IGFyZSBub3QgcmVhbGx5IEJTRA0KPiBwZW9wbGU6DQo+IA0KPiAgICogTGFycnkgV2FsbCBp
cyB0aGUgYXV0aG9yIG9mIHBlcmwoMSkgYW5kIG5vdCBhc3NvY2lhdGVkIHdpdGggVVNCIG9y
IEJTRC4NCj4gDQo+ICAgKiBKYW4tU2ltb24gUGVuZHJ5IGV2ZW50dWFsbHkgZ290IGFuIGFj
Y291bnQgKHBlbmRyeUApIGFuZCB1bHRpbWF0ZWx5DQo+ICAgICBzY29yZWQgc2xpZ2h0bHkg
YWJvdmUgMTAwMCBjb21taXRzIHRvIEJTRCwgYnV0IGhlIHdhcyBhbiBvdXRzaWRlDQo+ICAg
ICBjb250cmlidXRvciBhbmQgbm90IGEgbWVtYmVyIG9mIHRoZSBDU1JHIGFzIGZhciBhcyBp
IGtub3cuDQo+IA0KPiAgICogQXJub2xkIFJvYmJpbnMgam9pbmVkIHRoZSBHTlUgYXdrKDEp
IHByb2plY3QgaW4gMTk4OCBhbmQgZXZlbnR1YWxseQ0KPiAgICAgdG8gb3ZlciBtYWludGVu
YW5jZSBmcm9tIFBhdWwgUnViaW4sIEpheSBGZW5sYXNvbiwgYW5kIFJNUy4NCj4gICAgIExh
dGVyIG9uLCBoZSBhbHNvIGNvbnRyaWJ1dGVkIHRvIEdOVSBjb3JldXRpbHMuDQo+ICAgICBJ
biBmYWN0LCB0aGUgcmVhc29uIGhpcyBzdHJmdGltZSgzKSBtYW51YWwgcGFnZSB3YXMgaW5j
bHVkZWQNCj4gICAgIGluIDQuNEJTRCBpcyBiZWNhdXNlIGl0IHdhcyBwYXJ0IG9mIGhpcyBn
YXdrKDEpIGRpc3RyaWJ1dGlvbg0KPiAgICAgd2hpY2ggd2FzIGluY2x1ZGVkIGludG8gQlNE
IGJhY2sgdGhlbi4NCj4gDQo+ICAgKiBnemlwKDEpIHdhcyBhbHNvIGluY2x1ZGVkIGludG8g
QlNEIGFzIG91dHNpZGUgY29kZSwgYmVsb3cgY29udHJpYi8uDQo+IA0KPiBUaGUgb25seSB1
bmFtYmlndW91cyBDU1JHIHBlcnNvbiBpbiB0aGUgYWJvdmUgbGlzdCBpcyBLZWl0aCBCb3N0
aWMsDQo+IGFuZCBieSB0aGUgdGltZSBoZSB1c2VkIENBVkVBVFMsIHRoZSBzZWN0aW9uIGhh
ZCBhbHJlYWR5IGJlZW4gaW4gdXNlDQo+IGZvciBtb3JlIHRoYW4gYSBkZWNhZGUuDQo+IA0K
Pj4gV291bGQgaXQgYmUgY29ycmVjdCB0byBzYXkgIi4uLiBzZWN0aW9uIGZyb20gdGhlIEJT
RHMiPw0KPiANCj4gU29tZSBtaWdodCBtaXN1bmRlcnN0YW5kIGV2ZW4gdGhhdC4gIFRoZSBm
aW5hbCBDU1JHIEJTRCByZWxlYXNlDQo+IG9ubHkgY29udGFpbmVkIGFib3V0IHNldmVuIGlu
c3RhbmNlcywgYWxsIGJ1dCBhYm91dCB0d28gY29taW5nDQo+IGZyb20gb3V0c2lkZSBzb3Vy
Y2VzLCB3aGljaCBpcyBub3QgcXVpdGUgd2hhdCBtb3N0IHdvdWxkIGV4cGVjdA0KPiBoZWFy
aW5nICJmcm9tIHRoZSBCU0RzIi4gIEJlc2lkZXMsIFZlcnNpb24gMTAgQVQmVCBVTklYIHBy
ZWNlZGVkDQo+IDQuNEJTRC1MaXRlMSBieSBhYm91dCBmaXZlIHllYXJzIGFuZCBjb250YWlu
ZWQgbW9yZSBpbnN0YW5jZXMNCj4gb2YgQ0FWRUFUUy4NCj4gDQo+IEkgZHVnIHVwIHNvbWUg
bW9yZSBpbnN0YW5jZXM6DQo+IA0KPiAgICogQVQmVCBTeXN0ZW3CoElJSSBVTklYIG1hbig3
KSwgcmVsZWFzZWQgMTk4Mg0KPiAgICogQVQmVCBVTklYLCBFaWdodGggRWRpdGlvbiBrc2go
MSksIHJlbGVhc2VkIEZlYnJ1YXJ5IDE5ODUNCj4gICAqIEFUJlQgVU5JWCwgVGVudGggRWRp
dGlvbiBhYm91dCBzZXZlbiBhZGRpdGlvbiBwYWdlcywgcmVsZWFzZWQgMTk4OQ0KPiANCj4g
U28geW91IGNvdWxkIHNheSBzb21ldGhpbmcgbGlrZSB0aGlzOg0KPiANCj4gICAgVGhpcyBz
ZWN0aW9uIGhhcyBiZWVuIHVzZWQgaW4gcGFnZXMgd3JpdHRlbiBpbiB0aGUgbWFuKDcpIGxh
bmd1YWdlDQo+ICAgIGJ5IGF1dGhvcnMgZnJvbSBhIHdpZGUgcmFuZ2Ugb2YgcHJvamVjdHMg
aW5jbHVkaW5nIEFUJlQsIEtvcm4gc2hlbGwsDQo+ICAgIFBlcmwsIEdOVSBhbmQgQlNEIHNp
bmNlIHRoZSBlYXJseSAxOTgwcy4NCj4gICAgVXNpbmcgdGhlIHNlY3Rpb24gd2FzIGZpcnN0
IG9mZmljaWFsbHkgcmVjb21tZW5kZWQgaW4gMjAwMg0KPiAgICBieSB0aGUgZmlsZSAvdXNy
L3NoYXJlL21pc2MvbWRvYy50ZW1wbGF0ZSBpbiBOZXRCU0QgYW5kIE9wZW5CU0QuDQo+IA0K
PiBBY2NvcmRpbmcgdG8gbXkga25vd2xlZGdlLCB0aGF0IHdvdWxkIGJlIGFjY3VyYXRlLg0K
DQpUaGFua3MgZm9yIHRoZSBpbnZlc3RpZ2F0aW9uLiAgQ29tbWl0dGVkLCB3aXRoIGEgc2lt
aWxhciBjb21taXQgbWVzc2FnZSANCihjaGFuZ2luZyByZWZlcmVuY2VzIHRvIG1hbig3KSBi
eSAibWFudWFsIHBhZ2VzIiwgc2luY2UgSSBjb25zaWRlciANCm1kb2MoNykgcGFnZXMgYXMg
cmVsZXZhbnQgaW4gdGhpcyByZWdhcmQpLg0KDQpUaGFua3MsDQoNCkFsZXgNCg0KDQotLSAN
CkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+
DQo=

--------------hL8wur0QaeY7J6kCdlk07Q0P--

--------------In6OucMDK9p8QTf0b7PKYJL0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLgOlAACgkQnowa+77/
2zIclQ//eO3DSwJ02ty7wIHPgoiEz+0XOFIpnFTW5y5UQiwbv4u9XVxXYung7SNb
KFUj/XTSRkMJKFyryqInHDS1DeqNKdfsFhYzyZrfCg3ltFTaqla4whsv9DzRFC85
WZdeNfgDO6bo9pg/eQHXYtRDSM9sNOIwSFDOdUKnZe+UoopoRYDc8IW3Ti2PH2Ys
7ptXd13UlF2kTadm77WikmoxfIVc91mItZHAHcax927R570f2BrU5LBq3dzK1gUU
1ut6OLb2BMo32EqdAtCzarUyaU6xjGYZ7m+QZKjffVAbsH4Bnh1QPGLCRwzWlWwp
QvWLrnak1pWMcIfYc0F75YevnB7crm3WmZNGRT2fVcng7hly1XS2pLtnEbW8LhxY
mm5jkF8hEQ/9iPFGFrGd0ECfgtfqu1WXS7mL8WvDTBLGRxkveDX1AyvDiC1cR8K1
dwkEBy7nuJsKMH6zwswJYdDfPvw1sMlvutcu5wFcycTOn3MqvgeADRt9zOWUCABv
UDCg4IjbAN5L8/yziPQWQgFfFWXmy3T0XvhBmyQdKdIrpnd12JNjfkinfwD6huuO
CYgoHyKCqIGWvrMQMbTRs+jRaWB/q5UfUlnJc2wIcmJ9eeKmd2iJd+SNu/XRxHPa
j5E9PYTGWzl2KdZnImfV7uTy5cyqfdC2OzCs5z0Uns1IHrWXSgs=
=77eW
-----END PGP SIGNATURE-----

--------------In6OucMDK9p8QTf0b7PKYJL0--
