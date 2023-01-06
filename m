Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7922D660425
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 17:21:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230082AbjAFQUo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Jan 2023 11:20:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235376AbjAFQUl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Jan 2023 11:20:41 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 393D07620C
        for <linux-man@vger.kernel.org>; Fri,  6 Jan 2023 08:20:40 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id bs20so1723937wrb.3
        for <linux-man@vger.kernel.org>; Fri, 06 Jan 2023 08:20:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=unyq87B42EXrYyGaitOCL9toMy0qy3SBGVUiCJ4MVNk=;
        b=RKSBc6Hw2hyizEGnrZY88/JuzjKkZfhbFFujUAPOPeSM2wcCNnKbFjRd4EkNxv9G9m
         mhNvAcpRPj4Le1HNmRrkEGcQS5Of/HfAKjZ/+x7vS7kVRNqqnhqsyGNXeQKlxRKxDe6J
         rA2YTEaolMPJGxCf7yQEFGCA/pjlNrSnYumvkp2bhwZrPMiShI0QvXwi8GsxXvL5Ekzm
         UN7RAqhGCSArPnJUJDOneAqM6v9GXJOox22kDdbbHEwAQ98bl0UN37hr5E0VHvw5N+UI
         LXkt4DKEWnl62nQtEYPOn+Ui/a8IswEs6FnwVSuW5Dt4kqisLSLek9rzinYzLPvfA7F2
         h9jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=unyq87B42EXrYyGaitOCL9toMy0qy3SBGVUiCJ4MVNk=;
        b=R7Mk3bAI5Lb2rY5/7C6lzkMJk01jkGNck0mKP0Z/IeAUlOigeA033ppO1RAOhBjQn6
         EKqkA+4hHPPepLffHXIcMt1LGVCw4wnaUyFnsY3Kaxb/Ka8QH0YkPhiPmHJe0drrSo17
         tAXmHVThvwiQva7clkXgiEsHIk9deeFzS/SqLeo/1ZiYyGw2g9NvWwQoWXjk+YCusWLi
         23NtrmROWrr+UnaWMzltIUPAmAbgfoKsxB2ycI6QPueeKkwof2THtYWn7QgWCWR9gBPQ
         C2pXm6l3m9tA/y06Se+4FBeuRE1MDU4dUSODMNtKMc7Ud4/FsNJGARQOqm5WVadfyCrj
         wyZg==
X-Gm-Message-State: AFqh2kq/U5DxbfWtKNcP8bzm0S6oZt1GGJyahnwV8vyXtfh+kXfNrkNo
        rgdXTj77ktcNfPKfyPkLIcQ=
X-Google-Smtp-Source: AMrXdXtHUeA734W7UuD8oAhHTbi5QrKqvi7WIYS3BYAf+ytMROIdtnx3YUO4w+K6wHqajKfPiSKBZQ==
X-Received: by 2002:a05:6000:70a:b0:263:542c:5918 with SMTP id bs10-20020a056000070a00b00263542c5918mr39404534wrb.38.1673022038667;
        Fri, 06 Jan 2023 08:20:38 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q11-20020adf9dcb000000b00268aae5fb5bsm1607716wre.3.2023.01.06.08.20.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 08:20:38 -0800 (PST)
