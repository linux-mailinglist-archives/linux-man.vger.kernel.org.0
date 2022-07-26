Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B79C5819EC
	for <lists+linux-man@lfdr.de>; Tue, 26 Jul 2022 20:48:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231690AbiGZSsL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Jul 2022 14:48:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239617AbiGZSsK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Jul 2022 14:48:10 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68F1333429
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 11:48:09 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id n185so9274883wmn.4
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 11:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=qNSZDzyPd+FfXccGrdLXngz2LSoWv8VE0K5bHpBCKnU=;
        b=VxiR/wWVU7njOJO2fksHoeKJBAARsTu2FWe7bG6GaVaDWw+AmagC/qpXZ9XGpatJwR
         izhVeMypZphOXk5M/R0Bt6tPu6SJutRFyU150OLrojw5Cng8euNPo05XTfcnD48TqBjd
         nKFngp28BCEj00VOuYMiR5X7sbXUC0VWQepma6zQtxt5KdMKJIHIYKedWwuvqnoAIDrt
         ANY88XdGxHdLxQBndZgV2hYDvSpAfR/MMDPrtpv+yM2lGSjlabNMTdbP3YGPzgqhSRdG
         ybaa8Yh534G2dolbTcsPJ8sDn3KqgahG6WqJruTxu4r4oAL7aTI/eFOCOnq3UQ7DQ5xa
         tFPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=qNSZDzyPd+FfXccGrdLXngz2LSoWv8VE0K5bHpBCKnU=;
        b=m7ah0SN1JY48FhOtVkbopEazLIdILBTT+kPMzbvZog2vFWxx/k/ffvuCuUUMFK0vsX
         eGwKPSalkhxknViP2U4ZNgiTdQaSRv/b0fgVPq7V+zbodnEsb9V31QNpseAlVCWb3p6q
         +JYfk92gEqF/VcxXh4me9vBn/yTkvyKfxOQe0zlWtqnY7jjwg1dxG8zyOLGpt7syzIl6
         aOEWDXZufIWVxpqbwHdbmGhQoRYuY/rRAhwHWTkcc6yn7WrkcqOR816shndlPo7Blikw
         pIAfVTeGyRAesxYogkmZ48IHj+g9dxXl1CoPb9312QlBH2KTtnI5Vy84lfRR0brMDlbN
         g1QA==
X-Gm-Message-State: AJIora9RXp+QOLFsw+7zwL3QSaTiu8f3XaygIeRuGCblh/diJa3YfmMY
        KTmxa4dSpAvZnuQtUlmo0oo=
X-Google-Smtp-Source: AGRyM1vKKeZtGWsErB3gkMjLqV1/ttHuzndF9R1P6jomdlSYzWOcHP6hjmQSqTL63mn3PO9v7VFKDw==
X-Received: by 2002:a05:600c:35c7:b0:3a3:2612:f823 with SMTP id r7-20020a05600c35c700b003a32612f823mr377534wmq.33.1658861287482;
        Tue, 26 Jul 2022 11:48:07 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o11-20020a5d58cb000000b0021d63fe0f03sm15549229wrf.12.2022.07.26.11.48.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jul 2022 11:48:06 -0700 (PDT)
Message-ID: <b3d990c2-c1be-3202-930d-f8c44be2a5e2@gmail.com>
Date:   Tue, 26 Jul 2022 20:47:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH v4] NULL.3const: Add documentation for NULL
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, groff@gnu.org,
        Ralph Corderoy <ralph@inputplus.co.uk>,
        Ingo Schwarze <schwarze@usta.de>, Jakub Wilk <jwilk@jwilk.net>
