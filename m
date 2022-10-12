Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D74DA5FCC69
	for <lists+linux-man@lfdr.de>; Wed, 12 Oct 2022 22:51:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229711AbiJLUvE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Oct 2022 16:51:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229686AbiJLUvD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Oct 2022 16:51:03 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3793A108DDE
        for <linux-man@vger.kernel.org>; Wed, 12 Oct 2022 13:51:02 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id n9so5524187wms.1
        for <linux-man@vger.kernel.org>; Wed, 12 Oct 2022 13:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OYLc3w76xHYxyVu0DJdipcvuE88pfHMrlH2VPkHz2QY=;
        b=iYI46r6RZNqxm9L2rZFcAJ2rQSfQ+4zvhs22fG8E9e00iq4KMsKX3vaX0ploq1zK8o
         D2cRr3x5FA28ZHCe7e5AN8DI6NVsV/tXIHR0mzE2dC/4qLZSO9Z6U3QbbVYm0IQmHy5t
         QmjKYCsKR/EhAR+WaOvE+JJQgBv5gH7KBzx9gdqfBGIMU+9HZhymkSGnyl0sIrBN+59+
         zHhn7od61yMNOtZ94a3c6eY0of2RYm8S89m74eN8OWdqPLOFKtgb9LfTL95bOdbC6jUJ
         JABb2GK5oa+8TzJrO7v9DuAtLdpN6Gt7CX6+Z9lI2IZR+W1Rez/Fnhw+r7+WrYqIlQCE
         zysg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OYLc3w76xHYxyVu0DJdipcvuE88pfHMrlH2VPkHz2QY=;
        b=dCJwlYkf6VjRwlDdwQlQKc3y99EURwlv0xoE/lL6DdSVuhjk1AxSRTlckQ+kbeWsz1
         TiSegdxUKj3o9isMq3qLieRhvQQu69erzXpLgG+d7QJn5w7RZBJM4kb1rUs6DSnYHnpm
         7134GpsArvmg+ssjDyanKy+rN6ne1CjtXRhHb+zXiqWePnMX/yapGq+VL3SIz8Fk4hjr
         G83oR/3WhDafBpkmojhIV0Iv6FFiL7IYyUMEVpWP4SEpZinmrj7wM6dh/zdPF1VZjlu0
         +1lJ1Dc3uGyHm2hV9IDODMvKcDkesn/L54JChLdhKkKxD3jrfxTpVRn6gK/j4bXWKSP2
         aFqQ==
X-Gm-Message-State: ACrzQf2wgtfYl9l+0vzOK0tcGFK9WSK4JyfYoszkY0kiPdj/f/VbtzVf
        znGeEbQL/v7iRY928Q0o3Qg=
X-Google-Smtp-Source: AMsMyM54uM3PowcGQIAnkmAWExzPtEcHljg8Pkjhuk5fQkf2Uc6aW30Y4Tl30Zcl+FtCt25XmZzkVQ==
X-Received: by 2002:a05:600c:2f9a:b0:3b4:9bd5:1472 with SMTP id t26-20020a05600c2f9a00b003b49bd51472mr3911052wmn.171.1665607860597;
        Wed, 12 Oct 2022 13:51:00 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z7-20020adfd0c7000000b0022e38c93195sm544995wrh.34.2022.10.12.13.50.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 13:51:00 -0700 (PDT)
Message-ID: <2fc65c82-87a1-98dc-cd21-8dff82886fbd@gmail.com>
Date:   Wed, 12 Oct 2022 22:50:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: 3-word compound adjectives; the return of the '-'
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>,
        Steve Izma <sizma@golden.net>, DJ Chase <u9000@posteo.mx>,
        Tadziu Hoffmann <hoffmann@usm.uni-muenchen.de>,
        Dave Kemper <saint.snit@gmail.com>
