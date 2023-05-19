Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13B71709147
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 10:04:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230256AbjESIEJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 04:04:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbjESIEA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 04:04:00 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75801195
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 01:03:28 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-96f6a9131fdso45871066b.1
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 01:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684483406; x=1687075406;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jLN8CwItBxdFC/vetv8831EopodC5zRAAJIXvopv1bI=;
        b=IiIYhfdtvMEpfK3S4Z3I+hAwC80hdkYQ2y/fTdmUdJedbSB5uZkcItf6K0XfmJb/DK
         VDstDf3pRxN+gEDiYWXGQC+af4vDz+4EhbTrWHEStdpSAsHrjUeyymHuwjVf+AfahxZY
         BVSIjuiKi3k1m3TufRMDXL9Y/bVyr07hDaYQKhdu+qBzzDLVL4PhipCEQKuiI8O+aUgg
         1eF16P55CmYojG7Z7CjWLMnFyw86pdelVohQLYwSzbl+3Fyk7MZ174HYHyDmPkJMStnn
         Oy+XTvAwSHuFmAJmb5ysh5Ti+gg2wkUzhd8blTKUhmIIiNI9VUwF2iET5zG3fUikNbsl
         cU+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684483406; x=1687075406;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jLN8CwItBxdFC/vetv8831EopodC5zRAAJIXvopv1bI=;
        b=EJi43OkNr+oEB5f/XwDW/4ibBQX1P4/IR7AVvc6fYAUipOfY9CR8D6TaGO0kQ/t9PR
         6BnqOucjQoq1vRUeInMROhfQTAfOUWsNX3CeKJMbF2R6lHJ8muVnkgzgIM3GxwZLo0ir
         +oauB3nti7kFyhOPlh/DmDTo6ubduXZ1WQ3obmqArfyzp3Ij8W4ACqCjPtlxAsAN5mGm
         QfoOmaTz+i2CzTTXMfeDuokvs65XFDn/a0JWOT6F+KZ07utaFUIbhewdimrqHPypKule
         4ZygD+gj7uo3NgtKaqbi+WTyj8Fhix/NUywUIfG5MopC3ZplEH87ja7O2kvqAJi8tQ/0
         SD0w==
X-Gm-Message-State: AC+VfDwf//gvIgMaIpSc/9i0X7WMJfilC0qaKUby4RCCy4rq4pr/D505
        j6SFMioqywizFWnq6ltO2q0=
X-Google-Smtp-Source: ACHHUZ5Y7gzV8mJSHGpsSKib8lrre7dMqqsrVuHvPFp5QFyfTWzIMaTsx4dKpyQCJwOnT0ALpUPCeg==
X-Received: by 2002:a17:907:3206:b0:966:484a:335e with SMTP id xg6-20020a170907320600b00966484a335emr740077ejb.43.1684483405608;
        Fri, 19 May 2023 01:03:25 -0700 (PDT)
Received: from [192.168.43.80] ([46.222.34.83])
        by smtp.gmail.com with ESMTPSA id bv15-20020a170906b1cf00b009531d9efcc4sm1944024ejb.133.2023.05.19.01.03.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 May 2023 01:03:25 -0700 (PDT)
Message-ID: <781c88a1-b71f-f600-8d75-068a65855d16@gmail.com>
Date:   Fri, 19 May 2023 10:03:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] Fix the man page
To:     enh <enh@google.com>, Zijun Zhao <zijunzhao@google.com>
Cc:     alx@kernel.org, linux-man@vger.kernel.org
References: <CAELULbeXgZWn+Nw_rpUzkGgNCtb7oFf1+JS=KnNVuLhcF5Vabg@mail.gmail.com>
 <CAELULbf=z2WWpHm5QDTK81oWTC9zMZJg2MA69mjOorJQ5QAzGw@mail.gmail.com>
 <CAJgzZopuptYOKHQ32-mau9gzwaWOmRtTACqdmfZvox=c2itp7w@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAJgzZopuptYOKHQ32-mau9gzwaWOmRtTACqdmfZvox=c2itp7w@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------bcsSHsR6gPgPqepxDn42kqI0"
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------bcsSHsR6gPgPqepxDn42kqI0
Content-Type: multipart/mixed; boundary="------------LG0XC6nbtrhsvThn0IHdwvWn";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: enh <enh@google.com>, Zijun Zhao <zijunzhao@google.com>
Cc: alx@kernel.org, linux-man@vger.kernel.org
Message-ID: <781c88a1-b71f-f600-8d75-068a65855d16@gmail.com>
Subject: Re: [PATCH] Fix the man page
References: <CAELULbeXgZWn+Nw_rpUzkGgNCtb7oFf1+JS=KnNVuLhcF5Vabg@mail.gmail.com>
 <CAELULbf=z2WWpHm5QDTK81oWTC9zMZJg2MA69mjOorJQ5QAzGw@mail.gmail.com>
 <CAJgzZopuptYOKHQ32-mau9gzwaWOmRtTACqdmfZvox=c2itp7w@mail.gmail.com>
