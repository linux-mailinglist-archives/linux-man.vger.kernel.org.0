Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D795568F9D9
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 22:44:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231179AbjBHVoy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 16:44:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230167AbjBHVox (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 16:44:53 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F9CB28D26
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 13:44:52 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id j23so3095521wra.0
        for <linux-man@vger.kernel.org>; Wed, 08 Feb 2023 13:44:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mgnLIVmukJNO8dydnECqGr2QLjCUCq4Aa/FpvQOYy5o=;
        b=KsOpGQC9Qa6BNWQyDyZsq+LhFsPEA2Wdbf7tGpObUSZhs2xIxBXAsYNGS5AIRwteNT
         jM4wpHtROa9c//5w59NionQUS11pcoLbBarGW23242wQLB++2KqtGdglvi127cDGZkXe
         jU1I9QEFEwEPKXr/+2QaG+0nMeZshvE6tUE0KN3Aml9FaEGxcrhd+sbRMBfBnkkKoFpI
         FMCXWYvAKlm6Z1uqUE0/13lm5uDbzybbsNLpgb4yg4peQlFwgMc58JgUQ8zBIaKU66CW
         zzGToRn9q7Xgqf/T183abFn0q3nljajwH593jJUwWL5f5xDX5EahX6S69VSgEw0LqA77
         X3rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mgnLIVmukJNO8dydnECqGr2QLjCUCq4Aa/FpvQOYy5o=;
        b=HiEHjA82qzuJptdLcrawJser+sOGJ405dpcg6cpxtql7OEuVq0VMahAvZzaRmzmfkE
         7slhuaMydKaClSd7goBW2qb5k8hKEosyYBka/Omb2IG/ih92NYb5H+imd7APfyq/GMii
         x6v95O7QsGoKBOlkkT6VrFGE0NtTc1fX5bzqm7FONdvOoZd2OGAOWNy6kFFSaSRVnA6r
         172F9AI8urYWYGC7CsuoiEAGGlNxOFBv5KrJFsVKN+LvsgcVqfvwEGWyEQgGWdTU8Fp+
         NJPo+APaoI11xSuzbKU/5EHvH+d7Pat3q/OBYNwNQT1kSoIgp2KytAbOFIEzjmvaZWcU
         6GLg==
X-Gm-Message-State: AO0yUKVm3Z9YPF2mKoyH0w8+SI28QWL4P5sX5b/1M6g1Caip9zVT87dt
        Gi0tJd+vgnMnd2DQd5bPyvv9XuVNpAg=
X-Google-Smtp-Source: AK7set+RO3gwxWOzh+ribk+MqD5JenI48hf9Es3Wjye5bhcCRVKAArxqyQEKi9/akM16ckLi2PFykw==
X-Received: by 2002:adf:df8a:0:b0:2bf:b119:e6e2 with SMTP id z10-20020adfdf8a000000b002bfb119e6e2mr9697450wrl.47.1675892691165;
        Wed, 08 Feb 2023 13:44:51 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m13-20020a05600c4f4d00b003db06224953sm3163974wmq.41.2023.02.08.13.44.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 13:44:50 -0800 (PST)
Message-ID: <ba43321f-6d5b-f604-88b9-c7909be8298d@gmail.com>
Date:   Wed, 8 Feb 2023 22:44:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 00/11] punctuate long numeric strings with digit
 separators
Content-Language: en-US
To:     Brian.Inglis@Shaw.ca, Linux Man-Pages <linux-man@vger.kernel.org>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <e497bd3e-0216-4af2-3848-fa9b3ccf5b89@gmail.com>
 <1fec0c50-ecb5-6a64-87f4-7d4165b72212@gmail.com>
 <00cd070f-65fe-60ff-efcb-4b2ea8a71635@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <00cd070f-65fe-60ff-efcb-4b2ea8a71635@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------rq6szQiaui0tWatGkyPKmmf0"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------rq6szQiaui0tWatGkyPKmmf0
Content-Type: multipart/mixed; boundary="------------ojpxx312xYipMCcRuM3ehO1H";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian.Inglis@Shaw.ca, Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <ba43321f-6d5b-f604-88b9-c7909be8298d@gmail.com>
Subject: Re: [PATCH v2 00/11] punctuate long numeric strings with digit
 separators
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <e497bd3e-0216-4af2-3848-fa9b3ccf5b89@gmail.com>
 <1fec0c50-ecb5-6a64-87f4-7d4165b72212@gmail.com>
 <00cd070f-65fe-60ff-efcb-4b2ea8a71635@Shaw.ca>
In-Reply-To: <00cd070f-65fe-60ff-efcb-4b2ea8a71635@Shaw.ca>

--------------ojpxx312xYipMCcRuM3ehO1H
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2/8/23 22:17, Brian Inglis wrote:
> On 2023-02-08 13:56, Alejandro Colomar wrote:
>> On 2/8/23 21:55, Alejandro Colomar wrote:
>>> It seems using --inline is not what we're looking for. Could you plea=
se try with --no-attach?
>> Ahh, no sorry. It might be enough. It seems it has it attached, but I =
can also see it in the email itself.
>=20
> I see we're both using Thunderbird,

I started using neomutt(1) yesterday, but yes, I'm still using TB until I=
'm more comfortable with it :)

> and I saw no difference in the view of my=20
> copies of the patches, other than if you view Message Source, the inter=
nal MIME=20
> headers show:
> Content-Disposition: {attachment|inline}; filename=3D"v2-00??-man2-*.pa=
tch"
>=20
> I note that I have TB main menu View/Display Attachments inline checked=
=2E

I do have that, but see them different :|

Cheers,

Alex

>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------ojpxx312xYipMCcRuM3ehO1H--

--------------rq6szQiaui0tWatGkyPKmmf0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPkF74ACgkQnowa+77/
2zL7uRAAkwCb5tR54h+PdiLr5V2mqcLzFgPmdwBa3u9w3dmF3aPXraLcmjCl8TYN
l2mbTrMbWqm6hIoRbYcfg3jalP3zjYy06qPz1sCOiUJOxbAaWPIjYqDda7FPWiEo
MEATsgGzW8sbO2djVSe8XlWjBgqx5iAi/En0wfA8i1IW09x0i64Fu/4yQaDvgmOV
6lm4EOZysdiIGyirjUdxx4qs0qVFHZa1phFTD8XHSybfTCb9sRcp49jClBQWhFfN
sgmllmT++D751MybdKNteLufyRd9J1Ta0WB7ascpHOdpUGqX9T+PWZGgBmrz0BwN
1CwAcVsGCmdx6/FOT1jjka82g14x0ZqCX4jlkz/h3IQ1o1XJXVVo3reNqULmgTBG
c2EeW8ZsRfz2OyniC8gDC1nEM147XuJNkXV9+QKs/LA5tM1R2oJSSptNrXlpR/bK
vCP1fSnIkbef1YTe5Gv8UmU7UKZSriWWWAr26GCbG4ueo8WkLkAmajDIxdtzWz42
gzvy9llWriHf0RisJ/cfcZwprk7PuO3flk/Z062/+imCcYoyfFqie3BPkmYLIQb8
tL6mYsl3/iQdJvgERVr5wDA7knETcXUpgEyLYcxSrUqhAgM67mUPPjaqZvj3/KxQ
Lsb9sN1+uj9iVX+lTlI+/VfpzfFBd8ZTQzWFMRT4SC8C8EjiRCo=
=jRKV
-----END PGP SIGNATURE-----

--------------rq6szQiaui0tWatGkyPKmmf0--
