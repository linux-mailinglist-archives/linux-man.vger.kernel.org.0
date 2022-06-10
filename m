Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B803454629C
	for <lists+linux-man@lfdr.de>; Fri, 10 Jun 2022 11:36:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347274AbiFJJgL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Jun 2022 05:36:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346916AbiFJJgJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Jun 2022 05:36:09 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D26702AC41
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 02:36:05 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id p10so35725524wrg.12
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 02:36:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=Ti3SdPkG906q11D1oB6jwbXeYaUb3N24Lij1Ez0uEN4=;
        b=pROQIuXbQb4El4GaudX2fQt4oWhRo5XEmrnW2gN5jYkSbDLSAWLjnU3OOO4/QdRj8r
         ylrLwFz23qiRXiFbfu84r8KexEgbhzAN40MZfo7O/J+Vq3V8+B+LM5t00Xx+jxit04HH
         l/Og/ZKry1bDrlfw5zeFtu2EgrGKrDnEKeSqSR7Fkp2Zo90w2s+RGgVH/bwLpuP+mtsS
         LBnJ9F8/GNxnTo8D87MK+B7sDILGKsMmQM1wJw4GsoiZcQJhcUchM8rJQQnZPmFCU/+f
         q6gqnGzOC/lB61vB9ua1A17tL5KNtMVzUFumDuMwC3/v1t1mliHr/YEszLTQrc4YW9Cf
         8BGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=Ti3SdPkG906q11D1oB6jwbXeYaUb3N24Lij1Ez0uEN4=;
        b=L9LT2JputmSEVEBIswLO3x9/G0ijApIBmiv1sJxXclZ79+Qj06FbC2mV9ShDHwszis
         ZZsLjqy51COhVmndre8hZCCrcQjrzUi7qqTPLJOiotDlJpZd+0LDQFyIaKItkEp5HHWU
         kH+FzyUkYTFEBD1DQr5cgTsWTxtiBbgSiB1jegDds6BL/iWK+ujSJDM0nf6wsNsTfJEg
         pWdrIZYKzply1ABifxr4kTlLKh3tNfYs4FzCYt5ZdspQr3cEoou0K3J9qXVeAhEUM3QG
         fzZ9WHJhPwz19a2A8SYU1EWs33HOGuA/IJqJ2ExhM4o1Dwi8HPRa6WkMfiOk5pSmAurO
         WEqw==
X-Gm-Message-State: AOAM533uVKT5bN4fp9JCxMr6cDkFnA3WbjW9QuwMJQfr+t3sDtMs9GgD
        +GQPDbIllFbXTnacjqwQ/0kMKCMzMdjBAA==
X-Google-Smtp-Source: ABdhPJwnWnsHQ7I4uXicSiZqwhM/KQdetpPcs4OtKUGDhjiWcYypN5udeJ/cFI9S98Z74dKHM4TLoA==
X-Received: by 2002:a5d:47ab:0:b0:210:288e:6a23 with SMTP id 11-20020a5d47ab000000b00210288e6a23mr43439429wrb.537.1654853764244;
        Fri, 10 Jun 2022 02:36:04 -0700 (PDT)
Received: from [192.168.42.187] ([77.107.214.69])
        by smtp.gmail.com with ESMTPSA id 123-20020a1c1981000000b003975c7058bfsm2348875wmz.12.2022.06.10.02.36.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jun 2022 02:36:03 -0700 (PDT)
Message-ID: <12971f94-d329-5db2-c1d9-3fdad23f3840@gmail.com>
Date:   Fri, 10 Jun 2022 11:38:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3] madvise.2: Clarify addr/length and update hugetlb
 support
Content-Language: en-US
To:     David Hildenbrand <david@redhat.com>, Peter Xu <peterx@redhat.com>,
        Mike Kravetz <mike.kravetz@oracle.com>
Cc:     linux-man@vger.kernel.org, linux-mm@kvack.org,
        Axel Rasmussen <axelrasmussen@google.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20220608234517.117295-1-mike.kravetz@oracle.com>
 <a711288d-f070-e980-034a-3faee480e689@gmail.com>
 <3cf768b3-4d09-de13-7975-ebb74a68752e@oracle.com>
 <YqJUZcol6c7HL6Dt@xz-m1.local>
 <05301a1a-6020-aa52-d539-c2e0ba147181@redhat.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <05301a1a-6020-aa52-d539-c2e0ba147181@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Awml7TGjjEMfDnS7dKDE1EbI"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Awml7TGjjEMfDnS7dKDE1EbI
