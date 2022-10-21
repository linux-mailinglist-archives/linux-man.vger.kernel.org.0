Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EEA89607C44
	for <lists+linux-man@lfdr.de>; Fri, 21 Oct 2022 18:31:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230027AbiJUQbI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Oct 2022 12:31:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229667AbiJUQbF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Oct 2022 12:31:05 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F10A5D139
        for <linux-man@vger.kernel.org>; Fri, 21 Oct 2022 09:31:02 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id bp11so5434885wrb.9
        for <linux-man@vger.kernel.org>; Fri, 21 Oct 2022 09:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G2pb/9AmIVMkpHspj29+CW6tKm0mFTwF3pLvXWMOeFo=;
        b=L4L3mEHe3u16A7D21eJyQhzelNUZF6d33OPugOxEYgZME08Xha/SG516lnAQmIdISc
         xDDxGWPhqHZP4y1O7aMLmbFEr3ft0/ALmyZbkLXMcl6mnCHRiTzRsOoeX0vMbYHR1Brv
         hWVR0BUvtkPhvJTYJfr507pEIGBp6zXolnSw6q/iES66tjoZKBRC2r4RKAcU0G1x4SsS
         GSBjcB/rcvLg8AM4LSaoTcmBzuYUOlmMBCf75u8A5SQtuBEgSzhNKXiQENc500+/u/o9
         23CQbby6ZJc+MuKhUl+NJQUv+j1JR7nagIDtZVInY2Z2OsjpfzyW2BJBkEvgXhfnrcce
         ZIjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=G2pb/9AmIVMkpHspj29+CW6tKm0mFTwF3pLvXWMOeFo=;
        b=gzBC400cj14GNT0iGYZyBRXEQRGEynUxq7VXpZnTfwV6jK17FW5UfBHJhIqKepuKiU
         48oBAdKeicXXHXEk/5Y1ibkndnTOY1o53w/FhSDeNVTdBaXOEcJjL4VjCeM0dh3Ied4H
         3P7A8Bght2dzu0sHasw1xZmz8NMm4h2zKxhAXOO2XLrt42Kl9ttMd2+66cgJhn03rcxb
         XMU1+VtszPBK97areK4CfBoadKg0HBy3iA6ax/yvqsyxzeZBohLBoxu6IqtvhMG9kLT5
         t8LgnG/mbM8artDz3KiTktRySF9CeO/7A8oVZV0OvvuJqIjPRHndZtllImaopXhgayia
         NcTw==
X-Gm-Message-State: ACrzQf2rZMF7N8MnB8t2+OMuoco4GuFUyTDnjAGzI5JXwrxQRg2KFW9o
        MiZgeS/uKTuPCUqM1e1jxv8=
X-Google-Smtp-Source: AMsMyM5mtHr8vLNez5ZumqJlXvH13lM+HAbDlzJfekr37i+MW52vXiGqebuHAZ7gmks8ihbmXNqSuQ==
X-Received: by 2002:a5d:6484:0:b0:230:7cad:c268 with SMTP id o4-20020a5d6484000000b002307cadc268mr13405752wri.335.1666369860817;
        Fri, 21 Oct 2022 09:31:00 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y15-20020a056000108f00b0023647841c5bsm4013331wrw.60.2022.10.21.09.30.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Oct 2022 09:30:59 -0700 (PDT)
Message-ID: <a3057ccf-786b-73a2-13fb-d264e7376a62@gmail.com>
Date:   Fri, 21 Oct 2022 18:30:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH man-pages v2 3/4] process_madvise.2: CAP_SYS_ADMIN cleanup
Content-Language: en-US
To:     Zach O'Keefe <zokeefe@google.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        Minchan Kim <minchan@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <20221018235051.152548-1-zokeefe@google.com>
 <20221018235051.152548-4-zokeefe@google.com>
 <d9f8599f-fb81-6915-85d9-fbbc74226608@gmail.com>
 <ca631c4f-0e7c-6dc4-0375-97c25088d252@gmail.com>
 <CAAa6QmT-4+Tx_VOVxGw+jO=Zh7+0NPLx8K+p0DsUd9WVoEvZNA@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAAa6QmT-4+Tx_VOVxGw+jO=Zh7+0NPLx8K+p0DsUd9WVoEvZNA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------LqAYquuJfNalry14UDiQJMTF"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------LqAYquuJfNalry14UDiQJMTF
Content-Type: multipart/mixed; boundary="------------0iW0LjZgaktINkwCBlf6bB8Y";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zach O'Keefe <zokeefe@google.com>
Cc: Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
 linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
 Minchan Kim <minchan@kernel.org>, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <a3057ccf-786b-73a2-13fb-d264e7376a62@gmail.com>
