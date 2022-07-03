Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0902C564983
	for <lists+linux-man@lfdr.de>; Sun,  3 Jul 2022 21:25:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231867AbiGCTZH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 3 Jul 2022 15:25:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229986AbiGCTZG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 3 Jul 2022 15:25:06 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E245521BE
        for <linux-man@vger.kernel.org>; Sun,  3 Jul 2022 12:25:04 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id o4so10561455wrh.3
        for <linux-man@vger.kernel.org>; Sun, 03 Jul 2022 12:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=Uk4WhCU5azHCswU3Ja1NHD/5HZYOJZtGH1AZi1XmPSk=;
        b=Lpri8tpwJjCCr7v033uGoftddPi2c2i7YYZSyl+afpkNHYTAFIziHrRLZ3MYgPNYg/
         lhsrXq5bd+TX8IBEr1Kq1+0ZJDHZE8fMtim6A1hhlsUfppPs8ZrWqaAwe1S0k057/6zJ
         DTf2Lc2n6efiPmTZvxSXJ+mSkFRhbo6+bPjQpKoWHETEXr3uJYHce1Eqn0Moj4GonmTq
         oA6fQMpQBzXe6Tp/NzTxIjwSEQQnZC2kn3WRAN6WAdGu8airchwjKLMUwTR3tt/mjYnG
         LEMO/Kx5MSOwnQLdEnBFa4r2OeOHJikyN2W+yIHtQS+TnZIIoaM22FzeisEg8byfnqJe
         XyFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=Uk4WhCU5azHCswU3Ja1NHD/5HZYOJZtGH1AZi1XmPSk=;
        b=K/hTHvcQgGD8FNbeWJ4wFR7rKF5fkcXPV9N6RCw2Uitwc2OkFdnaY41uGzgUWO+bLq
         QbmwygLgUaYAs0T2p+BxC5RQAcXOA7I8Ob8gWY5hMUUxR/QIsLsr/3DACdcBpv8PWmWt
         uSqiPbl404ps097saDe0VnNfg++GmyHTGL8/BkbE+TbOhHxGivg0p8K2WI5wO92Si/Ju
         imYv1QDV4vxFB6A2Z5GQpl+bqI3X74phZWotShNkC1t095C+83IL3+SFifxa0mQ9n5Av
         3sKvW1v7+kFX6bQ78CNvN6JbHDcCq+ADX47PMlEDOBRypYksXU959p7KHZZGFHWMVfnA
         xDYA==
X-Gm-Message-State: AJIora8MOxtaQOIvdoZ/wQi4GqFQEeYuVKwLNM2gUyHd8/D7H21L6wmx
        N+YxrzJ8VCDcffdEn8NTt8I=
X-Google-Smtp-Source: AGRyM1vl2ZQTWFICr6M+M+8bUk/VBrrODNfFeY926k2Eb631FO8ZxLQWzjUm8V6XgiidkuKz4a9kkA==
X-Received: by 2002:adf:f9ce:0:b0:21d:68b7:e7af with SMTP id w14-20020adff9ce000000b0021d68b7e7afmr3047469wrr.236.1656876303461;
        Sun, 03 Jul 2022 12:25:03 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bd16-20020a05600c1f1000b003a18ecfcd8csm8600672wmb.19.2022.07.03.12.25.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Jul 2022 12:25:02 -0700 (PDT)
Message-ID: <f8c3ecab-1c8e-c3f1-05a5-ffd4d30996d6@gmail.com>
Date:   Sun, 3 Jul 2022 21:24:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 1/2] fanotify.7, fanotify_init.2: Document
 FAN_REPORT_TARGET_FID
Content-Language: en-US
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
References: <20220630190610.3043428-1-amir73il@gmail.com>
 <20220630190610.3043428-2-amir73il@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220630190610.3043428-2-amir73il@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------phoYrSe3GPWJSOFi0O04T5ET"
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
--------------phoYrSe3GPWJSOFi0O04T5ET
Content-Type: multipart/mixed; boundary="------------m0QfS7fcqvPmn0OHR3Ga41z0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
 linux-man@vger.kernel.org
Message-ID: <f8c3ecab-1c8e-c3f1-05a5-ffd4d30996d6@gmail.com>
Subject: Re: [PATCH v3 1/2] fanotify.7, fanotify_init.2: Document
 FAN_REPORT_TARGET_FID
