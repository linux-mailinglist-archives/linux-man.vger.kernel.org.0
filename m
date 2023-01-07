Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DAABF660E7C
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 13:04:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232493AbjAGME6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 07:04:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232473AbjAGME4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 07:04:56 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B990A5C90F
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 04:04:54 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so477943wma.1
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 04:04:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o3Ns7gae5qxo4SB0hRhPjKIJ2fYaLk8jqQvNhqaYGLc=;
        b=ePy5dgpEHvU0urTxFpixF/oKTIL4zQ5s6BgcaVGagecL94M9C9BalAYKzdZj9hkQOh
         7LgiE+T9LqYCTDJdK7my5KQKWr6bl+yg/fM+dVPLlaK0hpT4TklTbFee6OYR0cJ49TIf
         I5ZM37XJk0i+D5JRjTREJaIJkbG+IpIOlvaO8yzGjBTpBGh79oT9aePTYcn3LvdnxFGt
         1iyvHISBkrnoEcF0TxuG5WuO+vAfs6Ov7v+6g9I0OmOFX4M10Qm3u9uIzgyI/wLj0Y+6
         5dEICdS2yPImMS3nhOUzVR7LVC+dNPk/IK/MvWmZ0A7AQIW9FevhZtieF/ewlIwsNJwM
         MaQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=o3Ns7gae5qxo4SB0hRhPjKIJ2fYaLk8jqQvNhqaYGLc=;
        b=OqE9wSRuOHWAISTgbTtcwb8rkbIuV5BFxY6vMepxE7DxNIuMYJ96oel2YFDBeCbOsd
         aofIPX3WM72ZhSWycDy/F5pqAgqr8HSEWiESPKslSV8gYf9Fpcr2zDW+nAPv2SkrNkQf
         q0QdfNOS0bPHtvrOd8EH/+6EJYI/LDm+uhO4n/PtJ0UiRM1oZ9BHKMMhTwXW4Mssn+NN
         t4VG1WIHFGKLskGE0FK8rHCffawiyu6tZ1pfqVXhI0sxyEXc2E72ewcqpeAhb1Bq9Qge
         STj7f1J3i7zlr3L3hyiCsju/cHpe+thYBXRxfFPYzT3sUaIvVnAed3/dJvSq/PI3Zgd6
         H+3Q==
X-Gm-Message-State: AFqh2kqx+ymcB0JY6lDBdPOeVkfp5HrIiqwvEySk24FuPjvB6UAXvfbJ
        F+AZzFkIfh0hSzPz+/3FLYZ7EdeKnZg=
X-Google-Smtp-Source: AMrXdXsxD3Wvpo8KuS769qNqzSSLYj2e0yJ8fpuZcnfFhxtdSarS+XvxgpYyu9Qiq4pFdDHOk7hYVA==
X-Received: by 2002:a05:600c:1f12:b0:3d2:267d:64bd with SMTP id bd18-20020a05600c1f1200b003d2267d64bdmr50336728wmb.3.1673093093186;
        Sat, 07 Jan 2023 04:04:53 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q6-20020a05600c46c600b003d1f3e9df3csm10376415wmo.7.2023.01.07.04.04.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jan 2023 04:04:52 -0800 (PST)
Message-ID: <2e232ee6-907f-376f-5aea-d31ee68872aa@gmail.com>
Date:   Sat, 7 Jan 2023 13:04:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Manual page sections shouting
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>
References: <4ab3e3aa-9b05-765a-ba44-06bf39994d81@gmail.com>
 <20230107101752.p66xbjbojut4azes@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230107101752.p66xbjbojut4azes@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------51QoiX28OaJJZiyg4dVw1gpU"
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------51QoiX28OaJJZiyg4dVw1gpU
Content-Type: multipart/mixed; boundary="------------KQA1550bIEtDcCc30xewBkBr";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>
Message-ID: <2e232ee6-907f-376f-5aea-d31ee68872aa@gmail.com>
Subject: Re: Manual page sections shouting
References: <4ab3e3aa-9b05-765a-ba44-06bf39994d81@gmail.com>
 <20230107101752.p66xbjbojut4azes@illithid>
