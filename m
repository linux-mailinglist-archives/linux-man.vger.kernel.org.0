Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8195A68B009
	for <lists+linux-man@lfdr.de>; Sun,  5 Feb 2023 14:47:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229683AbjBENr0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 08:47:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229553AbjBENrZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 08:47:25 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 732B193F5
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 05:47:23 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id g6so266475wrv.1
        for <linux-man@vger.kernel.org>; Sun, 05 Feb 2023 05:47:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vWCAVJQjR2ttmYgqy7xrjZDdtBLAHBn2fYmwzTxL/5w=;
        b=oNXGbp0KWHAwgeA/EzvV2uDNAhZD2pPz18VvqeGiyNPnRRyLsYY3CMVLfk0ZDaS0kg
         Xr4KUAiREs08LP9SP0IomodgI5AaIBtcQU1Pef6aK/Anj5MLBp1fJbWHMHh4duR8I/85
         aABQAfIHgXbmz+ps0XgxzCc+xE9jhOK7MuVHEwxdcHkyA+jeW1C+0IPuL7KejesAWsUG
         3ojKlOo9jqNNmm2WYmYRk/glUzDrozXq1oRmUZuOay6cvJ1QxUs1Jq2OpUeNqHHBkaoZ
         CwyIuFyOjUCk6HkG2UOJ6bA1cBOiG3XuwsNYiIn90u3mv3aJyxxeymADcUstXRDTWB5S
         +FRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vWCAVJQjR2ttmYgqy7xrjZDdtBLAHBn2fYmwzTxL/5w=;
        b=LJGFYjTk1rnXosatPMghnNGkSKdfLCveOzd9UGR0yswl6IoRWjIWSdWSmGOuvt1oP0
         vhBo5DAFttw1NsFFm3swf2RvoHLREjeSQvJBz99Vl3bdDga2hwlApOVMgoJULzi7aJea
         Y73J1Cm4LCX7MCA43XyqKv/tz01cJkHi6KxrBi8uNQw9lK7JJfbrbaYjMad8KuXq5p3Y
         pb9Fm6KVFQzITKdYlsWjxLfWQYoGAY7aFwPJPiHO63mDzJL8eZwRM0ABdLYY2V+KYf5R
         Yb2UuNN+StvdRz5MU+tMmNgRMgx/PQO1ndasnyhoa0olNha0306g0XXj7dd5RIzOWkDB
         i2kA==
X-Gm-Message-State: AO0yUKVs4XtsjC93PlcqF5p9X7HUTg9/3NXFKz8wI9je+R6ouFSjtPY6
        fWTe5qoiwPRv8lQi1tIM8TI=
X-Google-Smtp-Source: AK7set/q5DyTjk8BVz0zK6g2DoiwBX1nHKEGOChRY66W1ougRJh7g97eLQtrXFSyk53GH+3D7UyoAA==
X-Received: by 2002:a5d:5c01:0:b0:2bf:ea34:dfe4 with SMTP id cc1-20020a5d5c01000000b002bfea34dfe4mr16438958wrb.42.1675604841890;
        Sun, 05 Feb 2023 05:47:21 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a18-20020a5d4572000000b002c3e7474b0fsm1039170wrc.13.2023.02.05.05.47.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Feb 2023 05:47:21 -0800 (PST)
Message-ID: <f9010330-a34c-494e-adba-64eae947b832@gmail.com>
Date:   Sun, 5 Feb 2023 14:47:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: Using C23 digit separators not locale digit grouping characters
Content-Language: en-US
To:     Tom Schwindl <schwindl@posteo.de>
References: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>
 <717e8fb9-9159-65f8-093e-a117c82be704@gmail.com>
 <aebef9ae-1bd0-b0e7-b333-7269dbaf50a2@Shaw.ca>
 <5c2be1e7-4c75-dc20-8d2e-a528edea7e32@gmail.com>
 <f93b5307-4f11-eeeb-3a52-1dc1b4ea0ac8@Shaw.ca>
 <8ecb3f01-2035-9408-9605-1e64e6f25b5a@gmail.com>
 <CQ8YOCHX1IZ1.C1YACUOT0QD3@morphine>
Cc:     Brian.Inglis@Shaw.ca, Linux Man-Pages <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CQ8YOCHX1IZ1.C1YACUOT0QD3@morphine>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------q2tyH7doRg2HdwKcPDVh58zB"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------q2tyH7doRg2HdwKcPDVh58zB
Content-Type: multipart/mixed; boundary="------------qP0rhx3Pc6ihH0wMzxNQrptG";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Tom Schwindl <schwindl@posteo.de>
Cc: Brian.Inglis@Shaw.ca, Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <f9010330-a34c-494e-adba-64eae947b832@gmail.com>
Subject: Re: Using C23 digit separators not locale digit grouping characters
References: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>
 <717e8fb9-9159-65f8-093e-a117c82be704@gmail.com>
 <aebef9ae-1bd0-b0e7-b333-7269dbaf50a2@Shaw.ca>
 <5c2be1e7-4c75-dc20-8d2e-a528edea7e32@gmail.com>
 <f93b5307-4f11-eeeb-3a52-1dc1b4ea0ac8@Shaw.ca>
 <8ecb3f01-2035-9408-9605-1e64e6f25b5a@gmail.com>
 <CQ8YOCHX1IZ1.C1YACUOT0QD3@morphine>
