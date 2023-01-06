Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D08165F816
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 01:22:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235513AbjAFAWv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 19:22:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232433AbjAFAWu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 19:22:50 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC3F93D5DF
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 16:22:48 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id ay2-20020a05600c1e0200b003d22e3e796dso133161wmb.0
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 16:22:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0ahnY+ywD4ZcRs2WQwO9BWgcq0Uuy71vPxu+xmuwLeI=;
        b=Cc5c7UeQr0g/vJsPEMAwh48EIzIfteeIgVVB7vsPrmuaTLVwSITbsA/aNzlTi/+rGK
         gyXRAsZ2O2oBvDVMG3g6XkatuW3rjDgm3cNNY67RoMXJIwlFc7MvfrzeCR45HFBB+H7u
         kt3bZeqB2DtnQ4eKwfoty2U01dFD4KPfVO/lkjvZ+dEtaLvA7j00vDwOvhR3v5OtcGKZ
         7YquzWFJ9zHkZ0RTIlDNCOcIsnOYbrE2MLjCAvnefGjlA5BYkhnWqhbXRGKAHnlx7DDN
         RPOVDMYCPmuQf1W7jSkR1oHs1hTOCRZu5EqtiE+qsnk0E6tmTubSF1QnK1MxFmcXRggl
         gi6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0ahnY+ywD4ZcRs2WQwO9BWgcq0Uuy71vPxu+xmuwLeI=;
        b=7wQ4UlcNsjRkofJ8wZRm0iTdSbstOnewWdLUguplTwi6ZCVyJwp69K/ZkCdnk0mDPg
         fOZgWr6xMxQkuGKc2O+HKNQOUDzYj7bGa9DgnNjGNyYXgDAO6yDgktvcjy8Px/TEqT47
         nQA7BbyZfDVq9fbXvzKwiKL3uXFJ317pIOHkMJaI+Oz7PGsZkZW+OOmhR9qRSLL2YpBB
         JiHR+2BEvuIxvrM8ALYQyhy2Vtj0BQ3ZqAAO8OteIIx/vmtzTjtmbk8cPCwlzr05S+LN
         i4A67UhEYF40I6CTJLUTUwT3U2Q13RUhtnr06oRxAU2MDaPbWTEXB/YnV5hjx5NUD7Fd
         s6cw==
X-Gm-Message-State: AFqh2kqWXZfgcFBOu0Xh+jU/cXT+0z55uJ5Y7/S2fbgAc9V48/lzKNZR
        u9ua1kHOOCwBtJCnfIRmkPg=
X-Google-Smtp-Source: AMrXdXtGubJm4JctndVNUH1tbiSukk5Se1cHyaIcN17vqKf6Q4X14f1EK7x5Xx3QotYSuwBKRSTZiA==
X-Received: by 2002:a7b:c38e:0:b0:3d3:4ca9:240 with SMTP id s14-20020a7bc38e000000b003d34ca90240mr42009317wmj.33.1672964567413;
        Thu, 05 Jan 2023 16:22:47 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id az28-20020a05600c601c00b003cf57329221sm4161182wmb.14.2023.01.05.16.22.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 16:22:46 -0800 (PST)
Message-ID: <68e4db4a-dba1-dcf3-c332-8b462193a097@gmail.com>
Date:   Fri, 6 Jan 2023 01:22:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] bind.2, mount_setattr.2, openat2.2, perf_event_open.2,
 pidfd_send_signal.2, recvmmsg.2, seccomp_unotify.2, select_tut.2, sendmmsg.2,
 set_thread_area.2, sysctl.2, bzero.3, getaddrinfo.3, getaddrinfo_a.3,
 getutent.3, mbrtowc.3, mbsinit.3, rti...