References: <20220724191931.15683-1-alx.manpages@gmail.com>
 <20220726124800.108850-1-alx.manpages@gmail.com>
 <20220726155451.fhsp4dmesqyb76gf@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220726155451.fhsp4dmesqyb76gf@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------7QJ8SenR2ORG92cHsAM2PQO7"
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
--------------7QJ8SenR2ORG92cHsAM2PQO7
Content-Type: multipart/mixed; boundary="------------aYzfQYkI6Zaf8LDBHTFrqesd";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, groff@gnu.org,
 Ralph Corderoy <ralph@inputplus.co.uk>, Ingo Schwarze <schwarze@usta.de>,
 Jakub Wilk <jwilk@jwilk.net>
Message-ID: <b3d990c2-c1be-3202-930d-f8c44be2a5e2@gmail.com>
Subject: Re: [PATCH v4] NULL.3const: Add documentation for NULL
References: <20220724191931.15683-1-alx.manpages@gmail.com>
 <20220726124800.108850-1-alx.manpages@gmail.com>
 <20220726155451.fhsp4dmesqyb76gf@illithid>
In-Reply-To: <20220726155451.fhsp4dmesqyb76gf@illithid>

--------------aYzfQYkI6Zaf8LDBHTFrqesd
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gNy8yNi8yMiAxNzo1NCwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3
cm90ZToNCj4gWy4uLnJlbG9jYXRlZCBtYXRlcmlhbCBmb3IgYSB0b3BpYyBzaGlmdC4uLl0N
Cj4gDQo+PiArLlNIIE5PVEVTDQo+PiArVGhlIGZvbGxvd2luZyBoZWFkZXJzIGFsc28gcHJv
dmlkZQ0KPj4gKy5CUiBOVUxMIDoNCj4+ICsuSVIgPGxvY2FsZS5oPiAsDQo+PiArLklSIDxz
dGRpby5oPiAsDQo+PiArLklSIDxzdGRsaWIuaD4gLA0KPj4gKy5JUiA8c3RyaW5nLmg+ICwN
Cj4+ICsuSVIgPHRpbWUuaD4gLA0KPj4gKy5JUiA8dW5pc3RkLmg+ICwNCj4+ICthbmQNCj4+
ICsuSVIgPHdjaGFyLmg+IC4NCj4gDQo+IE5vdCBleGFjdGx5IG9uIHRvcGljIChzb3JyeSks
IGJ1dCBhcHJvcG9zIG9mIG91ciBjb25jdXJyZW50IGRpc2N1c3Npb24NCj4gb24gbWFuIHBh
Z2VzIGZvciBjb25zdGFudHMgd2l0aCBleHRlcm5hbCBsaW5rYWdlIGFuZCBkYXRhIHR5cGVz
LCB0aGUNCj4gZm9yZWdvaW5nIGlzIGFuIGV4Y2VsbGVudCBjb3VudGVyZXhhbXBsZSBvZiB3
aGF0IEkgY29udGVuZCBpcyBnb29kDQo+IHByYWN0aWNlOiBkb2N1bWVudCB0aGVtIGluIHRo
ZSBtYW4gcGFnZSBmb3IgdGhlIGhlYWRlciBmaWxlLg0KDQpGb3IgY291bnRlcmluZyB0aGF0
LCBJJ2QgcG9pbnQgeW91IHRvIHRtKDN0eXBlKS4NCklmIEkgZG9jdW1lbnQgaW4gc3VjaCBk
ZXRhaWwgZXZlcnkgdHlwZSBhbmQgY29uc3RhbnQgaW4gPHRpbWUuaD4sIHRoZSANCnBhZ2Ug
d2lsbCBiZWNvbWUgYW4gdW5yZWFkYWJsZSBtZXNzLCBJTU8uDQoNCk5VTEwoM2NvbnN0KSBp
cyBhbHNvIGEgZ29vZCBleGFtcGxlLiAgc3RkZGVmKDBwb3NpeCkgaGFzIDIgbGluZXMgKyBh
IA0KYmxhbmsgZm9yIE5VTEwuDQoNCk5vdyBjb25zaWRlciBhIHBhZ2UgdGhhdCBkb2N1bWVu
dHMgTlVMTCwgb2Zmc2V0b2YoKSwgcHRyZGlmZl90LCBzaXplX3QgDQooYWxsIG9mIHRoZW0g
YWxyZWFkeSBkb2N1bWVudGVkLCBzbyB5b3UgY2FuIHRha2UgYSBsb29rIGF0IHRoZWlyIHBh
Z2VzIA0KdG8gZ2V0IGFuIGlkZWEgb2YgdGhlaXIgZG9jcyksICsgd2NoYXJfdCAoeWV0IHVu
ZG9jdW1lbnRlZCkuDQoNCnN0ZGRlZi5oKDBwb3NpeCkgaXMgdmVyeSBzaG9ydCBhYm91dCB0
aGVtLCBhbmQgSU1PLCBpdCdzIHF1aXRlIA0KaW5jb21wbGV0ZS4gIEJ1dCBJIGNvdWxkIGxp
dmUgd2l0aCBpdCBpZiBJIGhhZCBsaW5rIHBhZ2VzIHRvIGl0IChpdCANCndvdWxkIGJlIHN1
Ym9wdGltYWwgdG8gbXkgbmVlZHMsIGJ1dCBJIGNvdWxkIGNlcnRhaW5seSBsaXZlIHdpdGgg
aXQpLg0KDQoNCg0KDQoNCj4gDQo+IEl0IGlzIG9ubHkgdGhlIHN0YW5kYXJkIEMgbGlicmFy
eSB0aGF0IGF2YWlscyBpdHNlbGYgb2Ygc3VjaCBhIHJhbXBhbnQNCj4gbXVsdGlwbGljaXR5
IG9mIGRlZmluaXRpb24gc2l0ZXMgZm9yIGNvbnN0YW50cy4gIFRoaXMgaXMgb2YgY291cnNl
DQo+IGJlY2F1c2Ugb2YgdGhlIHN5bmVyZ3kgb2YgMiBmYWN0b3JzOiAoMSkgdGhlIGxpYnJh
cnkgaGVhZGVyIGRlc2lnbiBpcw0KPiBtb2R1bGFyLCBhbmQgeWV0ICgyKSB0aGUgbnVsbCBw
b2ludGVyIGlzIHViaXF1aXRvdXMgYW5kIHN1cHBvcnRzDQo+IGFwcGxpY2F0aW9ucyBpbiBt
YW55IGFwcGxpY2F0aW9uIGFyZWFzLg0KPiANCj4gVG8gbWUsIHRoaXMgc3VwcG9ydHMgcmF0
aGVyIHRoYW4gdW5kZXJtaW5lcyBteSBhcmd1bWVudCBmb3IgaGVhZGVyIGZpbGUNCj4gbWFu
IHBhZ2UgY29udGVudHMsIGJlY2F1c2UgYXMgd2UgY2FuIHNlZSBoZXJlLCB3aGF0IHdlJ3Zl
IGRpYWdub3NlZCBpcw0KPiByZWFsbHkgYSBtaXNzZWQgb3Bwb3J0dW5pdHkgdG8gZGVmaW5l
IHRoZSBudWxsIHBvaW50ZXIgY29uc3RhbnQgX2F0IHRoZQ0KPiBsYW5ndWFnZSBsZXZlbF8g
aW5zdGVhZCBvZiByZWxlZ2F0aW5nIGl0IHRvIGFuIG9wdGlvbmFsIGZlYXR1cmUgb2YgdGhl
DQo+IHN0YW5kYXJkIGxpYnJhcnkgd2hpY2ggeW91IG5ldmVydGhlbGVzcyB3aWxsIGhhdmUg
YSBoYXJkIHRpbWUgZG9pbmcNCj4gd2l0aG91dC4gIEMgcHJvZ3JhbW1lcnMgY2FuIGNvZGUg
ZnJlZXN0YW5kaW5nIGFwcGxpY2F0aW9ucyB3aXRob3V0DQo+IHJlc291cmNlIHRvIHRoZSBz
dGFuZGFyZCBDIGxpYnJhcnkuICBXaGF0IGFyZSB0aGVzZSBmcmVlc3RhbmRpbmcNCj4gYXBw
bGljYXRpb25zLCBpbnZhcmlhYmx5PyAgT3BlcmF0aW5nIHN5c3RlbSBrZXJuZWxzLCBvciBt
YWNoaW5lLW1vZGUNCj4gY29kZSBkb2luZyB0aGUgd29yayBvZiBhbiBPUyBhbG9uZ3NpZGUg
aXRzIChwcmVzdW1hYmx5IGVtYmVkZGVkLA0KPiBtaWNyb2NvbnRyb2xsZXItbGlrZSkgZnVu
Y3Rpb24uICBBcmUgX3Rob3NlXyBnb2luZyB0byBoYXZlIGEgdXNlIGZvciBhDQo+IG51bGwg
cG9pbnRlciBjb25zdGFudD8gIFdoYXQgZG8geW91IHRoaW5rPyAgOy0pDQoNCldoYXQgZG8g
SSB0aGluaz8NCg0KTWFueSBibGFtZSBDIGFuZCBVbml4L0xpbnV4IGRldmVsb3BtZW50IGJl
Y2F1c2Ugb2YgaG93IHRoZXkndmUgZ3Jvd246DQplYWNoIHZlbmRvciBhZGRlZCB0aGVpciBl
eHRlbnNpb25zIHRvIGEgImNvbW1vbiIgaWRlYSBvZiB0aGUgbGFuZ3VhZ2UgDQphbmQgdGhl
IHN5c3RlbSwgb2Z0ZW4gd2l0aCBpbmNvbXBhdGlibGUgZXh0ZW5zaW9ucy4gIFJlc3VsdGlu
ZyBpbiBhIGh1Z2UgDQptZXNzLCB2ZXJ5IGluY29uc2lzdGVudCwgYW5kIHN1Ym9wdGltYWwu
DQoNCkkgdGhpbmsgdGhhdCdzIHRoZSBiZXN0IHRoYXQgY291bGQgcG9zc2libHkgaGF2ZSBo
YXBwZW5lZC4gIEEgc29ydCBvZiANCm5hdHVyYWwgc2VsZWN0aW9uLiAgSSBkb24ndCBiZWxp
ZXZlIHRoZSBpZGVhIHRoYXQgdGhlIGdvZHMgSyAmIFIgZXQgYWwuIA0KYnJvdWdodCB1cyBh
IGdvZCBsYW5ndWFnZSBhbmQgc3lzdGVtIGFuZCB3ZSBodW1hbnMgYnJva2UgaXQuICBZZXMs
IHRoZSANCm9yaWdpbmFsIGxhbmd1YWdlIGFuZCBzeXN0ZW0gd2VyZSBnb29kLCBidXQgZmFy
IGZyb20gd2hhdCB0aGV5IGFyZSBub3cuDQoNClRoZW4sIG90aGVyIGxhbmd1YWdlcyBhbmQg
c3lzdGVtcyBoYXZlIHNlZW4gYSBtb3JlIHN0cmljdCBkZXZlbG9wbWVudCwgDQp3aGVyZSB0
aGUgZGVzaWduIHdhcyBtb3JlIGNlbnRyYWxpemVkIChvciBhdCBsZWFzdCAiYmV0dGVyIiB0
aG91Z2h0KS4gIEkgDQpjYW4gb25seSBzYXkgdGhhdCBJIGRvbid0IGxpa2UgdGhlbSBhcyBt
dWNoLg0KDQpZZXMsIGhhbGYgYSBjZW50dXJ5IGFmdGVyIHRoZSBpbnZlbnRpb24gb2YgQyB3
ZSBub3cga2luZCBvZiBhZ3JlZSBvbiANCnRoaW5ncyBsaWtlIE5VTEwgY291bGQgYmUgcGFy
dCBvZiB0aGUgbGFuZ3VhZ2UuICBCdXQgbm93IGl0J3MgbWF5YmUgdG9vIA0KbGF0ZSBmb3Ig
dGhhdC4gIEFuZCByZWFsbHksIHdobyBjYXJlcz8gIGdjYyBpbXBsZW1lbnRzIGl0IGFzIGlm
IGl0IHdlcmUgDQpwYXJ0IG9mIHRoZSBsYW5ndWFnZTogPHN0ZGRlZi5oPiBkb2Vzbid0IGV2
ZW4gZXhpc3QuICBZb3UgY291bGQgcHJvYmFibHkgDQpzdWdnZXN0IG1ha2luZyBOVUxMIGEg
bGFuZ3VhZ2Uga2V5d29yZCBmb3IgdGhlIG5leHQgcmV2aXNpb24gb2YgdGhlIA0Kc3RhbmRh
cmQsIGJ1dCBJIGRvbid0IHRoaW5rIGl0IHdpbGwgZ2V0IG11Y2ggYXR0ZW50aW9uLiAgQnV0
IG1heWJlIGl0IA0Kd291bGQgYmUgYSBnb29kIHRoaW5nLi4uDQoNCj4gDQo+IFBPU0lYIHN1
cHBsZW1lbnRzIHRvIHRoZSBzdGFuZGFyZCBDIGxpYnJhcnksIGFuZCBvdGhlciBsaWJyYXJp
ZXMgZm9yIEMsDQo+IHdpbGwgbm90IHR5cGljYWxseSBoYXZlIHRoaXMgZGlmZmljdWx0eSwg
YW5kIHdpbGwgaGF2ZSBvbmUgZGVmaW5pdGlvbg0KPiBzaXRlIG9ubHkgZm9yIHRoZWlyIGNv
bnN0YW50cyB3aXRoIGV4dGVybmFsIGxpbmthZ2UuDQoNCk9oLCBuby4gIENoZWNrIHNzaXpl
X3QoM3R5cGUpIQ0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21h
cg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------aYzfQYkI6Zaf8LDBHTFrqesd--

