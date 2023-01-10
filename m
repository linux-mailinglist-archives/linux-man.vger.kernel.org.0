Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D684664C22
	for <lists+linux-man@lfdr.de>; Tue, 10 Jan 2023 20:14:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235275AbjAJTOr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Jan 2023 14:14:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239932AbjAJTOY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Jan 2023 14:14:24 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7073143A0D
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 11:14:20 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id v2so1831427wrw.10
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 11:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZkR35IX9SzXtttK15eRVCe9HRPG/7ooTcenGTPpMSNM=;
        b=SU6GuvLgXnuW9Pz+IG+QX4OxBXKeGFVgJjG9IBxugHMlCGWkXRCWyosC5dScjxw0Io
         tkZRfqIPadI3ck1P+czW1ugq5uSNOG4ob607HWQA981ICKMNZM2ay5zerq8CxiFt/jA4
         a3wPY2STPkjostHJtUOKqDI8MuDMNNVRfksjvvcAH57sToSUgb3TpMn3rxHledOxNQ4r
         GZOUpI28T4kliQ7PlCe70qfgxS5iHk3macCUY6x7+wzxfmb2f0eWlHtEFi+dZJD6nV0S
         OlAsQQHMFGnFON9gVgBGutJg08GDy25CxLz65bdrsDCsQHAYJR6vFEXRNt1jxEt+k0H6
         n+/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZkR35IX9SzXtttK15eRVCe9HRPG/7ooTcenGTPpMSNM=;
        b=M7PDXIrR7UAQ44M3byGprWYT6smhmYKqO2YzUoSC+1j1XhfSnji/XO8rrySZmqAPzh
         NuTRmeEcZk3CE2MDt8ChDxC3Ci8O+0V1f0RUjrmgK15NnrUkSp8BluYSsm3HR5UHAdwm
         iwn0pDb39Vt3DKDg08dqzeulYza8ih3wHnr451O9GnEawgcKVo0JrYfulk5Df8y6P6kH
         Dw2NEYPAoUIzSTdJdvD74y5IYvMUqY+tL4sZnjxfwlhSTpvnE6K6ckTVT6KAOuxTgg6f
         g1tilxPGidkyAutzEIzVaAJW5bGb7/Sj0tteFnVZbjkD3NYmJ6d/MUHQJYWSIOFPyEVo
         cekA==
X-Gm-Message-State: AFqh2kqFNq6lVEoYTGpaJWLJ/VibtWvoWEymOL6PU3xGodpw8swk8AT3
        1H4Afm+h44ylI1+mi8KaPDE=
X-Google-Smtp-Source: AMrXdXsD7DzGNX1uZ7DUnufOvfJDhhJAAuyi25DX8luMyPo7dvqCcb++eyRo1FuOII5HI7IBSolZjA==
X-Received: by 2002:a5d:4403:0:b0:268:f9de:d551 with SMTP id z3-20020a5d4403000000b00268f9ded551mr44482529wrq.40.1673378059321;
        Tue, 10 Jan 2023 11:14:19 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b2-20020a056000054200b0022584c82c80sm12033803wrf.19.2023.01.10.11.14.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 11:14:18 -0800 (PST)
Message-ID: <f6d64270-1b03-e8fb-c123-d94c499c7d65@gmail.com>
Date:   Tue, 10 Jan 2023 20:14:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Up-to-date online manual pages
Content-Language: en-US
To:     Sam James <sam@gentoo.org>, Geoffrey Thomas <geofft@ldpreload.com>
Cc:     alx@kernel.org, mtk.manpages@gmail.com, linux-man@vger.kernel.org
References: <18eda7ce-8dc4-404c-bb43-c943829638a6@app.fastmail.com>
 <CF1086C3-D26F-4F42-A1D4-74AFDA07779B@gentoo.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CF1086C3-D26F-4F42-A1D4-74AFDA07779B@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------2kQi0503Ub6TpAHlf5ImApiX"
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
--------------2kQi0503Ub6TpAHlf5ImApiX
Content-Type: multipart/mixed; boundary="------------kUM3hwGMNSwR7p4z7oab0p4x";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Sam James <sam@gentoo.org>, Geoffrey Thomas <geofft@ldpreload.com>
Cc: alx@kernel.org, mtk.manpages@gmail.com, linux-man@vger.kernel.org
Message-ID: <f6d64270-1b03-e8fb-c123-d94c499c7d65@gmail.com>
Subject: Re: Up-to-date online manual pages
References: <18eda7ce-8dc4-404c-bb43-c943829638a6@app.fastmail.com>
 <CF1086C3-D26F-4F42-A1D4-74AFDA07779B@gentoo.org>
In-Reply-To: <CF1086C3-D26F-4F42-A1D4-74AFDA07779B@gentoo.org>

