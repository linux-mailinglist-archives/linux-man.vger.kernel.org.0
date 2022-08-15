Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8597B594DD7
	for <lists+linux-man@lfdr.de>; Tue, 16 Aug 2022 03:35:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233274AbiHPAgi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Aug 2022 20:36:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344963AbiHPAek (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Aug 2022 20:34:40 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A551E188F82
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 13:37:24 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id bv3so10331211wrb.5
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 13:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=uaNq0lwS5FXqHi6ftK/E+ir6VQHrpCINv2lMpq829J4=;
        b=OQwOT6gyO1cqccoz7ZsCMDkLswPglBrcFZ8ZM6yBgx5R+8lRFXK0HavtmeCZ3tGiZG
         xl0V/KDrEe3xHT7Wvoupegs7XjzBp+7DQySH3rPZYQTn7O3A+9v86dqP1E9c9/6cfVll
         vVCj9bUG25UsXA8FgMArdBBWv55NcRgDZRdrLQ5QpyVCXV36wt5iWl2EkIT4SYvI4Fmm
         Zvx3ZwQLfoUp4iFZPp4sylK6cqRczVO1PNf8sIzaqkRozD8XckovZwWvaCtbSE8RPunb
         KVC3dwhXtmicVYS9Ec13TnH/mjU/0aSFuVnMFvlhHflwwB4124Y2zkqkoMiNagOa9yu4
         TJ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=uaNq0lwS5FXqHi6ftK/E+ir6VQHrpCINv2lMpq829J4=;
        b=t1lGJNQBjAHpeCwNAgPIvmtN4+XUarVoEVSv0DueBKYr7eoOuO+IsRHH1anawaV/xN
         iN9acpslngdHV/FDLq/37UTLTk7zQvBSDzP2eLMh6++hMG1SS9QXwfapwuxxf4LkDMBf
         fmzBdYvN+bZH+M+5wjirDBO6cG/JI4sFV4ZswjTmE3EbOmsREXZjAtIDycVPrkqCZv/t
         vNc3qnojaHck5sOqz3VkbQKU00VuFUUROrVwMAPScKSaKLT5LfPPq4uvvVEFTEHl4Xcx
         q1hXdI2FeVHdmX7nTOosojZK/Ux9KviRSVJi8cY8LgusNIkWWqffWBJF0y2UWQ1x3rMj
         gBtw==
X-Gm-Message-State: ACgBeo0SiTB/nSNVMddiv7RdivF+ibNMuLJamhOGvcFQM5gYo3CrH0q4
        z1XIeozTQlNA4e1t9OBFTDM=
X-Google-Smtp-Source: AA6agR56DbfiGbYF/ZczHzyssjYP5K/YnQb4UdIhkWpclODK9bMkzY1O0X/lV2nv9Zb4hTlhpib9Zw==
X-Received: by 2002:a5d:4b44:0:b0:221:1c49:4499 with SMTP id w4-20020a5d4b44000000b002211c494499mr9559773wrs.392.1660595839387;
        Mon, 15 Aug 2022 13:37:19 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bd26-20020a05600c1f1a00b003a5fa79005csm3451968wmb.11.2022.08.15.13.37.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 13:37:18 -0700 (PDT)
Message-ID: <ef17f1fd-f018-21b3-ed21-efae5f47fe18@gmail.com>
Date:   Mon, 15 Aug 2022 22:37:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH] lirc.4: document lirc changes in the kernel
Content-Language: en-US
To:     Sean Young <sean@mess.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <Yos/9usw6be5l4jh@gofer.mess.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <Yos/9usw6be5l4jh@gofer.mess.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------kac2jfpLwJMM0xdl5EOTmODX"
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
--------------kac2jfpLwJMM0xdl5EOTmODX
Content-Type: multipart/mixed; boundary="------------TdeAKi1UsAOzBYgS8fdIFHG0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Sean Young <sean@mess.org>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <ef17f1fd-f018-21b3-ed21-efae5f47fe18@gmail.com>
Subject: Re: [PATCH] lirc.4: document lirc changes in the kernel
References: <Yos/9usw6be5l4jh@gofer.mess.org>
In-Reply-To: <Yos/9usw6be5l4jh@gofer.mess.org>

