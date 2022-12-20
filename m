Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B7DF651E84
	for <lists+linux-man@lfdr.de>; Tue, 20 Dec 2022 11:12:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233355AbiLTKMg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Dec 2022 05:12:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233217AbiLTKMe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Dec 2022 05:12:34 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48D6A1112
        for <linux-man@vger.kernel.org>; Tue, 20 Dec 2022 02:12:33 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id ay2-20020a05600c1e0200b003d22e3e796dso8387231wmb.0
        for <linux-man@vger.kernel.org>; Tue, 20 Dec 2022 02:12:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FPAMYjIDPHqQ24YriGsOQ3RNlbkeQNdaHgWcj0XSfn4=;
        b=k3S/pA6Omum/TwNZGg4j988WAtl+RPNyCxWFFsnZ9lYIcFNXJKvJClaestM8ppKzOs
         xHSCq6uyOhoAPRGo/4okia+O2xSghPMMX0vERM6/oNBD9WtInjKGM1fSFuqyYPLe6SmL
         ZvHH36RNAfpyddTLgUX/XIa0gMH9dnIp6v/Tg+DCTs0RKaYCTgDlNtzf5uUD55IXnWuI
         LqAVNRmTqsavTeEazDInJfpMria0Vw5tqD2737Mobw/X5nXoDxeyD59+tlSanIvCNQ0Y
         lX06WnZ8T3BtE4anw6ptiVWzUbEpU+v5SdTIF+UpWw/wi+R4vLuTD3cZs6/LxN9RXW0U
         B0BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FPAMYjIDPHqQ24YriGsOQ3RNlbkeQNdaHgWcj0XSfn4=;
        b=SErjmGd89DPPH/WR9uoyj/XpJSkWtLpk40J4BY1dACFTTj6vr4rj9dWpJVtV2WuCg1
         CKwhlu+gtNKCC3rLvg7yt8+d7H67NXLjyD13WMQb+g6S/V0tt0yG3kswWi6N1aH4WAN+
         JJcZpBsO98nlh4iIaFAY2k2r87lyr90L28uvSeBIPV7un7dQv8t+ZOdt7dzcl/DPmcCh
         ZEMRyLZZJUVL4SGF7tF+140zyd0kl9/VJUchB9SiSqygj9qThQRfHx42IkIQmW2TdeIl
         F/Pyi+0EasRXIeBXKRIA5hGcXSnf4TYsCMVTR/S9C/n/d0QOAu3Kf9xcs1H7v5zI7HDm
         HNJA==
X-Gm-Message-State: ANoB5pm+CT22qJ4RbOm4fgIzEAOUr9OlKD43MRPkprIvMlvc7g8T/U18
        hVD+ITaGqkuUWxNJs8ARNlA=
X-Google-Smtp-Source: AA0mqf7mY6LD97447kmhdW2aZ3M64pZsfRi8JvFMwIH/TBuYK5z0mvomlKy1cGyTiWTvMir5W/7r8A==
X-Received: by 2002:a05:600c:1e8c:b0:3d2:381f:2db5 with SMTP id be12-20020a05600c1e8c00b003d2381f2db5mr19098406wmb.22.1671531151651;
        Tue, 20 Dec 2022 02:12:31 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y1-20020adfd081000000b002421a8f4fa6sm12439481wrh.92.2022.12.20.02.12.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Dec 2022 02:12:31 -0800 (PST)
