Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30FE9584FF0
	for <lists+linux-man@lfdr.de>; Fri, 29 Jul 2022 14:04:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236160AbiG2MEH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 08:04:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230456AbiG2MEH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 08:04:07 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 950E887F7A
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 05:04:01 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id v3so4803441wrp.0
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 05:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=r4rX9/YqP1VxwpT+HC+Itd71sAf6G01yz5jNeLhjaXE=;
        b=JL24ynKG/olAoihL1oXBuM/MrhxkxBpSS75aEAUMJt3VmWHsRVeDQL6zjqn8wTcwsD
         uj0jFokNhNCGZlAq4z9h5LlS+he6jBZFXksHWSbhshST+1aeuf75XqmBWGj+jhH1AptQ
         dmjIgx/F8FHOUK0Pk0fTnnEy1wl59azPluNhYFp13uQTdg+2LH8/1swr2DOUUvygxkt8
         dYZ9pY7DrETjns6YojngzEfj0MCUzl877dbtWjULDnFF4RpZ033HMfzspM67l3hazQcF
         GVs0I+P3CD4JcJKQu/8TKeeN9u0Bn8+HhlZmMRsMV0qGO0WTM4/PsYzCjsZ9shr+n9eP
         vqew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=r4rX9/YqP1VxwpT+HC+Itd71sAf6G01yz5jNeLhjaXE=;
        b=A9Om5exliEn0Wl3X9D1hqSAQaMrv3M3XHdzJlpcYpV2oUwplX1rHYHjEVCz9LRLpJJ
         hCFyJTgMTRVwY3B9BGAA5NJRavPJKUxIEFkuFv9gHhGe26zmlwgMVJEink7zJgOXssI9
         5czmDjlAGKOQOZKAoIUSfoyBvBvJtF+uHauKxEFEIEiujwKE/MfuD4cGoLdOTIb2XLDh
         L6zF9cU6xwIenXaAY5J/ajJcBMyLlmJlCrgvFSaRgKxCajCaNkeNI+PbMShlVTMsggUS
         IFOzqZr9VM2Jro0DNWbMERIIxwGxyn3EcTLoOMeXJAlb37yKV628uVn7wTOewe7w05ye
         zkrQ==
X-Gm-Message-State: ACgBeo3ErRxy7qv/0e8UNZLu0y8m84IncGXN+3Xyvhm7xwwMQ4yoFYP8
        r6wur8H14d6St3zsfOdUinPCL6kJp9w=
X-Google-Smtp-Source: AA6agR50vT3bw3yT7/WQMkSibLaUB0OJBUoRB4pdWcXhRrsadKCYZokDHGX+8OsCSJx2AaGK8jxF5A==
X-Received: by 2002:adf:fd09:0:b0:21e:c912:151f with SMTP id e9-20020adffd09000000b0021ec912151fmr2180901wrr.302.1659096240070;
        Fri, 29 Jul 2022 05:04:00 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id u1-20020adfdd41000000b0021d80f53324sm3530214wrm.7.2022.07.29.05.03.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jul 2022 05:03:59 -0700 (PDT)
Message-ID: <d9221f6d-9ba3-f690-8fad-a59a9dc65c89@gmail.com>
Date:   Fri, 29 Jul 2022 14:03:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: man -M tcl (was: All caps .TH page title)
Content-Language: en-US
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     g.branden.robinson@gmail.com, linux-man@vger.kernel.org,
        groff@gnu.org
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
 <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
 <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
 <YtxMD7ovz1Xy/cfq@asta-kit.de>
 <62937033-a3a7-05d0-fc68-a227e2b67bde@gmail.com>
 <Yt1dz0+xfRuyCcXo@asta-kit.de>
 <9e8a291d-672f-baec-3980-ae265712bd7b@gmail.com>
 <YuFafSnjPxSCLP8B@asta-kit.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <YuFafSnjPxSCLP8B@asta-kit.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Ae5YL06PhfOkDrL04bNRYYtI"
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
--------------Ae5YL06PhfOkDrL04bNRYYtI
Content-Type: multipart/mixed; boundary="------------YQeu1VgNN0bjY4pCUlv81X1X";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>
Cc: g.branden.robinson@gmail.com, linux-man@vger.kernel.org, groff@gnu.org
Message-ID: <d9221f6d-9ba3-f690-8fad-a59a9dc65c89@gmail.com>
Subject: Re: man -M tcl (was: All caps .TH page title)
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
 <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
 <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
 <YtxMD7ovz1Xy/cfq@asta-kit.de>
 <62937033-a3a7-05d0-fc68-a227e2b67bde@gmail.com>
 <Yt1dz0+xfRuyCcXo@asta-kit.de>
 <9e8a291d-672f-baec-3980-ae265712bd7b@gmail.com>
 <YuFafSnjPxSCLP8B@asta-kit.de>