Message-ID: <91de4293-9237-68d5-7743-9519f4259ecb@gmail.com>
Date:   Fri, 6 Jan 2023 17:20:30 +0100
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
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Christian Brauner <brauner@kernel.org>
References: <PAWPR08MB89821938473B0BCE72D99B9083FB9@PAWPR08MB8982.eurprd08.prod.outlook.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <PAWPR08MB89821938473B0BCE72D99B9083FB9@PAWPR08MB8982.eurprd08.prod.outlook.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0Fwg8pp4V8RsyEToT0750TVE"
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
--------------0Fwg8pp4V8RsyEToT0750TVE
Content-Type: multipart/mixed; boundary="------------3c3N5zmbDztC4N0k1fERJznh";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Wilco Dijkstra <Wilco.Dijkstra@arm.com>, Paul Eggert
 <eggert@cs.ucla.edu>,
 Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
 "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Cc: Alejandro Colomar <alx@kernel.org>,
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Christian Brauner <brauner@kernel.org>
Message-ID: <91de4293-9237-68d5-7743-9519f4259ecb@gmail.com>
Subject: Re: [PATCH] bind.2, mount_setattr.2, openat2.2, perf_event_open.2,
 pidfd_send_signal.2, recvmmsg.2, seccomp_unotify.2, select_tut.2, sendmmsg.2,
 set_thread_area.2, sysctl.2, bzero.3, getaddrinfo.3, getaddrinfo_a.3,
 getutent.3, mbrtowc.3, mbsinit.3, rti...
References: <PAWPR08MB89821938473B0BCE72D99B9083FB9@PAWPR08MB8982.eurprd08.prod.outlook.com>
In-Reply-To: <PAWPR08MB89821938473B0BCE72D99B9083FB9@PAWPR08MB8982.eurprd08.prod.outlook.com>

