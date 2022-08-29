Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 727F45A572B
	for <lists+linux-man@lfdr.de>; Tue, 30 Aug 2022 00:36:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229650AbiH2Wg5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Aug 2022 18:36:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229551AbiH2Wg4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Aug 2022 18:36:56 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96C4F9CCF6
        for <linux-man@vger.kernel.org>; Mon, 29 Aug 2022 15:36:55 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id bu22so11569192wrb.3
        for <linux-man@vger.kernel.org>; Mon, 29 Aug 2022 15:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=UKbDkVgp08TxfFLvhl/ANyjzVBivTqf65cmHf/2D8pA=;
        b=LHeAaCBU61XFVaCcnUHLdw6XmgMlI8MJnNdelbJ+STjQFLOgKO/6WKhzhqWx5U3/tW
         tGQOpuUpRXtF0pPMuhisiRwqzcVAEwhl4VXR6bjt6JRuOuyw89JGeCOKZdf4PXulUI5i
         AeYjO76mF4mTifGEql/f1KUXpmRGXPtS4d1iJtfanVlsbiJDcwibqFI+Xj/Q/pwfSfck
         sGMdoHSeusb+Bmp3ErEW9rqnuhN4a3XeylzsVYmhT1rEAho7Q2CdgMItTFDnPpc5CuK1
         yxlV7mo1Jpwb5FeR9cnmHyazpFhUNFhOH9tOvJ9lx6tJWRGQOk/3q+lLQZLlXhphhk06
         zrzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=UKbDkVgp08TxfFLvhl/ANyjzVBivTqf65cmHf/2D8pA=;
        b=ujFhJAG3CD0TldVwigi0evTJdBSPACR6lHLnf9Lxw8ed+Zgt8J5OYrWb8O79bVHGag
         nSC5V5NJVQ9tvJGqIVCRto+2FBREauNMDnJkXzmJcXTfchncriJp7rb82lTtSVj2/GGe
         gQonqVRQakBGawPivqt11/IHOgQ5T6ujisY9B+j8O6sxZp78W1Ra673xBefoRjm35WaA
         NBadfLs+u1P9ImljSCDtI50WC+TSy1tOa7f+ebF+gXvA1ehdnge1/zr7ZsiUVOdWB5NH
         sez+oDL9dqTGo8jWq5Ao+x+3dioMJfvzWl8InDRYED4VgKn2caDTGqa9XALXw1rXyBJb
         YjoQ==
X-Gm-Message-State: ACgBeo3POWZsr/rBmmb9dcr4SxlFs63vIqMub48YuYgWM4B9eyekrr8l
        423Nv2lwJXOxDyLhU6OhLH8=
X-Google-Smtp-Source: AA6agR7E+edeqgLwLvQVMDuMfEPFzucy4bvxE3ONPq1111vhKnhkDCSXSguGV5ASQO4MAeMeyMAEkg==
X-Received: by 2002:adf:f3cd:0:b0:225:f712:c34a with SMTP id g13-20020adff3cd000000b00225f712c34amr7294890wrp.563.1661812614082;
        Mon, 29 Aug 2022 15:36:54 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id e3-20020adfe383000000b0021ef34124ebsm8239472wrm.11.2022.08.29.15.36.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Aug 2022 15:36:50 -0700 (PDT)
Message-ID: <fd28f474-90a1-9f81-677d-f70ce604bd81@gmail.com>
Date:   Tue, 30 Aug 2022 00:36:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH 1/2] cc_t.3type, speed_t.3type, tcflag_t.3type: document
 all together
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <ad1134a85b71db33671385502931aa61029ffc44.1661809591.git.nabijaczleweli@nabijaczleweli.xyz>
 <3cbbf2e5-6213-198f-4cab-c6f42204d471@gmail.com>
 <20220829223352.dkxto5dtp4txted6@tarta.nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220829223352.dkxto5dtp4txted6@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------fbdIwutQq4nq64SnUScjQWPi"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------fbdIwutQq4nq64SnUScjQWPi