References: <82b77010-6b42-a58a-f8c7-b977297d6832@gmail.com>
 <20221012155224.yhlmkaid23aumzoo@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221012155224.yhlmkaid23aumzoo@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------EuousnEokJXASUQPX07BhPf5"
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------EuousnEokJXASUQPX07BhPf5
Content-Type: multipart/mixed; boundary="------------zvwhkU87C3hujj3oldKSdTir";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>,
 Steve Izma <sizma@golden.net>, DJ Chase <u9000@posteo.mx>,
 Tadziu Hoffmann <hoffmann@usm.uni-muenchen.de>,
 Dave Kemper <saint.snit@gmail.com>
Message-ID: <2fc65c82-87a1-98dc-cd21-8dff82886fbd@gmail.com>
Subject: Re: 3-word compound adjectives; the return of the '-'
References: <82b77010-6b42-a58a-f8c7-b977297d6832@gmail.com>
 <20221012155224.yhlmkaid23aumzoo@illithid>
In-Reply-To: <20221012155224.yhlmkaid23aumzoo@illithid>

--------------zvwhkU87C3hujj3oldKSdTir
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiENCg0KT24gMTAvMTIvMjIgMTc6NTIsIEcuIEJyYW5kZW4gUm9iaW5zb24g
d3JvdGU6DQo+IEhpIEFsZXgsDQo+IA0KPiBBdCAyMDIyLTEwLTEyVDE2OjQ3OjI3KzAyMDAs
IEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPj4gSW4gYSBwYXRjaCB0byBsaW51eC1tYW5A
IHRoZXJlJ3MgYSAzLXdvcmQgY29tcG91bmQgYWRqZWN0aXZlLiAgSSBkb24ndA0KPj4ga25v
dyB3aGF0IGFyZSB0aGUgcnVsZXMgZm9yIHN1Y2ggYSB0aGluZywgYW5kIEknZCBsaWtlIHRv
IGhhdmUgc29tZQ0KPj4gY29uc2lzdGVuY3kgKGFuZCBjb3JyZWN0bmVzcykgaW4gdGhlIG1h
bnVhbCBwYWdlcy4NCj4gDQo+IEFsd2F5cyBsYXVkYWJsZSBnb2FscyEgIDpEDQoNCkl0J3Mg
dmVyeSBuaWNlIHRvIHJlYWQgdGhpcyEhICA6RA0KDQpCVFcsIHRoYW5rcyBhIGxvdCBmb3Ig
YWxsIHRoZSBoZWxwIHRoZXNlIHllYXJzLiAgV2UgZmluYWxseSBnb3QgDQptYW4tcGFnZXMt
Ni4wISAgOi0pDQoNCj4gDQo+PiBJJ3ZlIHNlZW4gbWFueSBkaWZmZXJlbnQgdGhpbmdzIGlu
IHRoZSBwYXN0OzoNCj4+DQo+PiAgIGEpIGJsb2NrIGRldmljZS1iYXNlZCBmaWxlc3lzdGVt
cw0KPj4gICBiKSBibG9jay1kZXZpY2UtYmFzZWQgZmlsZXN5c3RlbXMNCj4+ICAgYykgYmxv
Y2stIGRldmljZS1iYXNlZCBmaWxlc3lzdGVtcw0KPj4NCj4+IEFuZCBub3cgSSBmb3VuZCBv
bmUgbW9yZQ0KPj4gPGh0dHBzOi8vd3d3LmVkaXRvcmdyb3VwLmNvbS9ibG9nL3RvLWh5cGhl
bmF0ZS1vci1ub3QtdG8taHlwaGVuYXRlLz46DQo+Pg0KPj4gICBkKSBibG9jayBkZXZpY2Vc
W2VuXWJhc2VkIGZpbGVzeXN0ZW1zDQo+Pg0KPj4gV2hlcmUgdGhlIGVuIGRhc2ggaXMgdXNl
ZCB0byBkaXN0aW5ndWlzaCBpdCBmcm9tICdhIGJsb2NrIGZpbGVzeXN0ZW0NCj4+IGJhc2Vk
IG9uIGEgZGV2aWNlJy4NCj4gDQo+IFBlcnNvbmFsbHksIEkgdGhpbmsgdGhlIGVuIGRhc2gg
aXMgdG9vIG11Y2ggdHJvdWJsZSB0byBtZXNzIHdpdGguICBPbmx5DQo+IHJlYWRlcnMgYXMg
bWV0aWN1bG91cyBhcyB3ZSwgYW5kIHRob3NlIHdpdGggZ29vZCBmb250cyBhbmQgZ29vZA0K
PiBleWVzaWdodCwgd2lsbCBkaXN0aW5ndWlzaCB0aGUgZW4gZGFzaCBhbmQgaHlwaGVuIGds
eXBocy4NCj4gDQo+PiBXaGljaCBmb3JtIHdvdWxkIHlvdSByZWNvbW1lbmQgbWUgdG8gdXNl
Pw0KPiANCj4gU3RldmUgSXptYSBhcnRpY3VsYXRlZCBhIGdvb2QgcHJpbmNpcGxlLiAgSWYg
dGhydXN0IHVwb24gdGhlIGhvcm5zIG9mIGENCj4gd29yZHNtaXRoaW5nIGRpbGVtbWEsIGNv
bnNpZGVyIHJlY2FzdGluZyBlbnRpcmVseS4NCg0KSWYgSSBmaW5kIHNvbWUgY2FzZSB0aGF0
IEkgY2FuJ3QgcmVjYXN0IGVhc2lseSwgSSB0aGluayBJJ2xsIGdvIGZvciB0aGUgDQpwcmVj
aXNlbmVzcyBhbmQgbG9naWMgb2YgZW4tZGFzaGVzIGNvbWJpbmVkIHdpdGggaHlwaGVucywg
YXMgVGFkeml1IA0KZGVmZW5kZWQuICBSZWFkZXJzIGFzIG1ldGljdWxvdXMgYXMgd2Ugd2l0
aCBnb29kIGZvbnRzIGFuZCBleWVzaWdodCB3aWxsIA0KY2VydGFpbmx5IGFwcHJlY2lhdGUg
dGhhdC4gIEFuZCBsZXNzIGNhcmVmdWwgcmVhZGVycyB3b24ndCBjYXJlIHNvIG11Y2gsIA0K
YnV0IHdlIGFsc28gd29uJ3QgY2FyZSBzbyBtdWNoIGFib3V0IHRoZWlyIGNhcmVsZXNzbmVz
cywgc28gbm90IGFuIGlzc3VlLiA6cA0KDQo+IA0KPiBUaGF0IHNhaWQsIEknZCBnbyB3aXRo
ICJibG9jayBkZXZpY2UtYmFzZWQgZmlsZXN5c3RlbXMiLFsxXSBiZWNhdXNlDQo+IHRoZXJl
IGlzIG5vIGh5cGhlbiBhbHJlYWR5IGluIHRoZSBub3VuIHBocmFzZSAiYmxvY2sgZGV2aWNl
IiwganVzdCBhcw0KPiB0aGVyZSBpc24ndCBpbiAiaWNlIGNyZWFtIiAoYSBjb21wb3VuZCB3
b3JkKSwgYW5kIHBlcmhhcHMgbW9yZSBvbiBwb2ludCwNCj4gYXMgdGhlcmUgaXNuJ3QgaW4g
ImhvdCBmdWRnZSBzdW5kYWUiIChldmVuIHRob3VnaCBpdCBpcyBvbmx5IHRoZSBmdWRnZQ0K
PiB0aGF0IGlzIGhvdCxbMl0gbm90IHRoZSB3aG9sZSBzdW5kYWUpLg0KPiANCj4gU2ltaWxh
cmx5LCB3ZSBzYXkgInRoaXJ0eSB5ZWFyLW9sZCBidWciIGFuZCAidHdvLWZpc3RlZCBkcmlu
a2VyIiwgYnV0DQoNCkhlaCEgIERhdmUgY2F1Z2h0IGEgZnVubnkgYnVnIGluIHRoaXMgb25l
LCB3aGljaCBzdXBwb3J0cyB0aGUgaWRlYSBvZiANCmJlaW5nIHByZWNpc2UgZXZlbiBpZiBp
dCdzIG5vdCBhbHdheXMgbmVjZXNzYXJ5IGJ5IGxhbmd1YWdlIHJ1bGVzLg0KDQo+ICJtb3Ro
ZXItaW4tbGF3LWRyaXZlbiBkaXZvcmNlIi4gIFRoZSBtdWx0aXBsaWNpdHkgb2YgaHlwaGVu
cyBpbiB0aGUgbGFzdA0KDQpTbyBJJ2Qgd3JpdGUgZWl0aGVyICJkaXZvcmNlIGRyaXZlbiBi
eSB0aGUgbW90aGVyLWluLWxhdyIgb3IgDQoibW90aGVyLWluLWxhd1xbZW5dZHJpdmVuIGRp
dm9yY2UiLCBkZXBlbmRpbmcgb24gaG93IG5pY2VseSB0aGUgZmlyc3QgDQpvbmUgZml0cy4N
Cg0KPiBjYXNlIGlzIGJlY2F1c2UgdGhleSdyZSBhbHJlYWR5IHByZXNlbnQgaW4gdGhlIHdv
cmQgYmVpbmcgY29tcG91bmRlZC4gIEENCj4gIm1vdGhlciBpbiBsYXciIHdvdWxkLCBzdHJp
Y3RseSwgcmVmZXIgdG8gYSBtYXRlcm5hbCBmaWd1cmUgd2l0aCBhbg0KPiBvY2N1cGF0aW9u
IGluIHRoZSBsZWdhbCBzeXN0ZW0uDQo+IA0KPiBJJ2QgZGlnIG1vcmUgaW50byB0aGUgdW5k
ZXJseWluZyBncmFtbWF0aWNhbCBwcmluY2lwbGVzIEkgd291bGQNCj4gYXJ0aWN1bGF0ZSBm
b3IgdGhlc2UgY2FzZXMgYnV0IEknZCBwcmVmZXIgdG8gZ2V0IHRoaXMgZW1haWwgY29tcGxl
dGVkDQo+IGJlZm9yZSBuZXh0IG1vbnRoLiAgOy0pDQoNCjopDQoNCj4gDQo+IFJlZ2FyZHMs
DQo+IEJyYW5kZW4NCj4gDQo+IFsxXSBJIHByZWZlciAiZmlsZSBzeXN0ZW0iIGFuZCAiZmls
ZSBuYW1lIiB0byB0aGVpciBzcGFjZS1mcmVlDQo+ICAgICAgYWx0ZXJuYXRpdmVzOyBJIHRo
aW5rIHRoZSBsYXR0ZXIgYXJlIHRoZSBwcm9kdWN0IG9mIHByb2dyYW1tZXJzDQo+ICAgICAg
Zm9yZ2V0dGluZyB0aGF0IHRoZXkncmUgd3JpdGluZyBFbmdsaXNoIG5vdW5zIGluc3RlYWQg
b2YgQw0KPiAgICAgIGlkZW50aWZpZXJzLiAgQnV0IEkgYWNrbm93bGVkZ2UgdGhhdCBpbiBt
YW55IHF1YXJ0ZXJzIHRob3NlIGJhdHRsZXMNCj4gICAgICBhcmUgbG9zdC4NCg0KSXQgc2Vl
bXMgdG8gYmUgbG9zdCwgYWNjb3JkaW5nIHRvIG1hbi1wYWdlcyg3KToNCg0KICAgIFByZWZl
cnJlZCB0ZXJtcw0KICAgICAgICBUaGUgIGZvbGxvd2luZyB0YWJsZSBsaXN0cyBzb21lIHBy
ZWZlcnJlZCB0ZXJtcyB0byB1c2UgaW4NCiAgICAgICAgbWFuIHBhZ2VzLCBtYWlubHkgdG8g
ZW5zdXJlIGNvbnNpc3RlbmN5IGFjcm9zcyBwYWdlcy4NCiAgICAgICAgVGVybSAgICAgICAg
ICAgICAgICAgQXZvaWQgdXNpbmcgICAgICAgICAgICAgIE5vdGVzDQogICAgICAgIOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgA0KICAgICAgICBiaXQgbWFzayAgICAgICAgICAgICBiaXRtYXNr
DQogICAgICAgIGJ1aWx04oCQaW4gICAgICAgICAgICAgYnVpbHRpbg0KICAgICAgICBFcG9j
aCAgICAgICAgICAgICAgICBlcG9jaCAgICAgICAgICAgICAgICAgICAgRm9yIHRoZSBVTklY
DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBFcG9jaA0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgKDAwOjAwOjAwLCAxDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBKYW4gMTk3MCBVVEMpDQogICAgICAgIGZpbGVuYW1l
ICAgICAgICAgICAgIGZpbGUgbmFtZQ0KICAgICAgICBmaWxlc3lzdGVtICAgICAgICAgICBm
aWxlIHN5c3RlbQ0KDQphbmQgdG8gY3VycmVudCB1c2UgaW4gdGhlIHByb2plY3Q6DQoNCiQg
Z3JlcCAtcm4gJ2ZpbGUgc3lzdGVtJyBtYW4qIHwgd2MgLWwNCjQNCiQgZ3JlcCAtcm4gJ2Zp
bGVzeXN0ZW0nIG1hbiogfCB3YyAtbA0KMTE2Ng0KJCBncmVwIC1ybiAnZmlsZSBuYW1lJyBt
YW4qIHwgd2MgLWwNCjE4DQokIGdyZXAgLXJuICdmaWxlbmFtZScgbWFuKiB8IHdjIC1sDQox
NzINCg0KJCBncmVwIC1ybiAnZmlsZS1zeXN0ZW0nIG1hbiogfCB3YyAtbA0KNw0KJCBncmVw
IC1ybiAnZmlsZS1uYW1lJyBtYW4qIHwgd2MgLWwNCjENCg0KPiBbMl0gYW5kIGl0J3MgY2hv
Y29sYXRlIHNhdWNlIGFueXdheSwgbm90IHRydWUgZnVkZ2UtLXN1Y2ggaXMgbWFya2V0aW5n
DQo+ICAgICAgaG9uZXN0eSBpbiB0aGUgVS5TLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0g
DQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------zvwhkU87C3hujj3oldKSdTir--

