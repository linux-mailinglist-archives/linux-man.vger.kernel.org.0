Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D45E1544D5D
	for <lists+linux-man@lfdr.de>; Thu,  9 Jun 2022 15:21:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237080AbiFINVM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Jun 2022 09:21:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237813AbiFINVL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Jun 2022 09:21:11 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C60622A276
        for <linux-man@vger.kernel.org>; Thu,  9 Jun 2022 06:21:09 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id k16so32402518wrg.7
        for <linux-man@vger.kernel.org>; Thu, 09 Jun 2022 06:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=gTvesLh7ZCR8szbNvRqTD2oSW+Be4g8wIjPEb9GF8cg=;
        b=DGvjcwkI+DRVDuufEjbmNTm7L0nlTO9ORYKQ9nbOcr76ztxA7W9OQbTf20+s3STmbH
         NnllHkscOZpgLzmI0gcb3Y4wyIrNWl9yspzFV5gWZ/P1PvXs85tErpOgqF++ted3FQCl
         YpJRU8k2qSqJb2V+SP1KNVnZGI56O8h/XhJqLxgIheUkdC8y8DraIMqH5bQvmiEmPSKV
         qR0jEyLtWm18UtLtVhSerCBtUofVvE7CgOlC96jAfBeO1GL0TzULMotKQH/PiqHr9/aZ
         k05ojFLD56jEhNPlOwK10mLSs5BEgF1HMX72+XI7OcIVZxwh/VxX8F0KAaIMA3cT3Ntg
         TBqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=gTvesLh7ZCR8szbNvRqTD2oSW+Be4g8wIjPEb9GF8cg=;
        b=T9iaaMmYaSavo4wXgshvVpNgWu5rIYm0kAlUFQjVOljmZauxRMC/mjYvWvDOUzWnb0
         c1oRXYLPOuCKk/GcQSAiGgBre66k4QrCaHYtkV0mJt8knXP7qgJ3kL6Oc85oxdaPHCD2
         BYFsbfhsV/6E78N2dok/U19nt42RiCPiMIMxAkC8bgUAwANNXe5QuTLk86r5T14yQnoI
         lGddMU1bMs5Gy8hm81WbiqM2dfPhK8d4A3L82U0ys9ziINzrEGB8BEsHQanr3/kHxU3A
         j66uf3xRLHcJanqY0ta50iQFbAldxU2UKchUGeVbM2nYFyOXoRkJDLanhCDSKlT2Lrai
         VdEQ==
X-Gm-Message-State: AOAM533Dd4+69/asSlpnlLy27MkRf9FjB6BhSdN9Yganj9tKkSuJXTXe
        j1T2xA+aatcrPJMpS7hlYf8=
X-Google-Smtp-Source: ABdhPJz8IoWbaqxS4cs0cMI/+MjxeKAiuz2xw6XzhY6ZiytF03gm5fnTGmNh+QYybROu4Gnr2cacNQ==
X-Received: by 2002:a05:6000:170a:b0:215:6799:782c with SMTP id n10-20020a056000170a00b002156799782cmr31771514wrc.38.1654780868228;
        Thu, 09 Jun 2022 06:21:08 -0700 (PDT)
Received: from [192.168.42.187] ([31.221.238.245])
        by smtp.gmail.com with ESMTPSA id l14-20020adfe58e000000b002117ef160fbsm24374617wrm.21.2022.06.09.06.21.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jun 2022 06:21:07 -0700 (PDT)
Message-ID: <a711288d-f070-e980-034a-3faee480e689@gmail.com>
Date:   Thu, 9 Jun 2022 15:24:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3] madvise.2: Clarify addr/length and update hugetlb
 support
Content-Language: en-US
To:     Mike Kravetz <mike.kravetz@oracle.com>, linux-man@vger.kernel.org,
        linux-mm@kvack.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        David Hildenbrand <david@redhat.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Peter Xu <peterx@redhat.com>
