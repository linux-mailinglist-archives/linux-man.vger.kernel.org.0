Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0328D64207D
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 00:15:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230407AbiLDXPJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 18:15:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229954AbiLDXPI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 18:15:08 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BABFF58D
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 15:15:06 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id u12so15245665wrr.11
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 15:15:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tOl1/IPgSli3q7ihitofoVL9EwsvZlA0t87rGDPMSws=;
        b=nhj0QKjURFLkSnhzTASqz9cqngNlnOmW42xcOEj5ZBOCwiUuwm0ZeuCxmmb+z0Bfrz
         fEnvaT48dAWcRdnV2EK4CE4vhF0PEuSElP/Yb1AB6EX2dKITvGvZfLFYM3qBtWmOLlYY
         laZvUNsberkElEzzVQmVA7jxpHrnyAuanBhCDt2V3hXTC/N/P12IOdbMdswFxsYfPyBo
         tJAW+QROmSKbvo3vK1JvsEGmEKcENqZYpRVObDT+8gcV1+pwfiNUiWWwEYD0hHZYX+ii
         NyMFSZGKUDB1uQGki5HvGf8HvGR0Q32I6ggAKnJWB5TIuGOgCZT2Kigxw5EBLHKwbh6x
         vBOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tOl1/IPgSli3q7ihitofoVL9EwsvZlA0t87rGDPMSws=;
        b=ip4VE+LI0R6TNycLIA0chnEHmhwbAoZP37u/1rFOBrVZWzxlEnNSo4FZMNtOw4vYvR
         m6MOa3G7AjhGnm9t2NFxMifcA84JwRWD7zg4obGQE9v0iEF8TQImzL5wnisW3pEiod5f
         RPbF87fwV9fKHSP2T4JBEB9J2Q7C0tYmgBfLwcktyimNDokjTYx8+NtY7MyuxInjwPym
         Oe/Pd3zfuuCwElF/fgxiHVr9ukTKPlRwbBqad4lpdtDj9xNT/01iQj+ptMPbJTL8Bd7y
         rsHlc6XjW6Z4OLhSZhLWWUiAzd3MiAME16bsq5NEqNGNvaHSHb0SmM6sRlNJc7+xvDre
         777w==
X-Gm-Message-State: ANoB5pmd3g7vQkJySL5SXNUDh+f9nLiBoBRTC9ITGLpeZW0dr4P40mVZ
        krRHxDGkKwv0VZSJoXqZD1kAIv94ey4=
X-Google-Smtp-Source: AA0mqf5MHAw94oLpg/ydjJ1/q4r615nArtVcO25XYSsQg+2GxgbEx143N9huYhQ54bFftlkqlBlWmg==
X-Received: by 2002:adf:d232:0:b0:242:2b3e:4019 with SMTP id k18-20020adfd232000000b002422b3e4019mr13022433wrh.449.1670195704943;
        Sun, 04 Dec 2022 15:15:04 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d8-20020a05600c34c800b003cf4eac8e80sm19657382wmq.23.2022.12.04.15.15.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 15:15:04 -0800 (PST)
Message-ID: <cbce8940-0de5-da04-a7d9-ae4bff499781@gmail.com>
Date:   Mon, 5 Dec 2022 00:14:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page wcsncpy.3
Content-Language: en-US
To:     Sam James <sam@gentoo.org>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        GNU C Library <libc-alpha@sourceware.org>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090724.GA1249@Debian-50-lenny-64-minimal>
 <dbe4f048-4522-fcd2-3edf-ff192804c076@gmail.com>
 <EC7619DA-5D2E-4738-97D2-9A98D4108A02@gentoo.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <EC7619DA-5D2E-4738-97D2-9A98D4108A02@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------GlfjDrep0vUGbMlswvN9aTal"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------GlfjDrep0vUGbMlswvN9aTal
Content-Type: multipart/mixed; boundary="------------x0Q5f1IOJNgbwICYen7crqlD";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Sam James <sam@gentoo.org>
Cc: Helge Kreutzmann <debian@helgefjell.de>,
 GNU C Library <libc-alpha@sourceware.org>, mario.blaettermann@gmail.com,
 linux-man@vger.kernel.org
