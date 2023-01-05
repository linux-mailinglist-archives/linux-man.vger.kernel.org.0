Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5CFF565F5DB
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 22:34:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231990AbjAEVeE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 16:34:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233552AbjAEVeD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 16:34:03 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7A0763F7F
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 13:34:00 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id g10so15194311wmo.1
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 13:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wROeFNuahmFJu4sSq1qCh+B+5iCDLHPA4ugj012xpxs=;
        b=kxjzePzLznBV+T1wbPruLv2YXak9sxVJ4Lia0IFYtoboy53zFQixbv2ib856tYtOgH
         YIGfGHgEPVcV7wj9lyXdKQERCNDqhAxnyP9Wdw580DwSzFX7bj2i/L8Cph58ButQQmDb
         y7R5B6S1W07+lok5aSNk2EU/mWlIZcPek30lOe0YP1rhTOQz50WjkO5p8hEWNjXbFYg0
         Ge9+vsDdF8rXEi+r32CzcQSAuTi1ReF9VQJnVVT5JMC+YFqokrW1CzmOrl63YCOGrWoh
         5ygiEpjQRFNjE1ox2OVw4RnMfn7qhJ2yg+k2KWW+5RQH7XFGbY6coA5nEUMM2fyGpaCs
         qxcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wROeFNuahmFJu4sSq1qCh+B+5iCDLHPA4ugj012xpxs=;
        b=tSeSicHdFIOl6a9oRCmyphnQEntj5ZTCNqplRopmLHIJIIDxzWuO+V4/hDpGA3Ysa3
         LMhotfIXX5Sa/uZ+wB6V/rfgqc8RRk59shkBAhL2r3f+Rpygvzy0hkCFyVZ/Zsvou3FP
         JiiT11cW0PgHKutN4DvyzRmh73E8f70jPfKPesy6AKAc6T6YReYZ5WKkOj9wzmQkrAvC
         v8o4+OWttj48lQDyw2np5F03MWxNjwTyEelcuPkWniIRP0dVrSV2LfXzOyRVxCJwpQi1
         IFBj0mmnf47WuIApTItlcfq5hD3+3ZuSpQPm+NPBLBfQUXhAO8thmfKCLIhSfoIJtBaG
         wZdA==
X-Gm-Message-State: AFqh2kpyUcugFKSE0siHqmPHIUwFWrkgey/ybjst7hTiiTjM+1BnS86O
        VPa3SypC3eHjPKzvoiFCJ80=
X-Google-Smtp-Source: AMrXdXsF4pvvdNTBv31dAjh/aGFgyIRijsr6wZhDw/7kHsMtZpP2n3zxqohtsjrwM2Rvg8ezxCULBg==
X-Received: by 2002:a7b:c8ca:0:b0:3cf:728e:c224 with SMTP id f10-20020a7bc8ca000000b003cf728ec224mr37646718wml.6.1672954439348;
        Thu, 05 Jan 2023 13:33:59 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id x2-20020adfec02000000b0025e86026866sm45668584wrn.0.2023.01.05.13.33.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 13:33:58 -0800 (PST)
Message-ID: <7fd4dc6d-6c35-108d-3f19-3583cba5ff6f@gmail.com>
Date:   Thu, 5 Jan 2023 22:33:37 +0100
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
References: <20230105193751.18846-1-alx@kernel.org>
 <2e3e0b30-0fdd-cf17-fa84-a241d2169745@linaro.org>
 <18377873-00df-84fa-a9e9-5d1207e4ea52@cs.ucla.edu>
 <PAWPR08MB8982513ADD350AC12E758ED483FA9@PAWPR08MB8982.eurprd08.prod.outlook.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <PAWPR08MB8982513ADD350AC12E758ED483FA9@PAWPR08MB8982.eurprd08.prod.outlook.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------gYGn9y6t0lbfLJcjDy0qFXon"
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
--------------gYGn9y6t0lbfLJcjDy0qFXon
Content-Type: multipart/mixed; boundary="------------7tUBKWDbFrSc0SL4VkhTzACR";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Wilco Dijkstra <Wilco.Dijkstra@arm.com>, Paul Eggert
 <eggert@cs.ucla.edu>,
 Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
 "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Cc: Alejandro Colomar <alx@kernel.org>,
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <7fd4dc6d-6c35-108d-3f19-3583cba5ff6f@gmail.com>
Subject: Re: [PATCH] bind.2, mount_setattr.2, openat2.2, perf_event_open.2,
 pidfd_send_signal.2, recvmmsg.2, seccomp_unotify.2, select_tut.2, sendmmsg.2,
 set_thread_area.2, sysctl.2, bzero.3, getaddrinfo.3, getaddrinfo_a.3,
 getutent.3, mbrtowc.3, mbsinit.3, rti...
