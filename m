Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14FB36B620B
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 00:27:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229493AbjCKX1m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Mar 2023 18:27:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjCKX1l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Mar 2023 18:27:41 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B25D4DBE3
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 15:27:40 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id j3so5660948wms.2
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 15:27:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678577258;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/rJi9ed6O1VyPfp/Rz4KvabopmQM/V8GnUxx5Bn6ILk=;
        b=os/cvXhj/hhevcanLpxzealzduN4pb+ICaVi6YumpUSfIJT9pHAlZxSdF2wQpibDh9
         Ip83Y5wE3pM9UUQCiEeW0qF5Hzr692lYxf8et/N21dgbLsOYyOFwn5b94Nt4U0L03TR1
         WgX22MKsbJuKmW1M29PzQ1KtO1A3A93g8gKStiXcGhNdecBAvSYD4446e1I60aRRVIAl
         u+XmzLuHyDowsW0M+h5bRlaw4UJ1wa8Q4vzfGY+VeyDsJ+mp4E05W4u4VorsvfC50gyY
         FKrQMzpGFm1zjV5qhaU99dztcGx2dOuPaVhVE/+zpsK4wq+sGzUBdO2Kj4Pj3Oya/Hml
         SIrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678577258;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/rJi9ed6O1VyPfp/Rz4KvabopmQM/V8GnUxx5Bn6ILk=;
        b=Q8NqWozQhpb7qoIFHEHeNeizcVty8VERXQ2QQx3uDYQUXptxghIsLgKkl9dun0ilf5
         Ggf/7Pil/ey6g7Mv7V2eEUD8fC9DGK9m7J3tDyPsi3sR2tZDjm22OZ1rdD9qu7Fgz19o
         hcfVJE/FaTZflBaK/TfY/tbmrE8X1NJIfI1E8JQNy6ueowwz9L99AJPeAjo4gFjnP8JZ
         4PRpLnxgFq7Pnec7spKjp32WKjp3YAb7dR3tSflV2Lvv12tcatKmPzM3MxZcH0lr/mxS
         6CI8g9AmPUSZDAX3f4bqQWxYuTR3xzbGv+b+11vmORKBWaie9dQiCq91Av20xXwC2iyK
         loqQ==
X-Gm-Message-State: AO0yUKWofciMYfHadZDrxH7FCWVoR4JwBAlk46EOBqn4ZZQFOrgoZDGR
        ckLDDXo7gq/Hym60K1oM/FU=
X-Google-Smtp-Source: AK7set9gk6OT4C3FwLGqKOfYTv23b1h8pHGsxHWGDw2zjkFOmlBNxzQ9fmWYBwfVo0k8AtfIQIYFSg==
X-Received: by 2002:a05:600c:3ca2:b0:3eb:3104:efec with SMTP id bg34-20020a05600c3ca200b003eb3104efecmr7079318wmb.16.1678577258659;
        Sat, 11 Mar 2023 15:27:38 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id p14-20020a5d4e0e000000b002cde626cd96sm3594645wrt.65.2023.03.11.15.27.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Mar 2023 15:27:38 -0800 (PST)
Message-ID: <f4fd4e46-7129-0f0b-519b-54ae39e2aba8@gmail.com>
Date:   Sun, 12 Mar 2023 00:27:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Issue in man page charsets.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230311171358.GA5005@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230311171358.GA5005@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------j00ntXirNugBMi7FL75ST4iW"
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
--------------j00ntXirNugBMi7FL75ST4iW
Content-Type: multipart/mixed; boundary="------------HXfiEy5oavmtSRxY8UHjLBHo";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <f4fd4e46-7129-0f0b-519b-54ae39e2aba8@gmail.com>
Subject: Re: Issue in man page charsets.7
References: <20230311171358.GA5005@Debian-50-lenny-64-minimal>
In-Reply-To: <20230311171358.GA5005@Debian-50-lenny-64-minimal>

--------------HXfiEy5oavmtSRxY8UHjLBHo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Helge,

On 3/11/23 18:13, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    ISO =E2=86=92 ISO/IEC

I've already seen several reports about ISO -> ISO/IEC in several pages
from several people.  I'd like someone who knows about these standards
to take a look at all the man pages and suggest a global fix about this.

Thanks,

Alex

>=20
> "The ISO 2022 and 4873 standards describe a font-control model based on=
 VT100 "
> "practice.  This model is (partially) supported by the Linux kernel and=
 by "
> "B<xterm>(1).  Several ISO 2022-based character encodings have been def=
ined, "
> "especially for Japanese."

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------HXfiEy5oavmtSRxY8UHjLBHo--

--------------j00ntXirNugBMi7FL75ST4iW
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQNDmkACgkQnowa+77/
2zIxIBAAil5FGQs/gv05mcqbk7ggQy8qlrpsty2RBUIN1SEowYYfgr4JgnKx/oEu
TxhQwumo1Z644YILRGjCRhl8ZccsAdubpEc7bcKP71t651goaaUXvS3PN1kytlZO
dPyGmwrfihyF5oMTx2atu2dzjpTspFjwWvEt2eR2TzZZ3SqqJzRDhFN+pt5r8INF
O+r0ajrzaY4A+GRruWLj79cwWqX12OLoGJ6Cx6BhjA/kq40F11vPjv1gQn9TC8DN
deWjz1JytnNuBKvk153d93GUQacVVXW29pcz2b5FH/d1VY6PlP0TnhhmIIJt7vqy
aDX0nShOqA0BvogxvoCa2eslhcHW+kgarb6otvnvfsPwu961m0a3vaePHnuccBgG
w8EoGcR7zKBPnxGEcZH65Pgvhim9xyKSBIxBcjTcKQTPI7zi3smWjO3zi2g3zJ3s
V7IIftnouVg2CU1fEUnRtRl2BTrtcI7psdze7GghjNa13UaDsHWNMhI0nSy8fQnD
mMexOA2t8gM/VlwQ5C1ub8+A5EikCweyHfu2IeTCUWKzmoC6ZvwhnSXpnWH/TMQn
jqxH1l5jRJCsC77KGVZIa1lB5yS5jmZTVwKt7qaM86lP+mIECSkGQTAYHI+yGoOO
HRofqVsyfWm5tC9rhYLeUU6GMQBcYM3Cy2kIlrhYGL90XGSf/XA=
=gPVl
-----END PGP SIGNATURE-----

--------------j00ntXirNugBMi7FL75ST4iW--