Subject: Re: [PATCH man-pages v2 3/4] process_madvise.2: CAP_SYS_ADMIN cleanup
References: <20221018235051.152548-1-zokeefe@google.com>
 <20221018235051.152548-4-zokeefe@google.com>
 <d9f8599f-fb81-6915-85d9-fbbc74226608@gmail.com>
 <ca631c4f-0e7c-6dc4-0375-97c25088d252@gmail.com>
 <CAAa6QmT-4+Tx_VOVxGw+jO=Zh7+0NPLx8K+p0DsUd9WVoEvZNA@mail.gmail.com>
In-Reply-To: <CAAa6QmT-4+Tx_VOVxGw+jO=Zh7+0NPLx8K+p0DsUd9WVoEvZNA@mail.gmail.com>

--------------0iW0LjZgaktINkwCBlf6bB8Y
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGV5IFphY2gsDQoNCk9uIDEwLzIxLzIyIDE4OjE2LCBaYWNoIE8nS2VlZmUgd3JvdGU6DQo+
IEhleSBBbGV4IQ0KPiANCj4gVGhhbmtzIGZvciB0YWtpbmcgdGhlIHRpbWUgdG8gcmV2aWV3
IQ0KPiANCj4gT24gRnJpLCBPY3QgMjEsIDIwMjIgYXQgNTo0MSBBTSBBbGVqYW5kcm8gQ29s
b21hcg0KPiA8YWx4Lm1hbnBhZ2VzQGdtYWlsLmNvbT4gd3JvdGU6DQo+Pg0KPj4gT24gMTAv
MjEvMjIgMTQ6MzcsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPj4+IE9uIDEwLzE5LzIy
IDAxOjUwLCBaYWNoIE9LZWVmZSB3cm90ZToNCj4+Pj4gRnJvbTogWmFjaCBPJ0tlZWZlIDx6
b2tlZWZlQGdvb2dsZS5jb20+DQo+Pj4+DQo+Pj4+IFRoZSBpbml0aWFsIGNvbW1pdCBvZiBw
cm9jZXNzX21hZHZpc2UoMikgdG8gbWFuLXBhZ2VzIHByb2plY3QgaW5jbHVkZWQNCj4+Pj4g
YW4gZXJyb3IsIGluZGljYXRpbmcgdGhhdCBDQVBfU1lTX0FETUlOIGNhcGFiaWxpdHkgd2Fz
IHJlcXVpcmVkIHdoZW4sIGluDQo+Pj4+IGZhY3QsIENBUF9TWVNfTklDRSB3YXMgdGhlIHJl
cXVpcmVkIGNhcGFiaWxpdHkuDQo+Pj4+DQo+Pj4+IFRoZSBpbml0aWFsIGNvbW1pdCBvZiBw
cm9jZXNzX21hZHZpc2UoMikgdG8gTGludXgsIGNvbW1pdCBlY2I4YWM4YjFmMTQNCj4+Pj4g
KCJtbS9tYWR2aXNlOiBpbnRyb2R1Y2UgcHJvY2Vzc19tYWR2aXNlKCkgc3lzY2FsbDogYW4g
ZXh0ZXJuYWwgbWVtb3J5DQo+Pj4+IGhpbnRpbmcgQVBJIiksIHJlbGllZCBvbiBQVFJBQ0Vf
TU9ERV9BVFRBQ0hfRlNDUkVEUyAoc2VlIHB0cmFjZSgyKSksDQo+Pj4+IGJ1dCB3YXMgYW1l
bmRlZCBieSBjb21taXQgOTZjZmUyYzBmZDIzICgibW0vbWFkdmlzZTogcmVwbGFjZSBwdHJh
Y2UNCj4+Pj4gYXR0YWNoIHJlcXVpcmVtZW50IGZvciBwcm9jZXNzX21hZHZpc2UiKSB3aGlj
aCByZXBsYWNlZCB0aGlzIHdpdGggYQ0KPj4+PiBjb21iaW5hdGlvbiBvZiBQVFJBQ0VfTU9E
RV9SRUFEIGFuZCBDQVBfU1lTX05JQ0UgKFBUUkFDRV9NT0RFX1JFQUQgdG8NCj4+Pj4gcHJl
dmVudCBsZWFraW5nIEFTTFIgbWV0YWRhdGEgYW5kIENBUF9TWVNfTklDRSBmb3IgaW5mbHVl
bmNpbmcgcHJvY2Vzcw0KPj4+PiBwZXJmb3JtYW5jZSkuDQo+Pg0KPj4gWy4uLl0NCj4+DQo+
Pj4gSWYgSSB1bmRlcnN0YW5kIHRoZSBwYXJhZ3JhcGggYWJvdmUsIGZyb20gNS4xMCB0byA1
LjEyIHRoZSBjYXBhYmlsaXR5IHJlcXVpcmVkDQo+Pj4gd2FzIENBUF9TWVNfQURNSU4/DQo+
Pg0KPj4gT3Igd2FzIGl0IENBUF9TWVNfUFRSQUNFPw0KPiANCj4gU3RhcnRpbmcgaW4gNS4x
MCwgdGhlcmUgd2FzIG5vIENBUF8qIGNhcGFiaWxpdHkgcmVxdWlyZW1lbnQgLSBvbmx5DQo+
IFBUUkFDRV9NT0RFX0FUVEFDSF9GU0NSRURTIChha2EgUFRSQUNFX01PREVfQVRUQUNIIHwN
Cj4gUFRSQUNFX01PREVfUkVBTENSRURTKS4gTm93LCBteSB1bmRlcnN0YW5kaW5nIG9mIHRo
ZSBhbGdvcml0aG0NCj4gZW1wbG95ZWQgZm9yIHB0cmFjZSBhY2Nlc3MgbW9kZSBjaGVja2lu
ZyBpc24ndCB0byBiZSB0cnVzdGVkLCBidXQNCj4gQUZBSUssIGEgY2FsbGVyIGhhdmluZyBD
QVBfU1lTX1BUUkFDRSBpbiB0aGUgdGFyZ2V0J3MgdXNlciBuYW1lc3BhY2UNCj4gKGRpcmVj
dGx5IG9yIHRyYW5zaXRpdmVseSkgaXNuJ3QgcmVxdWlyZWQgdG8gcGFzcyB0aGlzICh0aG91
Z2ggaXQNCj4gbWFrZXMgaXQgZWFzaWVyKS4gcHRyYWNlKDIpIGhhcyBhbiBvdmVydmlldyBv
ZiB0aGUgYWxnb3JpdGhtLg0KPiANCj4gU3RhcnRpbmcgaW4gNS4xMiwgQ0FQX1NZU19OSUNF
IHdhcyBhZGRlZCBhcyBhIHJlcXVpcmVtZW50LCBhbmQgdGhlDQo+IHB0cmFjZSBhbGdvcml0
aG0gdXNlZCBjaGFuZ2VkIHRvIFBUUkFDRV9NT0RFX1JFQUQuDQoNClVuZGVyc3Rvb2QuDQoN
Cj4gDQo+IElmIHlvdSB0aGluayByZWNvcmRpbmcgdGhlIGRpZmZlcmVuY2VzIGluIGtlcm5l
bCB2ZXJzaW9ucyBpbiB0aGUNCj4gbWFuLXBhZ2UgaXMgaW1wb3J0YW50LCBsZXQgbWUga25v
dyBhbmQgSSBjYW4gYW1lbmQgdGhpcyBwYXRjaC4NCg0KWWVzOyBzaW5jZSBpdCB3YXMgbGl2
ZSBkdXJpbmcgMiB2ZXJzaW9ucywgSSB0aGluayB3ZSBzaG91bGQgYXQgbGVhc3QgbWVudGlv
biBpdC4gDQogIEEgY291cGxlIG9mIGxpbmVzIGluIE5PVEVTIG1pZ2h0IGJlIGVub3VnaC4N
Cg0KVGhhbmtzLA0KDQpBbGV4DQoNCj4gDQo+IFRoYW5rcywNCj4gWmNhaA0KPiANCj4+IC0t
DQo+PiA8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQoNCi0tIA0KPGh0dHA6
Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------0iW0LjZgaktINkwCBlf6bB8Y--