In-Reply-To: <CAJgzZopuptYOKHQ32-mau9gzwaWOmRtTACqdmfZvox=c2itp7w@mail.gmail.com>

--------------LG0XC6nbtrhsvThn0IHdwvWn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWmlqdW4sIEVsbGlvdHQsDQoNCk9uIDUvMTkvMjMgMDE6MzAsIGVuaCB3cm90ZToNCj4g
c2hvdWxkIHByb2JhYmx5IHJlbW92ZSB0aGUgIlRoZSBjb21waWxhdGlvbiB3YXJuaW5nIGxv
b2tzIHRvIGJlIGdvaW5nDQo+IGF3YXkgaW4gZ2xpYmMgMi4xNyBzZWUgZ2xpYmMgY29tbWl0
DQo+IDRiNzYzNGE1ZTAzYjBkYTZmODg3NWRlOWQzZjc0YzFjZjZmMmE2ZTgiIGFib3ZlLCBz
aW5jZSB0aGlzIHBhdGNoDQo+IGZpeGVzIHRoYXQsIGJ1dCBsZWF2ZSB0aGUgRklYTUUgYmVj
YXVzZSBpdCBsb29rcyBsaWtlIHRoZXJlIGFyZSBtb3JlDQo+IEZJWE1FcyBiZWxvdz8NCj4g
DQo+IA0KPiBPbiBUaHUsIE1heSAxOCwgMjAyMyBhdCA0OjI34oCvUE0gWmlqdW4gWmhhbyA8
emlqdW56aGFvQGdvb2dsZS5jb20+IHdyb3RlOg0KPj4NCj4+IEhpIHRoZXJlLA0KPj4gICAg
V2UgYXJlIGFubm90YXRpbmcgc2V0dGltZW9mZGF5KCksIGdldHRpbWVvZmRheSgpIGFuZCB3
ZSB3aWxsIG1ha2UgdHYNCj4+IE5vbm51bGwgaWYgY29tcGlsYXRpb24gd2FybmluZ3Mgd2ls
bA0KPj4NCj4+IHJlc3VsdC4gQnV0IGFmdGVyIGNoZWNraW5nDQo+PiBodHRwczovL2VsaXhp
ci5ib290bGluLmNvbS9saW51eC9sYXRlc3Qvc291cmNlL2tlcm5lbC90aW1lL3RpbWUuYyNM
MTk5DQo+PiBuZCBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC9sYXRlc3Qvc291
cmNlL2tlcm5lbC90aW1lL3RpbWUuYyNMMjI0LA0KPj4NCj4+IHdlIHRoaW5rIHR2IGlzIG9r
YXkgdG8gYmUgbnVsbGFibGUuIFNvIHdlIG1ha2UgdGhlIGZpeCB0byBtYWtlIGl0IG1vcmUg
Y2xlYXIuDQo+Pg0KPj4gQmVzdCwNCj4+DQo+PiBaaWp1biBaaGFvDQoNCllvdSdsbCBhbHNv
IG5lZWQgdG8gYWRkIF9OdWxsYWJsZSB0byB0aGUgZnVuY3Rpb24gcHJvdG90eXBlcyBpbiB0
aGUNClNZTk9QU0lTLg0KDQoNCkJUVywgSSBzZWUgdGhhdCBnbGliYyBzdGlsbCByZXF1aXJl
cyBub25udWxsIGluIGdldHRpbWVvZmRheSgzKS4gIEl0J3MNCm9ubHkgc2V0dGltZW9mZGF5
KDMpIHRoYXQgaXMgbnVsbGFibGUuICBTZWU6DQoNCg0KJCBncmVwYyBnZXR0aW1lb2ZkYXkg
L3Vzci9pbmNsdWRlLyovc3lzL3RpbWUuaA0KL3Vzci9pbmNsdWRlL3g4Nl82NC1saW51eC1n
bnUvc3lzL3RpbWUuaDo2NzoNCmV4dGVybiBpbnQgZ2V0dGltZW9mZGF5IChzdHJ1Y3QgdGlt
ZXZhbCAqX19yZXN0cmljdCBfX3R2LA0KCQkJIHZvaWQgKl9fcmVzdHJpY3QgX190eikgX19U
SFJPVyBfX25vbm51bGwgKCgxKSk7DQoNCg0KL3Vzci9pbmNsdWRlL3g4Nl82NC1saW51eC1n
bnUvc3lzL3RpbWUuaDo3NToNCiMgIGRlZmluZSBnZXR0aW1lb2ZkYXkgX19nZXR0aW1lb2Zk
YXk2NA0KDQoNCiQgZ3JlcGMgc2V0dGltZW9mZGF5IC91c3IvaW5jbHVkZS8qL3N5cy90aW1l
LmgNCi91c3IvaW5jbHVkZS94ODZfNjQtbGludXgtZ251L3N5cy90aW1lLmg6ODY6DQpleHRl
cm4gaW50IHNldHRpbWVvZmRheSAoY29uc3Qgc3RydWN0IHRpbWV2YWwgKl9fdHYsDQoJCQkg
Y29uc3Qgc3RydWN0IHRpbWV6b25lICpfX3R6KQ0KICAgICAgX19USFJPVzsNCg0KDQovdXNy
L2luY2x1ZGUveDg2XzY0LWxpbnV4LWdudS9zeXMvdGltZS5oOjEwNjoNCiMgICBkZWZpbmUg
c2V0dGltZW9mZGF5IF9fc2V0dGltZW9mZGF5NjQNCg0KDQpBbmQgd2hpbGUgTlVMTCBtYXkg
YmUgbm9uLVVCLCB0aGUgbWFudWFsIHBhZ2UgaXMgbm90IHZlcnkgY2xlYXIgb24gd2h5DQpz
b21lb25lIHdvdWxkIHdhbnQgdG8gY2FsbCB0aGVzZSBmdW5jdGlvbnMgd2l0aCBOVUxMLiAg
Q291bGQgeW91DQpwbGVhc2UgYWxzbyBleHBsYWluIHdoeSB3b3VsZCBzb21lb25lIHdhbnQg
dG8gY2FsbCB0aGVzZSBmdW5jdGlvbnMNCndpdGggTlVMTD8gIChMZXQncyBkaXNjdXNzIGl0
IGluIHRoZSBsaXN0LCBhbmQgdGhlbiB3ZSBzZWUgd2hhdA0Kd29yZGluZyB3ZSB1c2UgZm9y
IHRoZSBwYWdlLikNCg0KVGhhbmtzIQ0KQWxleA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWph
bmRyby1jb2xvbWFyLmVzLz4NCkdQRyBrZXkgZmluZ2VycHJpbnQ6IEE5MzQ4NTk0Q0UzMTI4
M0E4MjZGQkREOEQ1NzYzM0Q0NDFFMjVCQjUNCg0K

