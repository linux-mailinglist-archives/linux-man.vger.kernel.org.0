Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6CB7675F1E
	for <lists+linux-man@lfdr.de>; Fri, 20 Jan 2023 21:52:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229448AbjATUwO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Jan 2023 15:52:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229565AbjATUwN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Jan 2023 15:52:13 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71A85CE22E
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 12:52:09 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id f25-20020a1c6a19000000b003da221fbf48so4560824wmc.1
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 12:52:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U8SE/kZv7BIZlokCJmdwfnJrTXSspolE+f4JwC3iEDw=;
        b=PjV3P2CcBeraY10/7QsFDWfeRAY5dx1ygKobzENtNAL7DuWRPTKUiW8oABo8s+kjma
         A6D9EyVvVQ55bSBt8cdthN1YPHbBu5TJVaywcPsVn+SvvmgY+30UPOtbnwBRbYRcCJbs
         d35c48lY/TDRu+iEioggs64GUciAPkAlFEAci6WFn6s9WtjPGNvj2KfkFm9Hn/E50CF0
         +zNuyGQ65mhXLGhgOclLB+DHcq75eOA98zGx1YlOiCgdzVZ4wAWmt9f+ivEOveL3cRXL
         WQ7uL3/i4I2AmPMSXAWtDw39bqmPTspcSd9nBuF8A9QgOyZ2vCcgdRFkaZ3lpZXizU7R
         /hDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=U8SE/kZv7BIZlokCJmdwfnJrTXSspolE+f4JwC3iEDw=;
        b=23UdFPyQhmTIKYHlCJSFw0rag9z3QsJtSiiS2w835NT3MbtIFhUwPeJHE3I/40iNyW
         B9oHP54MyrXE3i5140amrlw7gTWXYKEI9wDgSb9BD0fRYOJ1c1TptnbmfIVVn4L4H2Ez
         UWKORD6417BixaCMD5tGLhFc/MV48hSIgWMBJfBeOxIDzAtsR8FVkMtssiQwVMyD/64H
         Psc5z8h/qGbYQgcl+62kmuLh3Op8H2eCVfQKMzgILoYZlg4Tuzraa8Wd0zHLeljyFuia
         eM49XwcPTuUuN3SO+tZlDJmfgIHWHfNo7KTOCFZzFB3C3f0O/YJzBu/FM/WPAlbzmAgC
         WmKg==
X-Gm-Message-State: AFqh2kr0myrvIxXB2yDDEA8mCtc3SgMrTN2nI+32YEOUv9VttzFkSMMS
        iksm41GwbijMfcNSeuimMkONAeBVgIg=
X-Google-Smtp-Source: AMrXdXtRTrVby47pJaCOyoHWPq6TeEaho95RVDyjtRUwckznlpKarM44IL+0ZOzRhcrDQsEXFlMkdA==
X-Received: by 2002:a05:600c:1d0b:b0:3db:88f:996d with SMTP id l11-20020a05600c1d0b00b003db088f996dmr14621015wms.36.1674247927900;
        Fri, 20 Jan 2023 12:52:07 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 17-20020a05600c021100b003dafb0c8dfbsm3684902wmi.14.2023.01.20.12.52.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 12:52:07 -0800 (PST)
Message-ID: <4083aa17-dc23-39e3-3a1c-24f751998c75@gmail.com>
Date:   Fri, 20 Jan 2023 21:51:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2] socket: Implement sockaddr_storage with an anonymous
 union
Content-Language: en-US
To:     =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
        libc-alpha@sourceware.org
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        Eric Blake <eblake@redhat.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>, gcc@gcc.gnu.org,
        Joseph Myers <joseph@codesourcery.com>
References: <20230120134043.10247-1-alx@kernel.org>
 <5187043.CeDsVVrsAm@portable-bastien>
 <0646afe5-f726-dd27-9058-17bd042279d5@gmail.com>
 <2885282.DR2gb7e7pQ@portable-bastien>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <2885282.DR2gb7e7pQ@portable-bastien>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------DfNfrXg0GkTptjMnKX367JOR"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------DfNfrXg0GkTptjMnKX367JOR
