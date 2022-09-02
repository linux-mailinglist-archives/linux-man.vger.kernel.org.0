Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8F295AB9C9
	for <lists+linux-man@lfdr.de>; Fri,  2 Sep 2022 23:03:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230239AbiIBVCV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Sep 2022 17:02:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229836AbiIBVCU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Sep 2022 17:02:20 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A857B2CFF
        for <linux-man@vger.kernel.org>; Fri,  2 Sep 2022 14:02:19 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id b16so3740705wru.7
        for <linux-man@vger.kernel.org>; Fri, 02 Sep 2022 14:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=boiKvBGoKfoFmOYxqIiJjPVucincBQ5yxmGzG17J0lY=;
        b=gB875z0mZrj+vIkb1zLiWfXqFJvGoW/OobiuMOyIr9ohucDjab5CqeGNpKXjsnhAPR
         eu7VURQpLdDRhFmad2V4CMHMzmeEuC3FoHrWjFu8Fr0YJ9zL7xEn7gd/xaXZH0+X3iNW
         FgQZw4aBrFkNAFcQ6xJdUx658TRz+LILzOTL2H7/E2zNiqV/YS4pbg9tqzI1FkYPA2Ov
         zL88bjyjZL3PeY/kUZ4vEw29ltDcnrv/RD5pA+swMIY7FZSEaf+NmzDpS9dC41C0D48I
         QoztxP61qoXse4K9E5ycntrsn7Lr/hLt6nT4rHfzGR+hQgul6Pe5ZzgIvriv7BIiAMPD
         1WRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=boiKvBGoKfoFmOYxqIiJjPVucincBQ5yxmGzG17J0lY=;
        b=KVig7YBcptqN2ypAqZtqf8Ui/Ho/M8gwuBgXy4qcltZ2WP1c4uEWC+YsxkBi3mjX6/
         xQS5jBqM8Nq8tXn34tQ0W77veFFtS20BCsxcTUQF6uM0QcDbww+H7IaoP9BHkhYvQiqo
         IBblB9wHhwaKs5jl7DfCWb7zddk3hVagJBnZyvDgcemSdzBbOaBqEtIcEAKFAJnZFrAl
         9QO72PEi7CXmeOJZjsyK3CCEqmUnCVmMFY3UhhRhX9L/Vpbs/86lTNLNl2vSTxb7ZTPz
         ie4yuvLyThyCVsdBKf17zgfudRes23DMsGQKrIlrpAncjNTwRD7eJHqhAw2VseBf/+Dx
         F63g==
X-Gm-Message-State: ACgBeo3ygxp3iXPFY8laiIRaoodaWT7oU2ZVjKje+0RsTqoe56uOXNJ7
        +1QlizDJyhuvMZEixQwN+O/5zaup7P8=
X-Google-Smtp-Source: AA6agR7Ylgb7kLAodWj5bcdC+5VfVNMcyGmWFC8ITnMjiiT4hoIuEw9HD0dsISweBLz3yoraTjvSsw==
X-Received: by 2002:a5d:55c8:0:b0:226:d1d7:a15f with SMTP id i8-20020a5d55c8000000b00226d1d7a15fmr17622947wrw.249.1662152537654;
        Fri, 02 Sep 2022 14:02:17 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f15-20020adfb60f000000b00226d1b81b45sm2640252wre.27.2022.09.02.14.02.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Sep 2022 14:02:17 -0700 (PDT)
Message-ID: <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
Date:   Fri, 2 Sep 2022 23:02:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
To:     JeanHeyd Meneide <wg14@soasis.org>
Cc:     Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
 <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------VpClCS0Hem6ECdHR5p4idrxR"
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
--------------VpClCS0Hem6ECdHR5p4idrxR
Content-Type: multipart/mixed; boundary="------------ZahBjf00GTMHHbK0Bxvnk18b";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: JeanHeyd Meneide <wg14@soasis.org>
Cc: Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org
Message-ID: <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
 <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
In-Reply-To: <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>