--------------TdeAKi1UsAOzBYgS8fdIFHG0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU2VhbiwNCg0KSSdtIHZlcnkgc29ycnkgZm9yIHRoZSBsb25nIGRlbGF5Lg0KDQpPbiA1
LzIzLzIyIDEwOjA0LCBTZWFuIFlvdW5nIHdyb3RlOg0KPiBMaW51eCA1LjE3IG1ha2VzIExJ
UkNfU0VUX1JFQ19USU1FT1VUX1JFUE9SVFMgYW4gbm8tb3AgYW5kIDUuMTgNCj4gaW50cm9k
dWNlcyBMSVJDX09WRVJGTE9XLiBBbHNvIHNvbWUgcmV3b3JkaW5nIHRvIGNsYXJpZnkuDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBTZWFuIFlvdW5nIDxzZWFuQG1lc3Mub3JnPg0KDQpJJ3Zl
IGFwcGxpZWQgdGhpcyBwYXRjaCwgYW5kIGFwcGxpZWQgc29tZSBtaW5vciBmb3JtYXR0aW5n
IGNoYW5nZXMgdG8gaXQuDQoNCjxodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vZG9j
cy9tYW4tcGFnZXMvbWFuLXBhZ2VzLmdpdC9jb21taXQvP2lkPTI2NmEzMzkwZjc1ODczNGYx
YTY5NzUyODZmY2JkZTc4YTc3OTNmODk+DQoNClRoYW5rcywNCg0KQWxleA0KDQo+IC0tLQ0K
PiAgIG1hbjQvbGlyYy40IHwgNTEgKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMo
KyksIDI2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjQvbGlyYy40IGIv
bWFuNC9saXJjLjQNCj4gaW5kZXggOGJjOGE5NWNmLi5lYjNjOGQxNDEgMTAwNjQ0DQo+IC0t
LSBhL21hbjQvbGlyYy40DQo+ICsrKyBiL21hbjQvbGlyYy40DQo+IEBAIC00Nyw4ICs0Nyw2
IEBAIE90aGVyIGhhcmR3YXJlIHByb3ZpZGVzIGEgc3RyZWFtIG9mIHB1bHNlL3NwYWNlIGR1
cmF0aW9ucy4NCj4gICBTdWNoIGRyaXZlcnMgd29yayBpbg0KPiAgIC5CUiBMSVJDX01PREVf
TU9ERTINCj4gICBtb2RlLg0KPiAtU29tZXRpbWVzLCB0aGlzIGtpbmQgb2YgaGFyZHdhcmUg
YWxzbyBzdXBwb3J0cw0KPiAtc2VuZGluZyBJUiBkYXRhLg0KPiAgIFN1Y2ggaGFyZHdhcmUg
Y2FuIGJlIHVzZWQgd2l0aCAoYWxtb3N0KSBhbnkga2luZCBvZiByZW1vdGUuDQo+ICAgVGhp
cyB0eXBlIG9mIGhhcmR3YXJlIGNhbiBhbHNvIGJlIHVzZWQgaW4NCj4gICAuQlIgTElSQ19N
T0RFX1NDQU5DT0RFDQo+IEBAIC01OCw2ICs1Niw4IEBAIFRoZXNlIGRlY29kZXJzIGNhbiBi
ZSB3cml0dGVuIGluIGV4dGVuZGVkIEJQRiAoc2VlDQo+ICAgYW5kIGF0dGFjaGVkIHRvIHRo
ZQ0KPiAgIC5CIGxpcmMNCj4gICBkZXZpY2UuDQo+ICtTb21ldGltZXMsIHRoaXMga2luZCBv
ZiBoYXJkd2FyZSBhbHNvIHN1cHBvcnRzDQo+ICtzZW5kaW5nIElSIGRhdGEuDQo+ICAgLlBQ
DQo+ICAgVGhlIFxmQkxJUkNfR0VUX0ZFQVRVUkVTXGZSIGlvY3RsIChzZWUgYmVsb3cpIGFs
bG93cyBwcm9iaW5nIGZvciB3aGV0aGVyDQo+ICAgcmVjZWl2aW5nIGFuZCBzZW5kaW5nIGlz
IHN1cHBvcnRlZCwgYW5kIGluIHdoaWNoIG1vZGVzLCBhbW9uZ3N0IG90aGVyDQo+IEBAIC02
OCw2ICs2OCwxMSBAQCBJbiB0aGUgXGZCTElSQ19NT0RFX01PREUyIG1vZGVcZlIsIHRoZSBk
YXRhIHJldHVybmVkIGJ5DQo+ICAgLkJSIHJlYWQgKDIpDQo+ICAgcHJvdmlkZXMgMzItYml0
IHZhbHVlcyByZXByZXNlbnRpbmcgYSBzcGFjZSBvciBhIHB1bHNlIGR1cmF0aW9uLg0KPiAg
IFRoZSB0aW1lIG9mIHRoZSBkdXJhdGlvbiAobWljcm9zZWNvbmRzKSBpcyBlbmNvZGVkIGlu
IHRoZSBsb3dlciAyNCBiaXRzLg0KPiArUHVsc2UgKGFsc28ga25vd24gYXMgZmxhc2gpIGlu
ZGljYXRlcyBhIGR1cmF0aW9uIG9mIGluZnJhcmVkIGxpZ2h0IGJlaW5nDQo+ICtkZXRlY3Rl
ZCwgYW5kIHNwYWNlIChhbHNvIGtub3duIGFzIGdhcCkgaW5kaWNhdGVzIGEgZHVyYXRpb24g
d2l0aCBubyBpbmZyYXJlZC4NCj4gK0lmIHRoZSBkdXJhdGlvbiBvZiBzcGFjZSBleGNlZWRz
IHRoZSBpbmFjdGl2aXR5IHRpbWVvdXQsDQo+ICthIHNwZWNpYWwgdGltZW91dCBwYWNrYWdl
IGlzIGRlbGl2ZXJlZCwgd2hpY2ggbWFya3MgdGhlIGVuZCBvZg0KPiArYSBtZXNzYWdlLg0K
PiAgIFRoZSB1cHBlciA4IGJpdHMgaW5kaWNhdGUgdGhlIHR5cGUgb2YgcGFja2FnZToNCj4g
ICAuVFAgNA0KPiAgIC5CUiBMSVJDX01PREUyX1NQQUNFDQo+IEBAIC04Nyw2ICs5MiwxMCBA
QCBUaGUgcGFja2FnZSByZWZsZWN0cyBhIHRpbWVvdXQ7IHNlZSB0aGUNCj4gICAuQiBMSVJD
X1NFVF9SRUNfVElNRU9VVF9SRVBPUlRTDQo+ICAgaW9jdGwuDQo+ICAgLlwiDQo+ICsuVFAg
NA0KPiArLkJSIExJUkNfTU9ERTJfT1ZFUkZMT1cNCj4gK1RoZSBJUiByZWNlaXZlciBlbmNv
dW50ZXJlZCBhbiBvdmVyZmxvdywgYW5kIGFzIGEgcmVzdWx0IGRhdGEgaXMgbWlzc2luZw0K
PiArKHNpbmNlIExpbnV4IDUuMTgpLg0KPiAgIC5TUyBSZWFkaW5nIGlucHV0IHdpdGggdGhl
IExJUkNfTU9ERV9TQ0FOQ09ERSBtb2RlDQo+ICAgSW4gdGhlIFxmQkxJUkNfTU9ERV9TQ0FO
Q09ERVxmUg0KPiAgIG1vZGUsIHRoZSBkYXRhIHJldHVybmVkIGJ5DQo+IEBAIC0xMjIsMzAg
KzEzMSwxNyBAQCBUaGUgcHJvdG9jb2wgb3Igc2NhbmNvZGUgaXMgaW52YWxpZCwgb3IgdGhl
DQo+ICAgLkIgbGlyYw0KPiAgIGRldmljZSBjYW5ub3QgdHJhbnNtaXQuDQo+ICAgLlNIIElP
Q1RMIENPTU1BTkRTDQo+IC1UaGUgTElSQyBkZXZpY2UncyBpb2N0bCBkZWZpbml0aW9uIGlz
IGJvdW5kIGJ5IHRoZSBpb2N0bCBmdW5jdGlvbg0KPiAtZGVmaW5pdGlvbiBvZg0KPiAtLklS
ICJzdHJ1Y3QgZmlsZV9vcGVyYXRpb25zIiAsDQo+IC1sZWF2aW5nIHVzIHdpdGggYW4NCj4g
LS5JUiAidW5zaWduZWQgaW50Ig0KPiAtZm9yIHRoZSBpb2N0bCBjb21tYW5kIGFuZCBhbg0K
PiAtLklSICJ1bnNpZ25lZCBsb25nIg0KPiAtZm9yIHRoZSBhcmd1bWVudC4NCj4gLUZvciB0
aGUgcHVycG9zZXMgb2YgaW9jdGwgcG9ydGFiaWxpdHkgYWNyb3NzIDMyLWJpdCBhbmQgNjQt
Yml0IGFyY2hpdGVjdHVyZXMsDQo+IC10aGVzZSB2YWx1ZXMgYXJlIGNhcHBlZCB0byB0aGVp
ciAzMi1iaXQgc2l6ZXMuDQo+IC0uUFANCj4gICAubmYNCj4gICAjaW5jbHVkZSA8bGludXgv
bGlyYy5oPiAgICAvKiBCdXQgc2VlIEJVR1MgKi8NCj4gLWludCBpb2N0bChpbnQgZmQsIGlu
dCBjbWQsIC4uLik7DQo+ICsNCj4gK2ludCBpb2N0bChpbnQgZmQsIGludCBjbWQsIGludCAq
dmFsKTsNCj4gICAuZmkNCj4gICAuUFANCj4gLVRoZSBmb2xsb3dpbmcgaW9jdGxzIGNhbiBi
ZSB1c2VkIHRvIHByb2JlIG9yIGNoYW5nZSBzcGVjaWZpYw0KPiArVGhlIGZvbGxvd2luZyBc
ZkJpb2N0bFxmUigyKSBvcGVyYXRpb25zIGFyZSBwcm92aWRlZCBieSB0aGUNCj4gKy5CIGxp
cmMNCj4gK2NoYXJhY3RlciBkZXZpY2UgdG8gcHJvYmUgb3IgY2hhbmdlIHNwZWNpZmljDQo+
ICAgLkIgbGlyYw0KPiAgIGhhcmR3YXJlIHNldHRpbmdzLg0KPiAtTWFueSByZXF1aXJlIGEg
dGhpcmQgYXJndW1lbnQsIHVzdWFsbHkgYW4NCj4gLS5JUiBpbnQgLA0KPiAtcmVmZXJyZWQg
dG8gYmVsb3cgYXMNCj4gLS5JUiB2YWwgLg0KPiAtLlwiDQo+ICAgLlNTIEFsd2F5cyBTdXBw
b3J0ZWQgQ29tbWFuZHMNCj4gICBcZkkvZGV2L2xpcmMqXGZSIGRldmljZXMgYWx3YXlzIHN1
cHBvcnQgdGhlIGZvbGxvd2luZyBjb21tYW5kczoNCj4gICAuVFAgNA0KPiBAQCAtMjgwLDE2
ICsyNzYsMTkgQEAgaXMgMCkgdGltZW91dCBwYWNrYWdlcyBpbg0KPiAgIFRoZSBiZWhhdmlv
ciBvZiB0aGlzIG9wZXJhdGlvbiBoYXMgdmFyaWVkIGFjcm9zcyBrZXJuZWwgdmVyc2lvbnM6
DQo+ICAgLlJTDQo+ICAgLklQICogMw0KPiAtU2luY2UgTGludXggNC4xNjogZWFjaCB0aW1l
IHRoZQ0KPiAtLkIgbGlyYyBkZXZpY2UgaXMgb3BlbmVkLA0KPiAtdGltZW91dCByZXBvcnRz
IGFyZSBieSBkZWZhdWx0IGVuYWJsZWQgZm9yIHRoZSByZXN1bHRpbmcgZmlsZSBkZXNjcmlw
dG9yLg0KPiAtVGhlDQo+ICtTaW5jZSBMaW51eCA1LjE3OiB0aW1lb3V0IHBhY2thZ2VzIGFy
ZSBhbHdheXMgZW5hYmxlZCBhbmQgdGhpcyBpb2N0bA0KPiAraXMgYSBuby1vcC4NCj4gKy5J
UCAqDQo+ICtTaW5jZSBMaW51eCA0LjE2OiB0aW1lb3V0IHBhY2thZ2VzIGFyZSBlbmFibGVk
IGJ5IGRlZmF1bHQuDQo+ICtFYWNoIHRpbWUgdGhlDQo+ICsuQiBsaXJjDQo+ICtkZXZpY2Ug
aXMgb3BlbmVkLCB0aGUNCj4gICAuQiBMSVJDX1NFVF9SRUNfVElNRU9VVA0KPiAgIG9wZXJh
dGlvbiBjYW4gYmUgdXNlZCB0byBkaXNhYmxlIChhbmQsIGlmIGRlc2lyZWQsIHRvIGxhdGVy
IHJlLWVuYWJsZSkNCj4gICB0aGUgdGltZW91dCBvbiB0aGUgZmlsZSBkZXNjcmlwdG9yLg0K
PiAgIC5JUCAqDQo+ICAgSW4gTGludXggNC4xNSBhbmQgZWFybGllcjoNCj4gLXRpbWVvdXQg
cmVwb3J0cyBhcmUgZGlzYWJsZWQgYnkgZGVmYXVsdCwgYW5kIGVuYWJsaW5nIHRoZW0gKHZp
YQ0KPiArdGltZW91dCBwYWNrYWdlcyBhcmUgZGlzYWJsZWQgYnkgZGVmYXVsdCwgYW5kIGVu
YWJsaW5nIHRoZW0gKHZpYQ0KPiAgIC5CUiBMSVJDX1NFVF9SRUNfVElNRU9VVCApDQo+ICAg
b24gYW55IGZpbGUgZGVzY3JpcHRvciBhc3NvY2lhdGVkIHdpdGggdGhlDQo+ICAgLkIgbGly
Yw0KPiBAQCAtNDM0LDQgKzQzMyw0IEBAIFVzZXJzIG9mIG9sZGVyIGtlcm5lbHMgY291bGQg
dXNlIHRoZSBmaWxlIGJ1bmRsZWQgaW4NCj4gICAuU0ggU0VFIEFMU08NCj4gICBcZkJpclwt
Y3RsXGZQKDEpLCBcZkJsaXJjZFxmUCg4KSxcIFxmQmJwZlxmUCgyKQ0KPiAgIC5QUA0KPiAt
aHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3QvbWVkaWEvdWFwaS9yYy9s
aXJjLWRldi5odG1sDQo+ICtodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL2xhdGVz
dC91c2Vyc3BhY2UtYXBpL21lZGlhL3JjL2xpcmMtZGV2Lmh0bWwNCg0KLS0gDQpBbGVqYW5k
cm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------TdeAKi1UsAOzBYgS8fdIFHG0--

