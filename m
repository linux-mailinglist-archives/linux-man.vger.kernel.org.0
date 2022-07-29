Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3C15584FA1
	for <lists+linux-man@lfdr.de>; Fri, 29 Jul 2022 13:33:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233298AbiG2LdX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 07:33:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235559AbiG2LdX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 07:33:23 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DACF587372
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 04:33:21 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id l4so5636977wrm.13
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 04:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=qflNkbvlwJ124IdCBZNbbEDMfp9/xiQE55wyeDcuHBs=;
        b=jRvxe19/SUJxHmenxgsaahiakGg6ulXmgwMXQig/lqN4o6m0jYPXAJs3oOHjKnkkLt
         zAje8Auo5TfzzKSccX+xZiTWCa6VlGkWt1vkP3QkomqjWQ3n1Amy9+Rz8az8qO3aGIDs
         rk//m9Ct6HTE3WZeSp6/3YvV/4IProaE/fQB5xkYoe583YC++1HyW9Vjzy1FjkN50Gyo
         u3WpkmQAwIvQ2UHZ/F30djujIFRPV8TB8ucxS/dZeZh/66e9ukLgTR7upiGFZF7piyGg
         jT5ihPCZNAlkKZAi7ft281E6C6G5kWds5L+vgEoItSxmK/vQEjkoyMAu7hLh1FkArHd6
         cRtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=qflNkbvlwJ124IdCBZNbbEDMfp9/xiQE55wyeDcuHBs=;
        b=1oJnBLbb7cfioUK1qvCzWnPD/77WRgPd9u4IwIx7okZrtFn4Rz7QUucK/kOai+6rjf
         GbSTzpwySgRJwS+cbWx/f+L6JY+vSHs0q99wLHosOxh9puhZKXOOKqBI482+HW8qFjQO
         f09dr1/llW+eO8RVmMVs9lvHwGdbQ2TfNOB2x7a3clbAmvbbg6exxtpLVm5TaAb3sDkM
         Ed9R3z9EUNlA6HOU9tXYu/LGKJIYLbwHPC25dvSfwZy7ZOdgoFC2kcbyAExglWkvLkDQ
         CHX4h6InqN0KnmiBG7kRvQQq6m8L2Epgy65Vv3c5Lz6g0m7V4jOzzCCENrFtf/nAX30M
         qxPA==
X-Gm-Message-State: ACgBeo0kgnWgm+tUXc/CyN7s7czt+9ETVK9iodp8+LkHTWD3Oy3L4K5Z
        2hCk4l3IJLTtZfp9se1RajQ=
X-Google-Smtp-Source: AA6agR6CUAa0iFse6QHNHm26XO6IXZ+S/iEP/L85ENhFq0BvR3wV5sz2Gw7R51MbASZ5+cvdsZtr1Q==
X-Received: by 2002:a5d:6dc6:0:b0:21e:a87c:91bc with SMTP id d6-20020a5d6dc6000000b0021ea87c91bcmr2078140wrz.165.1659094400181;
        Fri, 29 Jul 2022 04:33:20 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m20-20020a056000181400b0021e571a99d5sm3405682wrh.17.2022.07.29.04.33.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jul 2022 04:33:19 -0700 (PDT)
Message-ID: <11110a04-f96b-0d32-53e3-adcce618c543@gmail.com>
Date:   Fri, 29 Jul 2022 13:33:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: man0, man3head (was: All caps .TH page title)
Content-Language: en-US
To:     Ingo Schwarze <schwarze@usta.de>, g.branden.robinson@gmail.com
Cc:     linux-man@vger.kernel.org
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
 <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
 <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
 <YtxMD7ovz1Xy/cfq@asta-kit.de>
 <62937033-a3a7-05d0-fc68-a227e2b67bde@gmail.com>
 <Yt1dz0+xfRuyCcXo@asta-kit.de> <20220724154447.us3vsmicaw52v4j6@illithid>
 <YuFiT79dQz+nDgmO@asta-kit.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <YuFiT79dQz+nDgmO@asta-kit.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5qBu2hGTtZssW5aWbFjViVqo"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------5qBu2hGTtZssW5aWbFjViVqo