--------------LqAYquuJfNalry14UDiQJMTF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNSyToACgkQnowa+77/
2zLSog/+JYZcho1Du1ygXIoCe678kx3MzT0fcaSTSYyG4WMdpGe4x0MJXPp0rAnA
1LFWYC9paTDfEGvYwU+/rbeFHTPmTB6VlZ6Y5dgECzFvhudHGTyGUFLXIYpr3Mel
bBawuuS+0xVGqgm265pBG8TE9QS0DpWwMIX/3aYVR+srsPXLmLofon61kuWAQcrJ
lfZnAN4kOPP1kkmJ1pyTr6E6QOWOFl2j2Y8qWE0PvVe2QJHFjY1ydpppJXjGCMEf
XF7TdjxSq2N4eQOgmFyFOla579jngvkJy++nbe0T6IAkD9sNgIdQjpVt8O2H3hwK
91xn5uJAnmPZOCIdx8NlPjAjUqCbNRtnz0s2STi6yLoUOgtGnW5Gr+Gk5fBXDX1N
K+9+MCNMyfSMv8/efDQm+7OlEfoWmb7W4Zumh63fXxR7qyAzswXTe70VSpqM7lZj
WceBPXm7WT7L7FmICSLXHRX/9Fj62pJI1z4VoAFVufQNwWkFV8KgyXLRuqzyAUbp
Ia6d9IuAE6MLmoAA/5TZpjc1TGXTm1LdyUqXCDhcG8W+rgKGyPrlE1dXY5HdDAif
6KYXWuEb1iWfKOVcCVfsOhkkd7a5CU/mxpSkwouRIsFkzgmPBK6RLC7OfurSIlzR
XUUxf8UabbigDEuya08lFoXXr/knijVbLVicCkSbh+b6hQ05jAM=
=SJTj
-----END PGP SIGNATURE-----

--------------LqAYquuJfNalry14UDiQJMTF--