Message-ID: <cbce8940-0de5-da04-a7d9-ae4bff499781@gmail.com>
Subject: Re: Issue in man page wcsncpy.3
References: <20221204090724.GA1249@Debian-50-lenny-64-minimal>
 <dbe4f048-4522-fcd2-3edf-ff192804c076@gmail.com>
 <EC7619DA-5D2E-4738-97D2-9A98D4108A02@gentoo.org>
In-Reply-To: <EC7619DA-5D2E-4738-97D2-9A98D4108A02@gentoo.org>

--------------x0Q5f1IOJNgbwICYen7crqlD
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU2FtIQ0KDQpPbiAxMi81LzIyIDAwOjA2LCBTYW0gSmFtZXMgd3JvdGU6DQo+IA0KPiAN
Cj4+IE9uIDQgRGVjIDIwMjIsIGF0IDIwOjQyLCBBbGVqYW5kcm8gQ29sb21hciB2aWEgTGli
Yy1hbHBoYSA8bGliYy1hbHBoYUBzb3VyY2V3YXJlLm9yZz4gd3JvdGU6DQo+Pg0KPj4gSGkg
SGVsZ2UsIGdsaWJjIGRldmVsb3BlcnMsDQo+Pg0KPj4gT24gMTIvNC8yMiAxMDowNywgSGVs
Z2UgS3JldXR6bWFubiB3cm90ZToNCj4+PiBXaXRob3V0IGZ1cnRoZXIgYWRvLCB0aGUgZm9s
bG93aW5nIHdhcyBmb3VuZDoNCj4+PiBJc3N1ZTogICAgSXMgdGhlICJMIiBpbiB0aGUgYnJh
Y2tldCAoZm9yIHRoZSBOVUxMIGNoYXJhY3RlcikgY29ycmVjdD8NCj4+PiAiVGhlIEI8d2Nz
bmNweT4oKSAgZnVuY3Rpb24gaXMgdGhlIHdpZGUtY2hhcmFjdGVyIGVxdWl2YWxlbnQgb2Yg
dGhlIg0KPj4+ICJCPHN0cm5jcHk+KDMpICBmdW5jdGlvbi4gIEl0IGNvcGllcyBhdCBtb3N0
IEk8bj4gd2lkZSBjaGFyYWN0ZXJzIGZyb20gdGhlIg0KPj4+ICJ3aWRlLWNoYXJhY3RlciBz
dHJpbmcgcG9pbnRlZCB0byBieSBJPHNyYz4sIGluY2x1ZGluZyB0aGUgdGVybWluYXRpbmcg
bnVsbCINCj4+PiAid2lkZSBjaGFyYWN0ZXIgKExcXChhcVxcZTBcXChhcSksIHRvIHRoZSBh
cnJheSBwb2ludGVkIHRvIGJ5IEk8ZGVzdD4uIg0KPj4+ICJFeGFjdGx5IEk8bj4gd2lkZSBj
aGFyYWN0ZXJzIGFyZSB3cml0dGVuIGF0IEk8ZGVzdD4uICBJZiB0aGUgbGVuZ3RoIg0KPj4+
ICJJPHdjc2xlbihzcmMpPiBpcyBzbWFsbGVyIHRoYW4gSTxuPiwgdGhlIHJlbWFpbmluZyB3
aWRlIGNoYXJhY3RlcnMgaW4gdGhlIg0KPj4+ICJhcnJheSBwb2ludGVkIHRvIGJ5IEk8ZGVz
dD4gYXJlIGZpbGxlZCB3aXRoIG51bGwgd2lkZSBjaGFyYWN0ZXJzLiAgSWYgdGhlIg0KPj4+
ICJsZW5ndGggSTx3Y3NsZW4oc3JjKT4gaXMgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvIEk8
bj4sIHRoZSBzdHJpbmcgcG9pbnRlZCINCj4+PiAidG8gYnkgSTxkZXN0PiB3aWxsIG5vdCBi
ZSB0ZXJtaW5hdGVkIGJ5IGEgbnVsbCB3aWRlIGNoYXJhY3Rlci4iDQo+Pg0KPj4gQXMgYW4g
dW5yZWxhdGVkIG5vdGUuICBJJ3ZlIGhhZCB0aGlzIHJ1bm5pbmcgaW4gbXkgbWluZCBmb3Ig
c29tZSB0aW1lLi4uIHlvdXIgdmFyaW91cyBidWcgcmVwb3J0cyBmb3Igc3RybmNweSgzKSBh
bmQgc2ltaWxhciB3aWRlIGNoYXJhY3RlciBmdW5jdGlvbnMgaGF2ZSB0cmlnZ2VyZWQgdGhv
c2UgdGhvdWd0cy4NCj4+DQo+PiBJJ20gZ29pbmcgdG8gbWFyayBzdHJuY3B5KDMpIGFuZCBz
aW1pbGFyIGZ1bmN0aW9ucyBhcyBkZXByZWNhdGVkLCBldmVuIGlmIG5vIGxpYmMgb3Igc3Rh
bmRhcmQgaGFzIGRvbmUgc28uICBUaGVyZSdzIHdpZGUgYWdyZWVtZW50IChhdCBsZWFzdCBp
biBzb21lIGNvbW11bml0aWVzKSB0aGF0IHN0cm5jcHkoMykgX2lzIGV2aWxfLiAgVGhlcmUn
cyBzaW1wbHkgbm8gdXNlIGZvciBpdC4NCj4+DQo+IA0KPiBQbGVhc2UgZG9uJ3QgZG8gdGhp
cyB1bmlsYXRlcmFsbHkuIEFwcGxlIGRpZCB0aGlzIHVuaWxhdGVyYWxseSBmb3Igc3ByaW50
ZiB3aGljaCBoYXMgY2F1c2VkIHByb2JsZW1zLCBhcyB3ZWxsLg0KPiANCj4gSXQncyBnb2lu
ZyB0byBjYXVzZSBjb25mdXNpb24gYXMgcGVvcGxlIHdpbGwgaW5ldml0YWJseSBhc2sgd2hl
cmUvd2hvIGRlcHJlY2F0ZWQgaXQgYW5kIHRoZXJlIHdvbid0DQo+IGJlIGEgc29saWQgYW5z
d2VyLg0KDQpJJ20gd3JpdGluZyB1cCBhIHNvbGlkIGFuc3dlciBmb3IgdGhhdC4gIFBsZWFz
ZSBjaGVjayANCjxodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vZG9jcy9tYW4tcGFn
ZXMvbWFuLXBhZ2VzLmdpdC90cmVlL21hbjMvc3RybmNweS4zPi4NCg0KVGhlIG1hbnVhbCBw
YWdlIGlzIG5vdyBhbGwgYWJvdXQgd2h5IGl0IHNob3VsZCBuZXZlciBiZSB1c2VkLiAgSW4g
ZmFjdCwgSSB3YXMgDQpnb2luZyB0byBkbyB0aGF0IHdpdGhvdXQgYWRkaW5nIHRoZSBbW2Rl
cHJlY2F0ZWRdXSBhdHRyaWJ1dGUgdG8gdGhlIFNZTk9QU0lTLCANCmJ1dCBJIGNvbnZpbmNl
ZCBteXNlbGYgdGhhdCBpdCdzIG5lY2Vzc2FyeSBhZnRlciB3cml0aW5nIHRoYXQuDQoNCkkn
bGwgY29weSBoZXJlIHRoZSBjdXJyZW50IHN0YXRlIG9mIHRoZSBwYWdlLiAgSWYgdGhlcmUn
cyBnZW5lcmFsIGNvbmNlcm4gYWJvdXQgDQp0aGUgYXR0cmlidXRlLCBJIGNhbiByZW1vdmUg
aXQgd2hpbGUga2VlcGluZyBldmVyeXRoaW5nIGVsc2UgYWdhaW5zdCBpdHMgdXNlOyBJIA0K
ZG9uJ3QgdGhpbmsgaXQgd2lsbCBiZSBhIGJpZyBjaGFuZ2UuICBCdXQgSSBob3BlIHRoaXMg
Y29udmluY2VzIHJlYWRlcnMgYWJvdXQgaXQgDQpiZWluZyBoYXJtZnVsLg0KDQoNCg0Kc3Ry
bmNweSgzKSAgICAgICAgICAgICAgIExpYnJhcnkgRnVuY3Rpb25zIE1hbnVhbCAgICAgICAg
ICAgICAgc3RybmNweSgzKQ0KDQpOQU1FDQogICAgICAgIHN0cm5jcHkgIC0gIGNvcHkgIGEg
c3RyaW5nIGludG8gYSBmaXhlZOKAkGxlbmd0aCBidWZmZXIgYW5kIHplcm8gdGhlDQogICAg
ICAgIHJlc3Qgb2YgaXQNCg0KTElCUkFSWQ0KICAgICAgICBTdGFuZGFyZCBDIGxpYnJhcnkg
KGxpYmMsIC1sYykNCg0KU1lOT1BTSVMNCiAgICAgICAgI2luY2x1ZGUgPHN0cmluZy5oPg0K
DQogICAgICAgIFtbZGVwcmVjYXRlZF1dIGNoYXIgKnN0cm5jcHkoY2hhciBkZXN0W3Jlc3Ry
aWN0IC5uXSwNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBj
aGFyIHNyY1tyZXN0cmljdCAubl0sIHNpemVfdCBuKTsNCg0KREVTQ1JJUFRJT04NCiAgICAg
ICAgTm90ZTogVGhpcyBpcyBub3QgdGhlIGZ1bmN0aW9uIHlvdSB3YW50IHRvIHVzZS4gIEZv
ciAgc2FmZSAgc3RyaW5nDQogICAgICAgIGNvcHlpbmcsICBzZWUgIHN0cmxjcHkoM2JzZCku
ICAgRm9yIGNvcHlpbmcgYSBzdHJpbmcgaW50byBhIGZpeGVk4oCQDQogICAgICAgIGxlbmd0
aCBidWZmZXIgd2l0aCB6ZXJvaW5nIG9mIHRoZSByZXN0LCBzZWUgc3RwbmNweSgzKS4NCg0K
ICAgICAgICBUaGUgc3RybmNweSgpIGNvcGllcyBhdCBtb3N0IG4gYnl0ZXMgb2Ygc3JjLCBh
bmQgZmlsbHMgdGhlIHJlc3Qgb2YNCiAgICAgICAgdGhlIGRlc3QgYnVmZmVyIHdpdGggbnVs
bCBieXRlcy4gIFdhcm5pbmc6IElmICB0aGVyZSAgaXMgIG5vICBudWxsDQogICAgICAgIGJ5
dGUgIGFtb25nICB0aGUgIGZpcnN0ICBuIGJ5dGVzIG9mIHNyYywgdGhlIHN0cmluZyBwbGFj
ZWQgaW4gZGVzdA0KICAgICAgICB3aWxsIG5vdCBiZSBudWxs4oCQdGVybWluYXRlZC4NCg0K
ICAgICAgICBBIHNpbXBsZSBpbXBsZW1lbnRhdGlvbiBvZiBzdHJuY3B5KCkgbWlnaHQgYmU6
DQoNCiAgICAgICAgICAgIGNoYXIgKg0KICAgICAgICAgICAgc3RybmNweShjaGFyICpkZXN0
LCBjb25zdCBjaGFyICpzcmMsIHNpemVfdCBuKQ0KICAgICAgICAgICAgew0KICAgICAgICAg
ICAgICAgIGJ6ZXJvKGRlc3QsIG4pOw0KICAgICAgICAgICAgICAgIG1lbWNjcHkoZGVzdCwg
c3JjLCAnXDAnLCBuKTsNCg0KICAgICAgICAgICAgICAgIHJldHVybiBkZXN0Ow0KICAgICAg
ICAgICAgfQ0KDQogICAgICAgIFRoZSBvbmx5IHZhbGlkIHVzZSBvZiBzdHJuY3B5KCkgaXMg
dG8gY29weSBhIEMgc3RyaW5nIHRvIGEgIGZpeGVk4oCQDQogICAgICAgIGxlbmd0aCAgYnVm
ZmVyIHdoaWxlIGVuc3VyaW5nIHRoYXQgdW51c2VkIGJ5dGVzIGluIHRoZSBkZXN0aW5hdGlv
bg0KICAgICAgICBidWZmZXIgYXJlIHplcm9lZCBvdXQgKHBlcmhhcHMgdG8gcHJldmVudCBp
bmZvcm1hdGlvbiBsZWFrcyBpZiB0aGUNCiAgICAgICAgYnVmZmVyIGlzIHRvIGJlIHdyaXR0
ZW4gdG8gbWVkaWEgb3IgdHJhbnNtaXR0ZWQgdG8gYW5vdGhlciBwcm9jZXNzDQogICAgICAg
IHZpYSBhbiBpbnRlcnByb2Nlc3MgY29tbXVuaWNhdGlvbiB0ZWNobmlxdWUpLiAgQnV0ICBz
dHBuY3B5KDMpICBpcw0KICAgICAgICBiZXR0ZXIgZm9yIHRoaXMgcHVycG9zZSwgc2luY2Ug
aXQgZGV0ZWN0cyB0cnVuY2F0aW9uLiAgU2VlIENBVkVBVFMNCiAgICAgICAgYmVsb3cuDQoN
ClJFVFVSTiBWQUxVRQ0KICAgICAgICBUaGUgc3RybmNweSgpIGZ1bmN0aW9uIHJldHVybnMg
YSBwb2ludGVyIHRvIHRoZSBkZXN0aW5hdGlvbiBidWZmZXINCiAgICAgICAgZGVzdC4NCg0K
QVRUUklCVVRFUw0KICAgICAgICBGb3IgIGFuIGV4cGxhbmF0aW9uIG9mIHRoZSB0ZXJtcyB1
c2VkIGluIHRoaXMgc2VjdGlvbiwgc2VlIGF0dHJpYuKAkA0KICAgICAgICB1dGVzKDcpLg0K
ICAgICAgICDilIzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilKzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilKzilIDilIDilIDilIDilIDilIDilIDilIDilIDilJANCiAgICAg
ICAg4pSCSW50ZXJmYWNlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg4pSCIEF0dHJp
YnV0ZSAgICAg4pSCIFZhbHVlICAg4pSCDQogICAgICAgIOKUnOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUvOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUvOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUpA0KICAgICAgICDilIJzdHJuY3B5KCkgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICDilIIgVGhyZWFkIHNhZmV0eSDilIIgTVTigJBTYWZlIOKUgg0K
ICAgICAgICDilJTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilLTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilLTilIDilIDilIDilIDilIDilIDilIDilIDilIDilJgNCg0KU1RB
TkRBUkRTDQogICAgICAgIFBPU0lYLjHigJAyMDAxLCBQT1NJWC4x4oCQMjAwOCwgQzg5LCBD
OTksIFNWcjQsIDQuM0JTRC4NCg0KQ0FWRUFUUw0KICAgICAgICBzdHJuY3B5KCkgaGFzIGEg
bWlzbGVhZGluZyBuYW1lLiAgSXQgZG9lc27igJl0IHByb2R1Y2UgYSAgKG51bGzigJB0ZXLi
gJANCiAgICAgICAgbWluYXRlZCkgIHN0cmluZzsgIGFuZCAgaXQgIHNob3VsZCAgbmV2ZXIg
IGJlIHVzZWQgZm9yIHByb2R1Y2luZyBhDQogICAgICAgIHN0cmluZy4NCg0KICAgICAgICBJ
dCBjYW7igJl0IGRldGVjdCB0cnVuY2F0aW9uLiAgSXTigJlzIHByb2JhYmx5ICBiZXR0ZXIg
IHRvICBleHBsaWNpdGx5DQogICAgICAgIGNhbGwgIGJ6ZXJvKDMpICBhbmQgbWVtY2NweSgz
KSwgb3Igc3RwbmNweSgzKSBzaW5jZSB0aGV5IGFsbG93IGRl4oCQDQogICAgICAgIHRlY3Rp
bmcgdHJ1bmNhdGlvbi4NCg0KU0VFIEFMU08NCiAgICAgICAgYnplcm8oMyksIG1lbWNjcHko
MyksIHN0cG5jcHkoMyksIHN0cmluZygzKSwgd2NzbmNweSgzKQ0KDQpMaW51eCBtYW7igJBw
YWdlcyAodW5yZWxlYXNlZCkgICAgICAoZGF0ZSkgICAgICAgICAgICAgICAgICAgICAgIHN0
cm5jcHkoMykNCg0KPiBBbmQgaWYgd2UgY2FuJ3QgZ2V0IGEgbGliYyB0byBhZ3JlZSB0byBk
ZXByZWNhdGUgaXQgYXMgd2VsbCwgdGhlbiBkb2luZyBpdCBpbiB0aGUgbWFuDQo+IHBhZ2Vz
IGlzIHdyb25nLiBFdmVuIGlmIEkgdW5kZXJzdGFuZCB0aGUgc3Bpcml0IG9mIHRoZSBpZGVh
Lg0KDQpJIGhvcGUgdGhpcyBjYW4gY29udmluY2Ugc29tZW9uZSBpbiBnbGliYyA6KQ0KSWYg
dGhlcmUncyBjb25zZW5zdXMgYWdhaW5zdCBtYXJraW5nIGl0IGFzIFtbZGVwcmVjYXRlZF1d
LCBJJ2xsIHJldmVydCB0aGF0IGJpdCANCmJlZm9yZSB0aGUgbmV4dCByZWxlYXNlIGxhdGVy
IHRoaXMgbW9udGguDQoNCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gDQo+IEJlc3QsDQo+IHNh
bQ0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------x0Q5f1IOJNgbwICYen7crqlD--