Message-ID: <88617ad8-bb2f-65f0-ea61-ecb0e9043147@gmail.com>
Date:   Tue, 20 Dec 2022 11:12:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: patching suffixes(7) (was: groff 1.23.0.rc2 status report)
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <01989003-349f-fb6b-f460-89106b82bc34@gmail.com>
 <2176657.1BCLMh4Saa@pip> <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
 <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
 <20221217160830.rcvgr65axz4hpcge@illithid>
 <5439523a-4fd1-e0c7-9116-6fd8c2a65c67@gmail.com>
 <20221219053245.j5omcuyxd7rnj4qt@illithid>
 <839023e9-cbe4-8039-d51e-e2df581644e2@gmail.com>
 <20221219165900.dfgjj5spciy4cqlt@illithid>
 <acebbd20-d235-7668-5481-2f043cb2c9cb@gmail.com>
 <20221220034059.piz7qsu3r67j2np3@illithid>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221220034059.piz7qsu3r67j2np3@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ecRReb2ocv8qeGZP00LI8Ui0"
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URI_DOTEDU autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------ecRReb2ocv8qeGZP00LI8Ui0
Content-Type: multipart/mixed; boundary="------------bFKk9qvhW80rG0rQg6EMO70z";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <88617ad8-bb2f-65f0-ea61-ecb0e9043147@gmail.com>
Subject: Re: patching suffixes(7) (was: groff 1.23.0.rc2 status report)
References: <01989003-349f-fb6b-f460-89106b82bc34@gmail.com>
 <2176657.1BCLMh4Saa@pip> <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
 <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
 <20221217160830.rcvgr65axz4hpcge@illithid>
 <5439523a-4fd1-e0c7-9116-6fd8c2a65c67@gmail.com>
 <20221219053245.j5omcuyxd7rnj4qt@illithid>
 <839023e9-cbe4-8039-d51e-e2df581644e2@gmail.com>
 <20221219165900.dfgjj5spciy4cqlt@illithid>
 <acebbd20-d235-7668-5481-2f043cb2c9cb@gmail.com>
 <20221220034059.piz7qsu3r67j2np3@illithid>
In-Reply-To: <20221220034059.piz7qsu3r67j2np3@illithid>