--------------3c3N5zmbDztC4N0k1fERJznh
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgV2lsY28sDQoNCk9uIDEvNi8yMyAxNjo1MywgV2lsY28gRGlqa3N0cmEgd3JvdGU6DQo+
IEhpIEFsZXgsDQo+IA0KPj4gV2hpY2ggQyBsaWJyYXJpZXMgbmV2ZXIgc3VwcG9ydGVkIGJ6
ZXJvKDMpP8KgIEl0IHdhcyBpbiBQT1NJWCBvbmNlLCBzbyBJIGd1ZXNzDQo+PiBpdCdzIHN1
cHBvcnRlZCBldmVyeXdoZXJlIGluIFVuaXgoLWxpa2UpIHN5c3RlbXMgKHlvdSBjYW4gc2Vl
IHRoYXQgSSBkb24ndCBjYXJlDQo+PiBhdCBhbGwgYWJvdXQgb3RoZXIgc3lzdGVtcykuwqAg
RXZlbiBpZiBvbmx5IGZvciBiYWNrd2FyZHMgY29tcGF0aWJpbGl0eSwgdGhlDQo+PiByZW1v
dmFsIGZyb20gUE9TSVggd2lsbCBoYXZlIG5vdCBhZmZlY3RlZCB0aGUgcG9ydGFiaWxpdHkg
b2YgYnplcm8oMykgaW4gc291cmNlDQo+PiBjb2RlIChldmVuIHdoZXJlIGxpYmMgaGFzIHJl
bW92ZWQgaXQsIHRoZSBjb21waWxlciB3aWxsIHByb3ZpZGUgc3VwcG9ydCkuDQo+IA0KPiBU
aGVzZSBmdW5jdGlvbnMgaGF2ZSBjYXVzZWQgcG9ydGFiaWxpdHkgaXNzdWVzIHNpbmNlIG1h
bnkgVU5JWCBzeXN0ZW1zIGRpZG4ndA0KPiBzdXBwb3J0IHRoZW0sIG5laXRoZXIgZGlkIFdp
bmRvd3Mgbm9yIG1vc3Qgb2YgdGhlIGVtYmVkZGVkIHdvcmxkLiBTbyB0aGV5DQo+IGFsd2F5
cyByZXF1aXJlZCBleHRyYSB3b3JrIC0gaWYgeW91IGRvIHRoZSBjb2Rlc2VhcmNoIG9uIGJ6
ZXJvIHlvdSB3aWxsIGZpbmQNCj4gbWFueSBleGFtcGxlcyBvZiB0aG9zZSBoYWNrcyBpbiBl
eGlzdGluZyBjb2RlLg0KPiANCj4gWW91IG1heSBub3QgY2FyZSBhYm91dCBhbnl0aGluZyBv
dXRzaWRlIExpbnV4LA0KDQpJIGRvIGNhcmUgYWJvdXQgbm9uLUxpbnV4LiAgV2hhdCBJIGRv
bid0IGNhcmUgYWJvdXQgaXMgbm9uLVBPU0lYLg0KDQo+IGJ1dCBtYW55IGxpYmNzIHRoYXQg
c3VwcG9ydA0KPiBiemVybyBhcmUgbm90IG9wdGltaXplZC4gRXZlbiBHTElCQyB1c2VkIGEg
c2xvdyBDIGltcGxlbWVudGF0aW9uIGZvciBiemVybw0KPiB1bnRpbCB3ZSBjaGFuZ2VkIGl0
IHRvIGNhbGwgbWVtc2V0LiBJIGhhdmUgbm8gaWRlYSB3aGF0IGFsbCBvdGhlciBsaWJzIGRv
IChhbmQNCj4gZ2l2ZW4gYnplcm8gaXMgZGVhZCwgaXQgZG9lc24ndCBldmVuIG1hdHRlciks
IGJ1dCBiYWQgcGVyZm9ybWFuY2UgaXMgYWxzbyBhDQo+IHBvcnRhYmlsaXR5IGlzc3VlLg0K
PiANCj4+IFNvLCBJIGRvbid0IHRoaW5rIHRoYXQncyBhIHJlYWwgcHJvYmxlbSB5ZXQuwqAg
V2UncmUgbm90IHlldCAob3IgSSBiZWxpZXZlIHNvKSBpbg0KPj4gYSBwb2ludCB3aGVyZSBi
emVybygzKSBpcyBub24tcG9ydGFibGUgaW4gc291cmNlIGNvZGUuDQo+IA0KPiBJdCBuZXZl
ciB3YXMgcG9ydGFibGUgb3Igd2VsbCBvcHRpbWl6ZWQsIHdoaWNoIHdlcmUgcmVhc29ucyB0
byBkZXByZWNhdGUgaXQuDQoNCk9rYXksIEkgZ3Vlc3MgSSdsbCBkcm9wIHRoZSBiemVybygz
KSBwYXRjaCBmb3IgdGhlIG1hbi1wYWdlcywgYW5kIG1heWJlIHdyaXRlIGFuIA0KYWx0ZXJu
YXRpdmUgcGF0Y2ggZG9jdW1lbnRpbmcgYXQgbGVhc3Qgc29tZSBvZiB0aGlzIGRpc2N1c3Np
b24uDQoNCj4gDQo+PiBFdmVuIHNpbXBsZXI6IGl0IGlzIHVuY29uZGl0aW9uYWxseSBkZWZp
bmVkIHRvIG1lbWNweSgpICsgbGVuIGluIGEgbWFjcm8uDQo+PiBUaGUgcmVhc29uIChJIGd1
ZXNzKSBpcyB0aGF0IHRoZXkgZGlkbid0IGV2ZW4ga25vdyB0aGF0IG1lbXBjcHkoKSBleGlz
dHMuDQo+IA0KPiBCdXQgdGhhdCBtZWFucyBpdCB3aWxsIG5ldmVyIHVzZSBtZW1wY3B5IC0g
bm90IGluIHRoZSBzb3VyY2UsIG5vdCBpbiB0aGUgYmluYXJ5Lg0KPiBTbyB0aGV5IGhhdmUg
ZG9uZSB0aGUgcmlnaHQgdGhpbmcsIGFuZCB0aGVyZSBpcyBubyBhcmd1bWVudCB0aGF0IGFk
ZGluZyBvcg0KPiBvcHRpbWl6aW5nIG1lbXBjcHkgaW4gQyBsaWJyYXJpZXMgd2lsbCBpbXBy
b3ZlIG5naW54Lg0KPiANCj4+IEFjdHVhbGx5LCBnY2Mgb3B0aW1pemVzIGRpZmZlcmVudGx5
LsKgIFdoZW4geW91IGNhbGwgbWVtcGNweSgzKSwgc2luY2UgaXQga25vd3MNCj4+IGl0IGV4
aXN0cywgaXQgY2FsbHMgaXQgb3IgcmVwbGFjZXMgaXQgYnkgbWVtY3B5KDMpK2xlbiwgZGVw
ZW5kaW5nIG9uDQo+PiBvcHRpbWl6YXRpb24gZmxhZ3MuwqAgV2hlbiB5b3UgY2FsbCBtZW1j
cHkoMykrbGVuLCBzaW5jZSBpdCBkb2Vzbid0IGtub3cgaWYNCj4+IG1lbXBjcHkoMykgaXMg
YXZhaWxhYmxlLCBpdCBrZWVwcyB0aGUgbWVtY3B5KDMpIGNhbGwgYWx3YXlzLg0KPiANCj4g
SSBkb24ndCBjYXJlIHdoYXQgLU8wIGRvZXMsIHdoYXQgbWF0dGVycyBpcyB0aGF0IGluIGFs
bW9zdCBhbGwgY2FzZXMgbWVtcGNweQ0KPiBnZXRzIG9wdGltaXplZCBpbnRvIG1lbWNweSwg
YW5kIHRoYXQgaXMgdGhlIHJpZ2h0IHRoaW5nIHRvIGRvLg0KPiANCj4+IHNyYy9ueHRfaDFw
cm90by5jOjIyOTA6wqDCoMKgIHAgPSBueHRfY3B5bWVtKHAsICIgSFRUUC8xLjFcclxuIiwg
MTEpOw0KPj4gc3JjL254dF9oMXByb3RvLmM6MjI5MTrCoMKgwqAgcCA9IG54dF9jcHltZW0o
cCwgIkNvbm5lY3Rpb246IGNsb3NlXHJcbiIsIDE5KTsNCj4gDQo+IFN1cmUgYnV0IG9uZSBj
b3VsZCBlcXVhbGx5IGFyZ3VlIHRoYXQgcmV0dXJuaW5nIHNyYyArIGxlbiBpcyB1c2VmdWwg
dG9vOg0KPiANCj4gcCA9IG1lbXNjcHkgKGRlc3QxLCBwLCBzaXplMSk7DQo+IHAgPSBtZW1z
Y3B5IChkZXN0MiwgcCwgc2l6ZTIpOw0KDQpCZSBob25lc3QsIGhvdyBtdWNoIGRvIHlvdSB0
aGluayB0aGlzIHdvdWxkIGJlIHVzZWQ/IDspDQoNCj4gDQo+IE9yIHJldHVybiB0aGUgc2l6
ZSBzbyB5b3UgY2FuIGVhc2lseSBrZWVwIHRyYWNrIG9mIGhvdyBtdWNoIGJ5dGVzIHdlcmUg
Y29waWVkOg0KPiANCj4gY29waWVkICs9IG1lbW5jcHkgKGRlc3QxLCBzcmMxLCBzaXplMSk7
DQo+IGNvcGllZCArPSBtZW1uY3B5IChkZXN0Miwgc3JjMiwgc2l6ZTIpOw0KDQpUaGlzIGtp
bmQgb2YgaW50ZXJmYWNlIGlzIGVycm9yLXByb25lLiAgSW4gbWVtY3B5KDMpIGl0J3Mgbm90
IGEgcHJvYmxlbSwgYmVjYXVzZSANCnRoZXJlJ3Mgbm90IHRydW5jYXRpb24sIGJ1dCBpbiBv
dGhlciBmdW5jdGlvbnMgaXQgaGFzIGJlZW4gdGhlIGNhdXNlIG9mIGJ1Z3MuDQoNCnNucHJp
bnRmKDMpIGhhcyB0aGF0IGludGVyZmFjZSwgYW5kIHRoYXQgb25lIGNhdXNlcyBidWdzLiAg
cCArPSBzbnByaW50ZigpIGlzIA0KYWx3YXlzIHdyb25nLiAgSWYgdGhlcmUncyB0cnVuY2F0
aW9uIChhbmQgeW91IGNhbid0IGtub3cgaXQgYmVmb3JlLWhhbmQsIG9yIA0KeW91J2QgYmUg
Y2FsbGluZyBzcHJpbnRmKDMpKSwgJ3AnIHdpbGwgb3ZlcmZsb3csIGFuZCB0aGUgYmVoYXZp
b3IgaXMgdW5kZWZpbmVkLg0KDQpUaGF0J3Mgd2h5IEkgcHJvcG9zZWQgc3RwZXByaW50Zigp
IHJlY2VudGx5LCB0byBwcmV2ZW50IHN1Y2ggaXNzdWVzLg0KDQpIYXZpbmcgbW9yZSBpbnRl
cmZhY2VzIHByb21vdGluZyB0aGF0IGtpbmQgb2YgcmV0dXJuIHZhbHVlIGlzIHdyb25nLiAg
SSdkIHJhdGhlciANCnJlbW92ZSBhbGwgaW50ZXJmYWNlcyB0aGF0IHJldHVybiB0aGUgbGVu
Z3RoIG9mIHRoZSByZXN1bHRpbmcgc3RyaW5nLCB3aGVuIGEgDQpwb2ludGVyIGNhbiBiZSBy
ZXR1cm5lZC4NCg0KPiANCj4gQW5kIHRoZXJlIGFyZSBsb3RzIG9mIG90aGVyIHBvc3NpYmls
aXRpZXMuDQoNCkFjdHVhbGx5IG5vdCBtYW55Lg0KDQpGb3IgYW4gaW50ZXJmYWNlIHRoYXQg
Y29waWVzIG4gYnl0ZXMgZnJvbSBzIHRvIGQsIHRoZSBwb3NzaWJsZSByZXR1cm4gdmFsdWVz
IGFyZSANCihpZ25vcmluZyB0aGUgcG9zc2liaWxpdHkgb2YgcmV0dXJuaW5nIHRoZSByZXN1
bHQgb2YgYXJjNHJhbmRvbSgzKSA6UCk6DQoNCi0gICh2b2lkKQ0KLSAgcw0KLSAgZA0KLSAg
cyArIG4NCi0gIGQgKyBuDQotICBuDQoNCklnbm9yaW5nIHZvaWQgZm9yIG9idmlvdXMgcmVh
c29ucy4uLg0KDQpzIG9yIHMrbiBhcmUgdXNlbGVzcywgYmVjYXVzZSBtZW1jcHkoMykgaXMg
d2F5IG1vcmUgZnJlcXVlbnRseSB1c2VkIHRvIGNyZWF0ZSBhIA0KbmV3IHN0cmluZyBieSBj
YXRlbmF0aW9uIG9mIG1hbnkgc291cmNlIHN0cmluZ3MsIGNvbXBhcmVkIHRvIHRoZSBmZXcg
dGltZXMgaXQgaXMgDQp1c2VkIHRvIGNvcHkgYSBzaW5nbGUgc291cmNlIHN0cmluZyBpbnRv
IG1hbnkgZGVzdGluYXRpb24gc3RyaW5ncy4NCg0KbiBpbnRlcmZhY2VzIGFyZSBlcnJvci1w
cm9uZSwgYW5kIGRpZmZpY3VsdCB0byB1c2U7IEkgd291bGRuJ3QgcmVjb21tZW5kIGFkZGlu
ZyANCnlldCBhbm90aGVyIG9uZS4NCg0KZCBpcyB1c2VsZXNzLCBiZWNhdXNlIHRoYXQncyBh
IHZhbHVlIHRoYXQncyBhbHJlYWR5IHRoZXJlIGJlZm9yZSB0aGUgY2FsbCwgYW5kIA0KbW9z
dCBjYWxscyB0byBtZW1jcHkoMykgdGhhdCBkb24ndCBpZ25vcmUgdGhlIHJldHVybiB2YWx1
ZSBhcmUgZ29pbmcgdG8gYWRkIHRoZSANCmxlbmd0aCB0byBpdC4gIElzbid0IHRoYXQgYSBn
b29kIGhpbnQgdGhhdCB0aGUgZ29vZCBjaG9pY2Ugd291bGQgaGF2ZSBiZWVuIGQrbiANCmZy
b20gdGhlIGJlZ2lubmluZz8NCg0KPiBTbyB3aG8gaXMgdG8gc2F5IHRoYXQgbWVtcGNweSBp
cyBiZXR0ZXINCj4gdGhhbiBhbGwgdGhlc2Ugb3B0aW9ucz8NCg0KSSBkby4gIEFuZCBjb25z
aWRlcmluZyB0aGF0IHRoZXJlIGFyZSBwcm9qZWN0cyB0aGF0IHJlaW1wbGVtZW50IG1lbXBj
cHkoKSwgYnV0IEkgDQpoYXZlbid0IHNlZW4gYW55IHRoYXQgaW1wbGVtZW50cyAnbWVtc2Nw
eSgpJyBvciAnbWVtbmNweSgpJyAoYXMgc3VnZ2VzdGVkIA0KYWJvdmUpLCBJJ2Qgc2F5IHNv
bWUgb3RoZXIgcHJvZ3JhbW1lcnMgYWxzbyBkby4NCg0KPiANCj4+ICBGcm9tIGEgc291cmNl
IGNvZGUgcG9pbnQgb2YgdmlldywgdGhleSBsZXQgcHJvZ3JhbW1lcnMgd3JpdGUgYmV0dGVy
L3NpbXBsZXINCj4+IHNvdXJjZSBjb2RlIHRoYW4gbWVtY3B5KDMpIG9yIG1lbXNldCgzKS7C
oCBUaGF0J3Mgc3VnYXIuLi4geWVzLsKgIElNTywgaXQncyB3b3J0aCBpdC4NCj4gDQo+IEV4
YWN0bHksIGl0J3MgYW4gb3Bpbmlvbi9wZXJzb25hbCBwcmVmZXJlbmNlLiBBcyBJIHNob3dl
ZCwgdGhlcmUgYXJlIG90aGVyDQo+IHBvc3NpYmxlIHJldHVybiB2YWx1ZXMsIHNvIHNob3Vs
ZCB3ZSBhZGQgYWxsIG9mIHRoZXNlIGludGVyZmFjZXMganVzdCBiZWNhdXNlDQo+IHNvbWUg
cGVvcGxlIG1pZ2h0IGxpa2UgdGhlbT8NCg0KSSdkIGZpcnN0IHdhaXQgdG8gc2VlIHdoZXJl
IGFyZSB0aG9zZSBwZW9wbGUgOikNCg0KPiANCj4+IEhhdmluZyBpdCBpbiBsaWJjIHJhdGhl
ciB0aGFuIGFuIGV4dGVybmFsIGxpYnJhcnkgaGFzIHRoZSBiZW5lZml0IHRoYXQgaXQgd2ls
bA0KPj4gaGF2ZSBzdXBwb3J0IGZyb20gdGhlIGNvbXBpbGVyIChiZXR0ZXIgd2FybmluZ3Mg
YW5kIG9wdGltaXphdGlvbnMpLg0KPiANCj4gTm8uIENvbXBpbGVyIGFuZCBsaWJjIHN1cHBv
cnQgYXJlIHRvdGFsbHkgZGlmZmVyZW50IHRoaW5ncy4gSWYgeW91ciBsaWJyYXJ5IGlzDQo+
IGRlZW1lZCB1c2VmdWwgYW5kIHVzZWQgaW4gbG90cyBvZiBwcm9qZWN0cywgaXQgbWF5IGJl
IHJlYXNvbmFibGUgdG8gYWRkIHRoZQ0KPiBoZWFkZXJzIHRvIEdMSUJDLiBCdXQgdGhpcyB3
aWxsIG5vdCBhZmZlY3QgY29tcGlsZXIgb3B0aW1pemF0aW9uIC0gaXQgd291bGQNCj4gdXNl
IHRoZSBzYW1lIGhlYWRlciBhbmQgcHJvZHVjZSB0aGUgc2FtZSBjb2RlLg0KDQpHQ0MgY2Fu
IHNlZSBwYXR0ZXJucyBpbiBjb2RlIGFuZCByZXBsYWNlIHRoZW0gYnkgdGhlIGZ1bmN0aW9u
LCBidXQgb25seSBpZiB0aGF0IA0KZnVuY3Rpb24gaXMgc3RhbmRhcmQgKGJlaW5nIGluIGds
aWJjIGlzIG5vdCBlbm91Z2gpLiAgSWYgdGhlIGZ1bmN0aW9uIGlzIGluIGFuIA0KZXh0ZXJu
YWwgbGlicmFyeSwgc3VjaCBvcHRpbWl6YXRpb25zIGNhbid0IGJlIHBlcmZvcm1lZC4NCg0K
PiANCj4gQ2hlZXJzLA0KPiBXaWxjbw0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KUC5TLjogIFRv
IGNvbXBlbnNhdGUgZm9yIHRoZSB0aW1lIEknbSB0YWtpbmcgZnJvbSB5b3UsIEknbSBwcmVw
YXJpbmcgYSBwYXRjaCB0byANCnJlbW92ZSByYXdtZW1jaHIoMykgZnJvbSBnbGliYy4gIEkn
bGwgc2VuZCBpdCB3aGVuIGl0J3MgInJlYWR5Ii4gIEFsdGhvdWdoIHNpbmNlIA0KSSBoYXZl
bid0IHNlbnQgbWFueSBwYXRjaGVzIHRvIGdsaWJjLCBJIGd1ZXNzIGl0IHdpbGwgc3RpbGwg
YmUgZmFyIGZyb20gcmVhZHkgOykNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29s
b21hci5lcy8+DQo=