Content-Type: multipart/mixed; boundary="------------iPsqq4Vzlv0sVs3DlpeZtHTz";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>, g.branden.robinson@gmail.com
Cc: linux-man@vger.kernel.org
Message-ID: <11110a04-f96b-0d32-53e3-adcce618c543@gmail.com>
Subject: man0, man3head (was: All caps .TH page title)
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
 <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
 <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
 <YtxMD7ovz1Xy/cfq@asta-kit.de>
 <62937033-a3a7-05d0-fc68-a227e2b67bde@gmail.com>
 <Yt1dz0+xfRuyCcXo@asta-kit.de> <20220724154447.us3vsmicaw52v4j6@illithid>
 <YuFiT79dQz+nDgmO@asta-kit.de>
In-Reply-To: <YuFiT79dQz+nDgmO@asta-kit.de>

--------------iPsqq4Vzlv0sVs3DlpeZtHTz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

W2Ryb3BwZWQgZ3JvZmZAOyBpcnJlbGV2YW50IHRvIHRoZW1dDQoNCkhpIEJyYW5kZW4sDQoN
Ck9uIDcvMjcvMjIgMTg6MDUsIEluZ28gU2Nod2FyemUgd3JvdGU6DQo+IEhpIEJyYW5kZW4s
DQo+IA0KPiBHLiBCcmFuZGVuIFJvYmluc29uIHdyb3RlIG9uIFN1biwgSnVsIDI0LCAyMDIy
IGF0IDEwOjQ0OjQ3QU0gLTA1MDA6DQo+PiBBdCAyMDIyLTA3LTI0VDE2OjU3OjE5KzAyMDAs
IEluZ28gU2Nod2FyemUgd3JvdGU6DQo+IA0KPj4+IEJ1dCBkaXNtaXNzaW5nIGRlY2FkZS1v
bGQgKkJTRCBzdGFuZGFyZHMgbGlrZSB0aGUgdXNlIG9mIC91c3IvIGZvciB0aGUNCj4+PiBi
YXNlIHN5c3RlbSBhbmQgL3Vzci9sb2NhbC8gZm9yIHBhY2thZ2VzIGFzIGEgc3RhbmRhcmQg
dmlvbGF0aW9uLCBhbmQNCj4+PiBwcm9tb3RpbmcgL29wdC8gd2hpY2ggaXMgZmlybWx5IGEg
TGludXgtb25seSBpbnZlbnRpb24sDQo+IA0KPj4gT2gsIG5vIGl0J3Mgbm90LiAgSSByZW1l
bWJlciB0aGF0IHRoaW5nIGZyb20gU29sYXJpcyAyLjMgb3IgMi40Lg0KPj4gSGVyZSdzIGEg
c2xpZ2h0bHkgbGF0ZXIgc291cmNlLg0KPj4NCj4+IGh0dHBzOi8vZG9jcy5vcmFjbGUuY29t
L2NkL0UxOTQ1NS0wMS84MDUtNjMzMS9mc2FkbS0xNy9pbmRleC5odG1sDQo+IA0KPiBPb3Bz
LCB0aGFua3MgZm9yIHNldHRpbmcgbWUgcmlnaHQuDQo+IA0KPiBDb25maXJtZWQ6DQo+IA0K
PiAgICAgPiB1bmFtZSAtYQ0KPiAgICBTdW5PUyB1bnN0YWJsZTExcyA1LjExIDExLjMgc3Vu
NHUgc3BhcmMgU1VOVyxTUEFSQy1FbnRlcnByaXNlDQo+ICAgICA+IGxzIC1hbCAvb3B0DQo+
ICAgIHRvdGFsIDI2MTMNCj4gICAgZHJ3eHIteHIteCAxMiByb290IG90aGVyICAgICAgMTMg
RGVjIDMxIDIwMjAgLg0KPiAgICBkcnd4ci14ci14IDE5IHJvb3Qgcm9vdCAgICAgICAyMiBB
dWcgMTcgMjAxOCAuLg0KPiAgICBkcnd4ci14ci14ICA0IHJvb3Qgb3RoZXIgICAgICAgNCBG
ZWIgMTAgMjAxNSBib3ANCj4gICAgZHJ3eHIteHIteCAyNSByb290IGJpbiAgICAgICAgMjkg
RGVjICAxIDIwMTcgY3N3DQo+ICAgIGRyd3hyLXhyLXggMTAgcm9vdCBzeXMgICAgICAgIDEx
IEF1ZyAxNyAyMDE4IGRldmVsb3BlcnN0dWRpbzEyLjUNCj4gICAgZHJ3eHIteHIteCAxMCBy
b290IHN5cyAgICAgICAgMTEgQXVnIDE3IDIwMTggZGV2ZWxvcGVyc3R1ZGlvMTIuNg0KPiAg
ICBkcnd4ci14ci14ICAzIHJvb3Qgcm9vdCAgICAgICAgMyBGZWIgMTAgMjAxNSBsb2NhbA0K
PiAgICBkcnd4ci14ci14IDEyIHJvb3Qgc3lzICAgICAgICAxMiBKYW4gMjIgMjAxNSBzb2xh
cmlzc3R1ZGlvMTIuMw0KPiAgICBkcnd4ci14ci14IDEwIHJvb3Qgc3lzICAgICAgICAxMSBE
ZWMgMjIgMjAxNSBzb2xhcmlzc3R1ZGlvMTIuNA0KPiAgICBkcnd4ci14ci14IDEzIHJvb3Qg
c3lzICAgICAgICAxMyBKYW4gMjIgMjAxNSBzb2xzdHVkaW8xMi4yDQo+ICAgIGRyd3hyLXhy
LXggMTMgcm9vdCBzeXMgICAgICAgIDE1IE9jdCAyOSAyMDE1IFNVTldzcHJvDQo+ICAgIC1y
dy0tLS0tLS0gIDEgcm9vdCByb290ICAxMzExNjMzIE9jdCAyOSAyMDE1IHVuaW5zdGFsbF9T
dW5fU3R1ZGlvXzEyLmNsYXNzDQo+ICAgIGRyd3hyLXhyLXggIDMgcm9vdCByb290ICAgICAg
ICAzIEZlYiAxOCAyMDE1IFZSVFMNCj4gDQo+IEl0IGRvZXNuJ3QgbG9vayBhcyBpZiBtb2Rl
cm4gT3JhY2xlIFNvbGFyaXMgdXNlcyBpdCB2ZXJ5IGV4dGVuc2l2ZWx5LA0KPiBidXQgc3Rp
bGwsIGl0IGRvZXMgZXhpc3QuDQoNCkJUVywgQnJhbmRlbiwgeW91IGFza2VkIHdoeSB3b3Vs
ZCBJIHVzZSBzZWN0aW9uIDAgZm9yIGhlYWRlciBmaWxlcyANCihhbHRob3VnaCBzaW5jZSB0
aGUgbGlzdHMgaGF2ZSBiZWVuIHZlcnkgaG90IHRoZXNlIGRheXMsIEkgd29uJ3QgY2FyZSAN
CmZpbmRpbmcgdGhlIGV4YWN0IGVtYWlsKS4NCg0KSSBkaWRuJ3QgaW5hdWd1cmF0ZSBzZWN0
aW9uIDAgZm9yIHRoYXQuICBJIGp1c3QgZm9sbG93ZWQgZXhpc3RpbmcgDQpwcmFjdGljZS4g
IEJ1dCwgY29uc2lkZXJpbmcgb3VyIGRpc2N1c3Npb25zIGFib3V0IHRoZSB0b3BpYywgYW5k
IA0KY29uc2lkZXJpbmcgdGhhdCBJIGFscmVhZHkgY2hhbmdlZCBDT05GT1JNSU5HIFRPIHRv
IFNUQU5EQVJEUyBmb3IgDQpjb25zaXN0ZW5jeSBhY3Jvc3MgYWxsIG1hbnVhbCBwYWdlcyBp
biBleGlzdGVuY2UsIEknbGwgcmVjb25zaWRlci4NCg0KU28sIGV4aXN0aW5nIHByYWN0aWNl
IHNlZW1zIHRvIGJlIGRpdmlkZWQgaW46DQoNCi0gUHV0dGluZyBoZWFkZXIgZmlsZXMnIHBh
Z2VzIGRpcmVjdGx5IGluIG1hbjMgKGUuZy4sIHN0cmluZygzKSkuDQogICBEb25lIGJ5IExp
bnV4IG1hbi1wYWdlcywgYW5kIEJTRHMgKHNlZSBCU0QncyBzeXNleGl0cygzKSkuDQogICBJ
IGRvbid0IGxpa2UgdGhlIGlkZWEsIGVzcGVjaWFsbHkgaWYgdGhlIHBhZ2UgbmFtZSBkb2Vz
bid0IGhhdmUgYQ0KICAgdHJhaWxpbmcgJy5oJywgc2luY2UgdGhleSBsaXZlIGluIGRpZmZl
cmVudCBuYW1lc3BhY2VzLg0KDQotIFB1dHRpbmcgdGhlbSBpbiBtYW4zaGVhZC4NCiAgIERv
bmUgYnkgc29tZSBPcmFjbGUgT1NlcyAoYXQgbGVhc3QgZm9yIHNvbWUgdmVyc2lvbnMpLg0K
DQotIFB1dHRpbmcgdGhlbSBpbiBtYW4wLg0KICAgRG9uZSBleGNsdXNpdmVseSBieSB0aGUg
cG9zaXggbWFuIHBhZ2VzLg0KICAgTm90IGV2ZW4gc29tZXRoaW5nIFBPU0lYIGlzIHJlc3Bv
bnNpYmxlIGZvciwgQUZBSUssDQogICBzaW5jZSB3ZSBjcmVhdGUgdGhlIHBhZ2VzIGZyb20g
dGhlIEhUTUwgc291cmNlLA0KICAgd2hpY2ggaGFzIG5vdGluZyB0byBkbyB3aXRoIHNlY3Rp
b25zLg0KICAgRGViaWFuIGZvciBleGFtcGxlLCBjaGFuZ2VzIHRoaXMgKHNlZSBiZWxvdyku
DQogICBJdCBzZWVtcyB0byBiZSB0aGUgb25seSBwbGFjZSBtYW4wIGlzIGJlaW5nIHVzZWQs
DQogICBhbmQgSSBoYXZlIGNvbnRyb2wgb3ZlciBpdC4NCg0KLSBQdXR0aW5nIHRoZW0gaW4g
bWFuNy4NCiAgIERlYmlhbiBtb3ZlcyBtYW4wIHBhZ2VzIHRvIDdQT1NJWCAoYnV0IHVzZXMg
bWFuNy8pLg0KDQoNClNpbmNlIHRoZXJlJ3MgbXVjaCBkaXZpc2lvbiwgYW5kIEkgaGF2ZSBj
b21wbGV0ZSBjb250cm9sIG92ZXIgb25lIChvciANCmV2ZW4gdHdvIGlmIEkgY2FuIGF2b2lk
IERlYmlhbiBtb3ZpbmcgdGhlIHBhZ2VzIHRvIG1hbjcpIG9mIHRoZSANCnZhcmlhbnRzLCBJ
IGNvdWxkIGhlbHAgdW5pZnkgaGVhZGVyIGZpbGVzIG1hbnVhbCBwYWdlcyBhY3Jvc3MgVW5p
eCANCnN5c3RlbXMgYnkgbW92aW5nIFBPU0lYIGhlYWRlciBmaWxlIG1hbnVhbCBwYWdlcyB0
byBtYW4zaGVhZC4NCg0KSSB3b3VsZCBhbHNvIG1vdmUgdGhlIG9ubHkgcGFnZSBpbiB0aGUg
TGludXggbWFuIHBhZ2VzIHRoYXQgaXMgaW4gbWFuMCANCihhZGRlZCByZWNlbnRseSBieSBt
ZTsgc3lzZXhpdHMuaCgwKSkgYW5kIHRoZSBtYW4zIGhlYWRlciBwYWdlcyBmcm9tIHRoZSAN
CkxpbnV4IG1hbi1wYWdlcyAoc3VjaCBhcyBzdHJpbmcoMykpIHRvIG1hbjNoZWFkLg0KDQpN
YXliZSBEZWJpYW4gYWxzbyBnaXZlcyB1cCBtb2RpZnlpbmcgdXBzdHJlYW0gcGFnZXMsIHNp
bmNlIEknbGwgbWFrZSBpdCANCnJlYWxseSBoYXJkIGZvciB0aGVtIHRvICJmaXgiIG1hbjN0
eXBlIGFueXdheSAobm90IG9uIHB1cnBvc2UsIGJ1dCANCnRoZXknbGwgbmVlZCB0byBjb21l
IHVwIHdpdGggYSBzY3JpcHQgdG8gbW9kaWZ5IHRoZSBsaW5rIHBhZ2VzKS4NCg0KVGhhdCB3
b3VsZCBsZWF2ZSB1cyB3aXRoIHRoZSBmb2xsb3dpbmcgc2l0dWF0aW9uOg0KDQotIE1vc3Qg
aGVhZGVyIGZpbGUgcGFnZXMgd291bGQgYmUgaW4gbWFuM2hlYWQgKE9yYWNsZSwgUE9TSVgs
IExpbnV4KS4NCg0KLSBCU0RzIHN0aWxsIGhhdmUgYSBmZXcgKG1heWJlIG9ubHkgb25lPykg
aGVhZGVyIHBhZ2UgaW4gbWFuMzogc3lzZXhpdHMoMykuDQoNCi0gU2VjdGlvbiAwIGJlY29t
ZXMgZGVzZXJ0LCBhbmQgbWF5YmUgc29tZW9uZSBjYW4gZ2l2ZSBpdCBhIG5ldyB1c2UgaW4g
DQp0aGUgZnV0dXJlLCBpZiBhIG5ldyBzZWN0aW9uIGlzIGV2ZXIgbmVlZC4NCg0KTXVjaCBu
aWNlciB0aGFuIGJlZm9yZS4NCg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQpBbGVqYW5k
cm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------iPsqq4Vzlv0sVs3DlpeZtHTz--