--------------LG0XC6nbtrhsvThn0IHdwvWn--

--------------bcsSHsR6gPgPqepxDn42kqI0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRnLUMACgkQnowa+77/
2zJ3lhAAhJfD7d5vpDXNQOy3GE/VrTnl89PZ3vf9YlwXbdamaALawym+ZRg/ZZsD
rZuA6Q23csjB+q+ih7NTi36icmaUFUNOb8yzOVuM3epzLBE0MoQz49AQcaeDyO4i
DEAYis8pnXLMF/m/rnaA/cdAUXP6Jl3x6C6BwPQV2x+F3WQSpdZyrP8ghVrgVxpn
oUl6nCBgjQD6ci6vf3W2dv//AggzxNu1vJ+DH51zLf/EyD0HS80QBWHsdbUzUimq
xLYCQPzGDwI555xHDd2G4olvlQOlCFkYYUumF4WTD9L5fWaEsU5ys2cdgedWkYYK
axmbjTiAYx7EkWOL1KlvR2ViaENDo9MqWtdDJqmt2QhXTm8meNvdWM1ujc9vi4+u
nP2WktswVtPNXYsI/hZwj8kGEEt107d/oG1mq7MGVTINISAoLxzXHan3J7ewPLzd
QY9asOQA6aOA4gMJ9Ws4aX4wVbGk1mw9aA1CM6qomyaChxllCzdE4o9Uccc5HyVo
gCtxvbsSK/sgSdOE4H79k7s2qS0E+X5ewcrHbodUrhvjHTAvWZX9eXkrJx+VwcL+
PWXzBB+6U7e2qu6UchjI1zk50HaXnt5GKtwE/HEL3Yv+vS03Rf2hcKgMeN2WhFQ0
CWGCoRJVm07u4J5H3J6uS3C7+9kKMGs5UJwLL55/ZtO2En6J9M4=
=jpql
-----END PGP SIGNATURE-----

--------------bcsSHsR6gPgPqepxDn42kqI0--