Content-Language: en-US
To:     Wilco Dijkstra <Wilco.Dijkstra@arm.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx@kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <PAWPR08MB89827AFF364FB662C3FC5F9A83FA9@PAWPR08MB8982.eurprd08.prod.outlook.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <PAWPR08MB89827AFF364FB662C3FC5F9A83FA9@PAWPR08MB8982.eurprd08.prod.outlook.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mW3EozCsawtw7CoC9Dun1zf9"
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------mW3EozCsawtw7CoC9Dun1zf9
Content-Type: multipart/mixed; boundary="------------h0ETsfp9nUyUCfvLwlMH5EWs";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Wilco Dijkstra <Wilco.Dijkstra@arm.com>, Paul Eggert
 <eggert@cs.ucla.edu>,
 Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
 "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Cc: Alejandro Colomar <alx@kernel.org>,
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <68e4db4a-dba1-dcf3-c332-8b462193a097@gmail.com>
Subject: Re: [PATCH] bind.2, mount_setattr.2, openat2.2, perf_event_open.2,
 pidfd_send_signal.2, recvmmsg.2, seccomp_unotify.2, select_tut.2, sendmmsg.2,
 set_thread_area.2, sysctl.2, bzero.3, getaddrinfo.3, getaddrinfo_a.3,
 getutent.3, mbrtowc.3, mbsinit.3, rti...
References: <PAWPR08MB89827AFF364FB662C3FC5F9A83FA9@PAWPR08MB8982.eurprd08.prod.outlook.com>
In-Reply-To: <PAWPR08MB89827AFF364FB662C3FC5F9A83FA9@PAWPR08MB8982.eurprd08.prod.outlook.com>

