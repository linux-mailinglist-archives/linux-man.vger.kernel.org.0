Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D608264A216
	for <lists+linux-man@lfdr.de>; Mon, 12 Dec 2022 14:49:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233156AbiLLNtl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Dec 2022 08:49:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233093AbiLLNtL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Dec 2022 08:49:11 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABE0B10DB
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 05:48:36 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id o5so12160329wrm.1
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 05:48:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bEF0dY9fGtkJoSTdKPsV6l6k+oMNGkQShZGUunUbce0=;
        b=CNvpBNSL+aHrIP2zs+XUj0JkZR/xvVdbagFRhchImtmaq5W8Ft42hy4tFmg4K9jkEm
         5F8/Li3KA/Ynb88AyuTdzpOHS5FVcV4MMzSwgn3eHC/vMfwYrpLTmJqRqa5r7tOJKOT+
         GN7LNzdA3e2AP0wOrEzT9B3cySTT5wGKF/9nag75CGUzPP2PO6BjK0YSHYx8RAieh3t7
         4uuPaPkBsvPnXaUUfmkb9PYRx/hJPXiJEVqaIR0+Do/mMWnOumhM5/68R/Ny1wLWmnG0
         v48UAavPgd5Y3e2yoyBgVndKDf2QnWSZ6WzK9Ls5aJcMllEqICi5nGIzOKD1sQof9Bcq
         c92w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bEF0dY9fGtkJoSTdKPsV6l6k+oMNGkQShZGUunUbce0=;
        b=1AnVpuY6QSzSxA1tvV28PjYUWvNaZQwCWhhQcZybFq+GNBylxB1Tkulv2B6yold3SJ
         rOA0A5eHdvVY9f5nOuPJUjKcZLrpV9N3voamR98rSF+1uPwloTIiTOMUsLVFPN6/CPG/
         mfuDOVsQk9GZv38mLFYITmtu3O1SRrzFmStkD1vTjZ0AyMet/outGqHgmyJaVyiBekZy
         SO42wPH9YDrdrBT8BUZ137Avk3ntJZtTS7w0H47TBg9jcVNTllYHMw2rNZHHrxD/bax7
         i+Cg/t8fkwNkqY5Z3ThoeiLnAakI8GG6F0r4zBuyOO8xcsnbQys5qzYLRgDfLVXc8Qsm
         jsOQ==
X-Gm-Message-State: ANoB5plzL3i63j2sVVUyjgxiFYat6gryGtWLHfMl3l8q/fzCPpTP12Zw
        77RGiJ/WH/BX0fIfF8Gylsg=
X-Google-Smtp-Source: AA0mqf4r0ZBlyUXXF9MNglCKtgWgxFCQv5MFNoNaqMyMHYc+5kE5EQFZjC/kDO+5a+vIKYhkzCzaXA==
X-Received: by 2002:a05:6000:1081:b0:242:4f41:1431 with SMTP id y1-20020a056000108100b002424f411431mr9401964wrw.28.1670852915178;
        Mon, 12 Dec 2022 05:48:35 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y11-20020adff14b000000b002365b759b65sm8911650wro.86.2022.12.12.05.48.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Dec 2022 05:48:34 -0800 (PST)