--------------bFKk9qvhW80rG0rQg6EMO70z
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMTIvMjAvMjIgMDQ6NDAsIEcuIEJyYW5kZW4gUm9iaW5zb24g
d3JvdGU6DQo+IEF0IDIwMjItMTItMTlUMjA6MTA6MjUrMDEwMCwgQWxlamFuZHJvIENvbG9t
YXIgd3JvdGU6DQo+PiBPbiAxMi8xOS8yMiAxNzo1OSwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3
cm90ZToNCj4+PiBbZHJvcHBpbmcgRGVyaSBhbmQgZ3JvZmZAXQ0KPj4+DQo+Pj4gQXQgMjAy
Mi0xMi0xOVQxNzozOTozNyswMTAwLCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+Pj4g
V291bGQgeW91IG1pbmQgc2VuZGluZyBhIHBhdGNoIHRoYXQgSSBjYW4gYXBwbHkgd2l0aCBn
aXQ/ICBJIGNvdWxkDQo+Pj4+IG1hbnVhbGx5IGVkaXQgdGhlIGZpbGUgeW91IGF0dGFjaGVk
LCBidXQgSSdtIGZlZWxpbmcgbGF6eSBmb3IgdGhhdA0KPj4+PiA6XA0KPj4+DQo+Pj4gRGFt
bi4gIE91ciBsYXppbmVzc2VzIGFyZSBkdWVsbGluZy4gIDpQDQo+Pg0KPj4gOlANCj4+DQo+
PiBJIGFjdHVhbGx5IHdvbmRlciBob3cgcHJvZHVjaW5nIHN1Y2ggYSBkaWZmIHdhcyBzaW1w
bGVyIHRoYW4ganVzdA0KPj4gY29weWluZyB0aGUgb3V0cHV0IG9mIGdpdCBkaWZmLi4uDQo+
IA0KPiBJIGRvbid0IGZpbmQgImRpZmYgLXUgPHRhYi1jb21wbGV0aW9uPnssLm5ld30iIHZl
cnkgZGlmZmljdWx0Lg0KPiANCj4gKEkgb2Z0ZW4gZG8gdGhhdCBpbiByZXBvcyB0aGF0IEkg
bW9zdGx5IHJlYWQgYXMgb3Bwb3NlZCB0byBjb250cmlidXRpbmcNCj4gdG87IHRoYXQgd2F5
IG15IGhhbGYtYmFrZWQgaWRlYXMgZG9uJ3QgZ2V0IGluIHRoZSB3YXkgb2YgYSByZWJhc2Ug
cHVsbC4NCj4gQnJhbmNoaW5nIGRvZXNuJ3Qgc29sdmUgdGhhdCBwcm9ibGVtLCBhbmQgaWYg
SSBnaXQtc3Rhc2ggc29tZXRoaW5nIGluDQo+IHN1Y2ggYSByZXBvIEknbSBsaWtlbHkgdG8g
Zm9yZ2V0IGFib3V0IGl0LCBvciBub3QgdGhpbmsgdG8gY2hlY2sgdGhlcmUuKQ0KDQpIbW1t
LCBjYW4gbWFrZSBzZW5zZS4gIChJIGJyYW5jaCBmb3Igc3VjaCBvY2Nhc2lvbnMuKSAgKHN0
YXNoICYmIHJlYmFzZS1wdWxsICYmIA0Kc3Rhc2gtcG9wIGlzIGFsc28gY29tbW9uLCBidXQg
dGhhdCdzIGZvciByZXBvcyBpbiB3aGljaCBJIHdvcmsgbW9yZSBvZnRlbiBhbmQgDQpkb24n
dCBoYXZlIHRvIHB1bGwgdG9ucyBvZiBjaGFuZ2VzLikgOikNCg0KPiANCj4+IEJUVywgSSBz
dGlsbCBwbGFuIHJlbGVhc2luZyBtYW4tcGFnZXMtNi4wMiBpbiBhIHR3byBkYXlzLCBhbmQg
ZmVlbA0KPj4gY29uZmlkZW50IGVub3VnaCBhYm91dCB0aGUgc3RyaW5nIGNoYW5nZXMgKG1v
ZHVsbyBhIGZldyB0d2Vha3MgdGhhdA0KPj4gSSdsbCBhcHBseSkgdG8gc2hpcCB0aGVtIGlu
IGl0LiAgSWYgeW91IGhhdmUgYW55IGNvbW1lbnRzIGFib3V0IHRoZW0sDQo+PiBwbGVhc2Ug
dm9pY2UgdGhlbSA6KQ0KPiANCj4gSSBoYXZlIHdlYWsgcHJlZmVyZW5jZSBmb3IgdGhlIG5h
bWUgInN0cmluZ19jb3B5aW5nKDcpIiBvdmVyDQo+ICJzdHJpbmdfY29weSg3KSIsIGJ1dCBs
ZWF2aW5nIHRoZSBzdW1tYXJ5LWRlc2NyaXB0aW9uIHRoZSBzYW1lLg0KPiANCg0KSSBwcmVm
ZXIgaXQgdG9vLiAgc3RyaW5nX2NvcHkgd2FzIGZvciB3aGVuIHRoaXMgcGFnZSB3YXMgZ29p
bmcgdG8gc3Vic3RpdHV0ZSB0aGUgDQpvdGhlciBvbmVzLCBzbyBJIHdhbnRlZCBpdCB0byBo
YXZlIGEgbmFtZSByZXNlbWJsaW5nIHRoZW0uICBCdXQgbm93IEkgbGlrZSANCiJjb3B5aW5n
IiBtb3JlLiAgU28sIGRvbmUsIGFuZCBwdXNoZWQuICBBIG5ldyBwYWdlIGlzIGJvcm4uDQoN
Cj4gQXBhcnQgZnJvbSB0aGF0IEkgaGF2ZSBubyBjb21tZW50cywgYXBhcnQgZnJvbSBlbmNv
dXJhZ2luZyB5b3UgaW4geW91cg0KPiBlZmZvcnQgdG8gcmVmb3JtIGNvbW1vbiBwcmFjdGlj
ZSB0byBzb21ldGhpbmcgbGVzcyBzbG9wcHkuDQoNClRoYW5rcyA6KQ0KDQo+IEkgdGhpbmsg
eW91DQo+IHdpbGwgZ2V0IHB1c2hiYWNrIGZyb20gcGVvcGxlIHdobyAoMSkgZG9uJ3QgYXBw
cmVjaWF0ZSBob3cgaG9ycmlibGUgdGhlDQo+IEMgc3RyaW5nIGxpYnJhcnkgaXMsIGluIHBh
cnQgYmVjYXVzZSB0aGV5IGhhdmUgbWF6ZWQgdGhlbXNlbHZlcyB3aXRoIHRoZQ0KPiBub3Rp
b24gdGhhdCB0aGUgZW5naW5lZXJzIGF0IHRoZSBCZWxsIExhYnMgQ1NSQyB3ZXJlIGFsbCBp
bmZhbGxpYmxlDQo+IGdpYW50cyB3aG8gZGVpZ25lZCB0byB3YWxrIGFtb25nIHVzIG1vcnRh
bHMgZm9yIGEgd2hpbGU7IGFuZCAoMikgd291bGQNCj4gcmF0aGVyIHdhaXQgdW50aWwgc29t
ZSB0b3RhbCByZXBsYWNlbWVudCBzb2x1dGlvbiBjb21lcyBhbG9uZywgd2hpY2ggb2YNCj4g
Y291cnNlIHRoZXkgd291bGQgb3Bwb3NlIHdpdGggYXQgbGVhc3QgbXVjaCBwYXNzaW9uLg0K
PiANCj4gTmV2ZXJ0aGVsZXNzLCBvbmNlIGluIGEgd2hpbGUgdGhleSdsbCBtYWtlIGdvb2Qg
cG9pbnRzLiAgVGFrZSB0aGF0DQo+IG9wcG9ydHVuaXR5IHRvIGFubmVhbCB0aGUgcXVhbGl0
eSBvZiB5b3VyIGluaXRpYXRpdmUuDQo+IA0KPiBUaGUgc3RhbmRhcmQgSS9PIGxpYnJhcnkg
aXMgYSBkaXNhc3RlciwgdG9vLiAgTXVjaCBtb3JlIGVzdGVlbWVkIHBlb3BsZQ0KPiB0aGFu
IEkgaGF2ZSBtYWRlIHRoaXMgcG9pbnQsIHN1Y2ggYXMgS29ybiBhbmQgVm8sIHdobyBwcmVz
ZW50ZWQgdGhlaXINCj4gY2FzZSBhdCBVU0VOSVggaW4gMTk5MS5bMV0gIE9mIGNvdXJzZSwg
dGhleSBkaWQgdGhlIHNtYXJ0IHRoaW5nIGJhY2sNCj4gdGhlbiBhbmQgZGlkbid0IEZMT1NT
LWxpY2Vuc2UgaXQsIHBvc3NpYmx5IHVuZGVyIGRpcmVjdGlvbiBmcm9tIEFUJlQNCj4gbWFu
YWdlbWVudC4gIFRoYW5rcyB0byB0aGF0IHNocmV3ZCBhZHZpY2UsIHNmaW8uaCBzdG9ybWVk
IHRvIHN1Y2Nlc3MgYW5kDQo+IHViaXF1aXR5IGluc3RlYWQgb2YgYmVpbmcgbmVhcmx5IGZv
cmdvdHRlbi4NCg0KVGhhdCdzIHdoeSBJIHdlbnQgZm9yIHB1YmxpYyBkb21haW4gZm9yIHRo
ZSBBUElzIGFuZCBiYXNpYyBpbXBsZW1lbnRhdGlvbnMsIGFuZCANCkJTRC0zLUNsYXVzZSBm
b3IgdGhlIHN0cmluZ19jb3B5aW5nKDcpIHBhZ2UuICBJJ2QgbGlrZSBpdCB0byBiZSBhcyB3
aWRlc3ByZWFkIGFzIA0KcG9zc2libGUuDQoNCkhvd2V2ZXIsIG15IG93biBsaWJyYXJ5IGlt
cGxlbWVudGF0aW9uIGlzIExHUEwtMy4wLW9yLWxhdGVyLCBhcyBjb3VsZG4ndCBiZSANCm90
aGVyd2lzZS4NCg0KPiANCj4gQnV0IGV2ZW4gYSBwZXJtaXNzaXZlIGxpY2Vuc2UgbWF5IHdl
bGwgaGF2ZSBub3QgYmVlbiBlbm91Z2guICBUaGUNCj4gYXZlcmFnZSBwcm9ncmFtbWVyIHdp
bGwgaGFwcGlseSBkcmluayBmcm9tIGEgcG9vbCBvZiBkaW94aW4gYXMgbG9uZyBhcw0KPiBp
dCBpcyBhIGZhbWlsaWFyIG9uZS4gPg0KPj4+IHdhcyBEYXZpZCBXaGVlbGVyIChubywgdGhl
IG90aGVyIG9uZSkNCj4+DQo+PiBEaWRuJ3Qga25vdyBvZiB0aGUgb3RoZXIgRGF2aWQgV2hl
ZWxlci4NCj4gDQo+IFdlbGwsIERhdmlkIEouIFdoZWVsZXIgKGNvbXB1dGVyIHNjaWVudGlz
dCkgcGFzc2VkIGF3YXkgaW4gMjAwNCwgc28NCj4gcG9zc2libHkgRGF2aWQgQS4gV2hlZWxl
ciAoY29tcHV0ZXIgc2NpZW50aXN0KSBnZXRzIG1pc3Rha2VuIGZvciBoaW0NCj4gbGVzcyBv
ZnRlbiBub3cuDQo+IA0KPiBJJ3ZlIGJlZW4gbWFraW5nIHRoaXMgam9rZSBmb3IgeWVhcnMu
ICBJdCBoYXNuJ3Qgd29ya2VkIG9uY2UuICBMaWtlIHRoZQ0KPiBhdmVyYWdlIHByb2dyYW1t
ZXIsIEkgbGVhcm4gbm90aGluZyBmcm9tIHRoaXMuDQo+IA0KPj4gQWNjb3JkaW5nIHRvIHdp
a2lwZWRpYSwgcGtnLWNvbmZpZygxKSdzIGluaXRpYWwgcmVsZWFzZSBpcyBhbHNvIGZyb20N
Cj4+IDIwMDAuICBTbywgeWVzLCBwcm9iYWJseSBpdCB3YXNuJ3Qgd2lkZWx5IGtub3duIGF0
IHRoZSB0aW1lLg0KPiANCj4gSXQgd2FzIGFuIGlubm9jZW50IHRpbWUsIHdoZW4gcGFja2Fn
aW5nIHdhcyBzdGlsbCB5b3VuZyBhbmQgZXhjaXRpbmcsDQoNCkkgbmVlZCB0byBsZWFybiBw
YWNrYWdpbmcgc29tZSBkYXkuICBJIHNob3VsZCBsZWFybiBEZWJpYW4gcGFja2FnaW5nIHRv
IHBhY2thZ2UgDQp0aGlzIG5ldyBsaWJyYXJ5Li4uDQoNCj4gYW5kIGJlZm9yZSBKYXZhU2Ny
aXB0IHBlb3BsZSBnZXR0aW5nIHBhaWQgYSBsb3QgdG8gd29yayBpbiBlLWNvbW1lcmNlDQo+
IGRlY2lkZWQgdGhleSBjb3VsZCBkbyBpdCBiZXR0ZXIgdGhhbiBldmVyeW9uZSBlbHNlLg0K
PiANCj4gUmVnYXJkcywNCj4gQnJhbmRlbg0KPiANCj4gWzFdIGh0dHBzOi8vd3d3LmNzLnBy
aW5jZXRvbi5lZHUvY291cnNlcy9hcmNoaXZlL2ZhbGw5Ny9jczU5NS9zZmlvLnBzDQoNCkNo
ZWVycywNCkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+
DQo=

