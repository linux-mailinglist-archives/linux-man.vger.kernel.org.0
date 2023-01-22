Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 975B2677294
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 22:11:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229986AbjAVVLM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 16:11:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230083AbjAVVLL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 16:11:11 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E3DF14E95
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:11:09 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id g10so7674871wmo.1
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:11:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sVY8cZ5kY78crmUEJILYH6LNbh/0lsQcCYBu5ieaRq4=;
        b=DCYtYlLj8jOCsFmzMcgOPu98tVN3EU+UCUkhc/gHZOODosMXuQeJw4BPLE1rUPLEJr
         1LTqL++QB9OI8UpBs2oW+nnxinwlRphQa7/+n1gXZTrRKL4oZGEThbteZDpDMsxmqnMk
         0JdIZDwh78CWrbi+X98OP9afJauYmWCA1BF+LiVd/KPeH7AiQOB4QUoTKnx0FtKKRRz2
         hS1fswns4nGM6mBcnz48XK48PfVRUODn+x3DNlIxFpaN4/p1KJEPu/S1neNYVFpUb9qd
         ie2ms4K1gyDLhOo6UesUFriKM+2QaA6+j1zp013BcVTW7KTPYVjgBpRfUG96DKPC4V5C
         8B4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sVY8cZ5kY78crmUEJILYH6LNbh/0lsQcCYBu5ieaRq4=;
        b=cjqo65fHeEOxOokhaGKLQfKxevR/QlpmIXHG1Cbhc+fMUy9IcYAUvU+ZcO0zxvFNmD
         Z3QMC8e/G2E4HPdryEWodubtxFTOHaca6KnOgUg3uy/vrqZvkUWaKkytVuDq1A/BmPrp
         AckYx2Mxrn8uWLWLtG5ZZ5ZCu2LCeH0pgkZx4+Nd2YhTX8QEnIPOle9uVVV/XL3+8hPZ
         EFZq/5iY3YGrm5VbbG8drP3hDmMgF7aGzr4uQ70FbXBhPQDjaW5F1DisxMMsz5U07CiO
         yijMijHV7hFzFGZ9TbAYGkO7JvCMy0P3WWpdYGpdR7KqNVjxOIWQB9bTNtDP797QT4pV
         qN0g==
X-Gm-Message-State: AFqh2kreO4qo4o90inmgp5yBOYCTbSx28UkzPZqqq2mxVO3+haCX2zHh
        ZoYcy+PtbBr/G+olrQe2gCC3cRjL9Fc=
X-Google-Smtp-Source: AMrXdXuO8K8tdxoE+IO+eg35w/6AECcnpCUO2e9npv/uLtuiD91Tl8deoRIb2HETc2oOh9AZiwbi9A==
X-Received: by 2002:a05:600c:3489:b0:3db:695:461a with SMTP id a9-20020a05600c348900b003db0695461amr21049562wmq.7.1674421867986;
        Sun, 22 Jan 2023 13:11:07 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t13-20020a1c770d000000b003db0ee277b2sm8891330wmi.5.2023.01.22.13.11.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 13:11:07 -0800 (PST)
Message-ID: <9a08e09f-6ecd-3e53-6d5f-613fdd720a7d@gmail.com>
Date:   Sun, 22 Jan 2023 22:11:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Issue in man page namespaces.7
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230122193125.GA28843@Debian-50-lenny-64-minimal>
 <21a40d27-e732-fb70-edc7-c18af8a59ed1@gmail.com>
 <20230122210207.w25k5br5idyna3c2@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230122210207.w25k5br5idyna3c2@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------9adic0idMKlX2gAnBLCpcizr"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DIET_1,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------9adic0idMKlX2gAnBLCpcizr
Content-Type: multipart/mixed; boundary="------------drVIxCG23dRQUTDeT0N3iXRG";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com,
 linux-man@vger.kernel.org
Message-ID: <9a08e09f-6ecd-3e53-6d5f-613fdd720a7d@gmail.com>
Subject: Re: Issue in man page namespaces.7
References: <20230122193125.GA28843@Debian-50-lenny-64-minimal>
 <21a40d27-e732-fb70-edc7-c18af8a59ed1@gmail.com>
 <20230122210207.w25k5br5idyna3c2@illithid>
In-Reply-To: <20230122210207.w25k5br5idyna3c2@illithid>