References: <20220608234517.117295-1-mike.kravetz@oracle.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220608234517.117295-1-mike.kravetz@oracle.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------4F01Bj7XVcDyB1t9iIAU1f8l"
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
--------------4F01Bj7XVcDyB1t9iIAU1f8l
Content-Type: multipart/mixed; boundary="------------g3HZLcvhNIUIStph6lj0GbrJ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Mike Kravetz <mike.kravetz@oracle.com>, linux-man@vger.kernel.org,
 linux-mm@kvack.org
Cc: Michael Kerrisk <mtk.manpages@gmail.com>,
 David Hildenbrand <david@redhat.com>,
 Axel Rasmussen <axelrasmussen@google.com>, Peter Xu <peterx@redhat.com>
Message-ID: <a711288d-f070-e980-034a-3faee480e689@gmail.com>
Subject: Re: [PATCH v3] madvise.2: Clarify addr/length and update hugetlb
 support
References: <20220608234517.117295-1-mike.kravetz@oracle.com>
In-Reply-To: <20220608234517.117295-1-mike.kravetz@oracle.com>

--------------g3HZLcvhNIUIStph6lj0GbrJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWlrZSwNCg0KT24gNi85LzIyIDAxOjQ1LCBNaWtlIEtyYXZldHogd3JvdGU6DQo+IENs
YXJpZnkgdGhhdCBtYWR2aXNlIG9ubHkgd29ya3Mgb24gZnVsbCBwYWdlcywgYW5kIHJlbW92
ZSByZWZlcmVuY2VzDQo+IHRvICdieXRlcycuDQo+IA0KPiBVcGRhdGUgTUFEVl9ET05UTkVF
RCBhbmQgTUFEVl9SRU1PVkUgc2VjdGlvbnMgdG8gcmVtb3ZlIG5vdGVzIHRoYXQNCj4gSHVn
ZVRMQiBtYXBwaW5ncyBhcmUgbm90IHN1cHBvcnRlZC4gIEluZGljYXRlIHRoZSByZWxlYXNl
cyB3aGVuIHRoZXkNCj4gd2VyZSBmaXJzdCBzdXBwb3J0ZWQgYXMgd2VsbCBhcyBhbGlnbm1l
bnQgcmVzdHJpY3Rpb25zLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWlrZSBLcmF2ZXR6IDxt
aWtlLmtyYXZldHpAb3JhY2xlLmNvbT4NCj4gQWNrZWQtYnk6IFBldGVyIFh1IDxwZXRlcnhA
cmVkaGF0LmNvbT4NCg0KUGxlYXNlIGNoZWNrIHNvbWUgY29tbWVudHMgYmVsb3cuDQoNClRo
YW5rcywNCg0KQWxleA0KDQo+IC0tLQ0KPiB2MiAtPiB2MyBSZWJhc2VkIG9uIG1hbi1wYWdl
cy01LjE5LXJjMS4gIE1pbm9yIGNoYW5nZSB0byB3b3JkaW5nIGZvcg0KPiAJc3Vuc2VxdWVu
dCBhY2Nlc3Mgb2YgZGF0YSBhZnRlciBNQURWX1JFTU9WRS4NCj4gdjEgLT4gdjIgQWRkZWQg
cmVsZWFzZXMgd2hlbiBIdWdlIFRMQiBzdXBwb3J0IHdhcyBhZGRlZCBhbmQgbW92ZWQNCj4g
CWFsaWdubWVudCByZXF1aXJlbWVudHMgdG8gY29ycmVzcG9uZGluZyBzZWN0aW9uLiAgKFBl
dGVyKQ0KPiAgIG1hbjIvbWFkdmlzZS4yIHwgMzEgKysrKysrKysrKysrKysrKysrKysrLS0t
LS0tLS0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAxMCBkZWxl
dGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4yL21hZHZpc2UuMiBiL21hbjIvbWFk
dmlzZS4yDQo+IGluZGV4IDJhOGYxY2QwYS4uYmVjZGRjZTkzIDEwMDY0NA0KPiAtLS0gYS9t
YW4yL21hZHZpc2UuMg0KPiArKysgYi9tYW4yL21hZHZpc2UuMg0KPiBAQCAtNDQsOSArNDQs
MTMgQEAgc3lzdGVtIGNhbGwgaXMgdXNlZCB0byBnaXZlIGFkdmljZSBvciBkaXJlY3Rpb25z
IHRvIHRoZSBrZXJuZWwNCj4gICBhYm91dCB0aGUgYWRkcmVzcyByYW5nZSBiZWdpbm5pbmcg
YXQgYWRkcmVzcw0KPiAgIC5JIGFkZHINCj4gICBhbmQgd2l0aCBzaXplDQo+ICsuSVIgbGVu
Z3RoIC4NCj4gKy5CUiBtYWR2aXNlICgpDQo+ICtvbmx5IG9wZXJhdGVzIG9uIHdob2xlIHBh
Z2VzLCB0aGVyZWZvcmUNCj4gKy5JIGFkZHINCj4gK211c3QgYmUgcGFnZS1hbGlnbmVkLiAg
VGhlIHZhbHVlIG9mDQoNClBsZWFzZSwgdXNlIHNlbWFudGljIG5ld2xpbmVzIChpLmUuLCBi
cmVhayBhZnRlciAnLicpLg0KU2VlIG1hbi1wYWdlcyg3KToNCiAgICBVc2Ugc2VtYW50aWMg
bmV3bGluZXMNCiAgICAgICAgSW4gdGhlIHNvdXJjZSBvZiBhIG1hbnVhbCBwYWdlLCBuZXcg
c2VudGVuY2VzICBzaG91bGQgIGJlDQogICAgICAgIHN0YXJ0ZWQgb24gbmV3IGxpbmVzLCBs
b25nIHNlbnRlbmNlcyBzaG91bGQgYmUgc3BsaXQgaW50bw0KICAgICAgICBsaW5lcyBhdCBj
bGF1c2UgYnJlYWtzIChjb21tYXMsIHNlbWljb2xvbnMsICBjb2xvbnMsICBhbmQNCiAgICAg
ICAgc28gb24pLCBhbmQgbG9uZyBjbGF1c2VzIHNob3VsZCBiZSBzcGxpdCBhdCBwaHJhc2Ug
Ym91bmQtDQogICAgICAgIGFyaWVzLiAgVGhpcyBjb252ZW50aW9uLCAgc29tZXRpbWVzICBr
bm93biAgYXMgICJzZW1hbnRpYw0KICAgICAgICBuZXdsaW5lcyIsICBtYWtlcyBpdCBlYXNp
ZXIgdG8gc2VlIHRoZSBlZmZlY3Qgb2YgcGF0Y2hlcywNCiAgICAgICAgd2hpY2ggb2Z0ZW4g
b3BlcmF0ZSBhdCB0aGUgbGV2ZWwgb2YgaW5kaXZpZHVhbCBzZW50ZW5jZXMsDQogICAgICAg
IGNsYXVzZXMsIG9yIHBocmFzZXMuDQoNCg0KPiAgIC5JIGxlbmd0aA0KPiAtYnl0ZXMuDQo+
IC1JbiBtb3N0IGNhc2VzLA0KPiAraXMgcm91bmRlZCB1cCB0byBhIG11bHRpcGxlIG9mIHBh
Z2Ugc2l6ZS4gIEluIG1vc3QgY2FzZXMsDQo+ICAgdGhlIGdvYWwgb2Ygc3VjaCBhZHZpY2Ug
aXMgdG8gaW1wcm92ZSBzeXN0ZW0gb3IgYXBwbGljYXRpb24gcGVyZm9ybWFuY2UuDQo+ICAg
LlBQDQo+ICAgSW5pdGlhbGx5LCB0aGUgc3lzdGVtIGNhbGwgc3VwcG9ydGVkIGEgc2V0IG9m
ICJjb252ZW50aW9uYWwiDQo+IEBAIC0xMjYsNyArMTMwLDcgQEAgVGhlIHJlc2lkZW50IHNl
dCBzaXplIChSU1MpIG9mIHRoZSBjYWxsaW5nIHByb2Nlc3Mgd2lsbCBiZSBpbW1lZGlhdGVs
eQ0KPiAgIHJlZHVjZWQgaG93ZXZlci4NCj4gICAuSVANCj4gICAuQiBNQURWX0RPTlRORUVE
DQo+IC1jYW5ub3QgYmUgYXBwbGllZCB0byBsb2NrZWQgcGFnZXMsIEh1Z2UgVExCIHBhZ2Vz
LCBvcg0KPiArY2Fubm90IGJlIGFwcGxpZWQgdG8gbG9ja2VkIHBhZ2VzLCBvcg0KPiAgIC5C
IFZNX1BGTk1BUA0KPiAgIHBhZ2VzLg0KPiAgIChQYWdlcyBtYXJrZWQgd2l0aCB0aGUga2Vy
bmVsLWludGVybmFsDQo+IEBAIC0xMzYsNiArMTQwLDExIEBAIGZsYWcgYXJlIHNwZWNpYWwg
bWVtb3J5IGFyZWFzIHRoYXQgYXJlIG5vdCBtYW5hZ2VkDQo+ICAgYnkgdGhlIHZpcnR1YWwg
bWVtb3J5IHN1YnN5c3RlbS4NCj4gICBTdWNoIHBhZ2VzIGFyZSB0eXBpY2FsbHkgY3JlYXRl
ZCBieSBkZXZpY2UgZHJpdmVycyB0aGF0DQo+ICAgbWFwIHRoZSBwYWdlcyBpbnRvIHVzZXIg
c3BhY2UuKQ0KPiArLklQDQo+ICtTdXBwb3J0IGZvciBIdWdlIFRMQiBwYWdlcyB3YXMgYWRk
ZWQgaW4gTGludXggdjUuMTguICBBZGRyZXNzZXMgd2l0aGluIGENCj4gK21hcHBpbmcgYmFj
a2VkIGJ5IEh1Z2UgVExCIHBhZ2VzIG11c3QgYmUgYWxpZ25lZCB0byB0aGUgdW5kZXJseWlu
ZyBIdWdlIFRMQg0KPiArcGFnZSBzaXplLCBhbmQgdGhlIHJhbmdlIGxlbmd0aCBpcyByb3Vu
ZGVkIHVwIHRvIGEgbXVsdGlwbGUgb2YgdGhlIHVuZGVybHlpbmcNCj4gK0h1Z2UgVExCIHBh
Z2Ugc2l6ZS4NCj4gICAuXCINCj4gICAuXCIgPT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiAgIC5cIg0K
PiBAQCAtMTUzLDI0ICsxNjIsMjQgQEAgTm90ZSB0aGF0IHNvbWUgb2YgdGhlc2Ugb3BlcmF0
aW9ucyBjaGFuZ2UgdGhlIHNlbWFudGljcyBvZiBtZW1vcnkgYWNjZXNzZXMuDQo+ICAgLlwi
IGNvbW1pdCBmNmIzZWMyMzhkMTJjOGNjNmNjNzE0OTBjNmUzMTI3OTg4NDYwMzQ5DQo+ICAg
RnJlZSB1cCBhIGdpdmVuIHJhbmdlIG9mIHBhZ2VzDQo+ICAgYW5kIGl0cyBhc3NvY2lhdGVk
IGJhY2tpbmcgc3RvcmUuDQo+IC1UaGlzIGlzIGVxdWl2YWxlbnQgdG8gcHVuY2hpbmcgYSBo
b2xlIGluIHRoZSBjb3JyZXNwb25kaW5nIGJ5dGUNCj4gK1RoaXMgaXMgZXF1aXZhbGVudCB0
byBwdW5jaGluZyBhIGhvbGUgaW4gdGhlIGNvcnJlc3BvbmRpbmcNCj4gICByYW5nZSBvZiB0
aGUgYmFja2luZyBzdG9yZSAoc2VlDQo+ICAgLkJSIGZhbGxvY2F0ZSAoMikpLg0KPiAgIFN1
YnNlcXVlbnQgYWNjZXNzZXMgaW4gdGhlIHNwZWNpZmllZCBhZGRyZXNzIHJhbmdlIHdpbGwg
c2VlDQo+IC1ieXRlcyBjb250YWluaW5nIHplcm8uDQo+ICtkYXRhIHdpdGggYSB2YWx1ZSBv
ZiB6ZXJvLg0KPiAgIC5cIiBEYXRhYmFzZXMgd2FudCB0byB1c2UgdGhpcyBmZWF0dXJlIHRv
IGRyb3AgYSBzZWN0aW9uIG9mIHRoZWlyDQo+ICAgLlwiIGJ1ZmZlcnBvb2wgKHNoYXJlZCBt
ZW1vcnkgc2VnbWVudHMpIC0gd2l0aG91dCB3cml0aW5nIGJhY2sgdG8NCj4gICAuXCIgZGlz
ay9zd2FwIHNwYWNlLiAgVGhpcyBmZWF0dXJlIGlzIGFsc28gdXNlZnVsIGZvciBzdXBwb3J0
aW5nDQo+ICAgLlwiIGhvdC1wbHVnIG1lbW9yeSBvbiBVTUwuDQo+ICAgLklQDQo+ICAgVGhl
IHNwZWNpZmllZCBhZGRyZXNzIHJhbmdlIG11c3QgYmUgbWFwcGVkIHNoYXJlZCBhbmQgd3Jp
dGFibGUuDQo+IC1UaGlzIGZsYWcgY2Fubm90IGJlIGFwcGxpZWQgdG8gbG9ja2VkIHBhZ2Vz
LCBIdWdlIFRMQiBwYWdlcywgb3INCj4gK1RoaXMgZmxhZyBjYW5ub3QgYmUgYXBwbGllZCB0
byBsb2NrZWQgcGFnZXMsIG9yDQo+ICAgLkIgVk1fUEZOTUFQDQo+ICAgcGFnZXMuDQo+ICAg
LklQDQo+ICAgSW4gdGhlIGluaXRpYWwgaW1wbGVtZW50YXRpb24sIG9ubHkNCj4gICAuQlIg
dG1wZnMgKDUpDQo+IC13YXMgc3VwcG9ydGVkDQo+ICtzdXBwb3J0ZWQNCj4gICAuQlIgTUFE
Vl9SRU1PVkUgOw0KPiAgIGJ1dCBzaW5jZSBMaW51eCAzLjUsDQo+ICAgLlwiIGNvbW1pdCAz
ZjMxZDA3NTcxZWVlYTE4YTdkMzRkYjlhZjIxZDIyODViODA3YTE3DQo+IEBAIC0xNzksMTAg
KzE4OCwxMiBAQCBhbnkgZmlsZXN5c3RlbSB3aGljaCBzdXBwb3J0cyB0aGUNCj4gICAuQiBG
QUxMT0NfRkxfUFVOQ0hfSE9MRQ0KPiAgIG1vZGUgYWxzbyBzdXBwb3J0cw0KPiAgIC5CUiBN
QURWX1JFTU9WRSAuDQo+IC1IdWdldGxiZnMgZmFpbHMgd2l0aCB0aGUgZXJyb3INCj4gLS5C
IEVJTlZBTA0KPiAtYW5kIG90aGVyIGZpbGVzeXN0ZW1zIGZhaWwgd2l0aCB0aGUgZXJyb3IN
Cj4gK0ZpbGVzeXN0ZW1zIHdoaWNoIGRvIG5vdCBzdXBwb3J0DQo+ICsuQlIgTUFEVl9SRU1P
VkUNCg0Kcy9CUi9CLw0KDQpTZWUgbWFuKDcpOg0KICAgICAgICAuQiAgQm9sZA0KDQogICAg
ICAgIC5CSSBCb2xkIGFsdGVybmF0aW5nIHdpdGggaXRhbGljcyAoZXNwZWNpYWxseSB1c2Vm
dWwgIGZvcg0KICAgICAgICAgICAgZnVuY3Rpb24gc3BlY2lmaWNhdGlvbnMpDQoNCiAgICAg
ICAgLkJSIEJvbGQgIGFsdGVybmF0aW5nICB3aXRoICBSb21hbiAoZXNwZWNpYWxseSB1c2Vm
dWwgZm9yDQogICAgICAgICAgICByZWZlcnJpbmcgdG8gb3RoZXIgbWFudWFsIHBhZ2VzKQ0K
DQo+ICtmYWlsIHdpdGggdGhlIGVycm9yDQo+ICAgLkJSIEVPUE5PVFNVUFAgLg0KPiArLklQ
DQo+ICtTdXBwb3J0IGZvciBIdWdlIFRMQiBmaWxlc3lzdGVtIHdhcyBhZGRlZCBpbiBMaW51
eCB2NC4zLg0KPiAgIC5UUA0KPiAgIC5CUiBNQURWX0RPTlRGT1JLICIgKHNpbmNlIExpbnV4
IDIuNi4xNikiDQo+ICAgLlwiIGNvbW1pdCBmODIyNTY2MTY1ZGQ0NmZmNWRlOWJmODk1Y2Zh
NmM1MWY1M2JiMGM0DQoNCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KTGludXggbWFuLXBh
Z2VzIGNvbWFpbnRhaW5lcjsgaHR0cDovL3d3dy5rZXJuZWwub3JnL2RvYy9tYW4tcGFnZXMv
DQpodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLw0K