In-Reply-To: <YuFafSnjPxSCLP8B@asta-kit.de>

--------------YQeu1VgNN0bjY4pCUlv81X1X
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSW5nbywNCg0KT24gNy8yNy8yMiAxNzozMiwgSW5nbyBTY2h3YXJ6ZSB3cm90ZToNCj4g
SGkgQWxlamFuZHJvLA0KPiANCj4gQWxlamFuZHJvIENvbG9tYXIgd3JvdGUgb24gU3VuLCBK
dWwgMjQsIDIwMjIgYXQgMDY6MTc6NDBQTSArMDIwMDoNCj4+IE9uIDcvMjQvMjIgMTY6NTcs
IEluZ28gU2Nod2FyemUgd3JvdGU6DQo+IA0KPj4+IEkgZXZlbiBjb25zaWRlcmVkIHN1cHBv
cnRpbmcgYWxpYXNlcyBmb3IgbWFucGF0aCBkaXJlY3Rvcmllcw0KPj4+IGluIG1hbi5jb25m
KDUpLCBzb21ldGhpbmcgbGlrZSBiZWluZyBhYmxlIHRvIHNheQ0KPj4+DQo+Pj4gICAgIGFs
aWFzIHRjbCAvdXNyL2xvY2FsL2xpYi90Y2wvdGNsOC41L21hbi8NCj4+Pg0KPj4+IGluIC9l
dGMvbWFuLmNvbmYgYW5kIHRoZW4gYmVpbmcgYWJsZSB0byBzYXkNCj4+Pg0KPj4+ICAgICBt
YW4gLU0gdGNsIG9wZW4NCj4gDQo+PiBOb3cgd2UncmUgdGFsa2luZy4gIEkndmUgbG9uZyBt
aXNzZWQgc3VjaCBhIHRoaW5nLg0KPj4gTGV0J3MgcGxlYXNlIGRpc2N1c3MgaXQuDQo+IA0K
PiBXZWxsLCBpdCB3b3VsZG4ndCBiZSB0aGUgZmlyc3QgdGltZSBpIGltcGxlbWVudGVkIGEg
ZmVhdHVyZSBpbiBtYW5kb2MNCj4gdGhhdCBpcyBub3QgdmVyeSB1cmdlbnRseSBuZWVkZWQg
b24gT3BlbkJTRCBidXQgd2hlcmUgdGhlIG1haW4gbmVlZA0KPiBjYW1lIGZyb20gTGludXgg
KG9yIElsbHVtb3Mgb3IgTWFjT1MsIGZvciB0aGF0IG1hdHRlcikuDQo+IA0KPiBJZiBpdCBk
b2Vzbid0IGNhdXNlIGRpc3J1cHRpb24gb3IgZXhjZXNzaXZlIGNvbXBsZXhpdHksDQo+IHdo
aWNoIHNlZW1zIHVubGlrZWx5IGluIHRoaXMgY2FzZSwgd2UgY2FuIGNvbnNpZGVyIGl0Lg0K
PiANCj4gRG8geW91IHRoaW5rIHRoaXMgd291bGQgcmVhbGx5IGdldCB1c2VkIGluIHByYWN0
aWNlPw0KDQpJIGRvbid0IGtub3cuICBJIGhhdmVuJ3QgcmVjZWl2ZWQgYW55IHN1Y2ggZmVh
dHVyZSByZXF1ZXN0cyBmcm9tIHVzZXJzLg0KDQpCdXQgSSd2ZSBtYW55IHRpbWVzIGhhZCB0
aGUgZmVlbGluZyB0aGF0IHRoZSBtYW4gaGllcmFyY2h5IGlzIHNvIGZsYXQgDQphbmQgaXMg
c28gb3ZlcnBvcHVsYXRlZCAoYXMgc29vbiBhcyB5b3Ugc3RhcnQgaW5zdGFsbGluZyBzb21l
IHBhY2thZ2VzOyANCmVzcGVjaWFsbHkgdGhvc2UgdGhhdCBkb2N1bWVudCB0aGVpciBBUEkg
aW4gbWFuMykgdGhhdCBpdCdzIGhhcmQgdG8gZmluZCANCndoYXQgeW91IHdhbnQuICBUaGF0
J3Mgb25lIG9mIHRoZSByZWFzb25zIHRoYXQgSSB0aGluayBtYW4zdHlwZSwgDQptYW4zY29u
c3QgYXJlIGJldHRlciBvdXRzaWRlIG9mIG1hbjMuDQoNCj4gDQo+IElmIHNvLCBhcyBhIG1v
dGl2YXRpb24sIGl0IHdvdWxkIGJlIHVzZWZ1bCB0byBjb2xsZWN0IGEgaGFuZGZ1bA0KPiBv
ZiBsYW5ndWFnZXMgdGhhdCB3b3VsZCB1c2UgdGhpcy4gIFNvIGZhciwgaSdtIG1vc3RseSBh
d2FyZSBvZg0KPiBUY2wgYW5kIFRrLiAgQW5kIG9mIHRoZSBQT1NJWCBtYW51YWwgcGFnZXMu
DQoNCkJUVywgSSBndWVzcyB5b3UgYWxzbyBoYXZlIHRoZSBQT1NJWCBtYW4gcGFnZXMgaW4g
QlNEcy4gIERvIHRoZXkgY29tZSANCmZyb20gdGhlIGtlcm5lbCByZXBvIHRoYXQgSSBtYWlu
dGFpbiwgb3IgZG8geW91IGhhdmUgeW91ciBvd24gc2VwYXJhdGUgDQpyZXBvcz8NCg0KPiAN
Cj4gT2YgY291cnNlIGkgY2FuJ3Qgc3BlYWsgZm9yIG1hbi1kYiBhbmQgb3RoZXIgbWFuKDEp
IGltcGxlbWVudGF0aW9ucy4NCj4gVGhlbiBhZ2FpbiwgZXZlbiBpZiBvdGhlciBtYW4oMSkg
aW1wbGVtZW50YXRpb25zIHdvdWxkIG5vdCBmb2xsb3csDQo+IG1heWJlIGhhdmluZyAtTSBh
bGlhc2VzIG1pZ2h0IGJlIHVzZWZ1bCBldmVuIGluIGEgc2luZ2xlIGltcGxlbWVudGF0aW9u
Lg0KPiBVc2VycyBvZiB0aGUgb3RoZXJzIGNvdWxkIHN0aWxsIHVzZSBzaGVsbCBhbGlhc2Vz
Lg0KDQpZZXAuICBJIGRvbid0IHRoaW5rIHRoYXQgc2hvdWxkIGJlIGEgcHJvYmxlbS4NCg0K
PiANCj4gT25lIHNpZGUgZWZmZWN0IHVzZWZ1bCBmb3IgbXlzZWxmIHdvdWxkIGJlIHRoYXQg
aSBjb3VsZCBkbywgaW4gbWFuLmNvbmYoNSksDQo+IA0KPiAgICBhbGlhcyBCIC91c3Ivc2hh
cmUvbWFuDQo+ICAgIGFsaWFzIFAgL3Vzci9sb2NhbC9tYW4NCj4gICAgYWxpYXMgWCAvdXNy
L1gxMVI2L21hbg0KPiANCj4gYW5kIHRoZW4gc2F5DQo+IA0KPiAgICBtYW4gLWtNQiBzaGEy
NTYNCj4gDQo+IHdoZW4gaSBvbmx5IHdhbnQgdG8gYmFzZSBzeXN0ZW0gcGFnZXMgYW5kIGJl
IHVuZGlzdHVyYmVkIGJ5IHBvcnRzDQo+IHBhZ2VzIC0gcmlnaHQgbm93LCBpIHR5cGUgIi1N
IC91c3Ivc2hhcmUvbWFuIiByZWxhdGl2ZWx5IG9mdGVuLg0KDQpZZXMsIEkgYWxzbyBvZnRl
biB3YW50IHRvIGNvbXBhcmUgdGhlIGRpZmZlcmVuY2VzIGJldHdlZW4gdGhlIGxhc3QgDQpy
ZWxlYXNlIG9mIHRoZSBtYW4tcGFnZXMsIGFuZCB0aGUgcGFnZSB0aGF0IEknbSBtb2RpZnlp
bmcsIGFuZCB0aGF0IA0Kd291bGQgYmUgc2ltcGxlciB3aXRoIHN1Y2ggYSBmZWF0dXJlLg0K
DQo+IA0KPiBPciBzYXkNCj4gDQo+ICAgIG1hbiAtTVA6Qg0KPiANCj4gdG8gcGxheSB3aXRo
IHByZWNlZGVuY2UuDQo+IA0KPj4gSSB3b25kZXJlZCBmb3IgYSBsb25nIHRpbWUgd2hhdCBo
YXBwZW5zIGlmIHlvdSBjcmVhdGUgc3ViZGlycyB3aXRoaW4gYQ0KPj4gbWFuPyBzZWN0aW9u
LiAgSG93IGRvIG1hbigxKXMgaGFuZGxlIDwvdXNyL3NoYXJlL21hbi9tYW4zL3B5dGhvbi9m
b28uMz4/DQo+IA0KPiBPbiAqQlNEIHN5c3RlbXMsIHRoYXQgdHlwaWNhbGx5IG1lYW5zOg0K
PiANCj4gICAgVGhlIGFyY2hpdGVjdHVyZS1zcGVjaWZpYyBsaWJyYXJ5IGZ1bmN0aW9uIGZv
bygzKQ0KPiAgICBmb3IgdGhlICJweXRob24iIGhhcmR3YXJlIGFyY2hpdGVjdHVyZS4NCj4g
DQo+IEhlcmUgYXJlIGEgZmV3IGV4YW1wbGVzIGZyb20gT3BlbkJTRDoNCj4gDQo+ICAgIC91
c3Ivc2hhcmUvbWFuL21hbjEvc3BhcmM2NC9ta3N1bmNkLjENCj4gICAgL3Vzci9zaGFyZS9t
YW4vbWFuMi9hcm12Ny9hcm1fc3luY19pY2FjaGUuMg0KPiAgICAvdXNyL3NoYXJlL21hbi9t
YW4yL2kzODYvaTM4Nl9pb3BsLjINCj4gICAgL3Vzci9zaGFyZS9tYW4vbWFuMy9vY3Rlb24v
Y2FjaGVmbHVzaC4zDQo+ICAgIC91c3Ivc2hhcmUvbWFuL21hbjMvc2dpL2dldF9mcGNfY3Ny
LjMNCj4gICAgL3Vzci9zaGFyZS9tYW4vbWFuNC9hbHBoYS9pcm9uZ2F0ZS40DQo+ICAgIC91
c3Ivc2hhcmUvbWFuL21hbjQvYW1kNjQvbXBiaW9zLjQNCj4gICAgL3Vzci9zaGFyZS9tYW4v
bWFuNC9sdW5hODhrL2NidXMuNA0KPiAgICAvdXNyL3NoYXJlL21hbi9tYW40L21hY3BwYy9v
cGVucGljLjQNCj4gICAgL3Vzci9zaGFyZS9tYW4vbWFuNC9wb3dlcnBjNjQvb3BhbGNvbnMu
NA0KPiAgICAvdXNyL3NoYXJlL21hbi9tYW40L3Jpc2N2NjQvc2ZncGlvLjQNCj4gICAgL3Vz
ci9zaGFyZS9tYW4vbWFuNS9zcGFyYzY0L2xkb20uY29uZi41DQo+ICAgIC91c3Ivc2hhcmUv
bWFuL21hbjgvaHBwYS9ib290LjgNCj4gICAgL3Vzci9zaGFyZS9tYW4vbWFuOC9tYWNwcGMv
cGRpc2suOA0KPiAgICAvdXNyL3NoYXJlL21hbi9tYW44L3NnaS9zZ2l2b2wuOA0KPiAgICAv
dXNyL3NoYXJlL21hbi9tYW44L3NwYXJjNjQvbGRvbWN0bC44DQo+IA0KPiBTbywgbGV0cyBh
c3N1bWUgaSdtIG9uIGEgYW1kNjQgbWFjaGluZSBhbmQgd2FudCB0byBsZWFybiBob3cNCj4g
bG9naWNhbCBkb21haW5zIChhIHZpcnR1YWxpemF0aW9uIGZlYXR1cmUgaW1wbGVtZW50ZWQg
aW4NCj4gU1BBUkMgaGFyZHdhcmUpIGFyZSBjb25maWd1cmVkOg0KPiANCj4gICAgICQgYXJj
aA0KPiAgICBPcGVuQlNELmFtZDY0DQo+ICAgICAkIG1hbiBsZG9tLmNvbmYNCj4gICAgbWFu
OiBObyBlbnRyeSBmb3IgbGRvbS5jb25mIGluIHRoZSBtYW51YWwuDQo+ICAgICAkIG1hbiAt
UyBzcGFyYzY0IGxkb20uY29uZg0KPiAgICBbLi4uXQ0KPiAgICBOQU1FDQo+ICAgICAgIGxk
b20uY29uZiAgTG9naWNhbCBEb21haW4gY29uZmlndXJhdGlvbg0KPiAgICBbLi4uXQ0KPiAN
Cj4gTm90ZSB0aGF0IGkgc2FpZCAtUyB0aGVyZSwgbm90IC1zIG5vciAtTS4NCj4gDQo+IFNv
IGkgYWR2aXNlIGFnYWluc3QgZG9pbmcgdGhhdCBmb3IgcHl0aG9uOiB0aGUgbmFtZXNwYWNl
IGlzIGFscmVhZHkNCj4gdGFrZW4gZm9yIGEgZGlmZmVyZW50IHB1cnBvc2UuDQoNClllYWgs
IGlkZWEgZGlzY2FyZGVkLg0KDQo+IA0KPiBVc2luZyAvdXNyL3NoYXJlL21hbi9weXRob24v
bWFuMy9mb28uMyB3b3VsZCBiZSBzaW1pbGFybHkgYmFkLA0KPiB0aGF0IHVzdWFsbHkgbWVh
bnM6DQo+IA0KPiAgICBUaGUgdHJhbnNsYXRpb24gb2YgL3Vzci9zaGFyZS9tYW4vbWFuMy9m
b28uMw0KPiAgICBpbnRvIHRoZSBuYXR1cmFsIGxhbmd1YWdlICJweXRob24iLg0KPiANCj4g
VHlwaWNhbCBleGFtcGxlcyBvbiBPcGVuQlNEOg0KPiANCj4gICAgL3Vzci9sb2NhbC9tYW4v
amEvbWFuMS93M20uMQ0KPiAgICAvdXNyL2xvY2FsL21hbi9wdF9CUi9tYW42L3dlc25vdGgu
Ng0KPiAgICAvdXNyL2xvY2FsL21hbi9kZS9tYW4xL2R2aXBkZi4xDQoNCk1ha2VzLCBzZW5z
ZTsgYWxzbyBkaXNjYXJkZWQuDQoNCj4gDQo+PiBXb3VsZCB5b3VyIC1NIHJlcXVpcmUgdGhh
dCB0aGUgcGFnZXMgbGl2ZSBpbiBhIHNlcGFyYXRlIHBhdGg/DQo+PiBPciBjb3VsZCBpdCBz
dXBwb3J0IHN1YnBhdGhzPw0KPiANCj4gVGhlIGRpcmVjdG9yeSAtTSBwb2ludHMgdG8gbmVl
ZHMgdG8gY29udGFpbiB0aGUgdXN1YWwgbWFuMS8gbWFuMy8NCj4gbWFuNS8gZXRjLiBzdWJk
aXJlY3Rvcmllcy4gIFdoZXJlIGV4YWN0bHkgeW91IHB1dCB0aGF0IGRvZXNuJ3QNCj4gbWF0
dGVyIGZvciBtYW4oMSksIGJ1dCBpIHN0cm9uZ2x5IGFkdmlzZSBhZ2FpbnN0IHB1dHRpbmcg
aXQgaW50bw0KPiAvdXNyL3NoYXJlL21hbiBiZWNhdXNlIGFsbCB0aGUgbmFtZXNwYWNlIGlu
IHRoZXJlIGlzIGFscmVhZHkNCj4gdGFrZW4gZm9yIG90aGVyIHB1cnBvc2VzLCBhbmQgcHV0
dGluZyBpdCBpbiB0aGVyZSBhbnl3YXkgaXMgbGlrZWx5DQo+IHRvIGNvbmZ1c2UgdG9vbHMg
bGlrZSBtYWtld2hhdGlzKDgpLCBtYW5kYig4KSwgY2F0bWFuKDgpLA0KPiBhbmQgYXByb3Bv
cygxKS4NCj4gDQo+IElmIGEgbGFuZ3VhZ2UgaXMgc28gbGFyZ2UgdGhhdCBpdCBjb21lcyB3
aXRoIGEgd2hvbGUgc3VpdGUgb2YgbWFudWFsDQo+IHBhZ2VzIChhcyBvb3Bvc2VkIHRvIGEg
bGFuZ3VhZ2UgbGlrZSBhd2soMSkgc21hbGwgZW5vdWdoIHRvIGJlDQo+IGRvY3VtZW50ZWQg
aW4gYSBzaW5nbGUgcGFnZSksIHRoZW4gdGhhdCBsYW5ndWFnZSBpcyBsaWtlbHkgdG8NCj4g
YWxyZWFkeSBoYXZlIGl0cyBvd24gZGlyZWN0b3J5IGZvciBkYXRhIGZpbGVzLCB0eXBpY2Fs
bHkgc29tZXdoZXJlDQo+IGJlbG93IC91c3Ivc2hhcmUvLiAgTWF5YmUgaXQgZXZlbiBoYXMg
aXRzIG93biBkaXJlY3RvcnkgYmVsb3cNCj4gL3Vzci9zaGFyZS9kb2MvIGFscmVhZHkuICBG
b3IgZXhhbXBsZSwgL3Vzci9zaGFyZS9kb2MvcHl0aG9uDQo+IGFscmVhZHkgZXhpc3RzIG9u
IERlYmlhbiwgc28gL3Vzci9zaGFyZS9kb2MvcHl0aG9uL21hbi9tYW5bMS01XS8uLi4NCj4g
bWlnaHQgb25lIGJlIHJlYXNvYWJsZSBjaG9pY2UsIGFsYmVpdCBjZXJ0YWlubHkgbm90IHRo
ZSBvbmx5IG9wdGlvbi4NCg0KSSdkIGxpa2UgdG8gZGlzY3VzcyBhYm91dCB0aGUgYmVzdCBw
bGFjZSB0byByZWNvbW1lbmQgcHV0dGluZyBtYW51YWwgcGFnZXMuDQoNCkRvIHlvdSBrbm93
IGlmIGFueSBwcm9qZWN0cyAoVGNsIGFuZCBUayBtYXliZSkgYXJlIGFscmVhZHkgdXNpbmcg
YSANCnNwZWNpZmljIHBhdGggZm9yIG1hbiBwYWdlcz8NCg0KSSB0aGluayBzb21ldGhpbmcg
dW5kZXIgJGRvY2RpciB3b3VsZCBiZSBhIG5pY2UgcGxhY2UuDQoNClRoZSBGSFMgbWVudGlv
bnNbMV0gPC91c3JbL2xvY2FsXS9zaGFyZS9kb2M+Lg0KR05VIHNwZWNpZmllc1syXSB0aGF0
ICRkb2NkaXIgc2hvdWxkIGJlIDwvdXNyL2xvY2FsL3NoYXJlL2RvYy9wa2duYW1lPiANCmZv
ciBhIDwvdXNyL2xvY2FsPiBwcmVmaXguDQoNClNvIHRoZXkgc2VlbSB0byBhZ3JlZSBpbiB3
aGVyZSAkZG9jZGlyIGxpdmVzLiAgVGhlbiB3ZSBjb3VsZCBtYWtlIHRoZSANCnBrZy1zcGVj
aWZpYyBtYW5kaXJzIGJlIDwvdXNyL2xvY2FsL3NoYXJlL2RvYy9wa2duYW1lL21hbi9tYW4q
Pi4NCg0KV2hhdCBhcmUgeW91ciB0aG91Z2h0cz8NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCg0K
WzFdOiA8aHR0cHM6Ly9yZWZzcGVjcy5saW51eGZvdW5kYXRpb24ub3JnL0ZIU18zLjAvZmhz
L2NoMDRzMTEuaHRtbD4NClsyXTogPGh0dHBzOi8vd3d3LmdudS5vcmcvcHJlcC9zdGFuZGFy
ZHMvaHRtbF9ub2RlL0RpcmVjdG9yeS1WYXJpYWJsZXMuaHRtbD4NCg0KLS0gDQpBbGVqYW5k
cm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------YQeu1VgNN0bjY4pCUlv81X1X--