Content-Type: multipart/mixed; boundary="------------t4YSMLsCcPRCjkV9vA4EnbUp";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <fd28f474-90a1-9f81-677d-f70ce604bd81@gmail.com>
Subject: Re: [PATCH 1/2] cc_t.3type, speed_t.3type, tcflag_t.3type: document
 all together
References: <ad1134a85b71db33671385502931aa61029ffc44.1661809591.git.nabijaczleweli@nabijaczleweli.xyz>
 <3cbbf2e5-6213-198f-4cab-c6f42204d471@gmail.com>
 <20220829223352.dkxto5dtp4txted6@tarta.nabijaczleweli.xyz>
In-Reply-To: <20220829223352.dkxto5dtp4txted6@tarta.nabijaczleweli.xyz>

--------------t4YSMLsCcPRCjkV9vA4EnbUp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCk9uIDgvMzAvMjIgMDA6MzMsINC90LDQsSB3cm90ZToNCj4gSGkhDQo+IA0KPiBP
biBUdWUsIEF1ZyAzMCwgMjAyMiBhdCAxMjoxNjo1OEFNICswMjAwLCBBbGVqYW5kcm8gQ29s
b21hciB3cm90ZToNCj4+IFR5cGVzIGFyZSBmb3JtYXR0ZWQgd2l0aCAuSSwgYnV0IHRoYXQg
c2VlbXMgdG8gYmUgZXhpc3RpbmcgcHJhY3RpY2UgYW5kIEkNCj4+IGRvbid0IGZpbmQgaXQg
ZG9jdW1lbnRlZCBhbnl3aGVyZS4gIChCcmFuZGVuLCBkbyB5b3Uga25vdyBvZiBhbnkgc291
cmNlIHRoYXQNCj4+IGRpc2N1c3NlcyB0aGlzPyAgSXMgaXQgYWxzbyBsaWtlIHRoYXQgaW4g
b3RoZXIgbWFudWFsIHBhZ2VzPyAgV291bGQgeW91IGRvDQo+PiB0aGF0IGV2ZW4gaWYgaXQg
aXMgdGhlIG1haW4gc3ViamVjdCBvZiB0aGUgcGFnZT8pDQo+IA0KPiBJJ2QgdXNlZCBCIGJl
Y2F1c2UgdGhlIHR5cGVkZWZzIGluIFNZTk9QU0lTIHdlcmUgQi4NCj4gDQo+IChGV0lXIG1k
b2MgYWdyZWVzIOKAkiBncm9mZiBhbmQgbWFuZG9jIFZ0IGFyZSBpdGFsaWMgaW4gYWxsIG91
dHB1dCBtb2RlcykNCj4gDQo+Pj4gK2lzIHVzZWQgZm9yIHRlcm1pbmFsIHNwZWNpYWwgY2hh
cmFjdGVycywNCj4+PiArLkIgc3BlZWRfdA0KPj4+ICtcKGVtIGJhdWQgcmF0ZXMsIGFuZA0K
Pj4gSSB3b3VsZCB1c2UgYSAnZm9yJyBoZXJlOg0KPj4gQSBpcyB1c2VkIGZvciBYLCBCIGZv
ciBZLCBhbmQgQyBmb3IgWi4NCj4+IHJhdGhlciB0aGFuDQo+PiBBIGlzIHVzZWQgZm9yIFgs
IEIgLS0gWSwgYW5kIEMtLVouDQo+IA0KPiBTdXJlLCBzZWUgdXBkYXRlZCBzY2lzc29yLXBh
dGNoIGJlbG93Lg0KPiANCj4gQmVzdCwNCj4gDQo+IC0tID44IC0tDQo+IHNwZWVkX3QgYW5k
IHRjZmxhZ190IHdlcmUgYm90aCB1bm1lbnRpb25lZCBpbiBnZW5lcmFsDQo+IA0KPiBJc3N1
ZSA3IGhhcyB0aGlzIHRvIHNheToNCj4gICAgVGhlIDx0ZXJtaW9zLmg+IGhlYWRlciBzaGFs
bCBkZWZpbmUgdGhlIGZvbGxvd2luZyBkYXRhIHR5cGVzIHRocm91Z2ggdHlwZWRlZjoNCj4g
ICAgICBjY190ICAgICBVc2VkIGZvciB0ZXJtaW5hbCBzcGVjaWFsIGNoYXJhY3RlcnMuDQo+
ICAgICAgc3BlZWRfdCAgVXNlZCBmb3IgdGVybWluYWwgYmF1ZCByYXRlcy4NCj4gICAgICB0
Y2ZsYWdfdCBVc2VkIGZvciB0ZXJtaW5hbCBtb2Rlcy4NCj4gICAgVGhlIGFib3ZlIHR5cGVz
IHNoYWxsIGJlIGFsbCB1bnNpZ25lZCBpbnRlZ2VyIHR5cGVzLg0KDQpJIGp1c3QgcmVhbGl6
ZWQgeW91IGRpZG4ndCBzaWduIHRoZSBwYXRjaGVzLiAgV2lsbCBzaWduIHRoZW0gb24geW91
ciANCmJlaGFsZiBpZiB5b3Ugd2FudC4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gLS0tDQo+
ICAgbWFuM3R5cGUvY2NfdC4zdHlwZSAgICAgfCAxNCArKysrKysrKysrKy0tLQ0KPiAgIG1h
bjN0eXBlL3NwZWVkX3QuM3R5cGUgIHwgIDEgKw0KPiAgIG1hbjN0eXBlL3RjZmxhZ190LjN0
eXBlIHwgIDEgKw0KPiAgIDMgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkNCj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgbWFuM3R5cGUvc3BlZWRfdC4z
dHlwZQ0KPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBtYW4zdHlwZS90Y2ZsYWdfdC4zdHlwZQ0K
PiANCj4gZGlmZiAtLWdpdCBhL21hbjN0eXBlL2NjX3QuM3R5cGUgYi9tYW4zdHlwZS9jY190
LjN0eXBlDQo+IGluZGV4IDAyOWNmOTQ1Yy4uNjQxNGRiZjIwIDEwMDY0NA0KPiAtLS0gYS9t
YW4zdHlwZS9jY190LjN0eXBlDQo+ICsrKyBiL21hbjN0eXBlL2NjX3QuM3R5cGUNCj4gQEAg
LTYsNyArNiw3IEBADQo+ICAgLlwiDQo+ICAgLlRIIENDX1QgM3R5cGUgMjAyMS0xMS0wMiAi
TGludXggbWFuLXBhZ2VzICh1bnJlbGVhc2VkKSINCj4gICAuU0ggTkFNRQ0KPiAtY2NfdCBc
LSB0ZXJtaW5hbCBzcGVjaWFsIGNoYXJhY3RlcnMNCj4gK2NjX3QsIHNwZWVkX3QsIHRjZmxh
Z190IFwtIHRlcm1pbmFsIHNwZWNpYWwgY2hhcmFjdGVycywgYmF1ZCByYXRlcywgbW9kZXMN
Cj4gICAuU0ggTElCUkFSWQ0KPiAgIFN0YW5kYXJkIEMgbGlicmFyeQ0KPiAgIC5SSSAoIGxp
YmMgKQ0KPiBAQCAtMTUsMTAgKzE1LDE4IEBAIFN0YW5kYXJkIEMgbGlicmFyeQ0KPiAgIC5C
ICNpbmNsdWRlIDx0ZXJtaW9zLmg+DQo+ICAgLlBQDQo+ICAgLkJSIHR5cGVkZWYgIiAvKiAu
Li4gKi8gIiBjY190Ow0KPiArLkJSIHR5cGVkZWYgIiAvKiAuLi4gKi8gIiBzcGVlZF90Ow0K
PiArLkJSIHR5cGVkZWYgIiAvKiAuLi4gKi8gIiB0Y2ZsYWdfdDsNCj4gICAuZmkNCj4gICAu
U0ggREVTQ1JJUFRJT04NCj4gLVVzZWQgZm9yIHRlcm1pbmFsIHNwZWNpYWwgY2hhcmFjdGVy
cy4NCj4gLUl0IGlzIGFuIHVuc2lnbmVkIGludGVnZXIgdHlwZS4NCj4gKy5JIGNjX3QNCj4g
K2lzIHVzZWQgZm9yIHRlcm1pbmFsIHNwZWNpYWwgY2hhcmFjdGVycywNCj4gKy5JIHNwZWVk
X3QNCj4gK2ZvciBiYXVkIHJhdGVzLCBhbmQNCj4gKy5JIHRjZmxhZ190DQo+ICtmb3IgbW9k
ZXMuDQo+ICsuUFANCj4gK0FsbCBhcmUgdW5zaWduZWQgaW50ZWdlciB0eXBlcy4NCj4gICAu
U0ggU1RBTkRBUkRTDQo+ICAgUE9TSVguMS0yMDAxIGFuZCBsYXRlci4NCj4gICAuU0ggU0VF
IEFMU08NCj4gZGlmZiAtLWdpdCBhL21hbjN0eXBlL3NwZWVkX3QuM3R5cGUgYi9tYW4zdHlw
ZS9zcGVlZF90LjN0eXBlDQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+IGluZGV4IDAwMDAw
MDAwMC4uMjZjZmQwMTcxDQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIvbWFuM3R5cGUvc3Bl
ZWRfdC4zdHlwZQ0KPiBAQCAtMCwwICsxIEBADQo+ICsuc28gbWFuM3R5cGUvY2NfdC4zdHlw
ZQ0KPiBkaWZmIC0tZ2l0IGEvbWFuM3R5cGUvdGNmbGFnX3QuM3R5cGUgYi9tYW4zdHlwZS90
Y2ZsYWdfdC4zdHlwZQ0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAw
MDAuLjI2Y2ZkMDE3MQ0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL21hbjN0eXBlL3RjZmxh
Z190LjN0eXBlDQo+IEBAIC0wLDAgKzEgQEANCj4gKy5zbyBtYW4zdHlwZS9jY190LjN0eXBl
DQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xv
bWFyLmVzLz4NCg==

