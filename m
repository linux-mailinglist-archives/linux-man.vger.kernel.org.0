Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A790966018B
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 14:49:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234465AbjAFNtw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Jan 2023 08:49:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234457AbjAFNto (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Jan 2023 08:49:44 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7717F777F7
        for <linux-man@vger.kernel.org>; Fri,  6 Jan 2023 05:49:43 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id ay2-20020a05600c1e0200b003d22e3e796dso1130334wmb.0
        for <linux-man@vger.kernel.org>; Fri, 06 Jan 2023 05:49:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O7tw7u7hqsKFuRTOU1C3LnGRqFgFCEXL+/MZZQQUGeg=;
        b=pi0qvOeAYD4jFi60sf7q8oWx74Kq4YMV2ZGLS6qfWeY+X2nGgBKYeyh+gRVM6IbE1j
         HbzzFc4AgxF9mxQdV+MMqohp8bP8e/xLH/djmZOeMRV8gciSP0VCP07txQzn2NklW4Qr
         V/PJ6SaDQ6IugTxT0tE432rei0xrYytbvmVslLkm1TKjfj103hJf/ri+IjfClorLEhGw
         fMtYQdzj5u4R1xf1/CDxVF3TB9M++Xk7DXXa2yjgZWR5GJPjFuh9wACswfMQ2FRu6eEK
         TSL42LV/ybkLx+xdWwsODic0JinZNjrEeU8ODeyBMbt9usdGKgik0Wk+E813bS+HCjL1
         QEzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=O7tw7u7hqsKFuRTOU1C3LnGRqFgFCEXL+/MZZQQUGeg=;
        b=aldbmgKusQjt0HasGYJ7fFpiHM/wQrIiPzql9bWRylZoN4vP36YUgJTxyN2O02fYxJ
         kPM4oPBzjA9R6SSV4J2/cWiEFipHVHS2vNeNmNxGe75wM1/pEA+ynMR5LugqzE1ZfC/h
         rbxoeG5wIzCFke2Gn+HZNH8nx3vp0xxMPwUSD6L1ukl0hVmVe6MLLEmhcVi3rCa2adLI
         RvY83N8b5Joeof5bvcBc6K5ACphFlIhhxannhXDIPxV/kFirGaEvR4sXsxp34DxPMPyD
         K8tR9IwbZHTURfIbXEUjZfwaZ7LOA6Ni4Jq+ukjOfdXSoZHT0KfOT0V7QTAWxglg82gD
         eKPQ==
X-Gm-Message-State: AFqh2ko1BaPEaWbBYmIMXxI42XEDr8VFdVo/kTZcp3kF9RsneaQ4X99f
        wjV1LTlgp922INWQqrSVAmk=
X-Google-Smtp-Source: AMrXdXtf4e8QCi8/2KlFBb01zJNBw3DphE66B0A1zOwppx7ycO2KP6ASe5bJ7CxNWdXQTXXYksV1/w==
X-Received: by 2002:a05:600c:3509:b0:3cf:ae53:9193 with SMTP id h9-20020a05600c350900b003cfae539193mr39595304wmq.39.1673012981885;
        Fri, 06 Jan 2023 05:49:41 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g14-20020a05600c310e00b003cf5ec79bf9sm1973744wmo.40.2023.01.06.05.49.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 05:49:41 -0800 (PST)
Message-ID: <4f7b15d2-d7c0-babf-4a14-b4d3311733e1@gmail.com>
Date:   Fri, 6 Jan 2023 14:49:33 +0100
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
References: <PAWPR08MB898218EE6B27DED9CAA12F2C83FB9@PAWPR08MB8982.eurprd08.prod.outlook.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <PAWPR08MB898218EE6B27DED9CAA12F2C83FB9@PAWPR08MB8982.eurprd08.prod.outlook.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1izCpmSiwvJEtPj9stxKXzps"
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
--------------1izCpmSiwvJEtPj9stxKXzps
Content-Type: multipart/mixed; boundary="------------4ukn1oZt4KE2y2T0VNvkCxGp";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Wilco Dijkstra <Wilco.Dijkstra@arm.com>, Paul Eggert
 <eggert@cs.ucla.edu>,
 Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
 "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Cc: Alejandro Colomar <alx@kernel.org>,
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <4f7b15d2-d7c0-babf-4a14-b4d3311733e1@gmail.com>
Subject: Re: [PATCH] bind.2, mount_setattr.2, openat2.2, perf_event_open.2,
 pidfd_send_signal.2, recvmmsg.2, seccomp_unotify.2, select_tut.2, sendmmsg.2,
 set_thread_area.2, sysctl.2, bzero.3, getaddrinfo.3, getaddrinfo_a.3,
 getutent.3, mbrtowc.3, mbsinit.3, rti...
References: <PAWPR08MB898218EE6B27DED9CAA12F2C83FB9@PAWPR08MB8982.eurprd08.prod.outlook.com>
In-Reply-To: <PAWPR08MB898218EE6B27DED9CAA12F2C83FB9@PAWPR08MB8982.eurprd08.prod.outlook.com>

--------------4ukn1oZt4KE2y2T0VNvkCxGp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgV2lsY28sDQoNCk9uIDEvNi8yMyAwMzoyNiwgV2lsY28gRGlqa3N0cmEgd3JvdGU6DQo+
IEhpIEFsZXgsDQo+IA0KPj4gTWFueSBwcm9qZWN0cyByZWRlZmluZSB0aG9zZSBmdW5jdGlv
bnMgdGhlbXNlbHZlcywgd2l0aCBhbHRlcm5hdGl2ZSBuYW1lcywgc28NCj4+IGl0J3MgaGFy
ZCB0byByZWFsbHkgY291bnQgaG93IG11Y2ggaXMgdGhlIGludGVudGlvbiBvZiBwcm9qZWN0
cyB0byB1c2UgaXQsDQo+PiByYXRoZXIgdGhhbiBhY3R1YWwgdXNlLsKgIFNpbmNlIHRoZSBz
dGFuZGFyZHMgZG9uJ3QgZ3VhcmFudGVlIHN1Y2ggZnVuY3Rpb25zLA0KPj4gcHJvamVjdHMg
dGhhdCBjYXJlIGEgbG90LCB1c2UgYSBwb3J0YWJsZSBuYW1lIChvbmUgdGhhdCBpc24ndCBy
ZXNlcnZlZDsNCj4+IHNvbWV0aW1lcyB0aGV5IGRvbid0IGV2ZW4ga25vdyB0aGF0IHRoZXJl
J3MgYSBHTlUgZXh0ZW5zaW9uIHdpdGggdGhhdCBuYW1lIGFuZA0KPj4gdXNlIGEgd2VpcmQg
b25lLCBzdWNoIGFzIGNweW1lbSgpIGJ5IG5naW54KS4NCj4gDQo+IFllYWggcG9ydGFiaWxp
dHkgaXMgYSBiaWcgaXNzdWUgd2l0aCB0aGVzZSBub24tc3RhbmRhcmQgZnVuY3Rpb25zLiBT
byBldmVuIGlmIHlvdQ0KPiBhcmVuJ3QgY29uc2lkZXJpbmcgdGhlIGxhcmdlIGNvc3Qgb2Yg
c3VwcG9ydGluZyB0aGVzZSBmdW5jdGlvbnMgaW4gQyBsaWJyYXJpZXMsIHRoZXJlDQo+IGFy
ZSBhbHNvIGNvc3RzIGluIG1ha2luZyBhcHBsaWNhdGlvbnMgcG9ydGFibGUsIHByZWNpc2Vs
eSBiZWNhdXNlIG5vdCBhbGwgQyBsaWJyYXJpZXMNCj4gd2lsbCBzdXBwb3J0IGl0Li4uDQo+
IA0KPj4gVGhlIHRoaW5nIGlzIHRoYXQgdGhvc2UgQVBJcyBhcmUgYmV0dGVyIChpbWFnaW5l
IHRoYXQgdGhleSB3ZXJlIGFsbCBzdGFuZGFyZCwNCj4+IGFuZCB3ZXJlIGFsbCBlcXVhbGx5
IGtub3duIGJ5IHByb2dyYW1tZXJzOyB3aGljaCBvbmVzIHdvdWxkIHlvdSB1c2U/KS7CoCBT
b21lDQo+PiBwcm9ncmFtbWVycyB3aWxsIHdhbnQgdG8gdXNlIHRoZSBiZXR0ZXIgQVBJcywg
aW5kZXBlbmRlbnRseSBvZiBsaWJjIHByb3ZpZGluZyBpdA0KPj4gb3Igbm90LsKgIEluIHNv
bWUgY2FzZXMsIGZvciBoaWdoIHBlcmZvcm1hbmNlIHByb2dyYW1zLCBnb29kIEFQSXMgYXJl
IGV2ZW4gbW9yZQ0KPj4gcmVsZXZhbnQuwqAgTm90IGltcGxlbWVudGluZyB0aGVtIGluIGxp
YmMsIHdpbGwgb25seSBtZWFuIHRoYXQgcHJvamVjdHMgd2lsbCByb2xsDQo+PiB0aGVpciBv
d24uDQo+IA0KPiBObywgdGhlIHVzZSBvZiBub24tc3RhbmRhcmQgZnVuY3Rpb25zIGlzIHRo
ZSBwcm9ibGVtIGhlcmUuIGJ6ZXJvIHdhcyBkZXByZWNhdGVkDQo+IG1vcmUgdGhhbiAyMCB5
ZWFycyBhZ28sIGRvIHlvdSB0aGluayBDIGxpYnJhcmllcyB3aWxsIGFkZCBzdXBwb3J0IGFu
ZCBvcHRpbWl6ZSBpdA0KPiBldmVuIGlmIHRoZXkgbmV2ZXIgc3VwcG9ydGVkIGl0IGJlZm9y
ZT8NCg0KV2hpY2ggQyBsaWJyYXJpZXMgbmV2ZXIgc3VwcG9ydGVkIGJ6ZXJvKDMpPyAgSXQg
d2FzIGluIFBPU0lYIG9uY2UsIHNvIEkgZ3Vlc3MgDQppdCdzIHN1cHBvcnRlZCBldmVyeXdo
ZXJlIGluIFVuaXgoLWxpa2UpIHN5c3RlbXMgKHlvdSBjYW4gc2VlIHRoYXQgSSBkb24ndCBj
YXJlIA0KYXQgYWxsIGFib3V0IG90aGVyIHN5c3RlbXMpLiAgRXZlbiBpZiBvbmx5IGZvciBi
YWNrd2FyZHMgY29tcGF0aWJpbGl0eSwgdGhlIA0KcmVtb3ZhbCBmcm9tIFBPU0lYIHdpbGwg
aGF2ZSBub3QgYWZmZWN0ZWQgdGhlIHBvcnRhYmlsaXR5IG9mIGJ6ZXJvKDMpIGluIHNvdXJj
ZSANCmNvZGUgKGV2ZW4gd2hlcmUgbGliYyBoYXMgcmVtb3ZlZCBpdCwgdGhlIGNvbXBpbGVy
IHdpbGwgcHJvdmlkZSBzdXBwb3J0KS4NCg0KPiBJZiBpdCdzIG5vbi1zdGFuZGFyZCwgaXQn
cyBuZXZlciBnb2luZyB0bw0KPiBoYXBwZW4uDQoNClNvLCBJIGRvbid0IHRoaW5rIHRoYXQn
cyBhIHJlYWwgcHJvYmxlbSB5ZXQuICBXZSdyZSBub3QgeWV0IChvciBJIGJlbGlldmUgc28p
IGluIA0KYSBwb2ludCB3aGVyZSBiemVybygzKSBpcyBub24tcG9ydGFibGUgaW4gc291cmNl
IGNvZGUuDQoNCj4gDQo+IElmIHdlIGNvbnRpbnVlIHdpdGggdGhlIG1lbXBjcHkgdnMgbWVt
Y3B5IGV4YW1wbGUgb2YgbmdpbngsIEkgcHJlc3VtZQ0KPiBuZ2lueCBpbXBsZW1lbnRzIGNw
eW1lbSgpIHNpbWlsYXIgdG8gdGhpczoNCj4gDQo+ICNpZiBIQVZFX01FTVBDUFlfU1VQUE9S
VA0KPiAgICByZXR1cm4gbWVtcGNweSAocCwgcSwgbik7DQo+ICNlbHNlDQo+ICAgIHJldHVy
biBtZW1jcHkgKHAsIHEsIG4pICsgbjsNCj4gI2VuZGlmDQo+IA0KPiBUaGUgZGVmaW5lIHdv
dWxkIGJlIHNldCBieSBhIHNwZWNpYWwgY29uZmlndXJlIGNoZWNrLg0KDQpFdmVuIHNpbXBs
ZXI6IGl0IGlzIHVuY29uZGl0aW9uYWxseSBkZWZpbmVkIHRvIG1lbWNweSgpICsgbGVuIGlu
IGEgbWFjcm8uDQoNClRoZSByZWFzb24gKEkgZ3Vlc3MpIGlzIHRoYXQgdGhleSBkaWRuJ3Qg
ZXZlbiBrbm93IHRoYXQgbWVtcGNweSgpIGV4aXN0cy4NCg0KPiANCj4gTm93IGlmIG5naW54
IGdvdCBzYXkgMTAlIGZhc3RlciBmcm9tIHVzaW5nIG1lbXBjcHkgdGhlbiB0aGF0IHdvdWxk
DQo+IGJlIGdyZWF0IGFuZCBpdCB3b3VsZCBiZSB3b3J0aCB0aGUgdHJvdWJsZS4gSG93ZXZl
ciB0aGVyZSBpcyBubyBkaWZmZXJlbmNlDQo+IHNpbmNlIGNvbXBpbGVycyB0eXBpY2FsbHkg
Z2VuZXJhdGUgaWRlbnRpY2FsIGNvZGUgZm9yIHRoZXNlIGNhc2VzLg0KDQpBY3R1YWxseSwg
Z2NjIG9wdGltaXplcyBkaWZmZXJlbnRseS4gIFdoZW4geW91IGNhbGwgbWVtcGNweSgzKSwg
c2luY2UgaXQga25vd3MgDQppdCBleGlzdHMsIGl0IGNhbGxzIGl0IG9yIHJlcGxhY2VzIGl0
IGJ5IG1lbWNweSgzKStsZW4sIGRlcGVuZGluZyBvbiANCm9wdGltaXphdGlvbiBmbGFncy4g
IFdoZW4geW91IGNhbGwgbWVtY3B5KDMpK2xlbiwgc2luY2UgaXQgZG9lc24ndCBrbm93IGlm
IA0KbWVtcGNweSgzKSBpcyBhdmFpbGFibGUsIGl0IGtlZXBzIHRoZSBtZW1jcHkoMykgY2Fs
bCBhbHdheXMuDQoNCj4gU28gd2hhdCdzDQo+IHRoZSBwb2ludCBvZiBtZW1wY3B5IGV4YWN0
bHk/DQoNClRoZSBwb2ludCBvZiBtZW1wY3B5KDMpIGlzIHRoYXQgaXQncyB0aGUgc2ltcGxl
c3QgbGliYyBBUEkgdG8gY2F0ZW5hdGUgc3RyaW5ncyANCndoZW4geW91IGtub3cgdGhlIGxl
bmd0aCBvZiB0aGUgc291cmNlIHN0cmluZ3MsIGFuZCB5b3UgYWxzbyB3YW50IHRvIGtub3cg
dGhlIA0KbGVuZ3RoIG9mIHRoZSByZXN1bHRpbmcgc3RyaW5nLCBhbmQgeW91IGtub3cgdGhl
cmUgd2lsbCBiZSBubyB0cnVuY2F0aW9uLg0KDQpFeGFtcGxlOg0KDQpzcmMvbnh0X2gxcHJv
dG8uYzoyMjg3OiAgICBwID0gbnh0X2NweW1lbShwLCByLT5tZXRob2QtPnN0YXJ0LCByLT5t
ZXRob2QtPmxlbmd0aCk7DQpzcmMvbnh0X2gxcHJvdG8uYy0yMjg4LSAgICAqcCsrID0gJyAn
Ow0Kc3JjL254dF9oMXByb3RvLmM6MjI4OTogICAgcCA9IG54dF9jcHltZW0ocCwgci0+dGFy
Z2V0LnN0YXJ0LCByLT50YXJnZXQubGVuZ3RoKTsNCnNyYy9ueHRfaDFwcm90by5jOjIyOTA6
ICAgIHAgPSBueHRfY3B5bWVtKHAsICIgSFRUUC8xLjFcclxuIiwgMTEpOw0Kc3JjL254dF9o
MXByb3RvLmM6MjI5MTogICAgcCA9IG54dF9jcHltZW0ocCwgIkNvbm5lY3Rpb246IGNsb3Nl
XHJcbiIsIDE5KTsNCg0KDQpBbnkgb3RoZXIgZnVuY3Rpb24gd2lsbCBlaXRoZXIgYmUgc2xv
d2VyIChzdHBjcHkoMykgd2lsbCBsaWtlbHkgYmUgc2xvd2VyKSwgb3IgDQptYWtlIHRoZSBj
b2RlIG1vcmUgY29tcGxleCAobWVtY3B5KDMpIHdpbGwgcmVxdWlyZSBhZGRpbmcgKy4uLiBl
dmVyeXdoZXJlKS4NCg0KSSdtIG5vdCBzYXlpbmcgdGhhdCB0aGlzIHdpbGwgYmUgc2lnbmlm
aWNhbnRseSBmYXN0ZXIgdGhhbiBtZW1jcHkoMyksIGJ1dCBpdCANCndpbGwgYmUgYXQgbGVh
c3QgYXMgZmFzdCAoYW5kIG5lZ2xpZ2libHkgZmFzdGVyIGlmIGxpYmMgb3B0aW1pemVkIG1l
bXBjcHkoMyksIA0KYnV0IHRoYXQncyBuZWdsaWdpYmxlKS4NCg0KPiANCj4gQnkgYWxsIG1l
YW5zLCBjcmVhdGUgeW91ciBvd24gc3BlY2lhbCBjb3B5IGludGVyZmFjZSBmdW5jdGlvbiAt
IGl0J3MganVzdCBzdWdhci4NCj4gQnV0IGRlY2lkaW5nIHRoYXQgbWVtcGNweSBpcyBncmVh
dCBhbmQgdGhlbiBiZWluZyBmb3JjZWQgdG8gZG8gZXh0cmEgd29yaw0KPiB0byBtYWtlIGl0
IHBvcnRhYmxlIGZvciBubyBnYWluIGlzIHdoYXQgSSBmaW5kIGluc2FuZS4uLg0KDQogRnJv
bSBhIHNvdXJjZSBjb2RlIHBvaW50IG9mIHZpZXcsIHRoZXkgbGV0IHByb2dyYW1tZXJzIHdy
aXRlIGJldHRlci9zaW1wbGVyIA0Kc291cmNlIGNvZGUgdGhhbiBtZW1jcHkoMykgb3IgbWVt
c2V0KDMpLiAgVGhhdCdzIHN1Z2FyLi4uIHllcy4gIElNTywgaXQncyB3b3J0aCBpdC4NCg0K
PiANCj4+IFdoZXJlIGRvIHlvdSBzdWdnZXN0IHRoYXQgd2UgcHV0IHN1Y2ggZnVuY3Rpb24/
wqAgSW4gb3Igb3V0IG9mIGxpYmM/DQo+IA0KPiBXZWxsIHlvdSBtZW50aW9uZWQgdGhhdCBu
Z2lueCBhbmQgbWFueSBvdGhlciBwcm9ncmFtcyBhbHJlYWR5IGRlZmluZSB0aGVpcg0KPiBv
d24gbWVtY3B5IHZhcmlhbnRzLiBJdCdzIHBlcmZlY3RseSByZWFzb25hYmxlIHRvIGRvIHdo
YXQgeW91IHByb3Bvc2VkIGFuZA0KPiBjcmVhdGUgYSBsaWJyYXJ5IG9mIGlubGluZSBzdHJp
bmcgZnVuY3Rpb25zIHVzaW5nIHN0YW5kYXJkIGNhbGxzIGFzIHByaW1pdGl2ZXMuDQo+IElm
IGl0IGlzIGEgZnJlZWx5IHVzYWJsZSBhbmQgcG9ydGFibGUsIGFueSBwcm9qZWN0IHRoYXQg
bGlrZXMgaXQgY291bGQganVzdCBhZGQgaXQuDQoNCkhhdmluZyBpdCBpbiBsaWJjIHJhdGhl
ciB0aGFuIGFuIGV4dGVybmFsIGxpYnJhcnkgaGFzIHRoZSBiZW5lZml0IHRoYXQgaXQgd2ls
bCANCmhhdmUgc3VwcG9ydCBmcm9tIHRoZSBjb21waWxlciAoYmV0dGVyIHdhcm5pbmdzIGFu
ZCBvcHRpbWl6YXRpb25zKS4NCg0KQnV0IHllcywgZm9yIHRoZSB0aW1lIGJlaW5nLCBJJ2xs
IGtlZXAgZGV2ZWxvcGluZyBzdWNoIGFuIGV4dGVybmFsIGxpYnJhcnkuDQoNCj4gDQo+IENo
ZWVycywNCj4gV2lsY28NCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5l
cy8+DQo=

--------------4ukn1oZt4KE2y2T0VNvkCxGp--

--------------1izCpmSiwvJEtPj9stxKXzps
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO4Ju0ACgkQnowa+77/
2zJ5dg/8C9Q345B8VWmYXtOKT0UzkDapyXOMmDdeA2+nCSLuyah3FI3kzkWskJwk
3E2hmqE5sVeosl9FgsMM7FvZLWwvLW8RtuUODaLPhn/D1ly0iP5q6DLxXbBL7PGP
OXtaqDUCKl/Chf0dJz3e5eNzJ7pBf/0Pg4cvndCU1sxXSuU+IRvhCsWlDTAW5Hmq
8ZgHKsPx1yWiDZjyeNxdGXl8LFwo+08sT74kdJzfQAu7P2kMvVcA8C/3dIz5M6b6
8FWN6tJDCMoH/fg1l82MqoXtWJ3+ojWgcEptngFskWiIzBq6yJ1MUBjKPXIvF9uy
xQ/QFJFuOHkQJqoUc4y/cpdxWbk9q/qr+N8bsHUqxJukFFqzZ18kfXCREVML4pxY
dmGZbixLqFp6OJkhZ/bThOt3+0O2tqajXUpCzsCHgnbN2rMwS2hyIXo5X55JLNYV
MknpTYm6VankQe/D6lUbNlc5sgi1u0ANQHt49dBUKJc/rJDrzbFL9k25GAFJ4WVQ
VIIE+DpsYT5T4JnXNc2V5RhtITpKX9OYz/FSrVjvcEAf9SRL46XeUiMs7+lMgLmp
1LGKQ+V2zgYKRq4LFcwB3cTZwMJQmG1+mkPSResgDm7x2fVmc3nMc3Vt8X9PiyBv
rmV/t5Pjf5lg4pfsEvEpkSDtyE9KwQ6cd4sfnnL4oqHTKDzYURM=
=ESao
-----END PGP SIGNATURE-----

--------------1izCpmSiwvJEtPj9stxKXzps--