--------------kac2jfpLwJMM0xdl5EOTmODX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmL6rnQACgkQnowa+77/
2zKZSA//ViZApJZtsGiJenC64Q0FBUdBwPijTIdFApub1eY6Kdft9AZ5nI4ehavO
GDnwnHGSi1sjR8LnbvxQkvxfGrZOV8RNTvpYmj9eRazz/TWMg+qPXSVWao7NGwpm
nCInCVNWfKBEdN0jcPWjchjuxbJ8wehiQ6esgEGUxx+F/1swPfEHhA/QPzpTFSQ3
3W755Z/G0TrEQPF1p5pwdPJxLArqD5gij+dJS5JOhSyXaI/TOxXI/JtvU+VH6pqq
AQ71TeClVwKKStgAVRprsQjIKwMpIe3IUUquLbbcMlAlypJuQ5SjEmdff8aBJXqp
KnvjqwI8twPi9dVIBW7ykg/ngzcPDKSYkPEGmW/SDS8IkeEGcitwZKeZCJibd3ru
a44Lj3aKCkSiWiYOrvZOuGM7Ism3LzCGOokptJDKerO88qZRh1ouQDyamQlJuuaH
uY2rDlj2KaE1qFw6hYjk2Gy266J2kbf619shXFseZUyVmkwAFX9PheeXncD8sKT+
HCgRDWeM78fParyrxbL/AXvEWi21rvdZhSoMrPZItzL7UiiE1uq3/e/I0j7HPkj5
7jmuPZ+ZbjqTgezhPwPXK1vKTnWFQVtZ6939tsS+rS04ktSUBlk+Wtmtz9oWLz2K
RKjOeHJOpJ3bJOHEzHKH7OLwA49C5pTSUY9668bYlT0yFF+0YQw=
=vyNm
-----END PGP SIGNATURE-----

--------------kac2jfpLwJMM0xdl5EOTmODX--