Content-Type: multipart/mixed; boundary="------------Ud93XC0dkHJYdyWfGyk0n01B";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: David Hildenbrand <david@redhat.com>, Peter Xu <peterx@redhat.com>,
 Mike Kravetz <mike.kravetz@oracle.com>
Cc: linux-man@vger.kernel.org, linux-mm@kvack.org,
 Axel Rasmussen <axelrasmussen@google.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <12971f94-d329-5db2-c1d9-3fdad23f3840@gmail.com>
Subject: Re: [PATCH v3] madvise.2: Clarify addr/length and update hugetlb
 support
References: <20220608234517.117295-1-mike.kravetz@oracle.com>
 <a711288d-f070-e980-034a-3faee480e689@gmail.com>
 <3cf768b3-4d09-de13-7975-ebb74a68752e@oracle.com>
 <YqJUZcol6c7HL6Dt@xz-m1.local>
 <05301a1a-6020-aa52-d539-c2e0ba147181@redhat.com>
In-Reply-To: <05301a1a-6020-aa52-d539-c2e0ba147181@redhat.com>

--------------Ud93XC0dkHJYdyWfGyk0n01B
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksIERhdmlkIGFuZCBQZXRlciENCg0KT24gNi8xMC8yMiAxMTowMSwgRGF2aWQgSGlsZGVu
YnJhbmQgd3JvdGU6DQo+IE9uIDA5LjA2LjIyIDIyOjEzLCBQZXRlciBYdSB3cm90ZToNCj4+
IEFsZXgsDQo+Pg0KPj4gRG8geW91IHRoaW5rIHdlIGNvdWxkIGFkZCBzb21lIG9mIHRoZSBz
ZW1hbnRpYyBuZXdsaW5lIHJlcXVpcmVtZW50IGludG8NCj4+IENPTlRSSUJVVElORyBmaWxl
IGV4cGxpY2l0bHk/DQoNCg0KSSBwbGFuIHRvIGFkZCBzb21ldGhpbmcgdGhlcmUgYnkgdGhl
IGVuZCBvZiB0aGlzIHllYXIgbW9yZSBvciBsZXNzLCB3aGVuIA0KZ3JvZmYtMS4yMy4wIGlz
IHJlbGVhc2VkLiAgU2VlIGJlbG93Lg0KDQo+PiBBbHRob3VnaCB0aGVyZSdzIGEgcG9pbnRl
ciB0byBtYW43IG1hbi1wYWdlcw0KPj4gYnV0IHRoZSBzZW1hbnRpYyBuZXdsaW5lcyBydWxl
cyBzZWVtIHRvIGJlIGVhc2lseSBvdmVybG9va2VkLg0KPj4NCj4+IElNSE8gdGhlcmUgY2Fu
IGV2ZW4gYmUgZXhhbXBsZXMgYXMgeW91IHF1b3RlZCBpbiB0aGUgbGluayBvbiAiVU5JWCBG
b3INCj4+IEJlZ2lubmVycyI6DQo+Pg0KPj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIv
c2NtL2RvY3MvbWFuLXBhZ2VzL21hbi1wYWdlcy5naXQvY29tbWl0L21hbjcvbWFuLXBhZ2Vz
Ljc/aD1hbHgvbWFpbiZpZD02ZmY2ZjQzZDY4MTY0Zjk5YThjM2ZiNjZmNDUyNWQxNDU1NzEz
MTBjDQoNClllcywgSSB0aGluayBJJ2xsIHBvaW50IHRvIHRoZSAnVU5JWCBmb3IgQmVnaW5u
ZXJzOjpIaW50cyBmb3IgUHJlcGFyaW5nIA0KRG9jdW1lbnRzJyB0aGluZyBmcm9tIG1hbi1w
YWdlcyg3KSB3aXRoIGEgbGluay4gIEdvb2QgaWRlYS4NCg0KPj4NCj4+IE1heWJlIHRoYXQn
bGwgZWFzZSBib3RoIHRoZSBtYWludGFpbmVycyBhbmQgdGhlIGNvbnRyaWJ1dG9ycz8NCj4g
DQo+IE1heWJlIHNvbWV0aGluZyBzaW1pbGFyIGNoZWNrcGF0Y2ggaW4gTGludXgvcWVtdSBj
b3VsZCBwb2ludCBvdXQgYSBsb3QNCj4gb2YgdGhlc2UgcG9zc2libGUgaXNzdWVzIGFuZCBy
ZWR1Y2UgTWFpbnRhaW5lciBvdmVyaGVhZC4gTm9ib2R5IHJlYWRzDQo+IGRvY3MgYWZ0ZXIg
YWxsIGlmIG5vdCBmb3JjZWQgdG8gOykNCj4gDQo+IA0KDQpBY3R1YWxseSwgSSB3YXMgd29y
a2luZyBvbiBzb21ldGhpbmcgbGlrZSB0aGF0LiAgSSBkaWRuJ3QgdGVsbCBiZWNhdXNlIA0K
aXQncyB1bmRlciBkZXZlbG9wbWVudCwgYW5kIHJlcXVpcmVzIHRvIGJ1aWxkIGdyb2ZmKDEp
IGZyb20gc291cmNlIGZyb20gDQp0aGVpciBnaXQgSEVBRCAoSSB3aWxsIHByb2JhYmx5IG1h
a2UgaXQgbW9yZSBwdWJsaWMgd2hlbiBncm9mZi0xLjIzLjAgaXMgDQpyZWxlYXNlZCkuDQoN
Ckl0IGV2ZW4gcnVucyBjaGVja3BhdGNoKDEpIChvciBhIGZvcmsgb2YgaXQgdGhhdCBJIGRp
ZCB0byBtYWtlIGl0IA0Kc3RhbmRhbG9uZSlbMV0gZm9yIHRoZSBFWEFNUExFUyBwcm9ncmFt
cy4NCg0KWzFdOiA8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy9zcmMvYWx4L2xp
bnV4L2NoZWNrcGF0Y2guZ2l0Lz4NCg0KWW91IGNhbiBydW4gYG1ha2UgLWkgbGludGAgaW4g
dGhlIG1hbi1wYWdlcyBzb3VyY2UgdHJlZSBfYmVmb3JlXyANCmFwcGx5aW5nIHlvdXIgcGF0
Y2gsIHRvIGlnbm9yZSBhbGwgd2FybmluZ3Mgbm90IGNhdXNlZCBieSB5b3UsIGFuZCB0aGVu
IA0KcnVuIGBtYWtlIGxpbnRgIF9hZnRlcl8geW91ciBwYXRjaCB0byBzZWUgc29tZSB3YXJu
aW5ncyBjYXVzZWQgYnkgeW91ciANCnBhdGNoLiAgWW91J2xsIGFsc28gc2VlIHdhcm5pbmdz
IG5vdCBjcmVhdGVkIGJ5IHlvdSBidXQgdGhhdCBhcmUgaW4gdGhlIA0Kc2FtZSBmaWxlIHRo
YXQgeW91IG1vZGlmaWVkLCBidXQgeW91IGNhbiBpZ25vcmUgdGhlbS4NCg0KSXQncyBub3Qg
cGVyZmVjdCwgYW5kIGN1cnJlbnRseSBpdCBkb2Vzbid0IGRldGVjdCBzZW1hbnRpYyBuZXds
aW5lIA0KcHJvYmxlbXMsIEkgdGhpbmssIGJ1dCBJIGd1ZXNzIGl0IGNvdWxkIGJlIGltcHJv
dmVkIGluIHRoZSBmdXR1cmUuDQoNClRoZXJlJ3MgYWxzbyBhbm90aGVyIG1ha2UoMSkgdGFy
Z2V0IHRvIGNvbXBpbGUgYW5kIGxpbmsgdGhlIEVYQU1QTEVTIA0KcHJvZ3JhbXMsIGluIGNh
c2UgeW91IHdhbnQgdG8gdHJ5IGl0LCBidXQgSSdtIGFsc28gd29ya2luZyBvbiBpdCBhbmQg
DQpzdGlsbCBoYXMgbWFueSBpc3N1ZXMuICBCdXQgaWYgeW91IHdhbnQgdG8gdHJ5IGl0LCBp
dCdzIGBtYWtlIC1pIA0KYnVpbGQtbGRgLCBhbmQgdGhlbiBgbWFrZSBidWlsZC1sZGAuDQoN
CllvdSBjYW4gdHJ5IGl0LCBhbmQgbWF5YmUgaXQgaGVscHMgeW91IGEgYml0LiAgVGhvc2Ug
KGxpbnQgYW5kIGJ1aWxkKSANCnRhcmdldHMgYWxzbyBoYXZlIHN1YnRhcmdldHMsIHNvIHlv
dSBjYW4gdXNlIGF1dG9jb21wbGV0ZSB0byBzZWUgd2hhdCANCnN1YnRhcmdldHMgdGhlcmUg
YXJlLCBhbmQgcnVuIG9ubHkgdGhlIG9uZXMgeW91J3JlIGludGVyZXN0ZWQgaW4uICBUaGUg
DQpNYWtlZmlsZSBtYXkgYmUgdG9vIGNyeXB0aWMgdG8gdHJ5IHRvIHJlYWQgaXQgZnJvbSB0
aGVyZSwgYnV0IHlvdSBjYW4gDQp0cnkuIDopICBZb3UnbGwgYWxzbyBzZWUgYSBsb3Qgb2Yg
RVhUUkFfKkZMQUdTIHRvIG1vZGlmeSBjb21tYW5kcy4NCg0KU2luY2UgSSBleHBlY3QgZ3Jv
ZmYtMS4yMy4wIHRvIGJlIHJlbGVhc2VkIGJ5IHRoZSBlbmQgb2YgdGhpcyB5ZWFyLCBJIA0K
dGhpbmsgSSdsbCB3YWl0IGZvciB0aGVuIHRvIG1ha2UgdGhlc2UgZmVhdHVyZXMgcHVibGlj
LCBhbmQgdGhhdCdsbCBnaXZlIA0KbWUgc29tZSB0aW1lIHRvIHBvbGlzaCB0aGVtLg0KDQpD
aGVlcnMsDQoNCkFsZXgNCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KTGludXggbWFuLXBh
Z2VzIGNvbWFpbnRhaW5lcjsgaHR0cDovL3d3dy5rZXJuZWwub3JnL2RvYy9tYW4tcGFnZXMv
DQpodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLw0K