--------------3c3N5zmbDztC4N0k1fERJznh--

--------------0Fwg8pp4V8RsyEToT0750TVE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO4Sk4ACgkQnowa+77/
2zJIiw/+KnNDSOFBKEEH573eed1PP//Aib0u3tmnppu2HmmfLFZboEHhBl148AHU
hu2CQRVnM0BnAQRorYHfrpCNyelF7vXhU00az/95oCC/45foPeF6UtXgN7JIGKoM
+Xa+H7k8pLoocP/yO/sQ//HOs0048SDJnYnWm4rdWLszIf5p7WssWghdlXEfREfC
u3iAxM718MpjGJVr3RpYztG/m/EFPN51kTQI0Dn0+KJp2H0BFxj374HZAEw7Du1i
nxwi/SQNj25WqfIESOzlAfix4fdRT6wf2Vsuvtw7DBD1UOcHOsOb47SFi2e68JM8
5x2XpGxk+yjHWlY16wYDnnphvZWjAbqGXAVdyz0Instc2+3EDFi0VfAW9JBzLYaj
nGvAeB12TOy3FbXwWVshnQD/XmiPRH1TuhEwhcE0TwAfm8h84ZRX/8aWUwnA7qyv
aOera+Oaa2krwRBi04O50/5kmgL7yvlu6DiHGGoUwEy3uZcghwL9b9pD+u7bm/gp
Juaf7/EKq0VP+OVaZagGGUHgEgip0kpNWo7vR6Q4/NTxKHwmjXsPoFjTS5E8RV/k
cmUeLwi1o8a8j45UmbF5kt4UxtDz7jFNSF/kOMzqpPewhtaDW9zEMUJTZqBIwowN
6XqeanaZlcz34xiEGK4P/0WSIR/r9GsxUYxnqBRMu+0D2rpr/3g=
=vLef
-----END PGP SIGNATURE-----

--------------0Fwg8pp4V8RsyEToT0750TVE--