In-Reply-To: <20230107101752.p66xbjbojut4azes@illithid>

--------------KQA1550bIEtDcCc30xewBkBr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS83LzIzIDExOjE3LCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiBIaSBBbGV4IQ0KPiANCj4gQXQgMjAyMy0wMS0wN1QwMToyNTo1MCswMTAwLCBB
bGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+IEkgYWdyZWUgd2l0aCB5b3UgdGhhdCBJJ2Qg
cHJlZmVyIHRoYXQgc2VjdGlvbiBoZWFkaW5ncyBkaWRuJ3Qgc2hvdXQgYXQNCj4+IHRoZSBy
ZWFkZXIuICBIb3dldmVyLCBJJ3ZlIHdhaXRlZCB0byBkbyBzdWNoIGEgY2hhbmdlLCBiZWNh
dXNlIEknbSBub3QNCj4+IHN1cmUgYWJvdXQgaXQuICBUaGVyZSdzIGEgZ29vZCB0aGluZyBh
Ym91dCBoYXZpbmcgdGhlbSBpbiB1cHBlcmNhc2U6DQo+PiByZWZlcmVuY2VzIHRvIHRoZW0g
YXJlIGFsc28gaW4gdXBwZXJjYXNlLCBhbmQgdGhhdCBtYWtlcyBpdCBlYXN5IHRvDQo+PiBn
cmVwIGZvciB0aGVtIChJIG5lZWQgdG8gZG8gdGhhdCBmcm9tIHRpbWUgdG8gdGltZSkuDQo+
Pg0KPj4gRG8geW91IGhhdmUgYW55IG9waW5pb24gb24gdGhhdD8NCj4gDQo+IFllcy4gIDop
ICBTZWN0aW9uIGhlYWRpbmdzIGFyZSBzdGlsbCBpbiBzZW50ZW5jZSBjYXNlIChjYXBpdGFs
aXplIGZpcnN0DQo+IGxldHRlcikgb3IgdGl0bGUgY2FzZSAoY2FwaXRhbGl6ZSBlYWNoIHdv
cmQgZXhjZXB0IGZvciBhIGZ1enp5IGxpc3Qgb2YNCj4gZXhjZXB0aW9ucyBldmVuIG5hdGl2
ZSBFbmdsaXNoIHNwZWFrZXJzIHN0cnVnZ2xlIHRvIG1hc3RlcikuDQo+IA0KPiBXaGV0aGVy
IHNlbnRlbmNlIG9yIHRpdGxlIGNhc2UgaXMgdXNlZCBpcyBhIHN0eWxlIGNob2ljZSB0aGF0
IEkgZG9uJ3QNCj4gaGF2ZSBhIHByZXNjcmlwdGlvbiBmb3IuICBJbiB0aGUgZ3JvZmYgbWFu
IHBhZ2VzLCBhZnRlciBzb21lIGRpc2N1c3Npb24NCj4gb24gdGhlIGxpc3Qgd2UgbWlncmF0
ZWQgdG8gc2VudGVuY2UgY2FzZS4gIEFzIEkgcmVjYWxsIHRoZXJlIHdhcyBhdA0KPiBsZWFz
dCBvbmUgYWR2b2NhdGUgZm9yIHRpdGxlIGNhc2UgZm9yIHNlY3Rpb24gaGVhZGluZ3MgcHJv
cGVyIChgU0hgKSBhbmQNCj4gc2VudGVuY2UgY2FzZSBmb3Igc3Vic2VjdGlvbiBoZWFkaW5n
cyAoYFNTYCkuDQo+IA0KPiBUaGUgZGlzdGluY3Rpb24gaXMgYWxtb3N0IGludmlzaWJsZSBm
b3Igc3RhbmRhcmQgc2VjdGlvbiBoZWFkaW5ncw0KPiBhbnl3YXk7IHRoZSBvbmx5IGNvbW1v
biBtdWx0aS13b3JkIGhlYWRpbmcgaXMgIlNlZSBhbHNvIjsgdGhhdCBvbmUgaXMNCj4gcHJh
Y3RpY2FsbHkgbmV2ZXIgY3Jvc3MgcmVmZXJlbmNlZCwgYW5kIGl0J3MgYWxtb3N0IGFsd2F5
cyBlYXNpZXIgdG8NCj4gZmluZCBieSBqdXN0IG1hc2hpbmcgU2hpZnQrRyBpbiB0aGUgcGFn
ZXIuDQo+IA0KPiBJZiB5b3UgdHlwZSAiLWkiIGluIGxlc3MoMSksIHRoaXMgd2lsbCB0b2dn
bGUgY2FzZS1pbnNlbnNpdGl2ZSBwYXR0ZXJuDQo+IG1hdGNoaW5nLiAgWW91IGNhbiB0aGVu
IHNlYXJjaCBmb3IgdGhlIHNlY3Rpb24gbmFtZSB3aXRoIGEgbGVhZGluZw0KPiBjYXBpdGFs
IGxldHRlcjsgdGhhdCBpcyB1c3VhbGx5IHJlbGlhYmxlIGZvciBkZXRlY3RpbmcgdGhlIGhl
YWRpbmdzLCBvcg0KPiBjcm9zcyByZWZlcmVuY2VzIHRvIHRoZW0uDQo+IA0KPj4gQWxzbywg
d2hlbiByZWZlcnJpbmcgdG8gdGhlIHNlY3Rpb24gd2l0aGluIGEgcGFnZSwgd291bGQgeW91
IHJlZmVyIGluDQo+PiBsb3dlcmNhc2UsIG9yIHRoZSBmaXJzdC11cHBlci10aGVuLWxvd2Vy
PyAgVXNpbmcgdXBwZXJjYXNlIGlzDQo+PiB1bmFtYmlndW91cywNCj4gDQo+IFRoYXQncyB0
cnVlLCBhbGJlaXQgc2hvdXR5Lg0KPiANCj4+IHdoaWxlIHVzaW5nIGxvd2VyY2FzZSBtaWdo
dCBuZWVkICJzZWN0aW9uIiBuZXh0IHRvIHRoZSBzZWN0aW9uIG5hbWUuDQo+IA0KPiBJbiB0
aGUgZ3JvZmYgbWFuIHBhZ2VzIEkgaGF2ZSBhZG9wdGVkIHRoZSBwcmFjdGljZSBvZiBhbHdh
eXMgcHJlY2VkaW5nDQo+IHRoZSBjcm9zcyByZWZlcmVuY2Ugd2l0aCAic2VjdGlvbiIgb3Ig
InN1YnNlY3Rpb24iIGFzIGFwcHJvcHJpYXRlLCBhbmQNCj4gcXVvdGluZyBpdCB3aXRoIHR5
cG9ncmFwaGVyJ3MgcXVvdGF0aW9uIG1hcmtzIChcKGxxIGFuZCBcKHJxKS4NCj4gDQo+IEkg
Z28gdG8gdGhlIHRyb3VibGUgb2YgZGlzdGluZ3Vpc2hpbmcgc2VjdGlvbnMgZnJvbSBzdWJz
ZWN0aW9ucyBiZWNhdXNlDQo+IHRoZXkgYXJlIGJ5IGRlZmF1bHQgaW5kZW50ZWQgZGlmZmVy
ZW50bHksIGFuZCB0aGF0IGdpdmVzIHBlb3BsZSwNCj4gZXNwZWNpYWxseSB0aG9zZSB3aXRo
IGEgbGl0dGxlIGZhY2lsaXR5IHdpdGggcmVndWxhciBleHByZXNzaW9ucywNCj4gYW5vdGhl
ciB0b29sIHdpdGggd2hpY2ggdG8gbG9jYXRlIHRoZSByZWxldmFudCBtYXRlcmlhbC4NCj4g
DQo+IEZvciBpbnN0YW5jZSwgdGhlIGZvbGxvd2luZyBydWxlcyBvZiB0aHVtYiBhcmUgY3J1
ZGUgYnV0IGVmZmVjdGl2ZToNCj4gDQo+IEZpbmQgYSBzZWN0aW9uIG5hbWVkICJPcHRpb25z
IiBpbiBhIHBhZ2U6DQo+IA0KPiAvXk9wdGlvbnMNCj4gDQo+IEZpbmQgYSBzdWJzZWN0aW9u
IG5hbWVkICJIaXN0b3J5IiBpbiBhIHBhZ2U6DQo+IA0KPiAvXiAgIEhpc3RvcnkNCj4gDQo+
ICh3aGVyZSAzIHNwYWNlcyBsaWUgYmV0d2VlbiBeIGFuZCAiSGlzdG9yeSIpLg0KPiANCj4g
X0lmXyB3ZSBhZGRlZCB5ZXQgYW5vdGhlciBncm9mZiBleHRlbnNpb24gdG8gbWFuKDcpLCBh
bmFsb2dvdXMgdG8NCj4gbWRvYyg3KSdzIGBTeGAsIHdlIGNvdWxkIHN1cHBvcnQgaHlwZXJs
aW5rcyBkaXJlY3RseSB0byBtYW4gcGFnZQ0KPiBzZWN0aW9ucyBhbmQgc3Vic2VjdGlvbnMu
ICAoT24gdGVybWluYWxzLCB3ZSdkIHN0aWxsIG5lZWQgYSB3YXkgdG8gbWFyaw0KPiBsb2Nh
dGlvbnMgaW4gdGhlIHBhZ2UgdGV4dCBhcyBsaW5rIHRhcmdldHMsIGFuZCBmb3IgaXQgdG8g
YmUgcHJhY3RpY2FsbHkNCj4gdXNlZnVsLCBwYWdlcnMgd291bGQgaGF2ZSB0byBncm93IG1v
cmUgZmVhdHVyZXMuICBHaXZlbiB0aGUgYW1vdW50IG9mDQo+IGlkaW9jeSwgcGFydGljdWxh
cmx5IGZyb20gcGVvcGxlIHdobyB0aGluayB0aGF0IGEgVVJMIGluIGEgdGVybWluYWwNCj4g
d2luZG93IGlzIGEgc2VjdXJpdHkgcmlzayBpbiBzb21lIHdheSB0aGF0IGEgVVJMIG9uIGEg
d2ViIHBhZ2UgaXNuJ3QsDQo+IHRoYXQgRWdtb250IEtvYmxpbmdlciBoYXMgaGFkIHRvIHB1
dCB1cCB3aXRoIGluIHByb211bGdhdGluZyBPU0MgOCwgSQ0KPiB3b3VsZCBub3QgY291bnQg
b24gdGhlIGluZnJhc3RydWN0dXJlIGZvciB0aGlzIG1hdGVyaWFsaXppbmcgc29vbi4pICBC
dXQNCj4gZm9yIFBERiBhbGwgdGhlIHBpZWNlcyBhcmUgaW4gcGxhY2U7IHRoZXkganVzdCBu
ZWVkIHNvbWUgZ2x1ZSBpbiB0aGUNCj4gZ3JvZmYgbWFuKDcpIHBhY2thZ2UuDQo+IA0KPj4g
TWF5YmUgaXQncyBub3Qgc28gZWFzeSB0byBkbyB0aGUgY2hhbmdlLg0KPiANCj4gQ2hhbmdp
bmcgdGhlIGxldHRlcmNhc2Ugb2YgdGhlIChzdWIpc2VjdGlvbiBoZWFkaW5ncyBpbiBncm9m
ZidzIH42MCBtYW4NCj4gcGFnZXMgd2FzIG5vdCBkaWZmaWN1bHQuICAic2VkIC1pIiB3YXMg
ZXF1YWwgdG8gdGhlIHRhc2suICA6KQ0KDQpDaGFuZ2luZyB0aGUgc2VjdGlvbiBuYW1lcyBp
cyBlYXN5LiAgSSBhbHJlYWR5IHN0YXJ0ZWQuICBUaGUgZGlmZmljdWx0IHBhcnQgd2lsbCAN
CmJlIGZpbmRpbmcgdGhlIHJlZmVyZW5jZXMgYW5kIGNoYW5naW5nIHRoZW0sIHdoaWNoIGlz
IG1vcmUgdGhhbiBzZWQgLWksIHNpbmNlIA0KSSdsbCBoYXZlIHRvIGRpZmZlcmVudGlhdGUg
YmV0d2VlbiBhY3R1YWwgcmVmZXJlbmNlcywgYW5kIG90aGVyIHRoaW5ncyBjYWxsZWQgDQpO
QU1FLiAgQWxzbywgZGVwZW5kaW5nIG9uIHRoZSBjb250ZXh0LCBJJ2xsIGhhdmUgdG8gcXVv
dGUgYW5kIHByZXBlbmQgd2l0aCANCiJzZWN0aW9uIiAoaWYgbm90IGFscmVhZHkgZG9uZSks
IG9yIGtlZXAgaXQgcmF3IChmb3IgZXhhbXBsZSBpbiB0YWJsZXMpLg0KDQpCdXQgeWVzLCBJ
IHRoaW5rIHRoYXQgc2VlbXMgYSBjb25zaXN0ZW50LWVub3VnaCB3YXkgb2YgaGF2aW5nIHJl
ZmVyZW5jZXMsIHNvIA0KbWF5YmUgdGhlIExpbnV4IG1hbi1wYWdlcyB3aWxsIHN0b3Agc2hv
dXRpbmcgcmF0aGVyIHNvb24gOikNCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCkJUVywgSSBoYWQg
YW5vdGhlciBzaW1pbGFyIGNvbmNlcm4gYWJvdXQgc29tZSBnbG9iYWwgc3R5bGUgZml4IG9m
IHRoYXQgc29ydCANCndoaWxlIHdha2luZyB1cC4gIE5vdyBJIGRvbid0IHJlbWVtYmVyLCBi
dXQgd2hlbiBJIGRvLCBJJ2xsIHNlbmQgeW91IGFuIGVtYWlsIDopDQoNCj4gDQo+IFJlZ2Fy
ZHMsDQo+IEJyYW5kZW4NCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5l
cy8+DQo=