--------------t4YSMLsCcPRCjkV9vA4EnbUp--

--------------fbdIwutQq4nq64SnUScjQWPi
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMNP3UACgkQnowa+77/
2zKO1Q/+KM2Bcz9SZDVwtRsycNmH+A/jB40OKAQGTFcQenAb77vxRRIhhxRUedCa
RMWbsdgj+BOZ7f5rxSgt8EEUBpTdXFyMJE6M7+jzyZKJRw5itDy4oxvizggJdpa+
Mtlcjc2ljd3DgKNwIc7YMSN4bO+WhZK/rzNNO+2b3807LRJh8VWCu64vfhC4nrPa
Rtkf3mcvc8AuWJa3yOMs1MgRnctVB9jjy4Oo0fhfK9DvGCFMnX4vYxSFTf4gzHNz
T26v1HYkGvWrZvnV+kwcwOmo9KF6rztiy7EENay3YZ6/bwkOfu9wvzLsoKAs/l0b
yovv0/JuvtWsvLdrWSrPPyt9EcwGbmeRkMjH4wdiklo0jdMI/bGXUCIYCuyYGXl7
Ksgx9y4X6U+Eznjq4rY2/k/vptOpGwR5IeKgBdDENwxhbuKW+WDdaSN37b57NtrK
kmkR5lx5JPgkvzRYYqAWrvYFQ2aDEYBVQ4sOnDszBrGF5igZCNUc2bRC6Ujlzcfe
z0MhdGD+R6P6KfsLord4qx27D3AHXXYJzPW+vgqX7oNX2IUA/cJnfDn7sXXsGeW9
cBicXxG+3voFYcbYZOOJW7d5rtrpGYtm4kq97LpYcM1YJnC19E85fC2Lswlx+4js
RaUeVJiAnqIvnVoBxe/594n2SZxs6eBi+H/PmprgYY0hDlXabuw=
=G2RN
-----END PGP SIGNATURE-----

--------------fbdIwutQq4nq64SnUScjQWPi--