Message-ID: <2c618bc2-2caf-efff-c2d8-f680eb172bb8@gmail.com>
Date:   Mon, 12 Dec 2022 14:48:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Chapters of the manual (was: Bug#1018737: /usr/bin/rst2man:
 rst2man: .TH 5th field shouldn't be empty)
Content-Language: en-US
To:     Ingo Schwarze <schwarze@usta.de>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, groff@gnu.org,
        Michael Haardt <michael@moria.de>,
        Andries Brouwer <Andries.Brouwer@cwi.nl>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        "Andries E. Brouwer" <aeb@cwi.nl>
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <a7b8c6b3-a8e8-6ab7-6cf4-118446849a9c@gmail.com>
 <dca0e251-7481-7f1e-4077-0ddee070a357@gmail.com>
 <20220906204245.hzhq2s7yha6zzgrh@illithid>
 <30e80fe0-f0ce-d6cd-ee40-28692e5a5f82@gmail.com>
 <5c1e8620-e4ff-c79a-1d4e-11f797276726@gmail.com>
 <20221116234049.GA1229865@if>
 <f306a83a-306d-e3d0-5d25-bf07da3da59f@gmail.com>
 <c23b1a4f-1269-55a6-53ac-abbd2cff5786@gmail.com>
 <Y5cvIUuBIx2RptPP@riva.ucam.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <Y5cvIUuBIx2RptPP@riva.ucam.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------k3vqFEdiDO0Q08YlVQdzjn0q"
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
--------------k3vqFEdiDO0Q08YlVQdzjn0q
Content-Type: multipart/mixed; boundary="------------NkC0zmD9wTBnB0SvmzHXpeWQ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man <linux-man@vger.kernel.org>, groff@gnu.org,
 Michael Haardt <michael@moria.de>, Andries Brouwer <Andries.Brouwer@cwi.nl>,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
 "Andries E. Brouwer" <aeb@cwi.nl>
Message-ID: <2c618bc2-2caf-efff-c2d8-f680eb172bb8@gmail.com>
Subject: Re: Chapters of the manual (was: Bug#1018737: /usr/bin/rst2man:
 rst2man: .TH 5th field shouldn't be empty)
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <a7b8c6b3-a8e8-6ab7-6cf4-118446849a9c@gmail.com>
 <dca0e251-7481-7f1e-4077-0ddee070a357@gmail.com>
 <20220906204245.hzhq2s7yha6zzgrh@illithid>
 <30e80fe0-f0ce-d6cd-ee40-28692e5a5f82@gmail.com>
 <5c1e8620-e4ff-c79a-1d4e-11f797276726@gmail.com>
 <20221116234049.GA1229865@if>
 <f306a83a-306d-e3d0-5d25-bf07da3da59f@gmail.com>
 <c23b1a4f-1269-55a6-53ac-abbd2cff5786@gmail.com>
 <Y5cvIUuBIx2RptPP@riva.ucam.org>
In-Reply-To: <Y5cvIUuBIx2RptPP@riva.ucam.org>

--------------NkC0zmD9wTBnB0SvmzHXpeWQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQ29saW4hDQoNCk9uIDEyLzEyLzIyIDE0OjM5LCBDb2xpbiBXYXRzb24gd3JvdGU6DQo+
IFtTb3JyeSBmb3IgdGhlIGRlbGF5OyBhIHN1Y2Nlc3Npb24gb2YgYnVzaW5lc3MgdHJhdmVs
LCBob2xpZGF5cywgYW5kDQo+IENvdmlkIGhhdmUgdG9nZXRoZXIgZWF0ZW4gdXAgbXVjaCBv
ZiBteSB0aW1lIHJlY2VudGx5Ll0NCj4gDQo+IE9uIFRodSwgTm92IDE3LCAyMDIyIGF0IDAx
OjI4OjEyQU0gKzAxMDAsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPj4gT24gMTEvMTcv
MjIgMDE6MDYsIEcuIEJyYW5kZW4gUm9iaW5zb24gd3JvdGU6DQo+Pj4gSSB0aGluayB0aGUg
YWRvcHRpb24gb2YgdGhlIHRlcm0gKHN1YiljaGFwdGVyIGhhcyBhIHBvdGVudGlhbCBiZW5l
Zml0IGluDQo+Pj4gdGhhdCBpdCByZW1vdmVzIGEgdGVybWlub2xvZ2ljYWwgY29sbGlzaW9u
IHdpdGggKHN1YilzZWN0aW9ucyBhcw0KPj4+IHN1YmRpdmlzaW9ucyBvZiBpbmRpdmlkdWFs
IG1hbiBwYWdlcyAobWFuOiBTSCwgU1M7IG1kb2M6IFNoLCBTcykuDQo+Pj4NCj4+PiBJZiB0
aGlzIHRlcm1pbm9sb2dpY2FsIHJlZm9ybSBpcyBhZG9wdGVkLCBJIHRoaW5rIGl0IHNob3Vs
ZCBiZSBkb25lDQo+Pj4gYWNyb3NzIGFsbCBvZiAoMSkgTGludXggbWFuLXBhZ2VzLCAoMikg
Z3JvZmYsICgzKSBtYW5kb2MsIGFuZCAoNCkNCj4+PiBtYW4tZGIuICBJZiB3ZSBjYW4ndCBz
cGVhayB3aXRoIG9uZSB2b2ljZSBvbiB0aGlzIHRoZW4gSSB0aGluayBpdCdzDQo+Pj4gYmV0
dGVyIG5vdCB0byB1bmRlcnRha2UgdGhhdCByZWZvcm0gYXQgYWxsLCB0byBhdm9pZCBmcnVz
dHJhdGluZyB0aGUNCj4+PiBkaXNjb3ZlcmFiaWx0eSBvZiBtYW4gcGFnZXMuDQo+Pj4NCj4+
PiBQb3NzaWJseSB0aGUgYmlnZ2VzdCBiYXJyaWVyIHRvIHRoaXMgaXMgdGhlIG1uZW1vbmlj
IGFuZCBkb2N1bWVudGF0aW9uDQo+Pj4gb2YgdGhlIG1hbigxKSAnLXMnIG9wdGlvbi4gIElu
IG1hbi1kYiBtYW4sICctQycgYW5kICctYycgYXJlIGJvdGgNCj4+PiBhbHJlYWR5IGluIHVz
ZS4NCj4+DQo+PiBUaGF0IGNhbiBiZSBkb2N1bWVudGVkIGFzIGEgaGlzdG9yaWNhbCBkZXRh
aWwgaW4gdGhlIGRvY3VtZW50YXRpb24gb2YgdGhlDQo+PiBvcHRpb24gaXRzZWxmLCB3aGlj
aCBtYWtlcyBzZW5zZSwgYXMgdG8gYXZvaWQgcHJvZ3JhbW1lcnMgdGhhdCBoYXZlIGhlYXJk
IG9mDQo+PiBzZWN0aW9ucyB0byB0cnkgdG8gZ3JlcCBzZWN0aW9uIGFuZCBmaW5kIG5vdGhp
bmcuDQo+Pg0KPj4+IFByb2JhYmx5IGEgZ29vZCBpZGVhIHRvIGxvb3AgQ29saW4gV2F0c29u
IGluIG9uIHRoaXMgcHJvcG9zYWwgb2YgeW91cnMsDQo+Pj4gd2hpY2ggaXMgc3RyaWN0bHkg
c3BlYWtpbmcgc2V2ZXJhYmxlIGZyb20gdGhlIGJlbG93Lg0KPj4NCj4+IFllcywgZXNwZWNp
YWxseSBzaW5jZSBwYXJ0IG9mIHRoZSBkaXNjdXNzaW9uIGlzIGluIGxpbnV4LW1hbkAgKEkn
bSBub3Qgc3VyZQ0KPj4gaWYgaGUgcmVhZHMgaXQ7IEkgdGhpbmsgbm90KSBhbmQgbm90IGlu
IGdyb2ZmQCAod2hpY2ggaGUgcmVhZHMsIEFGQUlLKS4gIFNvLA0KPj4gSSdsbCBtZXJnZSB0
aGUgMiBkaXNjdXNzaW9ucyBhYm91dCB0aGlzIGJ5IGZvcndhcmRpbmcgdGhlIDIgbW9zdCBp
bnRlcmVzdGluZw0KPj4gb3RoZXIgZW1haWxzIGJlbG93Lg0KPiANCj4gSSdtIG5vdCBzdWJz
Y3JpYmVkIHRvIGxpbnV4LW1hbkAsIGFuZCB3aGlsZSBJIGFtIHRlY2huaWNhbGx5IHN1YnNj
cmliZWQNCj4gdG8gZ3JvZmZAIEkgcmVhZCBpdCB2ZXJ5IGluZnJlcXVlbnRseSB0aGVzZSBk
YXlzLCBzbyB0aGFua3MgZm9yDQo+IGV4cGxpY2l0bHkgY29weWluZyBtZSBpbi4NCj4gDQo+
PiBTbywgZG9lcyBpdCBtYWtlIHNlbnNlIHRvIGFsbCBvZiB1cyB0byBzdGFydCB1c2luZyB0
aGUgdGVybSBjaGFwdGVyIGZvcg0KPj4gZGl2aXNpb25zIG9mIHRoZSBtYW4tcGFnZXMgc2lu
Z2xlIHZvbHVtZSwgc28gdGhhdCB0aGUgbWFudWFsIHBhZ2VzIGluIExpbnV4DQo+PiBhcmUg
b3JnYW5pemVkIGZyb20gbm93IG9uIGluIGNoYXB0ZXJzIDEgdG8gOSBpbnN0ZWFkIG9mIHNl
Y3Rpb25zIDEgdG8gOT8NCj4gDQo+IEkgZmluZCBteXNlbGYgcmVsYXRpdmVseSBhZ25vc3Rp
YyBvbiB0aGlzIHdob2xlIGRpc2N1c3Npb24uICBUaGVyZSBhcmUNCj4gZ29vZCByZWFzb25z
IGZvciByZWZvcm0sIGFuZCBhbHNvIHNvbWUgZ29vZCByZWFzb25zIHRvIHdvbmRlciB3aGV0
aGVyDQo+IHRoZSBncmFzcyB3aWxsIGluIGZhY3QgYmUgZ3JlZW5lciBvbiB0aGUgb3RoZXIg
c2lkZSAoZ2l2ZW4gdGhlIG5lY2Vzc2l0eQ0KPiB0byBrZWVwIG1hbnkgYml0cyBvZiAic2Vj
dGlvbiIgdGVybWlub2xvZ3kgYXJvdW5kIGluIHRoaW5ncyBsaWtlDQo+IG1hbigxKSdzIG9w
dGlvbiBoYW5kbGluZyBhbmQgdGhlIG1hbi1kYiBjb25maWd1cmF0aW9uIGZpbGUgbW9yZSBv
ciBsZXNzDQo+IGluZGVmaW5pdGVseSkuDQo+IA0KPiBJJ20gbm90IGdvaW5nIHRvIHZldG8g
aXQsIGJ1dCBJIGFsc28gaGF2ZSBubyBncmVhdCBlbnRodXNpYXNtIGZvciB0aGUNCj4gdXBo
ZWF2YWwuICBJZiB0aGUgY29tbXVuaXR5IGNvbnNlbnN1cyBpcyBmb3IgaXQgdG8gaGFwcGVu
LCB0aGVuIEknZCBhc2sNCj4gdGhhdCBzb21lYm9keSB3aG8gaXMgZW50aHVzaWFzdGljIGFi
b3V0IGl0IHB1dCB0aGUgd29yayBpbnRvIHRoZSB2YXJpb3VzDQo+IG5lY2Vzc2FyeSB1cGRh
dGVzIHRvIG1hbi1kYidzIGNvZGUgYW5kIGRvY3VtZW50YXRpb24gYW5kIHNlbmQgYW4NCj4g
YXBwcm9wcmlhdGUgbWVyZ2UgcmVxdWVzdC4NCg0KSSBjYW4gZG8gdGhhdC4gIERvbid0IGV4
cGVjdCBpdCB0byBiZSBwZXJmZWN0LCBidXQgSSBjYW4gaXRlcmF0ZSBvbiBpdCB1cG9uIHlv
dXIgDQpyZXF1ZXN0cy4NCg0KQnJhbmRlbidzIHNlZW1zIHRvIGhhdmUgcHJlZGlzcG9zaXRp
b24gZm9yIHRoZSBjaGFuZ2UsIGxpa2UgbWUuICBCdXQgbGlrZSB5b3Ugd2UgDQpoYXZlIHNv
bWUgZG91YnRzLiAgTGV0J3Mgc2VlIHdoYXQgSW5nbyBoYXMgdG8gc2F5Lg0KDQpUaGFua3Mh
DQoNCkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=


--------------NkC0zmD9wTBnB0SvmzHXpeWQ--

--------------k3vqFEdiDO0Q08YlVQdzjn0q
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOXMTEACgkQnowa+77/
2zIZ/A/8CgAK8G47bV3fXvpaFcI5ceokNbN1TKrmQcMnD3CzlvCNK86we4JxRhjR
B62dcZ8XDAY/emW41oM/OjkVFtumiUypTcM2Qfn/t9v2Pq5AYc1kvDvJolhkKJoC
Pk/pxEI40MFvIykspsVDhT6WCTm3XDUzjQ17P8+eaT9D9QoXy5i9QsGsJLLvEwUk
vzMx4dJpcFbVfMLOWnGhLIcK+z5MyafT76k5ab5Azap+aQp9r5M/Yqef0WurCSeo
shNhdc/EoOGYSp/ljVyiW1+asJKnwsvAf+0EgGNQy6Fi+bX4iUQDUDbMFPTZ+O84
LffXwwdlsMbD7bPKp43J9nLh0ZKsB8oj15FSz+PZqSJaSYX3Z8q+KAnNWGg3xe/n
V4bYWsQbrcfiAMJaKTUaIAo5KuMIET3lqSPrlHfHlBncWnP8mn793zp9AZoqqrc1
55gtpcqgcLnXNst8NUecCRt2TSQHWoB3bMty8fmB7grrLP3mMyfQqAv4rQujqqU0
sXBsBvLuiAqY+hsLrn6BjZg62Vz++r6yIFdVC0QlXrsPFqk2U1omx/qP3xWiJjip
h5Zcs3RNWKp9y8Vb4e1VujQUoQnx9RoBtKFjYplzMx4eR6B2xw/q5AHFqvEUH871
JYwEO6KzedcEz20J/Ub/X/v00A/oDGb0y/3MhMR65+m4yGLfZsk=
=koOI
-----END PGP SIGNATURE-----

--------------k3vqFEdiDO0Q08YlVQdzjn0q--
