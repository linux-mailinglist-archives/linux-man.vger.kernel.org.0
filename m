Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EC856BF786
	for <lists+linux-man@lfdr.de>; Sat, 18 Mar 2023 04:22:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229533AbjCRDWJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Mar 2023 23:22:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229794AbjCRDWI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Mar 2023 23:22:08 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B58DE2F066
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 20:22:06 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id ay8so4399164wmb.1
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 20:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679109725;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gLZJEuGOmhIMXG5I5QhlJYMnTfQ+FuGe0q5ADWEDNQo=;
        b=bY7hJN01IBFf9b4907FGJnRnNzUdVC+GRXd9Xnur7KanWblCW+B+K40z+5/28uLGO5
         k+ajuKZxX3qqmFdEtOTQy6RKt/u+zWv/KqaNznrrXfY5ZyHvw8BJCEanNrhUKbsvJesY
         emra7GT0bMYJ54teEeva8M0IQQIDMTPbC/hJKUeywL7CQ5b7JohReElBsO7pF1rCoxtP
         euXt/7aR4ML2PzQJMqSTlk6DUjVSUTBmgY5dNjedi0f+J7aHYcr7esskKSkTsmE2DoUk
         JFQ2NBaLogby1lVsRgttya62KQMogOIZe3u+NToqc0q1Ae4Auhz43itz33g9um+45wkx
         Pw4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679109725;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gLZJEuGOmhIMXG5I5QhlJYMnTfQ+FuGe0q5ADWEDNQo=;
        b=aF1usj8mBPRmaQpCQxbsaMYKLqJNJk8GcvjvZbNced13NoWjX9hYiDyFbJrMfRgE4c
         j50FiICEv3vgqWAmrz/0thykDHKGkLJ7zhGE9nOGJOQ3s8HuuMdGhtMPXcbyATAdY0g1
         jH67vq6VR34Ns7RY21O2J4MpcxBlQhkgqFjPQPML80fARa5r2kQW1iVJ/U81+IxfYIsW
         i7iaX3re3XIN+MD/FoTNGtGGWo4v/mysGKd9q28NkOHuP+LKGIOhfxoDw1qNi1jcqCrY
         UgY3KVRPN/BG9rI+6kC+90AV5CePEPyJgFn+hNhjXOr/Q66b2y6W+gurr8lHk3DjK9Bb
         PxiQ==
X-Gm-Message-State: AO0yUKUeXcb/DFOKp5p+1/+8qCe5nTSOWXH7arJXn6QsGTQjxFB41nJ+
        0tyjnrakzU2+fuY/enNx911mN00FTII=
X-Google-Smtp-Source: AK7set9FyydmXdRX3/CFDi8mOr2Wivn1SOcINT8Ltsmrlmwiflp1bBNYp3J+JQOK7FHpu7c6MzfXzQ==
X-Received: by 2002:a7b:c047:0:b0:3ed:3268:5f35 with SMTP id u7-20020a7bc047000000b003ed32685f35mr4087452wmc.18.1679109725024;
        Fri, 17 Mar 2023 20:22:05 -0700 (PDT)
Received: from dj3ntoo (212.sub-72-109-208.myvzw.com. [72.109.208.212])
        by smtp.gmail.com with ESMTPSA id j22-20020a05600c1c1600b003e9ded91c27sm9893580wms.4.2023.03.17.20.22.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 20:22:03 -0700 (PDT)
Date:   Fri, 17 Mar 2023 22:21:58 -0500
From:   Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: Order of sections VERSIONS, ATTRIBUTES, STANDARDS, and HISTORY
Message-ID: <ZBUuVlZSSLAbeu8b@dj3ntoo>
Mail-Followup-To: Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <99d0a14b-41f0-8392-6558-add8091cbd9a@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="GrwMcoxbBgelRcoe"
Content-Disposition: inline
In-Reply-To: <99d0a14b-41f0-8392-6558-add8091cbd9a@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--GrwMcoxbBgelRcoe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,=20

On Fri, Mar 17, 2023 at 14:14:21 +0100, Alejandro Colomar wrote:
> Hi,
>=20
> man-pages(7) has the following order:
>=20
>               NAME
>               ...
>               VERSIONS         [Normally only in Sections 2, 3]
>               ATTRIBUTES       [Normally only in Sections 2, 3]
>               STANDARDS
>               ...
>               SEE ALSO
>=20
> There's no HISTORY, which I'm going to add, right after STANDARDS,
> since it's very related.  I'm not convinced by attributes being
> between VERSIONS and STANDARDS, since those two are also very related
> but have nothing in common with ATTRIBUTES.
>=20
> I propose changing to the following order:
>=20
>     ATTRIBUTES, VERSIONS (moved), STANDARDS, HISTORY (new).
>=20
> So that the three related sections are together.  Any opinions?
>=20

LGTM based on the revised descriptions in the patch in your other
message.

- Oskari

--GrwMcoxbBgelRcoe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQfOU+JeXjo4uxN6vCp8he9GGIfEQUCZBUuUQAKCRCp8he9GGIf
ERvGAP94Mh83oafeFPCJ7hdfZWVs2dWcQYyk6IDFmJhuHBBhvgEAqv6QIxZRg/Wv
i/dkwi7d08nB2okH4EFsR4y5JFRycQA=
=xZ93
-----END PGP SIGNATURE-----

--GrwMcoxbBgelRcoe--