--------------Ae5YL06PhfOkDrL04bNRYYtI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLjzKcACgkQnowa+77/
2zJAlA//abgahychPyfltqjnByFGyoDw8wGMX0+VKxN3UEdP4S6sC9yW3f3ihdJl
qtB570wRm9leTcuEgHKBYu+kNdTI50jlYr1/DHBsd13tZSSu9VUOsZqgdqCHHrJv
EpRi/5urbCXMgSGJE/tTgziKm3noVFXlnhOXAQrBA2s2ynsy9ZBaQuLsGZihCrd5
rWIHVc9NHT28v/2gGsssQRiImi5ZVqO3fiL4Zn4sydjmSoqpjj+g2zhipXZZa+SW
nJPH/OGNtUJcRPBeU9wQNBoYzURXZgvZlQklzJUI3ArJCEO8DAhH9qt2sNw5eonf
e1dYr7XP1pQrVKGj4hZ3xbUBPxI+5c/5v7Oo/4fSknhHTq8to6iFa0XBaQAmjoJH
sJeqBZKwDvlHHAFr/K2vZuwaQ+a6jdX/ImlDSFTd3mTb9arnryI0zNBFPiOwnFzR
gn+RHmVYq/hFf8yMKA8scbPpQzyGExqw2rsxYMJYFgTirouSmSKbszL4odh5IEj3
xEgBl4WUIRSed/3VuXtaHfS6Onult8/V4xZ/e6RvhC373Z/d8sIbNDlgTFE4FSh+
MNk953TdPsVLMk/lIqG4Lz9MdrPzwtu+s3qpaWXUTjpYJwaWrbiw8U5XzmW8Fhpv
ZE9SZCq+Ki4HuO8xKcCPe9hUMUXcZca+G6S0H+sEefqHOoxUUqY=
=eSxI
-----END PGP SIGNATURE-----

--------------Ae5YL06PhfOkDrL04bNRYYtI--