--------------GlfjDrep0vUGbMlswvN9aTal
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmONKegACgkQnowa+77/
2zI/ww/9F1FM8bf/npbRBz/Wzfnhek2goo50AaUBG7kbF3nqWPsjVFlchWcWJAFk
URRxwKA34gaVDkeoeD2uV9IYPJ+3dmQiwVaONbTiIHzILV/cN//KXHN5iXCgNeLH
N7DclTQWv/a4dlW+wUs8oEobsKCzz5wVlMjVsgsJDyPgGQxsVGeqJwSa3L1BvF34
5SOgVppWj7Gq8gxknv/T1ggPr3qIs8ijFHJ6UudxwoQ6CgklZ5G1R69xkmNSdLwO
Sl62vPc77rvPYQ7QsO0r6iwofezrueWUoRmgXMMkOxozs+sg85adZsOGIY4IeuXX
mpIH9wAJOcQKxlQxUhsq0l1yzmbjMsItNBIYh2sJf4t4OAsv/Dq+7zKQfzJIjd8U
3aswLrnMQb+y62PiIDevgxhwR5rFZrGqFWd3k5s3iBG+h3wRFua0LwB+U8pj+HF9
5340tH7/FxdPrNeDv7Fl0l6zvl4NgnTV/TDv9fFl0crEPbU40XJDU6E/0k3agYgi
l0C+s3nn9DRhw0T8UlTcnV1eHy51JYsvknLcV3LqdjcU27IH29GpYgTrsA5t1yIm
/Bot804kWDskMUv8L229YfNr/qdh5JvwKNpAFDpQgs7fiIglfaKLbbLwkgrod+Lk
PjJxFLfWK7qv7jMQEn1FOaeonU54Sf9kwfFhJ0Ldo3Rs6xMWK5Y=
=bO2s
-----END PGP SIGNATURE-----

--------------GlfjDrep0vUGbMlswvN9aTal--