In-Reply-To: <CQ8YOCHX1IZ1.C1YACUOT0QD3@morphine>

--------------qP0rhx3Pc6ihH0wMzxNQrptG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgVG9tDQoNCk9uIDIvMy8yMyAxNDoyNywgVG9tIFNjaHdpbmRsIHdyb3RlOg0KPiBIaSBB
bGV4LA0KPiANCj4gT24gRnJpIEZlYiAzLCAyMDIzIGF0IDEyOjU5IEFNIENFVCwgQWxlamFu
ZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBPbiAyLzIvMjMgMjM6MjksIEJyaWFuIEluZ2xpcyB3
cm90ZTo+IEhpIEFsZXgsDQo+Pg0KPj4gSGkgQnJpYW4sDQo+Pg0KPj4+DQo+Pj4gVG9vayB5
b3VyIHZpZXdzIG9uIGJvYXJkIGFuZCBjaGFuZ2VkIG1hbjIgcGFnZXMuDQo+Pj4gQXR0YWNo
ZWQgc3VtbWFyeSBvbmx5IGhhcyBmaWxlIG5hbWVzIGFuZCBjaGFuZ2VkIGxpbmVzLg0KPj4N
Cj4+IEkgcHJlZmVyIGlubGluZSBpbiB0aGUgZW1haWwgOikNCj4+DQo+Pj4gV291bGQgbGlr
ZSBmZWVkYmFjayBvbiB3aGF0IHRvIGNvbnRpbnVlIGRvaW5nIGFuZCB3aGF0IHRvIGZvcmdl
dCBkb2luZyBiZWZvcmUNCj4+PiBzdGFydGluZyBtYW4zPw0KPj4NCj4+IFNlZSBiZWxvdy4N
Cj4+DQo+Pj4gT2Ygbm90ZSBmb3IgcmV2aWV3IGFyZSBvcGVuLjIgb2N0YWwgcGVybXMsDQo+
Pg0KPj4gVGhlIG9jdGFscyByZWFkIGEgYml0IHdlaXJkZXIgdGhhbiB0aGUgb3RoZXJzLiAg
UGxlYXNlIGtlZXAgdGhlbSBpbiBhIHNlcGFyYXRlDQo+PiBwYXRjaCwgc28gd2UgY2FuIGRl
Y2lkZSBvbiBpdCBsYXRlci4gIEJ1dCBJIHdvdWxkbid0IGRpc2NhcmQgaXQgZm9yIG5vdy4N
Cj4+DQo+IA0KPiBJIHdvbmRlciBpZiBJJ20gdGhlIG9ubHkgb25lIHdobyB0aGlua3MgdGhh
dCB0aGUgZGlnaXQgc2VwYXJhdG9ycyBsb29rDQo+IGlycml0YXRpbmcgZm9yIGJvdGgsIGhl
eCBhbmQgb2N0YWwuDQoNCkhleCBvbmVzIGRvbid0IHNlZW0gd2VpcmQgdG8gdG8gbWUuDQpP
Y3RhbCBkb2VzLiAgSG93ZXZlciwgSSd2ZSBhbHdheXMgYmVlbiBpcnJpdGF0ZWQgYnkgb2N0
YWxzLCBkdWUgdG8gdGhlIHByZWZpeCANCmJlaW5nIGNvbmZ1c2VkIHdpdGggcGFydCBvZiB0
aGUgdmFsdWUuICBJJ2QgcHJlZmVyIEMgaW50cm9kdWNpbmcgUHl0aG9uJ3MgMG8gcHJlZml4
Lg0KDQo+IFRoZSByZWFzb24gZm9yIHVzaW5nIHRoZW0gaW4gdGhlIGZpcnN0IHBsYWNlDQo+
IGlzIHRvIG1ha2UgbnVtYmVycyBtb3JlIHJlYWRhYmxlIGFuZCB0aHVzIGdldCB0aGVtICJv
dXQgb2YgdGhlIHdheSIuDQo+IEFzIG9mIG15IGV4cGVyaWVuY2UsIGl0J3Mgbm90IGNvbW1v
biB0byB1c2Ugc2VwYXJhdG9ycyBmb3IgbmVpdGhlciBoZXggb3Igb2N0YWwuDQoNCk9mIGNv
dXJzZSBpdCdzIG5vdCBjb21tb24uICBUaGV5IGRpZG4ndCBleGlzdCBiZWZvcmUgOikNCklu
IGRlY2ltYWxzIHdlIHVzZSB0aGVtIGJlY2F1c2Ugbm9uLXByb2dyYW1taW5nIGNvbnRleHRz
IGFsd2F5cyBoYWQgdGhlbS4gIFNpbmNlIA0KaGV4cyBhcmUgYWxtb3N0IGV4Y2x1c2l2ZSBv
ZiBwcm9ncmFtbWluZywgaXQncyBub3JtYWwgdGhhdCB0cmFkaXRpb24gZG9lc24ndCANCmhh
dmUgdGhlbS4gIEhvd2V2ZXIsIHdlIHVzZSBzcGFjZXMgb2Z0ZW4gZm9yIGhleHMgYW5kIGJp
bmFyaWVzLCBlc3BlY2lhbGx5IGluIA0KY2xhc3NlcywgdG8gaGVscCBkaXN0aW5ndWlzaCB0
aGUgbWFnbml0dWRlIG9mIHRoZSBudW1iZXIsIGFuZCBpbXByb3ZlIA0KcmVhZGFiaWxpdHkg
aW4gZ2VuZXJhbC4gIEkgdGhpbmsgdXNpbmcgYSBzdGFuZGFyZCBzZXBhcmF0b3IgaXMgdGhl
IGJlc3QgdGhpbmcgd2UgDQpjYW4gdXNlIChzcGFjZXMgaW4gdGhlIG1hbiBwYWdlcyB3b3Vs
ZCBiZSBtbmlzbGVhZGluZykuDQoNCj4gSSB0aGluayB3ZSdyZSBnb2luZyBhZ2FpbnN0IHdo
YXQgcGVvcGxlIGFyZSB1c2VkIHRvIGFuZCBtb3JlIGltcG9ydGFudGx5LCB3aGF0DQo+IGlz
IGdlbmVyYWxseSBmb3VuZCBpbiBjb2RlIGFuZCBkb2N1bWVudGF0aW9uLiBXZSBtaWdodCBh
cmNoaXZlIHRoZSBvcHBvc2l0ZSBvZg0KPiB3aGF0IHdlIHRyeSB0byBkby4NCg0KVGhhdCdz
IHRydWUuICBXZSdyZSBkb2luZyBzb21lIGltcG9ydGFudCBjaGFuZ2VzLCB3aGljaCBpcyB3
aHkgSSB3YW50IHRvIGJlIA0KY2FyZWZ1bC4gIElNTywgSSB0aGluayB0aGUgcGF0Y2hlcyBp
bXByb3ZlIHRoZSBkb2N1bWVudGF0aW9uLCBidXQgaWYgdGhlcmUncyANCmdlbmVyYWwgY29u
c2Vuc3VzIHRoYXQgaXQgd2lsbCBiZSB3b3JzZSwgd2UgY2FuIHJldmVydCB0aGVtIGFueSB0
aW1lLCBzbyBsZXQncyANCnNlZSBob3cgdGhpcyBkZXZlbG9wcy4NCg0KPiANCj4gSnVzdCBt
eSAyIGNlbnRzLg0KPiANCj4gLS0NCj4gQmVzdCBSZWdhcmRzLA0KPiBUb20gU2Nod2luZGwN
Cg0KVGhhbmtzIGZvciB0aGUgY29tbWVudHMhDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSAN
CjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCkdQRyBrZXkgZmluZ2VycHJp
bnQ6IEE5MzQ4NTk0Q0UzMTI4M0E4MjZGQkREOEQ1NzYzM0Q0NDFFMjVCQjUNCg==