--------------EuousnEokJXASUQPX07BhPf5
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNHKKsACgkQnowa+77/
2zJPyhAAknZR1aJ9QGnBra2qjNa+D90zsuLjVM02ziskFxbVh52tG7/YxDfxPpud
Tni6yD+4J3nKPit7jCrElO/bZI6Wv4XcSShSZP9J6s7B7ixQzAFuQKAmZfti/m+k
sNPDWSlX+0MjccSaguGQLMqz7YOF92MNb/MqgvVFkJ8Nrkyyvucw9WYlYgNesAxb
hgr4WwBo+pB28i2AnAGqA4+IN5BN9FNLwu35Zftl13Eqd6eJi5OM22C+gGyVwHRs
Sjh3mRdVc1QUhC5TNCzuuZycex/JIxEXzW8LgvZRzbvR3+7sKVypS+jhSb/pC0Dg
H8NV44iKNaA1zWTF67olWNUccM7BEa+sb/YYWuQWUy0b81xx1kAbHSzbS/3QdNK/
ckvmiCv9wZAGzWDsJhnloQeiCCzuQno41nn87273alethZmgSo5RIMjbQnQiKS65
iuCJqA1nbCVe1tfz6ccrrK9kLhx2RJ0XKu0/EtirhOtQt3uCp6IYw4FxQI+hr3Xu
GBljgO65YQtYBILlumOLMJn9X89RmLP0V/mdJ2Ciboe5pPE4GTD887GfB71xo0tH
gekl4MDBdxs28FoZN90OskGCP5EN7BCOQRKl6/bZ8cCZz3yvh78sisWTkrLMt5Lg
x602pAnv2Hr0Jcp2KGyQBLlhsgOjr4GWgrgB4niuvziD3L0coKs=
=IRit
-----END PGP SIGNATURE-----

--------------EuousnEokJXASUQPX07BhPf5--