--------------drVIxCG23dRQUTDeT0N3iXRG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS8yMi8yMyAyMjowMiwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3
cm90ZToNCj4gSSB3b3VsZCB1c2UgXGZQIGluc3RlYWQgb2YgXGZSLCB0aGlzIHdheSB5b3Ug
cmV0dXJuIHRvIHRoZSAicHJldmlvdXMiDQoNCkFoaCwgeWVzLCB0aGFua3MgZm9yIGNhdGNo
aW5nIHRoYXQhICBTbGVlcGluZyAzIGhvdXJzIGlzIGRlZmluaXRlbHkgbm90IGdvb2QgZm9y
IA0KdGhlIGJyYWluIDpQDQoNCj4gZm9udCwgbm90IHRoZSByb21hbiBzdHlsZSBpbiB0aGUg
Y3VycmVudCBmYW1pbHkuICBUaGlzIGlzIGltcG9ydGFudCBpbg0KPiAoc3ViKXNlY3Rpb24g
aGVhZGluZ3MgYmVjYXVzZSB0aGV5IGFyZSBub3JtYWxseSBzZXQgaW4gYm9sZGZhY2UsIHNv
DQo+IHN3aXRjaGluZyB0byByb21hbiBleHBsaWNpdGx5IHdvdWxkIHVuaW50ZW50aW9uYWxs
eSBwdXQgImRpcmVjdG9yeSIgb24gYQ0KPiBkaWV0IChpLmUuLCBjYXVzZSBpdCB0byBsb3Nl
IFtzdHJva2VdIHdlaWdodCkuDQo+IA0KPiBXaXRoIHRoYXQgY29ycmVjdGlvbiwgSSdtICsx
Lg0KPiANCj4gQnV0IEkgd291bGQgYWxzbyBxdW90ZSBtdWx0aS13b3JkIGFyZ3VtZW50cyB0
byBfYW55XyBtYW4oNykgbWFjcm8uDQoNCldoeSBpcyBpdD8gIEkgcmVtZW1iZXIgeW91IG1l
bnRpb25lZCB0aGF0LCBidXQgd2hhdCdzIHRoZSB3aW4/DQoNCj4gDQo+IFRodXM6DQo+IA0K
Pj4gKy5TUyAiVGhlIFxmSS9wcm9jL3N5cy91c2VyXGZQIGRpcmVjdG9yeSINCj4gDQo+IEVx
dWl2YWxlbnRseSwgaWYgb25lIGRvZXNuJ3QgY2FyZSBhYm91dCBwb3J0YWJpbGl0eSB0byBh
bmNpZW50DQo+IGZvcm1hdHRlcnMuLi4NCj4gDQo+PiArLlNTICJUaGUgXGZbSV0vcHJvYy9z
eXMvdXNlclxmW10gZGlyZWN0b3J5Ig0KDQpJbnRlcmVzdGluZy4gIEknbGwgY29uc2lkZXIg
dGhhdCBmb3IgdGhlIGxvbmcgdGVybS4gIEhvd2V2ZXIsIGZvciBub3cgSSdsbCBrZWVwIA0K
XGZQIHN0eWxlLg0KDQo+IA0KPiAuLi53aWxsIHN1ZmZpY2UuDQo+IA0KPiAoT25lIG1pZ2h0
IHJlYXNvbmFibHkgd29uZGVyIHdoeSAiXGZJIiBkb2Vzbid0IGNhdXNlIGEgbG9zcyBvZiBz
dHJva2UNCj4gd2VpZ2h0LCB0b28uICBJbiBncm9mZiAxLjIyLjQgYW5kIGVhcmxpZXIsIGl0
IGRvZXMuICBJbiBncm9mZiAxLjIzLjAsDQo+IHRoZSBtYW4oNykgcGFja2FnZSByZW1hcHMg
dGhlICJJIiB0byAiQkkiLikNCj4gDQo+IFJlZ2FyZHMsDQo+IEJyYW5kZW4NCg0KQ2hlZXJz
LA0KDQpBbGV4DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K


--------------drVIxCG23dRQUTDeT0N3iXRG--

--------------9adic0idMKlX2gAnBLCpcizr
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPNpmoACgkQnowa+77/
2zKtWQ//d/QN8p7ySB3IMXskgVb9vaQ5QT/J7RXnf0v5McT8SPldM6n/BYQGhKtH
m8iSiVje8vTsiRc8rNlmH0xGlDnUj6oHQRYcJllYxhXF5Iqtcq7nJgkmwJ8D1jV3
35C34u2DSLNVUJJzliK608iOG4ZNoSiFnDd/YCq+AIGTckduKeb0iIPjH4Uqa+N5
U7djgc20/L0/JhSvJG61snhCqET2T0cWVxWZetXTQAyUsEL608qKYPUQb5yUrNeT
nbux9/QHCZI9zp7IURDSf1ZwPEaS9OOgU7jalGkHCTBogINKGvJvbIcSUljjUjIv
lxQ9nTB9ZevToDJlIQ++WRK4K1I0VW4MyDRJfumLmQG+syVwfGcOz2HcT7ioQaMh
XdI/n34SPzMGwa86hHNtv+JfR+nsw08w4N4aY2bGjbm1Skn5kc62HT1DaTahkxOV
uCNjkOBr2MxyKMGNRs5ywVWlv8SyZBtRTQWm89K5uaRUDS2DyaMtPwCQnjF/0Ihy
64LXSsydvNYOZUesF/t4x/fg5W0BIXwLOnguw7NYaRbDZzyv5DgPxQVlYQr7smkQ
PM9t2KTWXaxr9krBoya6oggf78eMkvI25AKBmZbFtmCdy4L3Dnik3fBHDUUDz+sC
Ox581NV8/61t/zQkA8RrgZRw9AOggdSl/bmSsdskHO4soeAWzwE=
=1f0z
-----END PGP SIGNATURE-----

--------------9adic0idMKlX2gAnBLCpcizr--