--------------ZahBjf00GTMHHbK0Bxvnk18b
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmVhbkhleWQhDQoNCkknbSBmb3J3YXJkaW5nIHlvdXIgZW1haWwgdG8gdGhlIG1haWxp
bmcgbGlzdCwgZnJvbSBteSBwb3N0LTE5OTYgbWFpbCANCmNsaWVudCA7KQ0KDQpJIGhvcGUg
YWxsIG9mIHlvdXIgY29udGVudCBpcyBrZXB0IChldmVuIGlmIHNsaWdodGx5IGRlZ3JhZGVk
KS4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCg0KDQotLS0tLS0tLSBGb3J3YXJkZWQgTWVzc2Fn
ZSAtLS0tLS0tLQ0KU3ViamVjdDogCVJlOiBbUEFUQ0hdIFZhcmlvdXMgcGFnZXM6IFNZTk9Q
U0lTOiBVc2UgVkxBIHN5bnRheCBpbiANCmZ1bmN0aW9uIHBhcmFtZXRlcnMNCkRhdGU6IAlG
cmksIDIgU2VwIDIwMjIgMTY6NTY6MDAgLTA0MDANCkZyb206IAlKZWFuSGV5ZCBNZW5laWRl
IDx3ZzE0QHNvYXNpcy5vcmc+DQpUbzogCUFsZWphbmRybyBDb2xvbWFyIDxhbHgubWFucGFn
ZXNAZ21haWwuY29tPg0KQ0M6IAlJbmdvIFNjaHdhcnplIDxzY2h3YXJ6ZUB1c3RhLmRlPiwg
bGludXgtbWFuQHZnZXIua2VybmVsLm9yZw0KDQoNCg0KSGkgQWxlamFuZHJvIGFuZCBJbmdv
LA0KDQogICAgICAgSnVzdCBjaGltaW5nIGluIGZyb20gYSBTdGFuZGFyZHMgcGVyc3BlY3Rp
dmUsIGhlcmUuIFdlIGRpc2N1c3NlZCwgDQpicmllZmx5LCBhIHdheSB0byBhbGxvdyBWYXJp
YWJsZS1MZW5ndGggZnVuY3Rpb24gcGFyYW1ldGVyIGRlY2xhcmF0aW9ucyANCmxpa2UgdGhl
IG9uZXMgc2hvd24gaW4gdGhpcyB0aHJlYWQgKGUuZy4sIGNoYXIgKmdldGN3ZChjaGFyIGJ1
ZltzaXplXSwgDQpzaXplX3Qgc2l6ZSApOykuDQoNCiAgICAgICBJbiBHQ0MsIHRoZXJlIGlz
IGEgR05VIGV4dGVuc2lvbiB0aGF0IGFsbG93cyBleHBsaWNpdGx5IA0KZm9yd2FyZC1kZWNs
YXJpbmcgdGhlIHByb3RvdHlwZS4gVXNpbmcgdGhlIGFib3ZlIGV4YW1wbGUsIGl0IHdvdWxk
IGxvb2sgDQpsaWtlIHNvOg0KDQpjaGFyICpnZXRjd2Qoc2l6ZV90IHNpemU7IGNoYXIgYnVm
W3NpemVdLCBzaXplX3Qgc2l6ZSk7DQoNCihMaXZlIEV4YW1wbGUgWzFdKQ0KDQooTm90ZSB0
aGUgYDtgIGFmdGVyIHRoZSBmaXJzdCAic2l6ZSIgZGVjbGFyYXRpb24pLiBUaGlzIHdhcyBi
cm91Z2h0IA0KYmVmb3JlIHRoZSBDb21taXR0ZWUgdG8gdm90ZSBvbiBmb3IgQzIzIGluIHRo
ZSBmb3JtIG9mIE4yNzgwIFsyXSwgYXJvdW5kIA0KdGhlIEphbnVhcnkgMjAyMiB0aW1lZnJh
bWUuIFRoZSBwYXBlciBkaWQgbm90IHBhc3MsIGFuZCBpdCB3YXMgc2VlbiBhcyBhIA0KImZh
aWxlZCBleHRlbnNpb24iLiBBZnRlciB0aGUgdm90ZSBvbiB0aGF0IGZhaWxlZCwgd2UgdGFs
a2VkIGFib3V0IG90aGVyIA0Kd2F5cyBvZiBhbGxvd2luZyBwbGFjZXMgd2hldGhlciB0aGVy
ZSB3YXMgc29tZSBhcHBldGl0ZSB0byBhbGxvdyANCiJmb3J3YXJkIHBhcnNpbmciIGZvciB0
aGlzIHNvcnQgb2YgY2FzZS4gVGhhdCBpcywgY291bGQgd2Ugc2ltcGx5IGFsbG93Og0KDQpj
aGFyICpnZXRjd2QoY2hhciBidWZbc2l6ZV0sIHNpemVfdCBzaXplKTsNCg0KdG8gd29yayBh
cyBleHBlY3RlZC4gVGhlIHZvdGUgZm9yIHRoaXMgZGlkIG5vdCBnYWluIGZ1bGwgY29uc2Vu
c3VzIA0KZWl0aGVyLCBidXQgdGhlcmUgd2VyZSBhIGxvdCBvZiBhYnN0ZW50aW9ucyBbM10u
IFdoaWxlIEkgcGVyc29uYWxseSANCnZvdGVkIGluIGZhdm9yIG9mIGFsbG93aW5nIHN1Y2gg
Zm9yIEMsIHRoZXJlIHdhcyBkaXN0aW5jdCB3b3JyeSB0aGF0IA0KdGhpcyB3b3VsZCBwcm9k
dWNlIGlzc3VlcyBmb3Igd2Vha2VyIEMgaW1wbGVtZW50YXRpb25zIHRoYXQgZGlkIG5vdCB3
YW50IA0KdG8gY29tbWl0IHRvIGRlbGF5ZWQgcGFyc2luZyBvciBmb3J3YXJkIHBhcnNpbmcg
b2YgdGhlIGVudGlyZXR5IG9mIHRoZSANCmFyZ3VtZW50IGxpc3QgYmVmb3JlIHJlc29sdmlu
ZyB0eXBlcy4gVGhlcmUgYXJlIGVub3VnaCBhYnN0ZW50aW9ucyANCmR1cmluZyB2b3Rpbmcg
dGhhdCBhIHdvcmtpbmcgaW1wbGVtZW50YXRpb24gd2l0aCBhIHdyaXRldXAgb2YgY29tcGxl
eGl0eSANCndvdWxkIHN3YXkgdGhlIENvbW1pdHRlZSBvbmUgd2F5IG9yIHRoZSBvdGhlci4N
Cg0KVGhpcyBpcyBub3QgdG8gZGlzc3VhZGUgQWxlamFuZHJvJ3MgcG9zaXRpb24sIG9yIHRv
IGJvbHN0ZXIgSW5nbydzIA0KcG9pbnQ7IEknbSBtb3N0bHkganVzdCByZXBvcnRpbmcgdGhl
IENvbW1pdHRlZSdzIHJlc3BvbnNlIGhlcmUuIFRoaXMgaXMgDQphbiB1bnNvbHZlZCBwcm9i
bGVtIGZvciB0aGUgQ29tbWl0dGVlLCBhbmQgYWxzbyBhIGxhcmdlciBob2xkb3ZlciBmcm9t
IA0KdGhlIHJlbW92YWwgb2YgSyZSIGRlY2xhcmF0aW9ucyBmcm9tIEMyMywgd2hpY2ggQ09V
TEQgc29sdmUgdGhpcyBwcm9ibGVtOg0KDQovLyBkZWNsDQpjaGFyICpnZXRjd2QoKTsNCg0K
Ly8gaW1wbA0KY2hhciogZ2V0Y3dkKGJ1Ziwgc2l6ZSkNCmNoYXIgYnVmW3NpemVdOw0KICAg
ICAgIHNpemVfdCBzaXplOw0Kew0KICAgICAgIC8qIGltcGwgaGVyZSAqLw0KfQ0KDQogICAg
ICAgVGhlcmUgaXMgcm9vbSBmb3IgaW5ub3ZhdGlvbiBoZXJlLCBvciBwZXJoYXBzIGJvbHN0
ZXJpbmcgb2YgdGhlIA0KR0NDIG9yaWdpbmFsIGV4dGVuc2lvbi4gQXMgaXQgc3RhbmRzIHJp
Z2h0IG5vdywgY29tcGlsZXJzIG9ubHkgdmVyeSANCnJlY2VudGx5IHN0YXJ0ZWQgdGFraW5n
IFZhcmlhYmx5LU1vZGlmaWVkIFR5cGUgcGFyYW1ldGVycyBhbmQgU3RhdGljIA0KRXh0ZW50
IHBhcmFtZXRlcnMgc2VyaW91c2x5IGFmdGVyIGNhcmVmdWxseSBzZXBhcmF0aW5nIHRoZW0g
b3V0IG9mIA0KVmFyaWFibGUtTGVuZ3RoIEFycmF5cywgd2FybmluZyB3aGVyZSB0aGV5IGNh
biB3aGVuIHN0YXRpYyBvciBvdGhlciANCmFycmF5IHBhcmFtZXRlcnMgZG8gbm90IG1hdGNo
IGJ1ZmZlciBsZW5ndGhzIGFuZCBzby1vbi4NCg0KICAgICAgIE5vdCBqdXN0IHRvIHRoZSBm
b2xrcyBpbiB0aGlzIHRocmVhZCwgYnV0IHRvIHRoZSBicm9hZGVyIA0KY29tbXVuaXR5IGZv
ciBhbnlvbmUgd2hvIGlzIHBheWluZyBhdHRlbnRpb246IFdHMTQgd291bGQgYWN0aXZlbHkg
bGlrZSANCnRvIHNvbHZlIHRoaXMgcHJvYmxlbS4gSWYgc29tZW9uZSBjYW46DQotIHByb3Zl
IG91dCBhIHdheSB0byBkbyBkZWxheWVkIHBhcnNpbmcgdGhhdCBpcyBub3QgaW1wbGVtZW50
YXRpb24tY29zdGx5LA0KLSByZXZpdmUgdGhlIGNvbnNpZGVyZWQtZGVhZCBHQ0MgZXh0ZW5z
aW9uLCBvcg0KLSBwcm92aWRlIGEgM3JkIG9yIDR0aCB3YXkgdG8gc3VwcG9ydCB0aGUgZ29h
bHMsDQoNCkkgYW0gY2VydGFpbiBXRzE0IHdvdWxkIGxvb2sgZmF2b3JhYmx5IHVwb24gc3Vj
aCBhIHRoaW5nIGV2ZW50dWFsbHksIA0KYnJvdWdodCBiZWZvcmUgdGhlIENvbW1pdHRlZSBp
biBpbmNsdXNpb24gZm9yIEMyeS9DM2EuDQoNCiAgICAgICBXaGV0aGVyIG9yIG5vdCB5b3Ug
ZmVlbCBsaWtlIHRoZSBtYW5wYWdlcyBhcmUgdGhlIGJlc3QgcGxhY2UgdG8gDQpzdGFydCB0
aGF0LCBJJ2xsIGxlYXZlIHVwIHRvIHlvdSENCg0KVGhhbmtzLA0KSmVhbkhleWQNCg0KWzFd
OiBodHRwczovL2dvZGJvbHQub3JnL3ovZHYxRzNxR2EzIDxodHRwczovL2dvZGJvbHQub3Jn
L3ovZHYxRzNxR2EzPg0KWzJdOiBodHRwczovL3d3dy5vcGVuLXN0ZC5vcmcvanRjMS9zYzIy
L3dnMTQvd3d3L2RvY3MvbjI3ODAucGRmIA0KPGh0dHBzOi8vd3d3Lm9wZW4tc3RkLm9yZy9q
dGMxL3NjMjIvd2cxNC93d3cvZG9jcy9uMjc4MC5wZGY+DQpbM106IGh0dHBzOi8vd3d3Lm9w
ZW4tc3RkLm9yZy9qdGMxL3NjMjIvd2cxNC93d3cvZG9jcy9uMjk5MS5wZGYgDQo8aHR0cHM6
Ly93d3cub3Blbi1zdGQub3JnL2p0YzEvc2MyMi93ZzE0L3d3dy9kb2NzL24yOTkxLnBkZj4g
LSBzZWFyY2ggDQpmb3IgbjI3ODANCg==