References: <20220630190610.3043428-1-amir73il@gmail.com>
 <20220630190610.3043428-2-amir73il@gmail.com>
In-Reply-To: <20220630190610.3043428-2-amir73il@gmail.com>

--------------m0QfS7fcqvPmn0OHR3Ga41z0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDYvMzAvMjIgMjE6MDYsIEFtaXIgR29sZHN0ZWluIHdyb3RlOg0KPiBGQU5fUkVQ
T1JUX1RBUkdFVF9GSUQgYWRkcyBhbiBpbmZvcm1hdGlvbiByZWNvcmQgYWJvdXQgdGhlIGNo
aWxkDQo+IHRvIGRpcmVjdG9yeSBlbnRyeSBtb2RpZmljYXRpb24gZXZlbnRzIChjcmVhdGUv
ZGVsZXRlL21vdmUpLg0KPiANCj4gVGhpcyBmbGFnIGFsc28gYWRkcyBzYW5pdHkgY2hlY2tz
IHRoYXQgZGlyZWN0b3J5IG1vZGlmaWNhdGlvbiBldmVudHMNCj4gKGNyZWF0ZSxkZWxldGUs
bW92ZWQpIGNhbm5vdCBiZSBzZXQgaW4gbWFzayBvZiBhIG5vbi1kaXIgaW5vZGUgbWFyay4N
Cj4gDQo+IE5vdGUgdGhhdCB3aGlsZSBGQU5fUkVQT1JUX1RBUkdFVF9GSUQgd2FzIG1lcmdl
ZCB0byB2NS4xNywgdGhlIHNhbml0eQ0KPiBjaGVja3MgcmVzdWx0aW5nIGluIEVOT1RESVIg
d2VyZSBtZXJnZWQgYXMgZml4IGNvbW1pdHMgY2VhZjY5ZjhlYWRjDQo+ICgiZmFub3RpZnk6
IGRvIG5vdCBhbGxvdyBzZXR0aW5nIGRpcmVudCBldmVudHMgaW4gbWFzayBvZiBub24tZGly
IikNCj4gYW5kIDg2OThlM2JhYjRkZCAoImZhbm90aWZ5OiByZWZpbmUgdGhlIHZhbGlkYXRp
b24gY2hlY2tzIG9uIG5vbi1kaXINCj4gaW5vZGUgbWFzayIpIGluIGxhdGVyIGtlcm5lbCBy
ZWxlYXNlcy4NCj4gDQo+IFJldmlld2VkLWJ5OiBNYXR0aGV3IEJvYnJvd3NraSA8cmVwbm9w
QGdvb2dsZS5jb20+DQo+IFJldmlld2VkLWJ5OiBKYW4gS2FyYSA8amFja0BzdXNlLmN6Pg0K
PiBTaWduZWQtb2ZmLWJ5OiBBbWlyIEdvbGRzdGVpbiA8YW1pcjczaWxAZ21haWwuY29tPg0K
PiAtLS0NCj4gICBtYW4yL2Zhbm90aWZ5X2luaXQuMiB8IDQwICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKystLS0NCj4gICBtYW4yL2Zhbm90aWZ5X21hcmsuMiB8IDE4
ICsrKysrKysrKysrKysrKysrKw0KPiAgIG1hbjcvZmFub3RpZnkuNyAgICAgIHwgMjcgKysr
KysrKysrKysrKy0tLS0tLS0tLS0tLS0tDQo+ICAgMyBmaWxlcyBjaGFuZ2VkLCA2OCBpbnNl
cnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkNCj4gDQoNClsuLi5dDQoNCj4gZGlmZiAtLWdp
dCBhL21hbjIvZmFub3RpZnlfbWFyay4yIGIvbWFuMi9mYW5vdGlmeV9tYXJrLjINCj4gaW5k
ZXggM2RjNTM4YjdmLi44MGY3M2I5ODMgMTAwNjQ0DQo+IC0tLSBhL21hbjIvZmFub3RpZnlf
bWFyay4yDQo+ICsrKyBiL21hbjIvZmFub3RpZnlfbWFyay4yDQo+IEBAIC00NzMsNiArNDcz
LDI0IEBAIGFuZA0KPiAgIC5JIHBhdGhuYW1lDQo+ICAgZG8gbm90IHNwZWNpZnkgYSBkaXJl
Y3RvcnkuDQo+ICAgLlRQDQo+ICsuQiBFTk9URElSDQo+ICtUaGUgZmFub3RpZnkgZ3JvdXAg
d2FzIGluaXRpYWxpemVkIHdpdGggZmxhZw0KPiArLkJSIEZBTl9SRVBPUlRfVEFSR0VUX0ZJ
RCAsDQo+ICsuSSBtYXNrDQo+ICtjb250YWlucyBkaXJlY3RvcnkgZW50cnkgbW9kaWZpY2F0
aW9uIGV2ZW50cw0KPiArKGUuZy4sDQo+ICsuQlIgRkFOX0NSRUFURSAsDQo+ICsuQlIgRkFO
X0RFTEVURSApICwNCg0Kcy8pICwvKSwvDQoNCkNoZWNrIHRoZSBkaWZmZXJlbmNlIDspDQoN
Cmdyb2ZmX21hbig3KToNCiAgICBGb250IHN0eWxlIG1hY3Jvcw0KICAgICAgICBUaGUgbWFu
IG1hY3JvIHBhY2thZ2UgaXMgbGltaXRlZCBpbiBpdHMgZm9udCBzdHlsaW5nICBvcOKAkA0K
ICAgICAgICB0aW9ucywgIG9mZmVyaW5nICBvbmx5IGJvbGQgKC5CKSwgaXRhbGljICguSSks
IGFuZCByb21hbi4NCiAgICAgICAgSXRhbGljIHRleHQgaXMgdXN1YWxseSBzZXQgdW5kZXJz
Y29yZWQgaW5zdGVhZCBvbiAgdGVybWnigJANCiAgICAgICAgbmFsIGRldmljZXMuICBUaGUg
LlNNIGFuZCAuU0IgbWFjcm9zIHNldCB0ZXh0IGluIHJvbWFuIG9yDQogICAgICAgIGJvbGQs
ICByZXNwZWN0aXZlbHksIGF0IGEgc21hbGxlciB0eXBlIHNpemU7IHRoZXNlIGRpZmZlcg0K
ICAgICAgICB2aXN1YWxseSBmcm9tIHJlZ3VsYXLigJBzaXplZCByb21hbiBvciBib2xkICB0
ZXh0ICBvbmx5ICBvbg0KICAgICAgICB0eXBlc2V0dGVyIGRldmljZXMuICBJdCBpcyBvZnRl
biBuZWNlc3NhcnkgdG8gc2V0IHRleHQgaW4NCiAgICAgICAgZGlmZmVyZW50ICBzdHlsZXMg
IHdpdGhvdXQgaW50ZXJ2ZW5pbmcgc3BhY2UuICBUaGUgbWFjcm9zDQogICAgICAgIC5CSSwg
LkJSLCAuSUIsIC5JUiwgLlJCLCBhbmQgLlJJLCB3aGVyZSDigJxC4oCdLCDigJxJ4oCdLCBh
bmQg4oCcUuKAnQ0KICAgICAgICBpbmRpY2F0ZSBib2xkLCBpdGFsaWMsIGFuZCByb21hbiwg
cmVzcGVjdGl2ZWx5LCBzZXQgdGhlaXINCiAgICAgICAgb2Rk4oCQIGFuZCBldmVu4oCQbnVt
YmVyZWQgYXJndW1lbnRzIGluICBhbHRlcm5hdGluZyAgc3R5bGVzLA0KICAgICAgICB3aXRo
IG5vIHNwYWNlIHNlcGFyYXRpbmcgdGhlbS4NCg0KWW91IGNhbiBydW4gdGhlIGZvbGxvd2lu
ZyB0ZXN0Og0KDQokIG1hbiAtbCAtIDw8IEVPRg0KLlRIIGEgYiBjIGQgZQ0KLlNIIFNwYWNl
DQouQlIgZm9vIGJhciBiYXoNCi5TSCBObyBzcGFjZQ0KLkJSIG5vdyBzZWV0aGlzDQpFT0YN
Cg0KQXBhcnQgZnJvbSB0aGF0LCBpdCBsb29rcyBnb29kIHRvIG1lLg0KDQpDaGVlcnMsDQoN
CkFsZXgNCg0KDQo+ICtvciBkaXJlY3RvcnkgZXZlbnQgZmxhZ3MNCj4gKyhlLmcuLA0KPiAr
LkJSIEZBTl9PTkRJUiAsDQo+ICsuQlIgRkFOX0VWRU5UX09OX0NISUxEICkgLA0KPiArYW5k
DQo+ICsuSSBkaXJmZA0KPiArYW5kDQo+ICsuSSBwYXRobmFtZQ0KPiArZG8gbm90IHNwZWNp
ZnkgYSBkaXJlY3RvcnkuDQo+ICsuVFANCj4gICAuQiBFT1BOT1RTVVBQDQo+ICAgVGhlIG9i
amVjdCBpbmRpY2F0ZWQgYnkNCj4gICAuSSBwYXRobmFtZQ0KPiBkaWZmIC0tZ2l0IGEvbWFu
Ny9mYW5vdGlmeS43IGIvbWFuNy9mYW5vdGlmeS43DQo+IGluZGV4IGY0ZDM5MTYwMy4uNWYy
YzAxNDA4IDEwMDY0NA0KPiAtLS0gYS9tYW43L2Zhbm90aWZ5LjcNCj4gKysrIGIvbWFuNy9m
YW5vdGlmeS43DQo+IEBAIC0xNzEsMTQgKzE3MSwxNCBAQCBhbG9uZ3NpZGUgdGhlIGdlbmVy
aWMNCj4gICBzdHJ1Y3R1cmUuDQo+ICAgRm9yIGV4YW1wbGUsDQo+ICAgaWYgYSBub3RpZmlj
YXRpb24gZ3JvdXAgaXMgaW5pdGlhbGl6ZWQgd2l0aA0KPiAtLkIgRkFOX1JFUE9SVF9GSUQN
Cj4gKy5CIEZBTl9SRVBPUlRfVEFSR0VUX0ZJRA0KPiAgIGFuZA0KPiAgIC5CUiBGQU5fUkVQ
T1JUX1BJREZEICwNCj4gLXRoZW4gYW4gZXZlbnQgbGlzdGVuZXIgc2hvdWxkIGFsc28gZXhw
ZWN0IHRvIHJlY2VpdmUgYm90aA0KPiArdGhlbiBhbiBldmVudCBsaXN0ZW5lciBzaG91bGQg
ZXhwZWN0IHRvIHJlY2VpdmUgdXAgdG8gdHdvDQo+ICAgLkkgZmFub3RpZnlfZXZlbnRfaW5m
b19maWQNCj4gLWFuZA0KPiAraW5mb3JtYXRpb24gcmVjb3JkcyBhbmQgb25lDQo+ICAgLkkg
ZmFub3RpZnlfZXZlbnRfaW5mb19waWRmZA0KPiAtc3RydWN0dXJlcyBhbG9uZ3NpZGUgdGhl
IGdlbmVyaWMNCj4gK2luZm9ybWF0aW9uIHJlY29yZCBhbG9uZ3NpZGUgdGhlIGdlbmVyaWMN
Cj4gICAuSSBmYW5vdGlmeV9ldmVudF9tZXRhZGF0YQ0KPiAgIHN0cnVjdHVyZS4NCj4gICBJ
bXBvcnRhbnRseSwNCj4gQEAgLTU1Miw3ICs1NTIsMTUgQEAgaWRlbnRpZnlpbmcgYSBwYXJl
bnQgZGlyZWN0b3J5IG9iamVjdCwgYW5kIG9uZSB3aXRoDQo+ICAgLkkgaW5mb190eXBlDQo+
ICAgZmllbGQgdmFsdWUgb2YNCj4gICAuQlIgRkFOX0VWRU5UX0lORk9fVFlQRV9GSUQgLA0K
PiAtaWRlbnRpZnlpbmcgYSBub24tZGlyZWN0b3J5IG9iamVjdC4NCj4gK2lkZW50aWZ5aW5n
IGEgY2hpbGQgb2JqZWN0Lg0KPiArTm90ZSB0aGF0IGZvciB0aGUgZGlyZWN0b3J5IGVudHJ5
IG1vZGlmaWNhdGlvbiBldmVudHMNCj4gKy5CUiBGQU5fQ1JFQVRFICwNCj4gKy5CUiBGQU5f
REVMRVRFICwNCj4gK2FuZA0KPiArLkJSIEZBTl9NT1ZFICwNCj4gK2FuIGluZm9ybWF0aW9u
IHJlY29yZCBpZGVudGlmeWluZyB0aGUgY3JlYXRlZC9kZWxldGVkL21vdmVkIGNoaWxkIG9i
amVjdA0KPiAraXMgcmVwb3J0ZWQgb25seSBpZiBhbiBmYW5vdGlmeSBncm91cCB3YXMgaW5p
dGlhbGl6ZWQgd2l0aCB0aGUgZmxhZw0KPiArLkJSIEZBTl9SRVBPUlRfVEFSR0VUX0ZJRC4N
Cj4gICAuVFANCj4gICAuSSBmc2lkDQo+ICAgVGhpcyBpcyBhIHVuaXF1ZSBpZGVudGlmaWVy
IG9mIHRoZSBmaWxlc3lzdGVtIGNvbnRhaW5pbmcgdGhlIG9iamVjdA0KPiBAQCAtNTcyLDE1
ICs1ODAsNiBAQCBmaWxlc3lzdGVtIGFzIHJldHVybmVkIGJ5DQo+ICAgSXQgY2FuIGJlIHVz
ZWQgdG8gdW5pcXVlbHkgaWRlbnRpZnkgYSBmaWxlIG9uIGEgZmlsZXN5c3RlbSBhbmQgY2Fu
IGJlDQo+ICAgcGFzc2VkIGFzIGFuIGFyZ3VtZW50IHRvDQo+ICAgLkJSIG9wZW5fYnlfaGFu
ZGxlX2F0ICgyKS4NCj4gLU5vdGUgdGhhdCBmb3IgdGhlIGRpcmVjdG9yeSBlbnRyeSBtb2Rp
ZmljYXRpb24gZXZlbnRzDQo+IC0uQlIgRkFOX0NSRUFURSAsDQo+IC0uQlIgRkFOX0RFTEVU
RSAsDQo+IC1hbmQNCj4gLS5CUiBGQU5fTU9WRSAsDQo+IC10aGUNCj4gLS5JIGZpbGVfaGFu
ZGxlDQo+IC1pZGVudGlmaWVzIHRoZSBtb2RpZmllZCBkaXJlY3RvcnkgYW5kIG5vdCB0aGUg
Y3JlYXRlZC9kZWxldGVkL21vdmVkIGNoaWxkDQo+IC1vYmplY3QuDQo+ICAgSWYgdGhlIHZh
bHVlIG9mDQo+ICAgLkkgaW5mb190eXBlDQo+ICAgZmllbGQgaXMNCg0KLS0gDQpBbGVqYW5k
cm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------m0QfS7fcqvPmn0OHR3Ga41z0--