References: <20230105193751.18846-1-alx@kernel.org>
 <2e3e0b30-0fdd-cf17-fa84-a241d2169745@linaro.org>
 <18377873-00df-84fa-a9e9-5d1207e4ea52@cs.ucla.edu>
 <PAWPR08MB8982513ADD350AC12E758ED483FA9@PAWPR08MB8982.eurprd08.prod.outlook.com>
In-Reply-To: <PAWPR08MB8982513ADD350AC12E758ED483FA9@PAWPR08MB8982.eurprd08.prod.outlook.com>

--------------7tUBKWDbFrSc0SL4VkhTzACR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgV2lsY28sIFBhdWwsIGFuZCBBZGhlbWVydmFsLA0KDQpPbiAxLzUvMjMgMjI6MTIsIFdp
bGNvIERpamtzdHJhIHdyb3RlOg0KPiBIaSwNCj4gDQo+Pj4gYnplcm8gaXMgZGVwcmVjYXRl
ZCBieSBQT1NJWC4xLTIwMDEsIHJlbW92ZWQgYnkgUE9TSVguMS0yMDA4LCBhbmQgb24gZ2xp
YmMNCj4+PiBpbXBsZW1lbnRhdGlvbiBub3cgY2FsbHMgbWVtc2V0IChwcmV2aW91c2x5IHNv
bWUgYXJjaGl0ZWN0dXJlIGFkZGVkIGlmdW5jDQo+Pj4gcmVkaXJlY3Rpb24gdG8gb3B0aW1p
emVkIGJ6ZXJvIHRvIGF2b2lkIHRoZSBleHRyYSBmdW5jdGlvbiBjYWxsLCBpdCB3YXMNCj4+
PiByZW1vdmVkIGZyb20gYWxsIGFyY2hpdGVjdHVyZXMpLg0KDQpTdXJlLCBQT1NJWCBwcmVm
ZXJzIG1lbXNldCgzKS4gIEJ1dCB3aHk/ICAiQmVjYXVzZSBpdCBpcyBzdGFuZGFyZCIgaXNu
J3QgYSB2YWxpZCANCnJlYXNvbmluZywgYmVjYXVzZSBQT1NJWCBkZWNpZGVzIHdoYXQgaXMg
c3RhbmRhcmQsIHNvIGl0IHdvdWxkIGJlIGNpcmN1bGFyIA0KcmVhc29uaW5nLg0KDQpBbnl3
YXksIHRoZSBmYWN0IHRoYXQgbGliYyBkb2Vzbid0IHByb3ZpZGUgaXQgaXMgbm90IGEgcHJv
YmxlbSBmb3IgY2FsbGVyczogdGhlIA0KY29tcGlsZXIgcHJvdmlkZXMgaXQuICBBbmQgZXZl
biBpZiB0aGUgY29tcGlsZXIgZHJvcHBlZCBzdXBwb3J0LCBvbmUgY2FuIHdyaXRlIA0KaXQg
d2l0aCBhIG9uZSBsaW5lciwgd2hpY2ggZXZlbiBQT1NJWCBvbmNlIHJlY29tbWVuZGVkWzFd
Og0KDQogICAgICNkZWZpbmUgYnplcm8oYixsZW4pIChtZW1zZXQoKGIpLCAnXDAnLCAobGVu
KSksICh2b2lkKSAwKQ0KDQoNClsxXTogIDxodHRwczovL3B1YnMub3Blbmdyb3VwLm9yZy9v
bmxpbmVwdWJzLzAwOTY5NTM5OS9mdW5jdGlvbnMvYnplcm8uaHRtbD4NCg0KPj4+DQo+Pj4g
QWxzbywgR0NDIGZvciBzb21lIHRpbWUgYWxzbyByZXBsYWNlcyBiemVybyB3aXRoIG1lbXNl
dCBzbyB0aGVyZSBpcyBubyBnYWluDQo+Pj4gaW4gYWN0dWFsbHkgY2FsbCBiemVybyAoY2hl
Y2sgZ2xpYmMgY29tbWl0IDk0MDNiNzFhZTk3ZTNmMWE5MWM3OTZkZGNiYjRlNmYwNDQ0MzQ3
MzQpLg0KDQpObyBnYWluIGluIGdlbmVyYXRlZCBjb2RlOyBidXQgdGhlcmUncyBhIGdhaW4g
aW4gc291cmNlIGNvZGU6IGxlc3MgY29nbml0aXZlIA0KbG9hZC4gIEluc3RlYWQgb2YgMyBh
cmd1bWVudHMsIHRoZSBvcmRlciBvZiB3aGljaCBpcyBub3QgZWFzeSB0byByZW1lbWJlciwg
dGhlIA0KcHJvZ3JhbW1lciBvbmx5IG5lZWRzIHRvIGNhcmUgYWJvdXQgMiwgYW5kIHRoZXkn
cmUgb2J2aW91cy4NCg0KPiANCj4gQWdyZWVkLCB0aGVyZSBpcyBubyBiZW5lZml0IGZyb20g
dXNpbmcgaXQsIGFuZCBjZXJ0YWlubHkgbm8gcmVhc29uIHRvIHRyeSB0byB1bmRvDQo+IGl0
cyByZW1vdmFsLiBXZSBzaG91bGQgcHJvbW90ZSBzdGFuZGFyZHMsIG5vdCB0cnkgdG8gc3Vi
dmVydCB0aGVtLi4uDQoNCkkgZ2VuZXJhbGx5IHByb21vdGUgUE9TSVg7IGJ1dCBhdCB0aGUg
c2FtZSB0aW1lIEknbSBub3QgYmxpbmRseSBmb2xsb3dpbmcgaXQsIA0KYW5kIHdoZW4gaXRz
IGRlY2lzaW9ucyBkb24ndCBtYWtlIHNlbnNlIEkgd2lsbCBkZXZpYXRlIGZyb20gaXQuDQoN
Cj4gQSBtb3JlIHByb2R1Y3RpdmUgd2F5IHdvdWxkIGJlIHRvIHByb3Bvc2UgbmV3IGZ1bmN0
aW9ucyB0byB0aGUgQy9DKysNCj4gY29tbWl0dGVlcy4NCg0KSSBiZWxpZXZlIGluIGV4aXN0
aW5nIHByYWN0aWNlIGFzIGEgd2F5IG9mIGltcHJvdmluZyB0aGUgc3RhbmRhcmRzLiAgSU1P
LCBpdCANCmRvZXNuJ3QgbWFrZSBzZW5zZSB0byBhc2sgUE9TSVggdG8gYWRkIGEgZnVuY3Rp
b24sIGlmIG5vLW9uZSB1c2VzIGl0Lg0KDQpTbyBJIHRoaW5rIGl0IHNob3VsZCBiZSBmaW5l
IHRvIHJlY29tbWVuZCB1c2luZyBhIHdlbGwgZGVzaWduZWQgQVBJLCBhbmQgdXNlIA0KdGhh
dCBhcyBhIHdheSB0byBpbmNyZWFzZSBpdHMgdXNlLCBob3BlZnVsbHkgcmVzdWx0aW5nIGxv
bmctdGVybSBpbiBhIA0KcmVpbmNvcnBvcmF0aW9uIHRvIFBPU0lYLg0KDQpJIGFsc28gZGVm
ZW5kIG1lbXBjcHkoMykgb3ZlciBhbnkgUE9TSVggb3IgSVNPIGFsdGVybmF0aXZlcy4gIEl0
J3Mgc2ltcGx5IA0Kc3VwZXJpb3IgdG8gdGhlIGFsdGVybmF0aXZlcywgYW5kIFBPU0lYIHNo
b3VsZCBzdGFuZGFyZGl6ZSBpdCAoYW5kIEknZCBzYXkgZXZlbiANCmRlcHJlY2F0ZSBtZW1j
cHkoMyksIHdoaWNoIGlzIGEgbWlzZGVzaWduZWQgQVBJLCBidXQgSSB3b24ndCBnbyB0aGF0
IGZhciBmb3Igbm93KS4NCg0KPiANCj4+IEluIGFkZGl0aW9uLCBnY2MgLVdhbGwgd2FybnMg
aWYgeW91IG1pc3Rha2VubHkgcGFzcyAwIGFzIG1lbXNldCdzIDNyZA0KPj4gYXJnLCB3aGlj
aCB1bmRlcmN1dHMgdGhlIGFyZ3VtZW50IHRoYXQgYnplcm8gYXZvaWRzIHNpbGx5IG1pc3Rh
a2VzLg0KPiANCj4gQWxzbyBJIHRoaW5rIEdDQyBzaG91bGQgZ2l2ZSBhIGRlcHJlY2F0ZWQv
b2Jzb2xldGUgd2FybmluZyAob3IgcGVyaGFwcyBlcnJvcj8pDQo+IHdoZW4gdXNpbmcgYnpl
cm8sIGJjbXAsIGJjb3B5LCBpbmRleCwgcmluZGV4IGV0YyBzbyBwZW9wbGUgY2FuIHN0YXJ0
IHJlbW92aW5nDQo+IHRoZSBmZXcgcmVtYWluaW5nIHVzZXMgZnJvbSBhbmNpZW50IGNvZGUu
DQoNClRoZXJlIGFyZSBtYW55IHVzZXJzIG9mIGJ6ZXJvKDMpIGluIHRoZSB3aWxkLCBhbmQg
aXQgaXMgYSBmaW5lIEFQSSBmcm9tIGEgDQp1c2FiaWxpdHkgcG9pbnQgb2Ygdmlldy4gIE5v
dCBiZWluZyBwcm9tb3RlZCBieSBQT1NJWCBvciBJU08gaXMgbm90IGVub3VnaCB0byANCndh
cm4gYWJvdXQgaXRzIHVzZS4gIFdpdGggdGhhdCByZWFzb25pbmcsIHdlIHNob3VsZCB3YXJu
IGFib3V0IG1hbnkgR05VIA0KZXh0ZW5zaW9ucywgYW5kIHNvbWUgb2YgdGhlbSBhcmUgcmVh
bGx5IGZpbmUgKHNvIG11Y2ggdGhhdCBtYW55IGVuZGVkIHVwIGluIFBPU0lYKS4NCg0KSG93
ZXZlciwgaXQgd291bGQgYmUgZmluZSB0byB3YXJuIGFib3V0IHRob3NlIHRoYXQgYXJlIGVy
cm9yLXByb25lOg0KDQotICBiY29weSgzKQ0KDQpBbmQgYWxzbyB3YXJuIGFib3V0IHRob3Nl
IHRoYXQgaGF2ZSBhIGRyb3AtaW4gcmVwbGFjZW1lbnQgaW4gUE9TSVg6DQoNCi0gIGJjbXAo
MykNCi0gIGluZGV4KDMpDQotICByaW5kZXgoMykNCg0KSSB3b3VsZCBlbmRvcnNlIHdhcm5p
bmcgYWJvdXQgdGhvc2UuICBCVFcsIEknbGwgcmV3cml0ZSB0aGUgYmNtcCgzKSBwYWdlIHRv
IHNheSANCml0J3MgaWRlbnRpY2FsIHRvIG1lbWNtcCgzKS4NCg0KPiANCj4gQ2hlZXJzLA0K
PiBXaWxjbw0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5k
cm8tY29sb21hci5lcy8+DQo=