--------------ZahBjf00GTMHHbK0Bxvnk18b--

--------------VpClCS0Hem6ECdHR5p4idrxR
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMSb08ACgkQnowa+77/
2zI3wA/+I4LZACudmHX56h4w1vZzCoKoB0gCaK+t8WqNogJYiJjtiXe79XVJ+SUx
V7eFj+zoxdplit1UAgU34PChG4BSW7buGYlTRYNuQZVaOhyiBUZjJXJb8//zUjMO
xvGgtRF6AtwFrE+SM6JVEQUqbvEzl9oQqS5gycgZg8Aqb0OnLZQlasBX7ZbLFIjx
lwR/thLcOf0qQlCKN8WP5onSqRF3cLq221jBD+hk6jTyG8pFDP54hmoywE3uXIMK
OYyvfSXeUYyVm4bJ15zSi0e77sOeyFxPp4aVkXe4paQch/3qeE9rZHxeJ7CvT1Rg
ET5SUg7gWdcGzWmG2+KVD2FzVkXPwgqTd+arPnyocYZ+bD6FFFjhcEY1wosHnscS
okct0VpeO8LdoqDs0S8EuJi62W7EAfw7MlWMmtMXIWGfprxq8hv6PBxxawxNm81K
CrhbwnIT+IVN3pERx93e45JXrNqBJ+LVzIl1nkU7tN5Tzah07Em3XaTX2AlNKU+d
9PrifqZmOtUut4C3Rpm2kolgIQkI/VsArJf7fMLNQ4VPB130ZfO4iWqkiwdObzDD
g8u2xb6lW0IwVEMBc2wuFOkxUisfZT+CKvUfNKpAIqJfAlqKcEFW/J9aVLCZaGNw
oKl6pyAP2kVxxHELX6Pcczl53qZltNgpaaiRq0QZSr/So8UGCt4=
=13px
-----END PGP SIGNATURE-----

--------------VpClCS0Hem6ECdHR5p4idrxR--