--------------h0ETsfp9nUyUCfvLwlMH5EWs
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgV2lsY28sDQoNCk9uIDEvNi8yMyAwMTowMiwgV2lsY28gRGlqa3N0cmEgd3JvdGU6DQo+
IEhpIEFsZXgsDQo+IA0KPj4gVGhlcmUgYXJlIG1hbnkgdXNlcnMgb2YgYnplcm8oMykgaW4g
dGhlIHdpbGQsIGFuZCBpdCBpcyBhIGZpbmUgQVBJIGZyb20gYQ0KPj4gdXNhYmlsaXR5IHBv
aW50IG9mIHZpZXcuDQo+IA0KPiBTaW5jZSB5b3UgcmVwZWF0ZWRseSBjbGFpbSBsb3RzIG9m
IHVzZSBvZiB0aGVzZSBmdW5jdGlvbnMsIEkgZGlkIGEgcXVpY2sgc2VhcmNoDQo+IG9uIGh0
dHBzOi8vY29kZXNlYXJjaC5kZWJpYW4ubmV0Lw0KPiANCj4gYnplcm86IDIxNDQwDQo+IG1l
bXNldDogNTYzMDU0DQo+IA0KPiBtZW1wY3B5OiA0NDg5DQo+IG1lbWNweTogNjkyODczDQo+
IA0KPiBJIHVzZWQgIm1lbWNweSgiIGFuZCAibWVtY3B5ICgiIGFuZCBhZGRlZCB0aGUgcmVz
dWx0cy4gVGhlc2Ugb3ZlcmVzdGltYXRlDQo+IHVzYWdlIGR1ZSB0byBwcm90b3R5cGVzIGFu
ZCBjb21tZW50cywgYW5kIGRvbid0IGluY2x1ZGUgbWVtY3B5IGFuZCBtZW1zZXQNCj4gY2Fs
bHMgZW1pdHRlZCBieSBjb21waWxlcnMgc28gaW4gcmVhbGl0eSB0aGUgcmVzdWx0cyBhcmUg
ZXZlbiBtb3JlIHNrZXdlZC4NCg0KTWFueSBwcm9qZWN0cyByZWRlZmluZSB0aG9zZSBmdW5j
dGlvbnMgdGhlbXNlbHZlcywgd2l0aCBhbHRlcm5hdGl2ZSBuYW1lcywgc28gDQppdCdzIGhh
cmQgdG8gcmVhbGx5IGNvdW50IGhvdyBtdWNoIGlzIHRoZSBpbnRlbnRpb24gb2YgcHJvamVj
dHMgdG8gdXNlIGl0LCANCnJhdGhlciB0aGFuIGFjdHVhbCB1c2UuICBTaW5jZSB0aGUgc3Rh
bmRhcmRzIGRvbid0IGd1YXJhbnRlZSBzdWNoIGZ1bmN0aW9ucywgDQpwcm9qZWN0cyB0aGF0
IGNhcmUgYSBsb3QsIHVzZSBhIHBvcnRhYmxlIG5hbWUgKG9uZSB0aGF0IGlzbid0IHJlc2Vy
dmVkOyANCnNvbWV0aW1lcyB0aGV5IGRvbid0IGV2ZW4ga25vdyB0aGF0IHRoZXJlJ3MgYSBH
TlUgZXh0ZW5zaW9uIHdpdGggdGhhdCBuYW1lIGFuZCANCnVzZSBhIHdlaXJkIG9uZSwgc3Vj
aCBhcyBjcHltZW0oKSBieSBuZ2lueCkuDQoNClByb2plY3RzIHRoYXQgcHJlZmVyIHBvcnRh
YmlsaXR5IGFuZCBkb24ndCBjYXJlIGFib3V0IHVzaW5nIGdvb2QgQVBJcyBzbyBtdWNoIA0K
d2lsbCBmYWxsIGJhY2sgdG8gdGhlIHN0YW5kYXJkIEFQSXMsIHdoaWNoIGlzIG1vc3QgcHJv
amVjdHMsIHNvIG9mIGNvdXJzZSB0aGUgDQpudW1iZXJzIGFyZSBub3QgY29tcGFyYWJsZSBp
biB0aGUgd2lsZC4NCg0KVGhlIHRoaW5nIGlzIHRoYXQgdGhvc2UgQVBJcyBhcmUgYmV0dGVy
IChpbWFnaW5lIHRoYXQgdGhleSB3ZXJlIGFsbCBzdGFuZGFyZCwgDQphbmQgd2VyZSBhbGwg
ZXF1YWxseSBrbm93biBieSBwcm9ncmFtbWVyczsgd2hpY2ggb25lcyB3b3VsZCB5b3UgdXNl
PykuICBTb21lIA0KcHJvZ3JhbW1lcnMgd2lsbCB3YW50IHRvIHVzZSB0aGUgYmV0dGVyIEFQ
SXMsIGluZGVwZW5kZW50bHkgb2YgbGliYyBwcm92aWRpbmcgaXQgDQpvciBub3QuICBJbiBz
b21lIGNhc2VzLCBmb3IgaGlnaCBwZXJmb3JtYW5jZSBwcm9ncmFtcywgZ29vZCBBUElzIGFy
ZSBldmVuIG1vcmUgDQpyZWxldmFudC4gIE5vdCBpbXBsZW1lbnRpbmcgdGhlbSBpbiBsaWJj
LCB3aWxsIG9ubHkgbWVhbiB0aGF0IHByb2plY3RzIHdpbGwgcm9sbCANCnRoZWlyIG93bi4N
Cg0KSSdtIG5vdCBzYXlpbmcgdGhhdCdzIGJhZCBlaXRoZXIuICBJZiB3ZSB3YW50IHRvIHNp
bXBsaWZ5IGxpYmMsIGFuZCBhZGQgc29tZSANCmV4dGVuc2lvbiBsaWJyYXJpZXMgdGhhdCBh
cmUgaW5kZXBlbmRlbnQgb2YgbGliYywgdGhhdCB3b3VsZCBwcm92aWRlIHN1Y2ggDQpmdW5j
dGlvbnMsIHRoYXQncyBmaW5lIGJ5IG1lLiAgQW5kIG1heWJlIGl0J3MgdGhlIGJldHRlciB0
aGluZyB0byBkby4NCg0KU28sIHdoZXRoZXIgeW91IGxpa2UgaXQgb3Igbm90LCBhIHJlbGV2
YW50IG51bWJlciBvZiBwcm9ncmFtcyAoYWx0aG91Z2gsIGFzIHlvdSANCnByb3ZlZCwgYSBz
bWFsbCBvbmUgY29tcGFyZWQgdG8gdGhlIGVudGlyZSB1bml2ZXJzZSBvZiBwcm9ncmFtcykg
d2lsbCBrZWVwIHVzaW5nIA0KYW4gQVBJIHRoYXQgYXNrcyBmb3IgYSBwb2ludGVyIGFuZCBh
IHNpemUgYW5kIHplcm9lcyBpdC4gIFdlIGNhbiBjYWxsIGl0IA0KYnplcm8oMyksIG9yIG1l
bXplcm8oMyksIG9yIGV4dF9tZW16ZXJvKDMpIChleHRfIGJlaW5nIGEgcHJlZml4IGZvciBh
IGxpYnJhcnkgDQpwcm92aWRpbmcgdXNlZnVsIGV4dGVuc2lvbnMgdG8gbGliYyksIGJ1dCB0
aGUgZnVuY3Rpb24gd2lsbCBiZSB0aGVyZS4NCg0KV2hlcmUgZG8geW91IHN1Z2dlc3QgdGhh
dCB3ZSBwdXQgc3VjaCBmdW5jdGlvbj8gIEluIG9yIG91dCBvZiBsaWJjPw0KDQo+IA0KPiBU
aGVyZSBtYXkgYmUgb3RoZXIgcmVwb3NpdG9yaWVzIHdoaWNoIGNhbiBiZSBlYXNpbHkgc2Vh
cmNoZWQsIGJ1dCB0aGVzZSByZXN1bHRzDQo+IGFyZSBjbGVhciBlbm91Z2ggdG8gY29uY2x1
ZGUgdGhlc2UgZnVuY3Rpb25zIGFyZSBkZWFkLg0KSSdkIHNheSBkZWFkIGlzIHRvbyBtdWNo
Lg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCj4gQ2hlZXJzLA0KPiBXaWxjbw0KDQotLSAN
CjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------h0ETsfp9nUyUCfvLwlMH5EWs--