--------------g3HZLcvhNIUIStph6lj0GbrJ--

--------------4F01Bj7XVcDyB1t9iIAU1f8l
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKh9HIACgkQnowa+77/
2zLjCxAAkHugGYTePAGnc9ZlfQYw0JFlgFNUr88HKni+1eYUdIBNTFj0javb/0cJ
yUVuDqvAeYWCFpwGOJE7c33vB3vTv5YOKDorrhSv/k+vcETcLUQdBLK0KYt3FwdK
LgF6l1nQEcvQgmxERtQs+t15/nLb07xfhNzpKX3bqps/sdYDxAmmg36bj9lU9oMU
KC8HEqENNt+MzRU8LpwsEuMZKgbmRtjxbLecIWI9q22bqBxyCaHD2oSv+sG27Nj+
YSvQywqHUozI2TA07Eng44bQ1/KRcThOzSy2F6Rqt7Lyyn/aYiBgZv7iVrfAzN4b
Nw5bMtUcBCzBZgZolAUGu4d0nAyhY8I8giEtudXePtPwexI0rHUkxDwMF//yvi+M
4XIpJWDUt45qT14jSCnW5BOV4JLc0Wq2lojdwWQIahK/jL3CIrVRLhoiWhpRImp7
pDQwCLz0BEBLsbM/0XXJ5v2wpZs8MX2z3Yni/56c/iuEhOnO2xUOWYps4jD+3hsH
PaPIcqlAB5lpqq97RbeONjijUcWG4KrT81wHD4Uk/+0WM0KgQJMRxB2UQaVB2AU5
S+Gm+c8Ta4LBB+IBR2M4EfJiTKBe5aroitasBHxQr5kNN+XozVStb2aMZBvqP9qJ
sflfcy3fmvPF4WCnZEbSjxuDeYTtCCei5qzaty+RIWTndqyBUJs=
=tuw/
-----END PGP SIGNATURE-----

--------------4F01Bj7XVcDyB1t9iIAU1f8l--
