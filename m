Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14630624E9B
	for <lists+linux-man@lfdr.de>; Fri, 11 Nov 2022 00:55:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229907AbiKJXze (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 18:55:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231511AbiKJXzc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 18:55:32 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 029685F853
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 15:55:29 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id ay14-20020a05600c1e0e00b003cf6ab34b61so4568604wmb.2
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 15:55:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EKE4iQqxdFNFRZ12uHyxzOZTFiYeZdT33p8JSEdeBp4=;
        b=cuh0G7ICB8l+xsr1wrzDBUgKCg0Jt2MTltVM7qIo0iZF5aL/Pv+YCJjZnKo8EdIsKP
         TAIt7/JEiitFvw6u6Z9hvlqZzqmYX26vIiEku2xhsf++lYJNIwtTYJbnRszm8D9K/dVB
         F01J339RIJut2pIqEfdGDraeL6kvUkOb5mZX/jzWuXJ+SLOXjR8KmsSIo9VqWp835cxE
         ScFrqKSDnziD716HitBdrz3xuZ5+AgyWUJ2ow6ONOHCBnZ091efx/bBZ7z/691FvhgYb
         dv/Di6XtbKUiI4Tb7KxBRj2uUsDCrgR1jXhQGvMZwoYD0laTS6aQSAOKxCOI+6lSdCKS
         M6yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EKE4iQqxdFNFRZ12uHyxzOZTFiYeZdT33p8JSEdeBp4=;
        b=0ctGUN1WKAUM1HFphSDl64nJHXeE0+PjIVhDuM8CHY4GpML4InqHc2WNmogk+Ik9Qq
         E08bc/jrKcfMlBEK6sZqonDNJfDYOYqWXMFRhf1H7BYiBHDBlvakm8WWtn6oZ3fIYuFn
         juj6W9epRRuqCpXuwyvKWHRaR3tsg3WYaHJjQrt4kO/SgytkzJ4pzFF1yQzqhSYHNzYk
         48jmOzJfcUjmHYIdh/Ds8jnrzYaGyzdYZ1uoCqVJBAgoFRAqNdwh6zdbwypmZWkAJmpV
         OceYFzFcHjZF5aknBHvsb0xeYPBKJ1Rrluxw0U9xMusriw2PQYVtatIAGDrYpgMnVtj1
         C5og==
X-Gm-Message-State: ACrzQf2hkGeMzUVa9MiLm032uYvzt4kM3/MT04Xzh05UVnvL10QZ13Qa
        iHriXHhjBHA9itf9MMmhMlw=
X-Google-Smtp-Source: AMsMyM4/6PBDT2xTz/IOKMLK622FLkQFLNnS0WiDqXEO6ZxF4EWSbSDiiV9+AoWadyXivuos674mAQ==
X-Received: by 2002:a7b:cc13:0:b0:3cf:8297:d61 with SMTP id f19-20020a7bcc13000000b003cf82970d61mr34108048wmh.160.1668124527450;
        Thu, 10 Nov 2022 15:55:27 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id e12-20020adffd0c000000b00236576c8eddsm448894wrr.12.2022.11.10.15.55.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 15:55:26 -0800 (PST)
Message-ID: <8f7162fd-cefb-dc31-cb0f-ba4b76ca5011@gmail.com>
Date:   Fri, 11 Nov 2022 00:55:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: MR macro 4th argument (was: [PATCH] Various pages: SYNOPSIS: Use
 VLA syntax in function parameters)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     groff <groff@gnu.org>, Ingo Schwarze <schwarze@usta.de>,
        linux-man@vger.kernel.org
References: <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <20221110094033.ptpfsqpvvx2yd5xs@illithid>
 <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>
 <01da77c7-fed2-0fc1-ae6a-770885057a27@gmail.com>
 <5e3a103d-2aff-511a-e819-96dafb640c24@gmail.com>
 <20221110225524.hiojzgiiid5d3k65@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221110225524.hiojzgiiid5d3k65@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------XG54qm42DGSy4GblWMU8YgIN"
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
--------------XG54qm42DGSy4GblWMU8YgIN
Content-Type: multipart/mixed; boundary="------------3PZ0eXguOFF50E0skpK3g1Rv";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff <groff@gnu.org>, Ingo Schwarze <schwarze@usta.de>,
 linux-man@vger.kernel.org
Message-ID: <8f7162fd-cefb-dc31-cb0f-ba4b76ca5011@gmail.com>
Subject: Re: MR macro 4th argument (was: [PATCH] Various pages: SYNOPSIS: Use
 VLA syntax in function parameters)
References: <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <20221110094033.ptpfsqpvvx2yd5xs@illithid>
 <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>
 <01da77c7-fed2-0fc1-ae6a-770885057a27@gmail.com>
 <5e3a103d-2aff-511a-e819-96dafb640c24@gmail.com>
 <20221110225524.hiojzgiiid5d3k65@illithid>
In-Reply-To: <20221110225524.hiojzgiiid5d3k65@illithid>

--------------3PZ0eXguOFF50E0skpK3g1Rv
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMTEvMTAvMjIgMjM6NTUsIEcuIEJyYW5kZW4gUm9iaW5zb24g
d3JvdGU6DQo+IEhpIEFsZXgsDQo+IA0KPiBBdCAyMDIyLTExLTEwVDE5OjA0OjQ2KzAxMDAs
IEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPj4gT2YgY291cnNlIEkgZm9yZ290IHRvIHJl
bmFtZSB0aGUgdGl0bGUsIGFuZCB0byBhZ2cgZ3JvZmZALiAgTmljZS4NCj4gDQo+IEl0IGdh
dmUgbWUgdGltZSB0byByZXBseSB0byB0aGlzIG9uZS4gIDopDQoNCjopDQoNClsuLi5dDQoN
Cj4+IFRoZSBiaWcgaXNzdWUgaXMgdGhhdCB5b3VyIE1SIGRvZXNuJ3Qgc3VwcG9ydCBsZWFk
aW5nIHRleHQ6DQo+Pg0KPj4gICAgICAgICAgLk1SIHBhZ2XigJB0aXRsZSBtYW51YWzigJBz
ZWN0aW9uIFt0cmFpbGluZ+KAkHRleHRdDQo+Pg0KPj4gSSByZW1lbWJlciB3ZSBoYWQgdGhp
cyBkaXNjdXNzaW9uIGFib3V0IHdoYXQgdG8gZG8gd2l0aCBpdC4gIEEgNHRoDQo+PiBhcmd1
bWVudD8gIFRoZXJlJ3MgYWxzbyBjb25mbGljdCB3aXRoIGEgaHlwb3RoZXRpY2FsIGxpbmsg
dGhhdCB3ZQ0KPj4gbWlnaHQgd2FudCB0byBhZGQgbGF0ZXIuDQo+Pg0KPj4gTXkgb3Bpbmlv
biBpcyB0aGF0IHRoZSA0dGggYXJndW1lbnQgc2hvdWxkIGJlIHRoZSBsZWFkaW5nIHRleHQu
DQo+PiBBc2tpbmcgdG8gdXNlIHRoZSBlc2NhcGUgKHdhcyBpdCBcYz8pIHNlcXVlbmNlIHRv
IHdvcmthcm91bmQgdGhhdA0KPj4gbGltaXRhdGlvbiBpcyBub3QgdmVyeSBuaWNlLiAgIEVz
cGVjaWFsbHkgZm9yIHNjcmlwdGluZyB0aGUgY2hhbmdlLg0KPiANCj4gSGVyZSdzIHdoYXQg
SSBkaWQgZm9yIGdyb2ZmLg0KPiANCj4gY29tbWl0IDJhYjBkYWNiOTU4NjNhMmUzNDdkMDZj
Zjk3MDY3NmM3NGM3ODRjZTINCj4gQXV0aG9yOiBHLiBCcmFuZGVuIFJvYmluc29uIDxnLmJy
YW5kZW4ucm9iaW5zb25AZ21haWwuY29tPg0KPiBEYXRlOiAgIEZyaSBPY3QgOCAwMDo0Njo0
MSAyMDIxICsxMTAwDQo+IA0KPiAgICAgIFttYW4gcGFnZXNdOiBNaWdyYXRlIG1hbig3KSBj
cm9zcyByZWZzIHRvIGBNUmAuDQo+IA0KPiAgICAgICAjIEhhbmRsZSBzaW1wbGVzdCBjYXNl
OiAiLklSIGZvbyAoMSkiLg0KPiAgICAgIHMvXi5bQkldUiBcKFxcJVwpKlwoW0BfWzphbG51
bTpdXFwtXVwrXCkgKFwoQE1BTlsxNTddRVhUQFwpKSQvLk1SIFwyIFwzLw0KPiAgICAgIHMv
Xi5bQkldUiBcKFxcJVwpKlwoW0BfWzphbG51bTpdXFwtXVwrXCkgKFwoWzEtOGEtel1cK1wp
KSQvLk1SIFwyIFwzLw0KPiAgICAgICAjIEhhbmRsZSBjYXNlOiB0cmFpbGluZyBwdW5jdXRh
dGlvbiwgZS5nLiwgIi5JUiBmb28gKDEpLCIuDQo+ICAgICAgcy9eLltCSV1SIFwoXFwlXCkq
XChbQF9bOmFsbnVtOl1cXC1dXCtcKSAoXChATUFOWzE1N11FWFRAXCkpXChbXls6c3BhY2U6
XV1cK1wpLy5NUiBcMiBcMyBcNC8NCj4gICAgICBzL14uW0JJXVIgXChcXCVcKSpcKFtAX1s6
YWxudW06XVxcLV1cK1wpIChcKFsxLThhLXpdXCtcKSlcKFteWzpzcGFjZTpdXVwrXCkvLk1S
IFwyIFwzIFw0Lw0KPiAgICAgICAjIEhhbmRsZSBjYXNlOiAzcmQrIGFyZ3VtZW50cyBvciB0
cmFpbGluZyBjb21tZW50cy4gIFRoaXMgY2FzZSBpcyByYXJlDQo+ICAgICAgICMgYW5kIHdp
bGwgcmVxdWlyZSBtYW51YWwgZml4dXAgaWYgdGhlcmUgYXJlIDQrIGFyZ3VtZW50cyB0byBN
Ui4gIFVzZQ0KPiAgICAgICAjIGdyb2ZmIC1tYW4gLXJDSEVDS1NUWUxFPTEgdG8gaGF2ZSB0
aGVtIGF1dG9tYXRpY2FsbHkgcmVwb3J0ZWQuDQo+ICAgICAgcy9eLltCSV1SIFwoXFwlXCkq
XChbQF9bOmFsbnVtOl1cXC1dXCtcKSAoXChATUFOWzE1N11FWFRAXCkpXCggLipcKS8uTVIg
XDIgXDNcNC8NCj4gICAgICBzL14uW0JJXVIgXChcXCVcKSpcKFtAX1s6YWxudW06XVxcLV1c
K1wpIChcKFsxLThhLXpdXCtcKSlcKCAuKlwpLy5NUiBcMiBcM1w0Lw0KPiANCj4gWW91IGNh
biBpZ25vcmUgdGhlICdNQU5bMTU3XUVYVCcgbGluZXM7IHRoZXkgYXJlIHJlbGV2YW50IG9u
bHkgdG8NCj4gd2l0aGluLWdyb2ZmIHBhZ2VzIChiZWNhdXNlIGFsbCBvZiBvdXIgbWFuIHBh
Z2VzIHVuZGVyZ28gc2VkLXByb2Nlc3NpbmcNCj4gdG8gYmUgcHJlcGFyZWQgZm9yIGluc3Rh
bGxhdGlvbikuDQoNCkhtbSwgd2lsbCBuZWVkIHRvIHBhcnNlIHRoYXQuICBBbnl3YXksIEkg
dGhpbmsgbm93IHRoYXQgSSBoYXZlIHRoZSBNUiB3aXRoIDQgDQphcmd1bWVudHMsIG1vdmlu
ZyB0aGUgNHRoIHRvIHRoZSBwcmV2aW91cyBsaW5lIHdpdGggc2VkIGFuZCBOIHNob3VsZCBu
b3QgYmUgdGhhdCANCmRpZmZpY3VsdC4NCg0KPiANCj4+IElmIHlvdSB3YW50IGEgNXRoIGFy
Z3VtZW50IGZvciBhIFVSSSwgeW91IGNhbiBzcGVjaWZ5IHRoZSBsZWFkaW5nIHRleHQNCj4+
IGFzICIiLCB3aGljaCBpcyBub3QgbXVjaCBvZiBhbiBpc3N1ZS4gIEFuZCB5b3Uga2VlcCB0
aGUgdHJhaWxpbmcgdGV4dA0KPj4gYW5kIHRoZSBsZWFkaW5nIG9uZSB0b2dldGhlci4NCj4+
DQo+PiBXaGF0IGFyZSB5b3VyIHRob3VnaHRzPyAgV2hhdCBzaG91bGQgd2UgZG8/DQo+IA0K
PiBJIGFtIHJlbHVjdGFudCB0byBleHRlbmQgdGhlIGludGVyZmFjZSBvZiBgTVJgIGF0IHRo
aXMgcG9pbnQgYmVjYXVzZSBhcw0KPiBpdCBpcyBpdCBoYXMgdHdvIG5pY2UgcHJvcGVydGll
czogaXQgYWxpZ25zIHdpdGggbWRvYyg3KSdzIGBYcmAgbWFjcm8NCj4gYW5kIHdpdGggUGxh
biA5IGZyb20gVXNlciBTcGFjZSB0cm9mZidzIGBNUmAsIHdoaWNoIGRpZCBpdCBmaXJzdC4N
Cg0KV2VsbCwgYmVpbmcgYSBjb21wYXRpYmxlIGV4dGVuc2lvbiB0byB0aGUgb3RoZXJzIGlz
IG5vdCB0aGF0IGJhZC4gIEhvdyBkb2VzIA0KbWRvYyg3KSBzb2x2ZSBpdCB3aXRoIFhyPw0K
DQo+IA0KPiAoQWRtaXR0ZWRseSwgUDlVUyB0cm9mZidzIGBNUmAgbWFjcm8gZG9lc24ndCBz
dXBwbHkgdGhlIHBhcmVudGhlc2VzLiAgSQ0KPiBkb24ndCBrbm93IGlmIHRoZXkgaW50ZW5k
IHRvIGNoYW5nZSB0aGF0LiAgSSdtIHdpbGxpbmcgdG8gc3VwcGx5IGEgcGF0Y2gNCj4gdG8g
Y2hhbmdlIHRoZWlyIGltcGxlbWVudGF0aW9uIGFuZCB0aGVpciBtYW4gcGFnZXMgdG8gYWxp
Z24gd2l0aCB3aGF0IEkNCj4gZGlkIGluIGdyb2ZmLiAgQXMgc2hvd24gYWJvdmUsIEkgYmVs
aWV2ZSBteSBzZWQtZnUgaXMgaW4gb3JkZXIuKQ0KPiANCj4gSSB0aGluayBtYW4gcGFnZSBh
dXRob3JzIHNob3VsZCBsZWFybiB3aGVuIHRoZSBgXGNgIGVzY2FwZSBzZXF1ZW5jZSBpcw0K
PiBhcHByb3ByaWF0ZSBhbmQgdXNlIGl0IHdoZW4gd2FycmFudGVkLCBhbmQgcmVjYXN0IHRo
ZWlyIHNlbnRlbmNlcw0KPiBvdGhlcndpc2UuICBUaGF0IGlzIHdoeSBJIHByb3ZpZGVkIGFu
IGV4cGxpY2l0IGV4YW1wbGUgaW4gdGhlDQo+IGdyb2ZmX21hbl9zdHlsZSg3KSBwYWdlLg0K
PiANCj4gICAgICAuTVIgcGFnZS10aXRsZSBtYW51YWwtc2VjdGlvbiBbdHJhaWxpbmctdGV4
dF0NCj4gICAgICAgICAgKHNpbmNlIGdyb2ZmIDEuMjMpIFNldCBhIG1hbiBwYWdlIGNyb3Nz
IHJlZmVyZW5jZSBhcyAicGFnZS0NCj4gICAgICAgICAgdGl0bGUobWFudWFsLXNlY3Rpb24p
Ii4gIElmIHRyYWlsaW5nLXRleHQgKHR5cGljYWxseQ0KPiAgICAgICAgICBwdW5jdHVhdGlv
bikgaXMgc3BlY2lmaWVkLCBpdCBmb2xsb3dzIHRoZSBjbG9zaW5nIHBhcmVudGhlc2lzDQo+
ICAgICAgICAgIHdpdGhvdXQgaW50ZXJ2ZW5pbmcgc3BhY2UuICBIeXBoZW5hdGlvbiBpcyBk
aXNhYmxlZCB3aGlsZSB0aGUNCj4gICAgICAgICAgY3Jvc3MgcmVmZXJlbmNlIGlzIHNldC4g
IHBhZ2UtdGl0bGUgaXMgc2V0IGluIHRoZSBmb250IHNwZWNpZmllZA0KPiAgICAgICAgICBi
eSB0aGUgTUYgc3RyaW5nLiAgVGhlIGNyb3NzIHJlZmVyZW5jZSBoeXBlcmxpbmtzIHRvIGEg
VVJJIG9mDQo+ICAgICAgICAgIHRoZSBmb3JtICJtYW46cGFnZS10aXRsZShtYW51YWwtc2Vj
dGlvbikiLg0KPiANCj4gICAgICAgICAgICAgIFRoZSBvdXRwdXQgZHJpdmVyDQo+ICAgICAg
ICAgICAgICAuTVIgZ3JvcHMgMQ0KPiAgICAgICAgICAgICAgcHJvZHVjZXMgUG9zdFNjcmlw
dCBmcm9tDQo+ICAgICAgICAgICAgICAuSSB0cm9mZg0KPiAgICAgICAgICAgICAgb3V0cHV0
Lg0KPiAgICAgICAgICAgICAgLg0KPiAgICAgICAgICAgICAgVGhlIEdob3N0c2NyaXB0IHBy
b2dyYW0gKFxjDQo+ICAgICAgICAgICAgICAuTVIgZ3MgMSApDQo+ICAgICAgICAgICAgICBp
bnRlcnByZXRzIFBvc3RTY3JpcHQgYW5kIFBERi4NCg0KT25lIG9mIHRoZSBiaWdnZXN0IGlz
c3VlcyB3aXRoIHRoaXMgaXMgdGhhdCBpdCBicmVha3Mgd2hhdCB3b3VsZCBvdGhlcndpc2Ug
DQpyZXByZXNlbnQgYSBzaW5nbGUgZW50aXR5LCBpbnRvIHR3byBsaW5lcywgc28gaXQgaHVy
dHMgcmVhZGFiaWxpdHkuICBTZWUgYXMgYW4gDQpleHRyZW1lIGV4YW1wbGUgdGhlIGZvbGxv
d2luZyBjaGFuZ2UgSSBkaWQgd2l0aCBteSBzY3JpcHRzIChmcm9tIHBvc2l4X3NwYXduKDMp
LCANCmlmIHlvdSdyZSBjdXJpb3VzKToNCg0KQEAgLTEyOSw3ICsxMjksNyBAQCAuU0ggREVT
Q1JJUFRJT04NCiAgQmVsb3csIHRoZSBmdW5jdGlvbnMgYXJlIGRlc2NyaWJlZCBpbiB0ZXJt
cyBvZiBhIHRocmVlLXN0ZXAgcHJvY2VzczogdGhlDQogIC5NUiBmb3JrIDMNCiAgc3RlcCwg
dGhlDQotLlJCIHByZS0gZXhlYyAoKQ0KKy5NUiBleGVjIDMgIiIgcHJlLQ0KICBzdGVwIChl
eGVjdXRlZCBpbiB0aGUgY2hpbGQpLA0KICBhbmQgdGhlDQogIC5NUiBleGVjIDMNCg0KDQpI
YXZpbmcgJ3ByZS0nIGFzIHRoZSBsYXN0IHBhcnQgb2Ygc29tZSByYW5kb20gbGluZSwgc2Vw
YXJhdGVzIGl0IGZyb20gdGhlIG90aGVyIA0KcGFydCBvZiB0aGUgd29yZC4gIFRoZSBcYyBh
bHRlcm5hdGl2ZSB3b3VsZCBiZToNCg0Kc3RlcCwgdGhlIHByZS0NCi5NUiBleGVjIDMNCnN0
ZXAgLi4uDQoNCg0KTm90IHRlcnJpYmxlLCBidXQgSSdtIG5vdCBpbiBsb3ZlIHdpdGggaXQu
DQoNCg0KPiANCj4gYFxjYCBzb2x2ZXMgcHJvYmxlbXMgdGhhdCBhcmUgY29tcGxpY2F0ZWQg
dG8gc29sdmUgYW55IG90aGVyIHdheS4gIEFzDQo+IGZhciBhcyBJIGhhdmUgc2VlbiwgeW91
IGRvbid0IGV2ZXIgbmVlZCBpdCBpbiBtZG9jKDcpIHBhZ2VzLCBmb3INCj4gZXhhbXBsZS4u
LmJ1dCB5b3UgcGF5IGEgcHJpY2UuICBZb3UgbXVzdCBsZWFybiB3aGljaCBvZiBtZG9jJ3Mg
c2V2ZXJhbA0KPiBkb3plbiBtYWNyb3MgYXJlICJwYXJzZWQiIHZlcnN1cyAiY2FsbGFibGUi
IChhbmQgd2hhdCB0aGUgaGVjayB0aGUNCj4gcGFja2FnZSBldmVuIF9tZWFuc18gYnkgdGhv
c2Ugd29yZHMpOyB5b3UgbXVzdCBsZWFybiB0aGF0IGBQZmAgYW5kIGBOc2ANCj4gZXhpc3Qg
YW5kIHdoZW4gdG8gdXNlIHRoZW07IHlvdSBtdXN0IGxlYXJuIHRoYXQgY2VydGFpbiB0d28t
bGV0dGVyIHdvcmRzDQo+IHdpbGwgbm90IGJlaGF2ZSBhcyB5b3UgZXhwZWN0OyBhbmQgaWYg
eW91IHRob3VnaHQgdXNpbmcgbWRvYyg3KSBtZWFudA0KPiB5b3Ugd291bGRuJ3QgaGF2ZSB0
byB0eXBlIGFueSBncm9mZiBlc2NhcGUgc2VxdWVuY2VzLCB0aGluaw0KPiBhZ2Fpbi0teW91
J2xsIGJlIHB1dHRpbmcgYFwmYCBhbGwgb3ZlciB0aGUgcGxhY2UuDQo+IA0KPiBQZW9wbGUg
Y2FuIHVzZSBtZG9jKDcpIGlmIHRoZXkgd2FudCB0byAoYW5kIG5vdyB0aGF0IEknbSBsZWFy
bmluZyBpdA0KPiBiZXR0ZXIsIEkgd2lsbCBjb25zdWx0IGFzIEkgYW0gYWJsZSksIGJ1dCBp
dHMgcmVwdXRhdGlvbiBpbiBzb21lIGNpcmNsZXMNCj4gYXMgYSBzdXBlcmlvciBzb2x1dGlv
biB0byBtYW4oNykgb24gYWxsIGZyb250cyB0aGF0IHNob3VsZCBoYXZlIGtpY2tlZA0KPiBp
dHMgcHJlZGVjZXNzb3IgaW50byB0aGUgZ3JhdmUgbG9uZyBhZ28gaXMgZHVlIHNvbGVseSB0
byBpcnJlc3BvbnNpYmxlDQo+IGh5cGUgZnJvbSBpdHMgZXhwb25lbnRzLg0KPiANCj4gSWYg
eW91IG5lZWQgaGVscCBhdXRvbWF0aW5nIGEgY2hhbmdlIHRvIGFkYXB0IHNvbWUgTGludXgg
bWFuLXBhZ2VzDQo+IGRvY3VtZW50cyB0byB1c2UgYFxjYCBiZWZvcmUgYW4gYE1SYCBjYWxs
IG9uIHRoZSBuZXh0IGxpbmUgKHdoZXJlIHlvdQ0KPiB3ZXJlIHVzaW5nIGBSQmAgYmVmb3Jl
LCBmb3IgaW5zdGFuY2UpLCBqdXN0IGxldCBrbm93LiAgSSBhbSBuZWFybHkNCj4gY2VydGFp
biB0aGF0IGEgc2VkIHNjcmlwdCB1dGlsaXppbmcgaXRzIGhvbGQgc3BhY2UgZmVhdHVyZSBj
YW4gZ2V0IHRoZQ0KPiBqb2IgZG9uZS4gIChJJ3ZlIHVzZWQgdGhlIGhvbGQgc3BhY2UgcHJv
Zml0YWJseSBiZWZvcmUsIGJ1dCBvY2Nhc2lvbnMNCj4gZm9yIGl0IGNvbWUgdXAgc2VsZG9t
IGVub3VnaCB0aGF0IEkgaGF2ZSB0byByZXZpZXcgbXkgcGFzdCBzb2x1dGlvbnMNCj4gYmVm
b3JlIHRoZSBrbm93bGVkZ2UgY29tZXMgYmFjay4gIE9yIG1heWJlIGl0J3MgY3JlZXBpbmcg
c2VuZXNjZW5jZS4pDQoNCkkgaG9wZSBJIGNhbiBjb21lIHVwIHdpdGggc29tZXRoaW5nLCBi
dXQgeWVzLCBpZiBub3QsIEknbGwgY2FsbCB5b3UgOykNCg0KQlRXLCBzbyBmYXIgSSd2ZSBu
ZXZlciBmb3VuZCBhIGNhc2Ugd2hlcmUgSSBoYWQgdG8gdXNlIHRoZSBob2xkIHNwYWNlLiAg
SSB3b25kZXIgDQppZiBJIG1heSBtZWV0IGEgY2FzZSB3aGVyZSBJIG5lZWQgaXQgaW4gbXkg
bGlmZS4gIFRoaXMgd2VlayBJIGNhbWUgdXAgd2l0aCBzb21lIA0Kc2NyaXB0IGZvciBpbnNl
cnRpbmcgYW4gZWxlbWVudCBpbnRvIGEgSlNPTiBhcnJheSBhdCBhIHNwZWNpZmllZCBwb3Np
dGlvbiwgYnV0IE4gDQppcyBhbGwgdGhhdCB3YXMgbmVlZGVkOg0KPGh0dHA6Ly93d3cuYWxl
amFuZHJvLWNvbG9tYXIuZXMvc3JjL2FseC9uZ2lueC91bml0Y2xpLmdpdC90cmVlL2Jpbi9z
ZXR1cC11bml0I245Njk+Lg0KSSd2ZSBtZXQgYSBmZXcgbW9yZS1jb21wbGV4IGNhc2VzLCBi
dXQgbm90IHJlYWxseSB0aGF0IG11Y2guICBJIGFsd2F5cyBjb21lIHVwIA0Kd2l0aCBzb21l
IGNvbWJpbmF0aW9uIG9mIGZpbHRlcnMgdGhhdCBhbGxvd3MgbWUgdG8gYXZvaWQgdGhlIGhv
bGQgc3BhY2UuIA0KU29tZXRpbWVzLCB0d28gc2NyaXB0cyBydW4gY29uc2VjdXRpdmVseSBh
bHNvIGhlbHBzIGtlZXAgaXQgc2ltcGxlIDopDQoNCkNoZWVycywNCg0KQWxleA0KDQo+IA0K
PiBSZWdhcmRzLA0KPiBCcmFuZGVuDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNv
bG9tYXIuZXMvPg0K

--------------3PZ0eXguOFF50E0skpK3g1Rv--

--------------XG54qm42DGSy4GblWMU8YgIN
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNtj2YACgkQnowa+77/
2zKvgQ/8CAPsfosOO9JyTWoLEnxvEnHUQeYANb1JP8alMdpN5SyPokl6b0kmbtZ3
ppx+dTHVlgp4RfTugbUypFX6nBkgBcSTSu9MCrnyY3ZChFzt0COkS6hRU3d6JbqG
pc9zXeb2Ai6QDX29Sjrl6An61ou+jroMNupCockbluVnk/efcin/L69x3cmQ0b3O
+ldP0fbi8E68wfHFtE/igSI5dlOgO18xkyIwSKOZKCXHO0TR25Lu65c5EyfEfmxz
9iTUSvzavZ7VwernjUZ1nnsmHc1oPUTt0mzgIGxQpOU53282xMlPI7Wrz6xth5hK
2g1JIaBkH08P4SIlOVZl2D9IIczjUWQz8JvJAx2PBIgVDkiLUci3oSbqGhMH1Fj6
/u4Wm9ieJycsfIBZyR9JFZoBLm6HizCH/S+Kw4EXna5mOeVMnTXTQ1VPsyv3Svk0
3fc27pw3IddwWAFsiZ1oEZuYepIbG3so8bCo3k1tustWQEICvpI4YcJ/uJBns3iG
Q3qUe+ZaLK50e5OHDNNqX8Qn64WJICiwE5aD/6hKtlQLpIYkJogsarX4N5q/QRTT
2edjqbQipG/zlPfOFdYEe0Y1iyh4PESdtCzhEC4tBJV0TjUEJp3n6PhNPXEIfxbH
WFYTi/w76iBYx4ju/lYyYHxlTkSaSV4qgtB9a6M4zk2cruaYqJc=
=eZRw
-----END PGP SIGNATURE-----

--------------XG54qm42DGSy4GblWMU8YgIN--
