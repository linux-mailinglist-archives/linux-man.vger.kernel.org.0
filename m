Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 128222B191E
	for <lists+linux-man@lfdr.de>; Fri, 13 Nov 2020 11:34:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726176AbgKMKeQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Nov 2020 05:34:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726275AbgKMKeP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Nov 2020 05:34:15 -0500
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB8D2C0613D1
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 02:34:05 -0800 (PST)
Received: by mail-pg1-x530.google.com with SMTP id i7so6762779pgh.6
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 02:34:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MxUFpKNRs68yodVd1W3KpgBctGqPb7jOOI6QmucuOOY=;
        b=EQKOU0GfZj3PfcAGeP+r+zKFely1Nph7I73DqlB91BQd3IdKE/Hps6fp+p1xwjqta/
         HFfTEVrPV2d8kWD7Sv9baj5es/SIT/F/CojOmaVzwtYFVsrOVM8gx4A/HfJ1GIiWu64N
         lbyXccFslx4d5+sTQorT6yZVXO9GbvIZH5gNkQkXU4/a4rX0DMP7kTPuwQFCnMvkKt06
         1DXN6jr9plFH4OT8oe/tBdIa7n6ZKPJUizAhe06dzSkArWoPCQ2wB0Zq0vu8jIRlwDJD
         XqBDyc0NBqedl2TwB2UlYjGUFejyx5FMzlTtcgmGd7+IofVk66XXcTJs4Fcc8lqN5Crk
         NvuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MxUFpKNRs68yodVd1W3KpgBctGqPb7jOOI6QmucuOOY=;
        b=QGBj1hHV5Poa6H+WPM4MiIT3Q+sTFUGJzkxbs5fc5/iVHRexGX3OGpahI09sz/vN86
         CZCWSYRflJnGwzZdQguDWhvrRmzsB8fCmMbbjkoAQ/wkDeuQXiAxF2EaaT3Oab++z5ef
         R3kNBxo5ttxcZ5QN2vU25NGzmwNIqqWs/ICKweliilOBIs/7IEP88665MtQULXTy0xMG
         hZYiNBD4dEAfGcOooWCoro3KeM9yHe3Yt5rYQejhbNM2mUnrH233DL6fUO+zZgyI/rAA
         7KhSAqTDiVMuDgCbHh7Na5Jw3g/WShLbQr09wUszMq9kquKpJPJyauSFRCBahZ2ABnCs
         OFqA==
X-Gm-Message-State: AOAM530x+xC3+JoM1DwvMRNnnHUE3p11NFzDUHKp2AxUC8g1S6+gWIL8
        jIF192NAc+EYvLsHL+GgZbR40X9a5co=
X-Google-Smtp-Source: ABdhPJxQSDSgzEWJA41yPk9saW9LYD5sSlqCeY6IODqMmZCN/WVxuQEOiVdORbWIAyXYPiT8bU9YSg==
X-Received: by 2002:a17:90a:9205:: with SMTP id m5mr2147519pjo.200.1605263645170;
        Fri, 13 Nov 2020 02:34:05 -0800 (PST)
Received: from localhost.localdomain ([1.144.240.135])
        by smtp.gmail.com with ESMTPSA id gz15sm9987582pjb.34.2020.11.13.02.34.03
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 02:34:04 -0800 (PST)
Date:   Fri, 13 Nov 2020 21:34:01 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man@vger.kernel.org
Subject: Re: .RS
Message-ID: <20201113103359.zbid33lx3tqcgs7d@localhost.localdomain>
References: <ae05d6bd-af93-9b49-25a6-e9c69ae402ec@gmail.com>
 <20201111150950.u7lf3xeulydbd2vr@localhost.localdomain>
 <c6919fec-4a95-888d-93fd-ecb254ec2377@gmail.com>
 <20201112070915.ejttfz3lu3sphkkp@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="wkriao736v3kw27s"
Content-Disposition: inline
In-Reply-To: <20201112070915.ejttfz3lu3sphkkp@localhost.localdomain>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--wkriao736v3kw27s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

[sent to list only]

At 2020-11-12T18:09:15+1100, G. Branden Robinson wrote:
> Yes.  The unary plus is redundant for both .RS and .in.

The above is a half-truth.  The unary plus is redundant for .RS, but not
for .in.  I corrected myself as part of later discussion but I didn't
want to let this error go without a clear and obvious corrigendum.

This stuff is confusiong enough without me adding to it!

My apologies.

Regards,
Branden

--wkriao736v3kw27s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl+uYQoACgkQ0Z6cfXEm
bc7phxAAnrb5hMdyg7n1004NVEyjs6ROSCcz8g6ZvbGcgUxJw+AC3uM5HJkVEZqD
IOXPrTHtuGWQAn8gUckJb1bg2dj0ZxSM7QmjGXgSAa8USeKOKxJuAjjGFgP2m3gJ
116ikC9snjGNPKyPs4lmKOeXDi+tganbjlbMWOcnanZ/8WIAhnTZJQb3l9ayDLAM
W5H40NXcsnJaIx5u9F34mnNPLYdD2IK0cbnSQEB+d+TmYiYNzp4DHbqzXJP3CWdJ
3TSLOh2R3UaHb4sBze7t6v3YHYUF9B2IuLFbWLs8odLdp/mIcS5T2jVm/QnrclDQ
YWJckkUoLkBbxu1xABa3XmJn0abq0xGbnIy0dftDJfdp4d/wbPgSTc731fWCRMTc
5qmTq2XWnX5LPGfvU0UzPaQQ0rJYM9XZQQWdjkvuyrGDkXReSIP7MVSYLlRcw6th
2nhuF/y2WN2yt4W2n10YUpOdQV73uitDunsoknY3YqkslISBV0OCa+dFl2eJ4HKV
iXZa5+Djx5wlBpJI/II04CdPgfr0J/Q9ckV71xFlN3arlTE62hHiFvQIXo3zKrBN
WZw+baUoI/HMxRTiDi9GjwDIFJxGhPR6TYKMo+w1KSjB5NNdfYHlkKXtzPdz+zhJ
LKsA/+TR4Jb7z7F6VVrgTZuu4hKCJK2cgRBIf1mieb7ei8kl1w8=
=byWs
-----END PGP SIGNATURE-----

--wkriao736v3kw27s--
