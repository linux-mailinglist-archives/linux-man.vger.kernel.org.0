Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 822C7708EF9
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 06:47:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229602AbjESErw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 00:47:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229579AbjESEru (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 00:47:50 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 802E6E69
        for <linux-man@vger.kernel.org>; Thu, 18 May 2023 21:47:49 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-309550263e0so271353f8f.2
        for <linux-man@vger.kernel.org>; Thu, 18 May 2023 21:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684471668; x=1687063668;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T03hm32UU0HBWfdTbrUxt9/Mog8i5mqmwY+JBStif+I=;
        b=YeckTzKf/LtJU83SLMMH2eHMUAG317aTG+eiz7c9I9832BSKR0EWGSkDuWiYG8EF8C
         rVsiYzvjKFFFoR27SPkJyQngCc4JZM2HMk5rNRAzZDpZk8LAhixoH53Dz+sHCNr9+bgW
         DQt1T+pZwhruPvAubZJ2VU7mFrrGbrfl3WxQj7gRN+W73cxeYoZfsw6tnYeoCI7PIoV/
         IeXEcW+ZcG0Ulg3dUTNSg5Tffw2hLbrRKMP2Wnx5Ob/wb0Ihpk6w3MPuaUVS9n9NsJr8
         BFbM6b6lU6CVmXxavwW49tmaDWD3GX1iWAiyatnhiMiMoY6rkUYm9zeCCej58RGhycuy
         CHNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684471668; x=1687063668;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T03hm32UU0HBWfdTbrUxt9/Mog8i5mqmwY+JBStif+I=;
        b=B+5wkv8fMT0lps9m9h/NOykUZmkkfhxPSfk6NzzeeCCwuIZER2lPtVSr6U/a9Wqhp1
         6eDe9c9Jat8zwO3bSYP0TKUqJB8MDI2YAvvwNZPD4CmxUPPkq8n8u141wKuCgk2H1oaz
         YcTCXeO/QP6AFAFHQhEZDBBqWuKthMy3gbfPXv+CsWYD4+V8taqLm/UaHpkXzgJ/FK7/
         qlGHHmAisTsnkv9khi5uG+5waFacfsvpRCNOxT3VoRHHK5efWKQYjq+Hf6CD9jR0JXXA
         Ao94qSvgqH3SrPafrCMmZiT/gJwR0/aC+n19sO93beMtiMLBuF2884naUya2B3WpRjQA
         uzxQ==
X-Gm-Message-State: AC+VfDxsTOyYJnYTTZKnV1k/LgQagTBk+5qinCsyA00KOHYs5bd7H7XO
        NWojzq29Fp+ULZAT3zjYmEhNpf2im+M=
X-Google-Smtp-Source: ACHHUZ4qFnwjhSdkph5/zVp/JMcsF///8Rerqndy0nyjcCFYNuX52AylBiJezSEFrLSolHQQtqwidQ==
X-Received: by 2002:adf:fbc4:0:b0:307:9da1:c9d8 with SMTP id d4-20020adffbc4000000b003079da1c9d8mr622598wrs.4.1684471667779;
        Thu, 18 May 2023 21:47:47 -0700 (PDT)
Received: from dj3ntoo (57.sub-72-109-255.myvzw.com. [72.109.255.57])
        by smtp.gmail.com with ESMTPSA id n6-20020adff086000000b002f6176cc6desm3934448wro.110.2023.05.18.21.47.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 May 2023 21:47:47 -0700 (PDT)
Date:   Thu, 18 May 2023 23:47:41 -0500
From:   Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To:     Alex Colomar <alx.manpages@gmail.com>
Cc:     lnx-man <linux-man@vger.kernel.org>
Subject: Re: Doubts about mmap(2)
Message-ID: <ZGb_bYkms3z4urdc@dj3ntoo>
Mail-Followup-To: Alex Colomar <alx.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>
References: <d67a30a2-0f67-8ff0-e2da-6f8d8704dc7b@gmail.com>
 <13993515-e3af-3c40-1351-24aaf8814bf6@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="IxNCawRxTdPm9lQ9"
Content-Disposition: inline
In-Reply-To: <13993515-e3af-3c40-1351-24aaf8814bf6@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--IxNCawRxTdPm9lQ9
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 18, 2023 at 11:03:14 +0200, Alex Colomar wrote:
> On 5/18/23 10:53, Alex Colomar wrote:
> > Hi!
> >=20
> > I believe mmap(2) is confusing (see the emboldened parts):
> >=20
> > DESCRIPTION
> >  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mmap()=C2=A0 creates=C2=A0 a=C2=
=A0 new mapping in the virtual address space of
> >  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 the calling process.=C2=A0 **The =
starting address for the new=C2=A0 mapping
> >  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 is specified in addr.**=C2=A0 The=
 length argument specifies the length
> >  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 of the mapping (which must be gre=
ater than 0).
> >=20
> >  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 If addr is NULL, then the kernel =
chooses the (page=E2=80=90aligned) ad=E2=80=90
> >  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dress at which to create the mapp=
ing; this is the most portable
> >  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 method=C2=A0 of=C2=A0 creating=C2=
=A0 a new mapping.=C2=A0 **If addr is not NULL, then
> >  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 the kernel takes it as a hint abo=
ut where to place the mapping;
> >  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 on Linux, the kernel will pick a =
nearby page boundary** (but=C2=A0 al=E2=80=90
> >  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ways=C2=A0=C2=A0=C2=A0 above=C2=
=A0=C2=A0=C2=A0 or=C2=A0=C2=A0 equal=C2=A0=C2=A0 to=C2=A0=C2=A0 the=C2=A0=
=C2=A0 value=C2=A0=C2=A0 specified=C2=A0=C2=A0 by
> >  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /proc/sys/vm/mmap_min_addr) and a=
ttempt to create=C2=A0 the=C2=A0 mapping
> >  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 there.=C2=A0=C2=A0 If=C2=A0 anoth=
er=C2=A0 mapping=C2=A0 already exists there, the kernel
> >  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 picks a new address that may or m=
ay not=C2=A0 depend=C2=A0 on=C2=A0 the=C2=A0 hint.
> >  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 The address of the new mapping is=
 returned as the result of the
> >  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 call.
> >=20
> >=20
> > The first emboldened sentence contradicts the second.=C2=A0 It's not the
> > starting address, but just a hint to find a nearby (>=3D) starting
>=20
> I was a bit wrong there.  It's >=3D mmap_min_addr, not >=3D hint.  But the
> suggestion below holds.
>=20
> > address.=C2=A0 How about saying this?:
> >=20
> >  =C2=A0=C2=A0=C2=A0 A hint for the starting address for the new mapping=
 is specified in
> >  =C2=A0=C2=A0=C2=A0 addr.
> >=20

I think describing the default behavior first is a good idea. If a user
needs an exact address they can read further for MAP_FIXED/_NOREPLACE
(and the potential footguns involved).

- Oskari

--IxNCawRxTdPm9lQ9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQfOU+JeXjo4uxN6vCp8he9GGIfEQUCZGb/aQAKCRCp8he9GGIf
EStGAP4kkhn9NxOu1BHrDKplX/tugIPmVWGdGyiHT8B0H1IpYAEAlXIu4EyNQLxh
9Bq4+/KZs3JOLys8qNS/es/3ZdG19gk=
=c3w+
-----END PGP SIGNATURE-----

--IxNCawRxTdPm9lQ9--