--------------bFKk9qvhW80rG0rQg6EMO70z--

--------------ecRReb2ocv8qeGZP00LI8Ui0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOhioAACgkQnowa+77/
2zIOBg/5Af1/OVZzP4N1WvXhss9LzR5j4zjZJsQel+ey30nvGXlCYqobtIr+Y70v
HcqzpYrRu4uWnChGEZ7tJMOegTXRr4bc2N8lGnocAu4mzZRe50OmQqSzdQqJwHDf
Dv1esKmAvrLxnOcotNewHKM4srEUvSOCwmV+EDE/k4jtyfsPfpC4LHOZKn5PyxRV
P+pAnp/YJ4yZuhyzJCC0a1/DXRdKD3l2GW9D5AnlWo2qtoN7J68lOp+Xvz+D50or
/lmz0HbjDMPXc4FOoJ/Ivx91MqzlWGLQChahk+0rFD2H9P6YUyzWlL3NWDqBH8qd
yAramRVNAdAMNn8VqJpWWns4KTDBNe08GG8hOGCqjcjbxzvAj9EIxqntguC0pNLI
u9AXvKYX/5Sz/MDsr+6CRCaTECJ1yGB/+SVKqGyUWZZnufgUIdF39kx58p2n8A9k
3dj1H48Ny+BhzpFo9fNYopDxpAewkhlIz9DO3HGbff7JA6DW5CjX5qYw24F7+RdT
mZ7m5d6JDlHERdm6tX+tvNfWfX/K209LstCfrr+9MSADKRhOmM8XM+pQvkKR1yI3
S6rMMFjDlDyl9Czfvdz/rdpBQLWxkQCJNVlIge+CEc0i2hIuu8Wh8Cgak4WfCCOw
szpc7jnAsysmgARTfp1pmYGJZOuRX/E+tnZ5psU1E+u9qgMWH04=
=j0YY
-----END PGP SIGNATURE-----

--------------ecRReb2ocv8qeGZP00LI8Ui0--