--------------qP0rhx3Pc6ihH0wMzxNQrptG--

--------------q2tyH7doRg2HdwKcPDVh58zB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPfs2EACgkQnowa+77/
2zIyGA/7BYOLBexODzq4KqE82RY/wB0tIkr9iWiK8e12k5nwfiHotNcf0JHcpvIf
jKNu/CYjwoGrHXXk+vLH8ffGrQumYTFGS+hXtx7QQRjJoQHIw0/wjNpjwwwIlX1D
Hzjgv/ZuH2t9Xb0alII5jUBigHEusO256HoL50bpEc7bdXKQvDQOLB5BdtuGhaK8
57mT9gPwCLetgp+frkXHGMwR8vaUJrHBt5ny+5t1dekTUO5lQIEWN7HLbeBM1DyY
7x7ufm4H9idG/gV/e3Fki9sdlRUraSz8lTKTfyzkX8SRPj1BN7szxrBKHzFZ96VS
jErXuxld6pArDaq+USWFsn9kWhkwDxygJ9blBXBWPQClsG7ZwPCPOa2re5dKfMjD
Fn1cyxqLMdbm5NBSKofLAY0Fu4a1tqUVGG8ajgJTXjyiCx8gGJl1oaXMEfM2AA0D
aBNtcAPPQfxc/tKr4dmr8js5wQdlrrCdPIzodQplLA0hpoJrlYodGze62Jx6OKge
9lYafdIUw0PlU1irvaonaqWjsIzXSzFCs/jRrwQl/tXWxJVG8iNnLmmLuP8TndbZ
kJTL3QJDVHM+Spk3Aqs8gGtnjIJfFqNtIuvSH51QalwpDe+tXmqgLhocPjxUwY7e
EJPPHDS3XqGRjka48HqKdz8TA+epjIdHbpjIQaLHAqo9bMYtNgQ=
=R1Bm
-----END PGP SIGNATURE-----

--------------q2tyH7doRg2HdwKcPDVh58zB--
