Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B1046B620A
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 00:26:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229614AbjCKX0S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Mar 2023 18:26:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjCKX0S (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Mar 2023 18:26:18 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E97650FA4
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 15:26:16 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id t15so8199404wrz.7
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 15:26:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678577175;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DUrU8X+C7SfpsIY4jDUo0sF461JOCenJjtQz5cI82SQ=;
        b=Mn2ikBo2Ki+g6lzBw40wmInKUc6Wx0c1p67Pe+FAJN1CA2YqhOQ9JZg/+VrcOJ6sEo
         BRZhQzJra7dlt9ue+9CP9YevKjaD4UJOQAbSvnQweci3bJc8vAx1CtMCs1PRupq4F2zt
         giML+KwKllphxvipg98/IcckwGAj6n3kjleAb1iKSRTGN7rJNi2n90L7E5aHx1IDFhWY
         O3Pa9v3zhgETOPoF7qx6ej/zcJFspfeMbIYcstG6bl86ASlBZjq2p9CE2ixhZfjkLFgP
         VUP3rQCBkqn8gcfuEZNuBWyevJWxIhyhzzSS5dEomAiTyiy1O7MRnlrzub1akur7HrXZ
         yOKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678577175;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DUrU8X+C7SfpsIY4jDUo0sF461JOCenJjtQz5cI82SQ=;
        b=6EQRClB6m/LA01ZtmVYNj0uvZa6qg3BXv13zloYiWIvLK/LxT5V9JusHFQ+1NRpyVG
         OJuahNpTwxmYnZaS4EWZ7LXZUAGBJ2bp9ytZna7F3XyN2/Rk6oPyeNXpnTDTPCu54rEc
         Q9qBITVS6ESp0NzmBLr46rGVfyjttfiUmnquqI4FapO7SYkif9Lw5ZoTyDWpDlDK0kIC
         OyJ2olK0fJuTDwi6AZ9K6fyrqObOv/1RcGU32yCP/NgWIGPEWYnvlJb1o1WmInQpiPjo
         wA8NyEmh6Zi4FkXZoLcqhMAHo+stPmKqeHgHgn9y2geCRbxapAItacfCDwfEhbV/v0dI
         vSmg==
X-Gm-Message-State: AO0yUKVYvNiz0W//Ch+lrDMcXh3KsQu26cLzzkz6YgPhENAAwtBG+g4Q
        tw9Plu+vGT5VwbyFSFCa4fA=
X-Google-Smtp-Source: AK7set+lBXijVYI1JF4VhGbtICTOHxfWcRPc0baMkroMBWX2ziZnMCFwqQ7iWhZXu/oN87uZpU3YGA==
X-Received: by 2002:a5d:594a:0:b0:2ce:a85c:6f30 with SMTP id e10-20020a5d594a000000b002cea85c6f30mr1221669wri.13.1678577174809;
        Sat, 11 Mar 2023 15:26:14 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id b12-20020adff90c000000b002c71d206329sm3480156wrr.55.2023.03.11.15.26.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Mar 2023 15:26:14 -0800 (PST)
Message-ID: <48cfeb5b-5a48-85e7-2165-6c49c473616d@gmail.com>
Date:   Sun, 12 Mar 2023 00:26:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Issue in man page charsets.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230311171358.GA4982@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230311171358.GA4982@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------7iUSLtAWXwdGK5J30wdfZm2m"
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
--------------7iUSLtAWXwdGK5J30wdfZm2m
Content-Type: multipart/mixed; boundary="------------T62vYN70jyV02tuP1EgOPJjO";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <48cfeb5b-5a48-85e7-2165-6c49c473616d@gmail.com>
Subject: Re: Issue in man page charsets.7
References: <20230311171358.GA4982@Debian-50-lenny-64-minimal>
In-Reply-To: <20230311171358.GA4982@Debian-50-lenny-64-minimal>

--------------T62vYN70jyV02tuP1EgOPJjO
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Helge,

On 3/11/23 18:13, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    =E2=80=9E=E2=80=9C are not old-style, they are the current qu=
otation marks required by German othography
>=20
> "Latin-1 covers many European languages such as Albanian, Basque, Danis=
h, "
> "English, Faroese, Galician, Icelandic, Irish, Italian, Norwegian, "
> "Portuguese, Spanish, and Swedish.  The lack of the ligatures Dutch =C4=
=B2/=C4=B3, "
> "French =C5=93, and old-style =E2=80=9EGerman=E2=80=9C quotation marks =
was considered tolerable."

Please suggest what fix you would apply.

Thanks,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------T62vYN70jyV02tuP1EgOPJjO--

--------------7iUSLtAWXwdGK5J30wdfZm2m
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQNDhUACgkQnowa+77/
2zLpzA//aTMKSSyf7eVZl/LPzmFNosrAXRzwN79Sm2NNQSov0gqGuHbVeD2hA4o2
n6vK6AAMpM5LA5LWdt9YVJqX5Y5tLaip4PiUKwh54C+ART+Its+LBKcim1vYuh1c
es4xF0npkF2h7YEeB3mPVU4rIyjJmLtnTSOJxG/xxMR0Or1KWHn76HgIUgAI9nVn
lg6nj+GVd0c7j7g4nyE4VtCPn6oCU2L2UYhcK7/2uVXVewVnn/HuWwRPlscFTIYL
RzeGYDhDnLwovz4hWMoxfT4lYHNZWZG2f1ajANsxhQwnBu5pnE/bjoNxzxOLh70I
3LDSOWs+Z5tu+iLOWe9m4WvzI11jaRe0wJ4X/SQ+ZHivFmisyLixllsOgDhZfEms
BdoprsAx7NBrYV7YapvRMWTPXBOsxOK2Ti/PSyfMbhNU6gbKL7JdRTFWiO8kGEIx
Y7tPgXdwSD7ywYXeV0zaTxVs9MwMP1TUuuurJn6G9Q6a9KmsFjGLA+FmWE7scMdU
G2X4q3ynydU92Mn/J3EJAi0bjD+zEOi3kMiJd8SyJ+bzQAQk1f/e+6IUy2S9UOPH
ptJCQiNKndbS8iNao13gm3fK+VuBmTNB+NkUx59Zr/mKaJf2yEMB0cwEDLEqmORL
eTvBQigjNQZ4R/Nx5d+WdG2lawcKPUODixF7rOlelYUKlnyFu68=
=gzVq
-----END PGP SIGNATURE-----

--------------7iUSLtAWXwdGK5J30wdfZm2m--