--------------mW3EozCsawtw7CoC9Dun1zf9
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO3ac4ACgkQnowa+77/
2zIxSg//f1Hf8s9wy91RM6PPB1NfNlRqRZlk/jSKcQ3I1pLna876BRRGQNRVYcn3
647LlgfoNXbn/M62wSKRKkFQRWZl5G3dyVQwaeWTHx/aHxQdMbfW8FCYtlp74nDC
ENSUWWR2mF9GzWkRi/CQ754Bwxqc5falWqiwg+HIBZgRz+oCyOkBZTxRtN1Vx80d
mMqi91Mr4fXQHjGkFVo98oiO1dz+thEC9U9OjM204j5DBVxWUpOWAWfdFd9hM8PD
TeBYRiXIpBC7RQ3Y3rQ0AetFIfMzH/+SfX/utpZbocxXS6SyWHp5QTYVeGRVDSRM
LAL5OxZwO7Z8hcWfkjIeG/LxwVRNMWvLmSQDfgL1oIz6h9zI6CWmgxgW3pYOEbyD
ETHZL6am/aEV/OIVFy7XlGXBRu4U07WddszTGkKp34PgoqLRYs9Ey4UfTODa0W4B
37vNxcEi/O1XxjL3kHfjYlQxxsv3ktmJkIONRxI+lHpMs9o8R2RimvuOfe5Z5AHT
TPbvP0Cp+cfT33CHdl2csLh6pbXOKvgpwmuWI5OQ4XbJZ1ZTAzlhMxkplxO34nV9
mqtO38Ixh/7GzkP1Mv99lGNB6sUH7KYpsgShFXkMvq3B8982BCLI9wjIE+ghKV9m
oUEddfwctHAQaw7aUfoqRUPyyBBdjNkFzp3QsA0vAMg4Ls2u7D8=
=gdqP
-----END PGP SIGNATURE-----

--------------mW3EozCsawtw7CoC9Dun1zf9--