Content-Type: multipart/mixed; boundary="------------JizS3kkJG5qtp60uJ8xZAz9f";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
 libc-alpha@sourceware.org
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
 Eric Blake <eblake@redhat.com>, Zack Weinberg <zack@owlfolio.org>,
 Stefan Puiu <stefan.puiu@gmail.com>, Igor Sysoev <igor@sysoev.ru>,
 gcc@gcc.gnu.org, Joseph Myers <joseph@codesourcery.com>
Message-ID: <4083aa17-dc23-39e3-3a1c-24f751998c75@gmail.com>
Subject: Re: [PATCH v2] socket: Implement sockaddr_storage with an anonymous
 union
References: <20230120134043.10247-1-alx@kernel.org>
 <5187043.CeDsVVrsAm@portable-bastien>
 <0646afe5-f726-dd27-9058-17bd042279d5@gmail.com>
 <2885282.DR2gb7e7pQ@portable-bastien>
In-Reply-To: <2885282.DR2gb7e7pQ@portable-bastien>

--------------JizS3kkJG5qtp60uJ8xZAz9f
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEvMjAvMjMgMjE6NDYsIEJhc3RpZW4gUm91Y2FyacOocyB3cm90ZToNCj4gTGUg
dmVuZHJlZGkgMjAgamFudmllciAyMDIzLCAyMDozODozMiBVVEMgQWxlamFuZHJvIENvbG9t
YXIgYSDDqWNyaXQgOg0KPj4gSGkgQmFzdGllbiwNCj4+DQo+PiBPbiAxLzIwLzIzIDIxOjMy
LCBCYXN0aWVuIFJvdWNhcmnDqHMgd3JvdGU6DQo+PiBbLi4uXQ0KPj4NCj4+Pj4gZGlmZiAt
LWdpdCBhL2JpdHMvc29ja2V0LmggYi9iaXRzL3NvY2tldC5oDQo+Pj4+IGluZGV4IGFhYzhj
NDliMDAuLmMwYzIzYjRlODQgMTAwNjQ0DQo+Pj4+IC0tLSBhL2JpdHMvc29ja2V0LmgNCj4+
Pj4gKysrIGIvYml0cy9zb2NrZXQuaA0KPj4+PiBAQCAtMTY4LDkgKzE2OCwxNCBAQCBzdHJ1
Y3Qgc29ja2FkZHINCj4+Pj4gICAgDQo+Pj4+ICAgIHN0cnVjdCBzb2NrYWRkcl9zdG9yYWdl
DQo+Pj4+ICAgICAgew0KPj4+PiAtICAgIF9fU09DS0FERFJfQ09NTU9OIChzc18pOwkvKiBB
ZGRyZXNzIGZhbWlseSwgZXRjLiAgKi8NCj4+Pj4gLSAgICBjaGFyIF9fc3NfcGFkZGluZ1tf
U1NfUEFEU0laRV07DQo+Pj4+IC0gICAgX19zc19hbGlnbnR5cGUgX19zc19hbGlnbjsJLyog
Rm9yY2UgZGVzaXJlZCBhbGlnbm1lbnQuICAqLw0KPj4+IG5vIHRoaXMgaXMgbm90IGNvcnJl
Y3QgeW91IGJyZWFrIEFCSSBieSByZWR1Y2luZyBzaXplDQo+Pj4+ICsgICAgdW5pb24NCj4+
Pj4gKyAgICAgIHsNCj4+Pj4gKyAgICAgICAgX19TT0NLQUREUl9DT01NT04gKHNzXyk7CS8q
IEFkZHJlc3MgZmFtaWx5LCBldGMuICAqLw0KPj4+PiArICAgICAgICBzdHJ1Y3Qgc29ja2Fk
ZHIgICAgICBzYTsNCj4+Pj4gKyAgICAgICAgc3RydWN0IHNvY2thZGRyX2luICAgc2luOw0K
Pj4+PiArICAgICAgICBzdHJ1Y3Qgc29ja2FkZHJfaW42ICBzaW42Ow0KPj4+PiArICAgICAg
ICBzdHJ1Y3Qgc29ja2FkZHJfdW4gICBzdW47DQo+Pj4+ICsgICAgICB9Ow0KPj4+PiAgICAg
IH07DQo+Pj4NCj4+PiBDb3JyZWN0IG9uZSBzdHJ1Y3R1cmUgaXMNCj4+Pg0KPj4+IHN0cnVj
dCBfX3ByaXZhdGVfc29ja19zdG9yYWdlIHsNCj4+PiAgICAgICBfX1NPQ0tBRERSX0NPTU1P
TiAoc3Nwcml2YXRlXyk7ICAgLyogQWRkcmVzcyBmYW1pbHksIGV0Yy4gKi8NCj4+PiAgICAg
ICBjaGFyIF9fc3NfcGFkZGluZ1tfU1NfUEFEU0laRV07DQo+Pj4gICAgICAgX19zc19hbGln
bnR5cGUgX19zc19hbGlnbjsgLyogRm9yY2UgZGVzaXJlZCBhbGlnbm1lbnQuICovDQo+Pj4g
fQ0KPj4NCj4+IFdoYXQgaXMgdGhpcyBzdHJ1Y3R1cmUgZm9yPyAgSSBleHBlY3QgdGhhdCBp
dCdzIGZvciBkZWNsYXJpbmcgYSB3aWRlLWVub3VnaCBhbmQNCj4+IGNvcnJlY3RseSBhbGln
bmVkIHR5cGUsIGJ1dCB0aGUgdW5pb24gY29udGFpbmluZyBhbGwgdGhlIG90aGVyIHR5cGVz
IGFscmVhZHkNCj4+IGd1YXJhbnRlZXMgYSBzaXplIGFzIHdpZGUgYXMgYW55IG90aGVyIHNv
Y2thZGRyXyogYW5kIHdpdGggdGhlIHdpZGVzdCBhbGlnbm1lbnQuDQo+Pg0KPj4gQWxzbywg
YW55IG1lbWJlciB0aGF0IGlzIG5lY2Vzc2FyeSBmb3Igc3VwZXJhbGlnbm1lbnQgb3IgcGFk
ZGluZyBjb3VsZCBiZSBhZGRlZA0KPj4gYXQgdGhlIGVuZCBvZiBzb2NrYWRkcl9zdG9yYWdl
LCBhZnRlciB0aGUgYW5vbiB1bmlvbjsgeW91IGRvbid0IG5lZWQgdGhlIGV4dHJhDQo+PiBz
dHJ1Y3QsIEkgZ3Vlc3MuDQo+IA0KPiBObyB3ZSBuZWVkIGl0LCBtYXggb2Ygc3RydWN0dXJl
IGlzIHN0cnVjdCBzb2NrYWRkcl91biAgIHN1biBhbmQgaXMgc2l6ZSBvZiAxMDguDQo+IHNp
emVvZihzb2NrYWRkcl9zdG9yYWdlKSBpcyAxMjguLi4NCj4gDQo+IERpZCB5b3Ugc2VlIHRo
ZSBsaW5lIG9mIHRoZSBrZXJuZWwgc291cmNlIEkgc2VuZCB5b3UgPyBrZXJuZWwgZXhwZWN0
IHNpemUgb2YgMTA5IGZvciB1biBha2Egd2Ugc2hvdWxkIHBhZCBieSBhIG51bCBieXRlLi4u
DQoNClllcywgSSBzYXcgaXQuICBCdXQgdGhhdCBsaW5lIGZyb20gdGhlIGtlcm5lbCBpcyBh
bHJlYWR5IFVuZGVmaW5lZCBCZWhhdmlvci4gDQpUaGUgY29ycmVjdCBmaXggc2hvdWxkIGdv
IHRvIHNvY2thZGRyX3VuLCBub3Qgc29ja2FkZHJfc3RvcmFnZSwgSU1PLg0KDQpIb3dldmVy
LCBhcHBseWluZyB0aGlzIGNoYW5nZSB0byBzb2NrYWRkcl9zdG9yYWdlIHdvdWxkIGV4cG9z
ZSB0aGF0IGtlcm5lbCBidWcsIA0Kc28gSSB0aGluayBhIHByZXBhdGNoIHRvIHNvY2thZGRy
X3VuIHRoYXQgYWRkcyBhIHBhZGRpbmcgYnl0ZSB0byBzb2NrYWRkcl91biANCndvdWxkIG1h
a2Ugc2Vuc2UuDQoNCnN0cnVjdCBzb2NrYWRkcl91biB7DQoJX19rZXJuZWxfc2FfZmFtaWx5
X3Qgc3VuX2ZhbWlseTsgLyogQUZfVU5JWCAqLw0KCWNoYXIgc3VuX3BhdGhbVU5JWF9QQVRI
X01BWF07CS8qIHBhdGhuYW1lICovDQoJY2hhciBfX251bGw7ICAvLyBtYWtlIHN1cmUgc3Vu
X3BhdGggaXMgdGVybWluYXRlZA0KfTsNCg0KDQo+IA0KPiBJIHRoaW5rIGl0IGlzIHNhZmVy
IGluIGEgZmlyc3Qgc3RlcCwgdG8ga2VlcCB0aGUgb2xkIHN0cnVjdHVyZS4uLiBNYXliZSBs
YXRlciBzaW1wbGlmeQ0KPiANCj4gRGlkIHlvdSBhbHNvIHNlZQ0KPiBodHRwczovL2dpdGh1
Yi5jb20vYm1pbm9yL2dsaWJjL2Jsb2IvbWFzdGVyL3NvY2tldC9zeXMvc29ja2V0LmgjTDYz
DQoNCkhlaCwgSSBkaWRuJ3Qgc2VlIHRoYXQgb25lIDopDQpJJ2xsIHRha2UgaXQgaW50byBh
Y2NvdW50IGZvciBhIHJldmlzaW9uIG9mIHRoZSBwYXRjaC4NCg0KQ2hlZXJzLA0KDQpBbGV4
DQoNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------JizS3kkJG5qtp60uJ8xZAz9f--