--------------7QJ8SenR2ORG92cHsAM2PQO7
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLgNt8ACgkQnowa+77/
2zKY1RAAiF2QByvzQ3IcV39vTB0tis07isrLlEhVZDbIVbqbBYREn6hXoNev9zq0
apXodEhkMcaas2wLy7qED2C5prUpVzPhp+Nrge9qdcv6tXgLveQiah8W3Oskl0lJ
AzRD2d9drQ01n+0XXEHjcW3Oy8XYutruCNHBm6/CvRbamzwcVKiFgPrfhQ7IW9BW
Db1BNAFjiYWvYNpVWCZMnHJM4HEeX4YfP3HdF5QMp6xYJs2rrv/rNMlCBoctagDB
zTKlQymjs170284/h9reO1TGC4Q8TZztNtqBUkO2HtuteqvyW0ZfEIbdpFfWFUaQ
YCWxhqVuYrHoXrCjYKBwWUvnpqon+oPgWu0ZLa1DA24UEDPgi5ZVbIUCBsCUuNgw
pJU9WhsgMIeEKDUSDvPUzdJFbD/BDKOuM4g5kBVYu+xpHPHPBVbuR3+ge32gc6H/
1dpF4EmFVoc8K6MxEYdI4wNFNv0Zt70ZO/8ERaHIP11Z+gPFz46S+9OJcOBFxfkb
9s9Xb5+Qruf4OKXXeQUnH0fMqW51ICnUU1lvPoWPc8T/YKOpR6L8OcP1PYsVl81F
a7ffgNkFBQxxUho5gpHSrXoTIysL6MPrC10tuCcWVgYqhPIPMe4WpwhWbMq3SDSd
2YdI+xos0tYnIhPnUrx0kdAFlg/CoyTURh6KrHvq1/6xsm7UrDI=
=l+Iy
-----END PGP SIGNATURE-----

--------------7QJ8SenR2ORG92cHsAM2PQO7--