--------------Ud93XC0dkHJYdyWfGyk0n01B--

--------------Awml7TGjjEMfDnS7dKDE1EbI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKjES0ACgkQnowa+77/
2zLsmg//X4LAaUbi3TsFEngJIDHnRNeRJwUekiCDYGSkKy28kNP5dQJQ9GPZF3g1
NEGxl+eMs/jR5VtR0Ph48cM1eLZoRzX7AkA0bZPmFQp8WAAoZfI5XKWjgHU0HUEb
qDDR0tGSCsgDGa0I9LdCxkCh66r2usBHDUZjsBoh1WBY38ao+VplqQPK545gSimF
F7MOL7BcBsQK0v1pKqayHu0xXiwFpjssEr5G76D9LphGPJpUYZVboPaz39oGPmJ1
vm77CwISOml1RkhVXEYKWiRHI8wUl6PO/Htk8jQeUHfnJ2hqIR8JwD/8LNPEGflt
wW6SIkOmm6gvxi2DmiWMDhmL59zHuGkHRh8VJYWT9eB4bi113ctYf9OGZFPSQ813
rQLhio7+kcGRRQmsbtETbdoe22KjO4JUEcrw27RD4JsoSmHBAB6ZS6J/nctuHJJf
QOOXxO07jBxunL48qozGH3OSYRJvhtkm+0ohuXHL/Ssvhr2ow87Z+fWepys55i1Y
S362gjWdCI8CgO/cHIGKACCjjG2V3r7GXkTls3p5HDP6DbG0mwd+nnak97h9/lps
EnBlgJ/5ixtzhgVkbUY0eEbdxhvcQcb1k7EuXdZYf6QkDt4uhC9FABNOTkHYk+HQ
oPcT2GOw2rHP8UxGfCNs0phZXg/R08JSW3An0mlr7z5BBQhdF1M=
=EBDG
-----END PGP SIGNATURE-----

--------------Awml7TGjjEMfDnS7dKDE1EbI--