--------------7tUBKWDbFrSc0SL4VkhTzACR--

--------------gYGn9y6t0lbfLJcjDy0qFXon
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO3QjEACgkQnowa+77/
2zK4Hg//ZtF+3eGdOXXvwWTnC1fmVTBFEL31BH5BV8gMZSCMJKKZCdHvn88oCFUP
PjWX7+UAjjogiES08MF/cCMHxavzWtfcnD+uvSz6XI7m3UiNvYl0SgevYwYwEa2k
5BNNIu//gTMbEs+t1FfV44bTbmdRyp4MC3h/OWeyfw1pNnl2UGb/RZnh6/7cbWNp
5BSe4sx+pz7WYe7m1J3RLThYbqX6U1h1wM9NIaaUFoTQ4n34Fy4lxJFeh4zAB6g0
ZTblwoMCvm6lf0k9d8mw7Ehr4SpfO3x849zOFbzOHXOMAI02XrdITiyK/Bx1Oedr
RNaZtwEiO/n3tCFb9NdaG/VelAxCofW+KEbWR9TkwUU/y9hPZuOXNDvSOilxmQhm
wAlWknDd5g6MkV7/YLhxEDoI1T+xw4qUhpAdbpsPO2JQ4S/hr/WQ7AZ5emx7SttF
/KbTJtXhnkJN82XG1nJxdGFitYPRKJ6QYseYirV1oqN5o1Flfpi1p5mug84zH2hF
HEwwPChhjpGaS9EWPuJghJx2i0Q51c1zKr9cqRqD28J1u5jNIiF6NstnRNDC5+F8
LLLr7tSipFLNOoRlb+vIkHMKTP8eP7o2NJxqpfCLFd5rzrwPx19nl5uXxGAOPSy1
3HDvvGrPPF5ERbgQ0SS0gaiSgiS6uGh+gg6bnRDXPqGMaQMzsik=
=cWcc
-----END PGP SIGNATURE-----

--------------gYGn9y6t0lbfLJcjDy0qFXon--
