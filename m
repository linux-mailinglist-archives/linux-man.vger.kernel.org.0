Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40F8C77AE46
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 00:29:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231299AbjHMW3q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 18:29:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230292AbjHMW3p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 18:29:45 -0400
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38BE619F
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 15:29:45 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3a7ca8720a0so2833235b6e.2
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 15:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691965784; x=1692570584;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=D1TFwzhD7RaGDFef6L5ApKdjhpq6BZ22l0noFYNCsGM=;
        b=p2MiqUcWmfs1SB+PNvYJM+Z49gHx9zhhJT/dpkw7eXnxkbLPgcG/EpM9cdFpvFaQtY
         nZCTIBUgKH/rsFepGJYohaJHEzkcVQyI0tlJNJP1EF7GIILQV+WgNByLFwx+Df03iBVX
         XlnHYOxWtihT54GcndIiQHMcgGr39vcxJ3oz8uDadufc417td4jWT7ZNKKqC4uwGRDcg
         Vk0pMRoOU4dQiTUj3UtOcA7cT2fNcN3wV55MzN/LLuNIq7f7M/HcE6sPUqTN8mXhVhpd
         zXw8X5e3iIjaGPqUzIsXYACRtTN7mrR/PMfjXEYTEjlBskaHJ5w+cMOcpldd5KDdRWA3
         fdiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691965784; x=1692570584;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D1TFwzhD7RaGDFef6L5ApKdjhpq6BZ22l0noFYNCsGM=;
        b=aPJFz7tK1d8fiR+KyL25gXh+L5YKz5NxvWWPAiDm6AzJxwF6Y0uZTs8WMQqpzia6Iz
         jH55msKVZMhbysnhcrK4FtZX1cNoPemYV5YJgmN/ajkubKdJH8iUW7zNj4yhWLqU6SaA
         q3oTzSAC5suAK/FACZllohJpVywv65BMdSvguwciiQh36JtPFNCAY6h5cniwI+key+gb
         xyB7BrAjkPhpkyfAT5dLlIi3MnnqHPxD5rHjGP+b40aQ5QTO5+Xo1/kPPWb3gUv0eZqn
         cD8G4TG+FWLdHQOFZ7I9JmIRpynsqgzKjP9kIdlGcfATJiizxc5D9F66nMHRyZ3Rmkrd
         2Zjw==
X-Gm-Message-State: AOJu0YzlsNNJ4WOpf8eJudAuSK+tB9PrwO1We5OUKrSKqS9k/UTbfgRP
        n3xONIqm6x6gJ0oFM82NXaA=
X-Google-Smtp-Source: AGHT+IGn43uTwcz6cQr9q2ivCYVi1Is86r0OqKUWPQAG3uR4LceSSEtPfqwRy5WdlVVYpNUI1/L1/w==
X-Received: by 2002:a05:6808:1452:b0:3a7:215c:e34 with SMTP id x18-20020a056808145200b003a7215c0e34mr11027729oiv.15.1691965784176;
        Sun, 13 Aug 2023 15:29:44 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id e20-20020a4a8f14000000b00569c240e398sm4079823ool.30.2023.08.13.15.29.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Aug 2023 15:29:43 -0700 (PDT)
Date:   Sun, 13 Aug 2023 17:29:42 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Brian Inglis <Brian.Inglis@Shaw.ca>
Cc:     Linux Man-Pages <linux-man@vger.kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Deri <deri@chuzzlewit.myzen.co.uk>
Subject: Re: man-pages-posix: POSIX book build
Message-ID: <20230813222942.tyu75xmsnfokonbg@illithid>
References: <4c6d1cd6-7b25-2818-108d-5af7afaa9680@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="apliigp2alovloej"
Content-Disposition: inline
In-Reply-To: <4c6d1cd6-7b25-2818-108d-5af7afaa9680@Shaw.ca>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--apliigp2alovloej
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Brian,

At 2023-08-13T15:04:03-0600, Brian Inglis wrote:
> When I ran the perl script, eqn was growing into the GB memory, and
> eqn and troff were each hogging a cpu, so I left it running while we
> were out at dinner with friends, but *eqn* died after apparently
> exhausting all memory and using 48GB page space, getting as far as
> limits.h(0p) for a 57 page PDF!

Gack.  If this was GNU troff, please report it officially.

https://savannah.gnu.org/bugs/?group=groff&func=additem

Please attach the offending exhibit and any script(s) necessary to drive
the issue.  If you have time to truncate the input to the page after
limits.h(0p), and the bug reproduces, that would be helpful.

I only know of one other issue like this, but it has nothing to do with
eqn, and it tarpits every *roff it meets.

https://savannah.gnu.org/bugs/index.php?64229

But eqn itself doesn't create or use diversions (it can't--it's already
exited by the time a "diversion" exists), so at first blush I think
something else must be making it go asymptotic.

Regards,
Branden

--apliigp2alovloej
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTZWVYACgkQ0Z6cfXEm
bc740w//fMJ2/p/+QnhYNCvFSIt6F/Y1Liw1pjIVDhd20fi1B+VhGvXUx+aiTKjt
xX7NOKj23CRyRHG9KoEHqhAM501zGJXx3wdUEWc8fjgLGTiFMsDhuAqjOu3U9yIG
KRHklHEsRWZh4sIBqukBGDAbER7tdTfhy+XjnUp+g4KUmPz6GruR2BmSbIVXZang
jfYcblfnjWEs2kRfzzQ2DVG2nPeG/ik0nqQi6r24Wn2yeJ/VjYoytBI54s/EiEgt
qj0Oo2hHpVjEhwr59WmW7g3R9XMCyc4M+8i93UK2PQLscsHGy382TUanXoW8abDt
0zsdDEWiBL+L9CVtpUyfgK+SiWgM4z3tm6nt+AGlGWEI3pyxQnIHeJ1uyIgBazgn
ERIGpw1mnR0/9tpkw2Sk/6SXzog31xQuhkwuxVMjzMCaVbBw867aG10nwomF7LjR
N0d0zfxZrdjE62NLwHdf1SfKndTnpWO5PAl8qC1UD0YAuCgZllMRxnry+KlcueOj
dKX8T3ypgDXExE9akeTnp0cdW+6wwJmaPprlfPe1yJX8B/9hcn+RWoLKmPZSBDNl
nHrwXiF8kDUBGYAwuBfAu879k8ItQXYaON9iDZp6+a9f0f+sikaW2gK4C+SaVitU
QICDjmXuzZYqDQOGEjqY1A7mLMV3X+adgeHhaB9MJkw2V/D5lBs=
=2fr0
-----END PGP SIGNATURE-----

--apliigp2alovloej--