--------------DfNfrXg0GkTptjMnKX367JOR
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIyBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPK/u8ACgkQnowa+77/
2zJNGw/4+iFyjnMLj50zSLl4wLbgnYczaDUcnr9j5BgvjdCYcgQr8Sywe5Eh14Gx
bNf0k1AYPkbyFUZ0LsHgm0m+0rkoRok/GX9YjOB+qmWibTT/GdwQ87I+GfTCB44S
Ats+uZvMN7ruZ/uJJXuwqQhwg/Y2dljuOW8XtVEJKQ3EDWzu0RLqR/Rvf7NI9leZ
mV7QOwtgmTy3t+ajR5tCGjCDugXC76SNBQPdlY3AotFgmlY6q3L418enX6sXSVJo
2aiA/WL/0r5iwT8pzg8o1grT3lJsJPWIUleNGiGwpJLMn9/cBi6gSlaSePvYzTu0
IzZovr7pX+golkgDKcUDDpG/LbzGPSng3moHSpOww7bgEd4q6sKQYXsIIrs0N7WA
9zb+OP14KdwHL6jQeUc049rh04MOJ4b6et4efTIlv5pOty545pmoLiIfgF625UCC
x7LXtb9vKOPBjKZQ5CEFA4uQn+XJ2G2+nDaeoqK1UIcaA2Y0lvdgi0r4P/HTmfvn
KJXXx9r1145c9kTrpQznXgbnOwd86phgqReHhL8RmjGw9oj5Gc0R8u6J7W1Ru6l6
ih9UqB9po4tthshS2VyuRoV2lr/VwU6XZwHixcdgw2RmiFkAxHNvjmNmnSS9zFIr
Nd3aWtm3WbS0SoFAUDEriowHvQCTi4nc2geHzPmTPVB0JiWcFw==
=XfDg
-----END PGP SIGNATURE-----

--------------DfNfrXg0GkTptjMnKX367JOR--
