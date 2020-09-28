Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71D5B27AF59
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 15:48:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726442AbgI1Nsg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 09:48:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726420AbgI1Nsg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 09:48:36 -0400
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com [IPv6:2607:f8b0:4864:20::1042])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 610D4C061755;
        Mon, 28 Sep 2020 06:48:36 -0700 (PDT)
Received: by mail-pj1-x1042.google.com with SMTP id v14so693420pjd.4;
        Mon, 28 Sep 2020 06:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qcXIwszJxys1WeZzFGHVIATFt+lOTNl2V4823JwrDqw=;
        b=YraFdap6YUNGw79y8BW+bHPhR+FIT4qkQ7ks96O0UlVUQkT8avZ4r9++4Su4wFr4rM
         SblvvnOaJcn1+Vf6Y/by89dZT6rY9t+mr03l5Zv3/vnufOrtBkCb0wdEyx/niCcyhj/8
         eMRalnBrF6FWKsqL21Twz7295TxCP/QpEkOuNvm8Uxh8iNHuTopst5a2669HLQEw01jm
         MmHho+flNxLrPH/CF+vqJOYUZtcBMaF0auMUnfD1TS/ybbmGrxt3UDH8A+099MIFthze
         wNJLqk+NDTo3hAqc7UIsGmjBHkMGhwXWHkBRCsFGghVhFiDh9seN6UN9kApWJ/LJgujV
         QtGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qcXIwszJxys1WeZzFGHVIATFt+lOTNl2V4823JwrDqw=;
        b=PWm3OulYpttKIzc3utZIMvWDBbnjr5yKHK2daG1S1UzLWoxePmE/62gBCiVtj2vt/Y
         m91cEH06F3ixn2rB9/6BKn0t90KEnFsY0ZH6O2xCeUTEoW32+Y1N6aqcoVH/As9UB/e7
         Rmv9pDC3xYmaxLPV5/fnEEiwGWPOcGehk8/KtOc31h3BnNt5xCUtR/IYY4K6fvn4F5nT
         xJ5HAL9Q/7tFCWWHaSBkIpu2rSSg6SAizS+N9MviBvF4NWQTCBqQrDdr1GMr8y2nYqtT
         PGDVMUQ0VBK/023VU/vAeSi4lByGy8EHzyRJzTPEixiaM27qg30wVJjM1N7KGRpkuP//
         lQwQ==
X-Gm-Message-State: AOAM531TgzVoVm2ZrV0BYXlyKsoQbPH9A/MXybhVPg7bVFx3W+oJcBW9
        t/gyrA83zj8XVI+l5BLwjfE=
X-Google-Smtp-Source: ABdhPJx27lSkeWR30cVXZEwujHwtlZErni0ftkJ7kzK+FwlKaDz5fjP9Nu/0o/CijDeeFbWv0ws7PQ==
X-Received: by 2002:a17:90a:ec06:: with SMTP id l6mr1447543pjy.66.1601300915989;
        Mon, 28 Sep 2020 06:48:35 -0700 (PDT)
Received: from localhost.localdomain ([1.129.172.247])
        by smtp.gmail.com with ESMTPSA id gb17sm1534398pjb.15.2020.09.28.06.48.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 06:48:35 -0700 (PDT)
Date:   Mon, 28 Sep 2020 23:48:27 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
        mtk.manpages@gmail.com
Subject: Re: [PATCH 22/24] membarrier.2: Note that glibc does not provide a
 wrapper
Message-ID: <20200928134824.nwvfa3k6ltar6dwz@localhost.localdomain>
References: <20200927054657.ea2zaiesle6hwjit@localhost.localdomain>
 <562859fd-6740-1068-d9d0-9562140cec33@gmail.com>
 <20200928125227.yr2ugl23ib6mid76@localhost.localdomain>
 <5d4f71a6-8a5e-c683-fcbd-b5453435d736@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="q2ajr4uvtcakqprz"
Content-Disposition: inline
In-Reply-To: <5d4f71a6-8a5e-c683-fcbd-b5453435d736@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--q2ajr4uvtcakqprz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2020-09-28T15:33:21+0200, Alejandro Colomar wrote:
> On 2020-09-28 14:52, G. Branden Robinson wrote:
> > At 2020-09-27T22:05:14+0200, Alejandro Colomar wrote:
> >> 2)
> >>
> >>> .EX
> >>> .BI "int fstat(int " fd ", struct stat *" statbuf );
> >>> .EE
> >>
> >> 3)
> >>
> >>> .EX
> >>> .BI "int fstat(int\~" fd ", struct stat *" statbuf );
> >>> .EE
> >>
> >> I'd say number 2 is best.  Rationale: grep :)
> >> I agree it's visually somewhat harder, but grepping is way easier.
> >
> > I don't see how (2) is any tougher to grep than (3)...?
[...]
> > $ grep 'fstat.*fd.*statbuf' man2/*
>=20
> There are a few cases:  if I want to find declarations of type int,
> I'd start with:
>=20
> $ grep -rn "int\s"
>=20
> or something like that.  "int\~" would break the ability to do that.

That would, among more obscure cases, miss the style of function
declaration used by people who get along without ctags:

static int
my_little_function(int foo, char bar)

So I would tend to use grep 'int\>' to match a word boundary instead of
a whitespace character.

Regards,
Branden

--q2ajr4uvtcakqprz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl9x6agACgkQ0Z6cfXEm
bc43NBAArvGHYFLhprdZLQ/1G/60LhG9InQEjk78YC8oHqDuN9NFvGmb4TAXOj73
8/aGfTOXYjBi48FZWYAFfoR57LAXTdscV8K+B6kP5wAK7mlpe02iEz+zKGePaNzA
ZckTkaj9R/0rxav8x5FkQ745iRdwnrnD+aiBERrBC/7OJryy44swrs3LcpGMPSVX
gzP2PmbU91zoowt7Pqrct7ffbanpa2hqXyri6yaJf2mHrPLFS2m0srEG+ELYwg5M
IJ7uD46pY9KkyzkUDHmfkG+aQ+gd0D8sneP3u5Bad8CVymLNQjOv9gcZrDov616h
8uFLlJnvpzbP/RxFOEaXji2USNcKGS/yR/TPBFLXUyFrSr2yy5Vd4RbEqgyIWlry
aulBOVpL7leMHxkCjH9SwZLm1FFdYUJKjlLWWiEIaFzETqCCauxddrJQmqGalUcQ
mVHlz2ojo18+aqQi3QyMbjGgygxzm60zm/SDkdbJCVsrHYhGlunzZ8VMGf0LiCBK
NvCQkq7alBUxfWdeHZPFDxq+OznPcWsBhsWVk/ZMJ+GI5ITc2LlT/wCMh4hVLYri
ptVwvCehB27w52bJO1o1UgoTIXeTJpbufvRXP8NY2iQS7iOo+qWoCZuqsNRIZRzz
3fgScpT/FacdlRHM0AL90wNp8P2bFnbnoGm1ZJoOpvWtted7wtg=
=qCvX
-----END PGP SIGNATURE-----

--q2ajr4uvtcakqprz--