--------------kUM3hwGMNSwR7p4z7oab0p4x
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU2FtLA0KDQpPbiAxLzEwLzIzIDA5OjE5LCBTYW0gSmFtZXMgd3JvdGU6DQo+IA0KPiAN
Cj4+IE9uIDkgSmFuIDIwMjMsIGF0IDIzOjUyLCBHZW9mZnJleSBUaG9tYXMgPGdlb2ZmdEBs
ZHByZWxvYWQuY29tPiB3cm90ZToNCj4+DQo+PiBIaSBmb2xrcywNCj4+DQo+PiBJJ3ZlIG5v
dGljZWQgdGhhdCB0aGUgb25saW5lIG1hbnVhbCBwYWdlcyBvbiBodHRwczovL21hbjcub3Jn
L2xpbnV4L21hbi1wYWdlcy9pbmRleC5odG1sIGRvbid0IHNlZW0gdG8gYmUgdXAtdG8tZGF0
ZSB3aXRoIHRoZSBsYXRlc3QgcmVsZWFzZSBvZiBtYW4tcGFnZXMuIFRoZXkgc2VlbSB0byBi
ZSBwcmUtNi4wLiBJcyB0aGVyZSBhbm90aGVyIHNpdGUgdGhhdCBoYXMgdGhlbSBvbmxpbmUg
KG90aGVyIHRoYW4gZG93bnN0cmVhbXMgbGlrZSBMaW51eCBkaXN0cm9zIHRoYXQgaG9zdCB0
aGVpciBvd24gbWFuIHBhZ2VzKT8gT3IgaXMgdGhlcmUgc29tZSB3YXkgSSBjYW4gaGVscCB3
aXRoIGdldHRpbmcgdGhlbSB1cGRhdGVkPw0KPj4NCj4gDQo+IFRoaXMgcmVhbGx5IHJlbWlu
ZHMgbWUgdGhhdCB3ZSBuZWVkIHRvIGZpZ3VyZSBvdXQgc3VjaCBhIHNvbHV0aW9uIGZvciBH
ZW50b28uIEknbSBvZnRlbiBxdWl0ZSBlbnZpb3VzIG9mIEFyY2gncyB2aWV3ZXIgJiByZW5k
ZXJpbmcgb2YgYWxsIHRoZWlycy4NCg0KWWVzLCB0aGF0IG9uZSBpcyBuaWNlIChpdCBoYXMg
c29tZSBmb3JtYXR0aW5nIGlzc3VlcyBpbiB0aGUgZXhhbXBsZXMgDQood2hpdGVzcGFjZTsg
Y2hlY2sgaGVyZTogDQo8aHR0cHM6Ly9tYW4uYXJjaGxpbnV4Lm9yZy9tYW4vY29yZS9tYW4t
cGFnZXMvX0dlbmVyaWMuMy5lbj4pLCBidXQgaXQncyByYXRoZXIgDQpuaWNlIGFwYXJ0IGZy
b20gdGhhdC4NCg0KPiANCj4gSSdtIG5vdCBhd2FyZSBvZiBhbiB1cCB0byBkYXRlIGNvcHkg
b2YgbWFuLXBhZ2VzIG9uIHRoZSB3ZWIuIElJUkMsIE1pY2hhZWwgS2VycmlzayBoYXMgc3Rl
cHBlZCBkb3duIGZyb20gbWFpbnRhaW5pbmcNCj4gbWFuLXBhZ2VzIGFzIGhlJ3MgYnVzeSwg
c28gYSByZWRpcmVjdCBtYXkgYmUgbmVlZGVkIGlmIGFjY2VzcyB0byB0aGF0IHNpdGUgY2Fu
J3QgYmUgZ2l2ZW4gdG8gQWxleCA6KA0KDQptYW43Lm9yZyBpcyBNaWNoYWVsJ3MgcHJvcGVy
dHkuICBUaGUgYmVzdCB0aGluZyB0byBkbyBpcyBnZXQgaGltIHRvIG1haW50YWluIGl0LiAN
CiAgT3RoZXIgdGhhbiB0aGF0LCBJIGRvbid0IHRoaW5rIHRoZSBlZmZvcnQgaXMgd29ydGgg
aXQgdG8gb3BlbiBhIGNsb25lIG9mIGl0OyANCmRpc3Ryb3MgbGlrZSBEZWJpYW4gb3IgQXJj
aCBhbHJlYWR5IGhhdmUgaXQuICBNYXliZSBmb3IgZ2VudG9vIGl0J3Mgd29ydGggaXQsIA0K
dGhvdWdoLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCj4gdGhhbmtzLA0KPiBzYW0NCg0K
LS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------kUM3hwGMNSwR7p4z7oab0p4x--

--------------2kQi0503Ub6TpAHlf5ImApiX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO9uQkACgkQnowa+77/
2zIy0g/+LoQrXepI8gPue76u+qQuG6kI2HIZG8xr0UuWABQkP0e7trfNAI+B2pqb
M2UkFQPNK07gneC8yrFnjIr4YYTcQy6BVsMVeetWMSZtJf0P/5VRe+KvdSaSjHn3
qkitLxRkPNWafqmM1xsgkpY4vCBgbM/et6FFKa/2gbOzvxlqSqesGm4GvtWa64Nw
GizOY6PT8g1dvcuOUXsVUjBNamBl4ZEDuW8TXlheaxOeS/eKoANquS7owUoo5NFJ
LdGPGe6bRRV+fgM90uddth2d1w1ojwQnOmgLu/pxjvo0ed0C5bxpN4PTz8IyI0QO
qs3EZ+GuTbpWcbxZAsevSn1AouYbR6zQgBHYgWptXObsbFSLbqJ0gcw42LvMVzMO
DABIKN6FLLy2/Pn9G8XL3OcwonJmDltvm75XsUoEa/bbVvK1Naq+Gsc+aNMNavZO
6vmIDtQnlffl30b0z2i3ATSi4tXlZLCaKTh0Ha8EDQrKUbdI0a38rR58fGBnEWy9
q0O3trsry22k/2ppZn+FPcP9BGuDvMVmF0Bv0reK2dmY5dwgKzbxfiESQ8MeTnLQ
Rn9Upm5Au338TftuN7yo9yfuPdNj3tsfirn+k5XBYkUy0clSv1RS1cKzahSRNt1t
74488i9m6lesP0LIGIhREt98iuqAT3H9nZtrNQWF+EJtBD5wpN4=
=s5Yp
-----END PGP SIGNATURE-----

--------------2kQi0503Ub6TpAHlf5ImApiX--