--------------5qBu2hGTtZssW5aWbFjViVqo
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLjxXgACgkQnowa+77/
2zJwYA//RR+PiSsLayCxGf0aCz2Zd+2tyQ8llVyFlag5N/rF9/ZXsYCsFH/puaFx
DQowxJJaHpZTsCdgDnrEL6vdvU8PAPVVzUmuDi9nvsXp6hk3+qiJLU9S2Ugzyd00
bpUl/IjCj5bnVTsj+9K2MEecT4IKrDhZHzdwyT7g3Hp8XddWHk81xu2HE4uYIWLi
oRkR/TGiqtkp9ZZn47fo7xZBhv+ITR7543NcYgXSQ/MBnk4oMoVYWm5MvNddDJXe
GkiCX32XBapyuL3wnswCXCjcClyfNH5ehTD5rMwSpHb8Pi9jOYURsGRncAZLj2tE
MFzTPodb45r4NJJn5vYe54V2D6HoMmdDEaVldf7OIHxutr5tapqKg6hLGz6hGze3
GdjIA6Xa1XsuyCpucw+Yagb1ugD2i3BkpC2KmyPOFVCxVaECT1ga945HWjHvGm9f
uAeoTdz+xE8kvqhoDFEzi3KDoATDtS1niQmaLa4UupGxvAy7xWacxVXXyN+Ga/AU
6E1tPuqDO9hx/xdrPYHBTjokxsrTcFhxBiHrd6eKl+JeI6EHNqjiF9Vsjq/wTAMp
QnG4w3sOIeeXeNsMo5DA4UZPt8ww0WWDHuqNi54urCHLvtmke69O1xTLRyNjqMRs
HIBxBRHJYPdFY58jXUyFAOAxTGwHqr1cHbI+zbas49D4DF1orjU=
=4Uj0
-----END PGP SIGNATURE-----

--------------5qBu2hGTtZssW5aWbFjViVqo--
