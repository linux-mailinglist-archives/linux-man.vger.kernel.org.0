Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8118E2FFFED
	for <lists+linux-man@lfdr.de>; Fri, 22 Jan 2021 11:15:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727543AbhAVKOh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jan 2021 05:14:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727590AbhAVKKK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jan 2021 05:10:10 -0500
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C82B8C0617A7
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 02:07:25 -0800 (PST)
Received: by mail-pg1-x529.google.com with SMTP id n7so3400686pgg.2
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 02:07:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MSEkkh6V+9F7PialQYOuElSw72G9ozCzOnbuclBUALc=;
        b=L3Lripo6vFB6E+mVgA9A7d+rqkVV/YWkNNtEZHhlh8N9VGmLeqq4hz6H4mm7WXRxLh
         slUkcL3pZQQZ1/+fUyZWRMOQe9xkTMbHL8dbdawZDPpZCoYsRBS47rCEU/oY9QXzPLpK
         dPqRhhONiA5CUPtFjSV6ZJ0ejqcsi86OskI459xacKciSNp7Wb2osoVXSwh50udqWP5D
         97dcZsEqZ4AFUYBW+tWKFa2h6lePidimiBeAJq9SqR2c/uyrUvkT/6hBT/dWDuqSlRTm
         W/oQZ/42GuywfjVerlu4Ivhlym3jTH1isZbCSnKB/gvOpdh9ZdclLr0U2STOHi2BpTYf
         7bBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MSEkkh6V+9F7PialQYOuElSw72G9ozCzOnbuclBUALc=;
        b=UGxq9+kTNwJLhs096G7X8p8t5VQP03LxfFRNTxmdGyeHtigv8iS4D+tmJGubLuCVdi
         olGv/JASMLkgyJ/0MlCaTs1d+5aallmlmQxMnDj+KYVSXiF0uGzush2rVcn4Q765BcWv
         M9attVtRHxrNxLzEma0entvgSHpPyPiEnddOFURtOvDYRVpYsLHPMySwU5s/uv48g/zF
         HwaT0el014Oqyu+GE6FeBk5ifn5bBE9n+IXHzvdejk7fSFPXX7IKKfOZi4F7SDXDsdtD
         GFIAY4FXObkBJLjtHMDj3eRgV28VyFTzlzOpWWhQrkcIh24AA8dz0NzrLwyhIWHacXXL
         pVvg==
X-Gm-Message-State: AOAM530IoaDJxI1o1Z3KJSxKOqUYoan5PPPb3aA7SkByhji95pj3ikyk
        Q9HSfZ/QaYiaNXLzuWghWgg=
X-Google-Smtp-Source: ABdhPJzdkx68RSwM7KsYYyAKduuddeRLlP1/IRJuh3Tv/9CzpiRPLK7kk9n349sE6+s3A/IPtyv6ig==
X-Received: by 2002:a63:357:: with SMTP id 84mr3994007pgd.13.1611310045375;
        Fri, 22 Jan 2021 02:07:25 -0800 (PST)
Received: from localhost.localdomain ([1.144.181.101])
        by smtp.gmail.com with ESMTPSA id u189sm8178555pfb.51.2021.01.22.02.07.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Jan 2021 02:07:24 -0800 (PST)
Date:   Fri, 22 Jan 2021 21:07:20 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] posix.py: ffix: Correctly format URIs
Message-ID: <20210122100718.ab3wkbyf2hv533rz@localhost.localdomain>
References: <20210109195840.74472-1-colomar.6.4.3@gmail.com>
 <a1d2172c-3880-ac79-7df7-0f5fb0bc65af@gmail.com>
 <20210110065023.olvhi2gqjbmv7243@localhost.localdomain>
 <af78792f-9758-e3e6-9c65-c2f93f0fcfdd@gmail.com>
 <20210112205115.g3nuoodpn7xxpx5u@jwilk.net>
 <bdbf6dee-e74f-e2e3-8c44-4ce63d396aa1@gmail.com>
 <20210121201426.b6wfycjdegxce7fw@jwilk.net>
 <20210122032300.zsqf6uuznfbu6tij@localhost.localdomain>
 <20210122093556.nwo4qe5vcnbinu7z@jwilk.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="3yzelb46nighrmwq"
Content-Disposition: inline
In-Reply-To: <20210122093556.nwo4qe5vcnbinu7z@jwilk.net>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--3yzelb46nighrmwq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2021-01-22T10:35:56+0100, Jakub Wilk wrote:
> * G. Branden Robinson <g.branden.robinson@gmail.com>, 2021-01-22, 14:23:
> > U+2039 and U+203A are "single {left,right}-pointing angle quotation
> > mark" per Unicode.  Their groff special character escapes are \[fo]
> > and \[fc], respectively.  (I don't know the mnemonic that inspired
> > the "f" in the name.)
>=20
> "French", I guess:
> https://en.wikipedia.org/wiki/French_quotes#French

Thanks.  That's probably true, alas for the poor overlooked Finns,
Swedes, Greeks, Hungarians, Portuguese...

> > .  char \[la] \[Fo]
> > .  char \[ra] \[Fc]
>=20
> Should be lowercase "f" here.

You're right: we have both kinds--Country _and_ Western!

       =C2=AB        \[Fo]   u00AB     left double chevron
       =C2=BB        \[Fc]   u00BB     right double chevron
       =E2=80=B9        \[fo]   u2039     left single chevron
       =E2=80=BA        \[fc]   u203A     right single chevron
[from groff_char(7) in the forthcoming groff 1.23.0]

I don't think I've ever seen URLs bracketed =C2=ABlike this=C2=BB.

On the other hand, because \[Fo] and \[Fc] are in the ISO 8859 character
sets, aren't they much more likely to be supported by the Linux console
driver?

Regards,
Branden

--3yzelb46nighrmwq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmAKo8wACgkQ0Z6cfXEm
bc7IMRAAm2dnB6/nlxsSM1ohX1kaipNl/qIvflFQPPInlpqxUydJAJbqfIrr+MtY
3Vou87p0gNEgj24d7AT4AhP003Mishnn7vYrucOHxEjxXxn/v1pKI6CI6hTKg6Z0
AOZcnZUHFUoGRtmZWE6iH70J7peWx1H3u60qPXohn6zLtCWOp6gPOcI6vksRCUGL
JKQJWMxZDrrzdI1IJk0rwvjdKwvOklwGphNKY+Ma5vSw7nQTAYqifndg+jbB0kL/
5DqTGaJElvmdXoH6sDIVHDqgb2aRY4B3S1kuFKO7C2HDapgXv5gA5QmmjCwmOp7M
d9kuNn00bHtkSGJVRNh6K1JTcDS/U8vFlefyUGp1sJizwwmOAAGNZz68xHK9vn2m
zdJj3PH+8kpS0BWBEInpL1scjMNMNNFSsp07gJ/tcJ7uTE17ZkCRugHNsSThp98u
NPGPKecldc/QjU0B9/ML3yOOCT0t3O4jvxDDp9WDHD65tnz2pj/zt7PlGg67VgmR
l4X+3V9c+PsfBIBTBTvReN/u3mUsIr2TqiKIQDSmfiRIRRUdAx5O1ah0KKuDSQQN
mpmxmb83gF12RiM94TgRAD5xZ7Hb0E2QHhNh5wPE1QadCReBppLpHTZhTTQDSSZx
5eUiww/wl7pBoz0drnGRDklcuIMkwUR2L/FUk44kYHMcFdc5RbM=
=QrsS
-----END PGP SIGNATURE-----

--3yzelb46nighrmwq--