--------------KQA1550bIEtDcCc30xewBkBr--

--------------51QoiX28OaJJZiyg4dVw1gpU
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIyBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO5X9UACgkQnowa+77/
2zIt9A/4swy1oqVqBfrJw5eWsgkoPjikz/K/jV8YdamDW9bxoMviiRmx24KXpQRP
36sZ3kpDODBK7+lAL1MKjafTlIt2IsIKDeE/MVvV5PsPTZcCHWg2Qdoc94nEB0Sa
5NrZl/TMaFOjqR1KEzIyTQddKXJRVBwzy9VhKko85+PJUoDSUjUW/gkoE8j4ACb/
uEHQ/eY9mUVJILKlaqUr2O+iY4Yq1wNpmzhD+u6GAxF0dcgBIQ7pw6hjfaszwdXr
eS/iWQC1qtzjaz+60eUvFUZbfWtQ8JAWK55icunXeJ0ZxoGoWej7oD26ZaeRP5Xo
yMj0E2/mLlLOMShWGdD9ZDvRXkN3DODLT8HZzYR9fr9Y9hvG1AvNRMW1dSybQ+Lx
FfZnJsju/+OWi8tfDBOEh/23DfwZpJ5GWLDh4Y/yb5CLrXYx3fAu/9FvCXGoSnQ4
q3s2Dmze8W8C0yjHif+jWDXDGBkKF4G5hTsnVrKQA1JGoPRGVD6HMbhlcIMORzX0
ygKICITUrpdw9ZDFbVv1rPVxwskvIUbnTJZSDk0/d3UImrzgYl50ZFuntMLPpE7X
wIYFKs89Y8/6OoTtf0bYOaB0gupDgdnum2vNj/IlkoxPtnQC+6WFSeWTGb7wzekV
vW7JH50mN2cGTRG9bN8aa0wTQ14OjKYpPDIgiEbuyoXscStBgA==
=g+Vj
-----END PGP SIGNATURE-----

--------------51QoiX28OaJJZiyg4dVw1gpU--