--------------phoYrSe3GPWJSOFi0O04T5ET
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLB7QYACgkQnowa+77/
2zKtJA//WAcOI2NRMgbJcaip9L0iuLJOgRHDFGOZsnvSJ3TcSBJtMfFCL5LAwYWr
TSqMVSHnOhE7lBZnueWj4zt8/FNBhf5rAOUYSRiQjv9jX/PBz0nOar3Hhm+Xbk+e
Ru1UNgbq4avUYWH3m1kPy0Gbr9fzl4IEcXGt09DA8oMquFne/p5WS4YAd7LEk3t0
S9Vrrc6jZ74WdPgbJzARF+sc5Q3y+66UVuqK/DHsHEVkl6NyQmH17+b8AnLi5R/G
B9GcIYVUPy2/I50CUgl+cYgYiE73qlGMEqPBPKIhQcZl+QJskdqGw8igm0P88ylB
ufmF+H6z9pt/5b2iEbdKMqTc3XgCFYAG076FR+ULaaymMrfjSIE6aDC/9mrKJVUW
zMtmd4MI7BuHk2gNvF/lEdSJEX9jogdAAJDp9kqoQ+m+hfzYJ9wpNCxSq8+G+1Ug
F5EQmakfTwo4TgbT65FYott1Rq6DHDCy/+VIHIUPiwkOnkm13ajvyKSfDAXltEec
s0ccgkwkpuiEV8Fia4k6r1G5BEDX/d7ceS4MlQ9kVdes4HrScnyLjmHKVsMbQrHV
QYZtfDgxouz2zkZLCNR0YI3ULZsN3B27p3PPhC9Vl/7Ccp7HBtNgnwMTVwS2M46J
77N034QoE/+rlSmyCSqQpqW+oYujKBIrVvKU9YCoIg5j9eBX9Qs=
=/Q4L
-----END PGP SIGNATURE-----

--------------phoYrSe3GPWJSOFi0O04T5ET--
