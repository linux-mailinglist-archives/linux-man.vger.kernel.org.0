Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 605CA62CF18
	for <lists+linux-man@lfdr.de>; Thu, 17 Nov 2022 00:50:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234604AbiKPXuB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Nov 2022 18:50:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238019AbiKPXty (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Nov 2022 18:49:54 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48D5F682A1
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 15:49:50 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id r127-20020a1c4485000000b003cfdd569507so2095225wma.4
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 15:49:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c4WdPHamv8L2GtKcmeDwF1a101IT7x1En1Ge+obiYsU=;
        b=InOPcXZPjOWufRKRi9NFUGFrNR8vEfKbDXxAnE3uPTmM1HCpHwGNZagP5AsdGbqyDY
         4ZlM6ghnCj3B5ok2ejIFmj66n8ysDSh3+4H+ErmMWsPYhSWdd5d9ik4WiHWx6BiYss7C
         ODEOB/OI9ggK30bfgQBY2RG5VyLFlU0X5uhJ50Uyo5C7DG2i+ZWShhnQ5wzicE8CFXSn
         3GXylbb+GILrACQXaZWPB32b0tYucxjMZPhV4gQWCaMxlHiPlXxGcCcMy0d//AfYgnvu
         AAMfEZ6RtjdijTUTNabA3mwWrlAiwybL7Acl0fwPIKr3iD1T8SUASXzIXtj9Bdmmf27+
         XHuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=c4WdPHamv8L2GtKcmeDwF1a101IT7x1En1Ge+obiYsU=;
        b=fPQTj/2ntM5ZPUEK8lMOl6sWSNPY2Z7OYCie23TEvG5oj7k5Fx8RZ9G59ekKCXBnfH
         zlxy0FR+4/6/SKleC4qHkbKeJH4BkZgn5XFKhaEXYWpCZ045ST4XzgKjOQpgyg0YFq3e
         oQ3YrtkVTTKKqpVPfuLvpcDunPEnuMOhtt2jWxopdlajrOdwZrYLTZ6A7AzfaHlsKsfn
         tNGcfwAnZl+bNwJLUyuhfePYwbD3VEC7QnXcMaXUer0JMKNLRb8tDlV9rDofn9R6m9qa
         vB7V76Im+MJzeqN5iG/YROUanUrwWxRfjQZOpXfl5WJwHZlaW6DA0WhdqGyU5IbflTeu
         qqZg==
X-Gm-Message-State: ANoB5plgCbYuCcB6tGrI+5AkmJMciagMGXgcBb1ANPP8KxiiVx2GT3SZ
        2HJVc7oPSyri55Tzpq4GG+Hu+xuE13E=
X-Google-Smtp-Source: AA0mqf56NmYKN29FaTs+paJAicBhyNHutltjabXxu4YIrNgTdtfjw7IxH8sR2Ir5rRnmHq2xiF3/mQ==
X-Received: by 2002:a1c:4b0f:0:b0:3cf:735c:9d5a with SMTP id y15-20020a1c4b0f000000b003cf735c9d5amr12517wma.113.1668642588774;
        Wed, 16 Nov 2022 15:49:48 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l32-20020a05600c1d2000b003cfbbd54178sm8130887wms.2.2022.11.16.15.49.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 15:49:48 -0800 (PST)
Message-ID: <08710003-7f8a-7583-cc79-cb51fbb8d859@gmail.com>
Date:   Thu, 17 Nov 2022 00:49:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: man ld(1): see also ldd, ldconfig
Content-Language: en-US
To:     Joachim Wuttke <j.wuttke@fz-juelich.de>, binutils@sourceware.org
Cc:     linux-man@vger.kernel.org
References: <9ed5e1a7-7003-e31f-1a39-62d2c3e718cc@fz-juelich.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <9ed5e1a7-7003-e31f-1a39-62d2c3e718cc@fz-juelich.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------bSn1hMjUh0i1BwpPLF76F90Y"
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
--------------bSn1hMjUh0i1BwpPLF76F90Y
Content-Type: multipart/mixed; boundary="------------cUgt6jjrIw11Yi7p6arUEKer";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Joachim Wuttke <j.wuttke@fz-juelich.de>, binutils@sourceware.org
Cc: linux-man@vger.kernel.org
Message-ID: <08710003-7f8a-7583-cc79-cb51fbb8d859@gmail.com>
Subject: Re: man ld(1): see also ldd, ldconfig
References: <9ed5e1a7-7003-e31f-1a39-62d2c3e718cc@fz-juelich.de>
In-Reply-To: <9ed5e1a7-7003-e31f-1a39-62d2c3e718cc@fz-juelich.de>

--------------cUgt6jjrIw11Yi7p6arUEKer
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSm9hY2hpbSwNCg0KT24gMTEvMTUvMjIgMTc6NTEsIEpvYWNoaW0gV3V0dGtlIHdyb3Rl
Og0KPiBJJ2Qgc3VnZ2VzdCB0byBhZGQgbGRkIGFuZCBsZGNvbmZpZyB0byB0aGUgInNlZSBh
bHNvIiBzZWN0aW9uIG9mIG1hbiBsZCwNCj4gYmVjYXVzZSB0aG9zZSBhcmUgdGhlIG1hbiBw
YWdlcyB5b3UgbmVlZCB3aGVuIGRlc3BlcmF0ZWx5IGRlYnVnZ2luZw0KPiBsZCBmYWlsdXJl
cyBvbiBtaXNjb25maWd1cmVkIHN5c3RlbXMuDQoNCkknZCBhbHNvIGFkZCBsZC5zbyg4KS4N
Cg0KVGhlIHBhZ2UgbGQoMSkgaXMgbm90IHByb3ZpZGVkIGJ5IHRoZSBMaW51eCBtYW4tcGFn
ZXMsIGJ1dCBieSB0aGUgR05VIGJpbnV0aWxzIA0KcHJvamVjdC4NCg0KSSBhZGRlZCB0aGVt
IHRvIHRoaXMgbWFpbC4NCg0KPiANCj4gVGhhbmtzIGZvciBhbGwgeW91ciB3b3JrIG9uIHRo
ZSBMaW51eCBtYW4gcGFnZXMgcHJvamVjdCwgSm9hY2hpbQ0KDQpUaGFua3MhICA6LSkNCg0K
Q2hlZXJzLA0KDQpBbGV4DQoNCj4gDQo+IA0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0NCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tDQo+IEZvcnNjaHVuZ3N6ZW50cnVtIEp1ZWxpY2ggR21iSA0KPiA1MjQyNSBK
dWVsaWNoDQo+IFNpdHogZGVyIEdlc2VsbHNjaGFmdDogSnVlbGljaA0KPiBFaW5nZXRyYWdl
biBpbSBIYW5kZWxzcmVnaXN0ZXIgZGVzIEFtdHNnZXJpY2h0cyBEdWVyZW4gTnIuIEhSIEIg
MzQ5OA0KPiBWb3JzaXR6ZW5kZXIgZGVzIEF1ZnNpY2h0c3JhdHM6IE1pbkRpciBWb2xrZXIg
Umlla2UNCj4gR2VzY2hhZWZ0c2Z1ZWhydW5nOiBQcm9mLiBEci4tSW5nLiBXb2xmZ2FuZyBN
YXJxdWFyZHQgKFZvcnNpdHplbmRlciksDQo+IEthcnN0ZW4gQmVuZWtlIChzdGVsbHYuIFZv
cnNpdHplbmRlciksIFByb2YuIERyLiBBc3RyaWQgTGFtYnJlY2h0LA0KPiBQcm9mLiBEci4g
RnJhdWtlIE1lbGNoaW9yDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQ0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0N
Cg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------cUgt6jjrIw11Yi7p6arUEKer--

--------------bSn1hMjUh0i1BwpPLF76F90Y
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmN1dxsACgkQnowa+77/
2zIvtA/5AS+v3K62sXi8cqqzNCF0XtHoAKk95VMmileZ+c1nNA8PUnJg/drpOUyB
rppVR5bh7ccAnfygM3GwS8aRd6tfxbnooU3LpAT+ILray7FRFU/aONf9kNErjyh1
3AwzHiKNr5SEpGolKBHNn+ufJas0hhhmIpcnlL7tGwNJFMR2he/GmuBu5p2KZkWA
qoTrEJGEaUZX22wWDyJXr5VP7Pn48MQUljbtBtAWXtd50aamyb5GGydMITyeDvor
FDyZW2lHSX6qwMfGPvOf+BxGUrYyJm6cgEy/6U7W+X2zV2+7OIdyE7bu40G7fm8W
wdi2ykegQqm03c/7cDNgAk830p1RF3aXdlbQHH8iEW92OJVF1KxDZz5kF8KFvR9c
eHopyK62tCCbEJAMduCzk8U9mCnMYNUvTj+pMbRJJAPTWbVIVTPWr+Vlqzg4qllg
ce7+D2wmWUU9HG1ySd9nxWp365Di8viID0fC8kiIldZjfg577DASdy0R+a1agylF
mr2wloPrBpQ4UQtT7pFUuu13rV0mlH1KT86DF/7RrQcnJTxv7rlJdv9MUTPmlCJO
QyFz379SFEmZG7ZFkt+k5C01fuC/kVz2Twmoh+pCuzKsyD/thtaLFI6iYfrqYt8h
KzqBsHbji7MZC0fnrfKnTBTvQfbJ7f8zwf6NnHOFhn0kk63i1Hs=
=FheD
-----END PGP SIGNATURE-----

--------------bSn1hMjUh0i1BwpPLF76F90Y--
