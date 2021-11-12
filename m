Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C86C244ED6F
	for <lists+linux-man@lfdr.de>; Fri, 12 Nov 2021 20:40:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235408AbhKLTns (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Nov 2021 14:43:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235542AbhKLTns (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Nov 2021 14:43:48 -0500
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48407C061766
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 11:40:57 -0800 (PST)
Received: by mail-pj1-x102b.google.com with SMTP id np6-20020a17090b4c4600b001a90b011e06so7227272pjb.5
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 11:40:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ISeDpYtwAAuRJKwLwMRERO2q2cTr4Sqt6dOl3MEewB4=;
        b=d4jjq5jHcuKOf4NFSPK93HDWN5/gqhKbYVBMMJsEsZwBzvMV5RB/RxG/BbYF/JEI85
         EO/HW5T126uPqKe/5a5Hae6FLwmoFHM9WN9pujb5sqj/eD+IeNgiZbh6cybMb1rg9q5C
         6GE42O9nTs8s30a03R3F5QMBkDG9Od875yH8zCdA+UImcr74HHrSbuvFSAtwni2WRjU4
         JbmbjV/7D4v1H++GMQ7aADS3rYH5oho2CExYPtW1L2mSxKhhZiUdas6gnKT27yVjES55
         Pn0XGqCNNSg1YU+Upsvhy1DSHzXLynbr6kYdMSxFFrcVcA6GRuSmGwP/Su6UxT41KgIg
         OIAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ISeDpYtwAAuRJKwLwMRERO2q2cTr4Sqt6dOl3MEewB4=;
        b=ZNrzGiiJtYEyvR2BSe8FQb8uMN25IxwXCZNpzIHoji/2ZzlQN72xFxLm9OwXoqzEd3
         QjvCTdhNYAPsV+rmnCiXHBZBHJki91TKCXJrhwAlKyQGV0f+woQWbKrgh9Q2rxcfK01N
         XJCBomtx8aQRLmSHRn7Al7Xipg9gKCzbeGluhhxLMrGdjhUzAoF3zPxTYZJb5u/Y4vI7
         GMXROBgzTFZyusAjHokW+KorU/qrhup459YtQ+haanUeGjWuySHk7JrvUZFA0cent/Mo
         seZiosoVTDdGeRjlgcR+ZKQPjS167tg8Z52tjYWLHk22omcp9r2U0S4BUTdE6Qv+1HRl
         P0bQ==
X-Gm-Message-State: AOAM531HuvOTfTfzW4yKq/IU2aSev2xX0Tk8moqoPV7KNqrjAyYjqjif
        PrZSmiBSwi0Ujz7knKGedhI=
X-Google-Smtp-Source: ABdhPJwjd/zcNhUgQzSLILjvBz7J4jXDAewPMJ/CVy+8Z7R5X5jJ8q6B8HoyWSOcSoazOdPMB3luvQ==
X-Received: by 2002:a17:90b:97:: with SMTP id bb23mr20939274pjb.201.1636746056854;
        Fri, 12 Nov 2021 11:40:56 -0800 (PST)
Received: from localhost.localdomain ([1.145.57.118])
        by smtp.gmail.com with ESMTPSA id r8sm5320664pgs.50.2021.11.12.11.40.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Nov 2021 11:40:56 -0800 (PST)
Date:   Sat, 13 Nov 2021 06:40:52 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Jeremy Kerr <jk@codeconstruct.com.au>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v2] mctp.7: Add man page for Linux MCTP support
Message-ID: <20211112194050.w675gtlnecpc2r3x@localhost.localdomain>
References: <20211111015323.3542313-1-jk@codeconstruct.com.au>
 <76dd85f7-ab8a-1dcc-5b1a-5eb9a87d23bc@gmail.com>
 <d6c9edca79f9aedd4dd9e07e46a4587153f35149.camel@codeconstruct.com.au>
 <d0f4c857-db51-8482-d658-69f6ac25c73b@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="7eruv6xbyixsgt2e"
Content-Disposition: inline
In-Reply-To: <d0f4c857-db51-8482-d658-69f6ac25c73b@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--7eruv6xbyixsgt2e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi, Alex!

At 2021-11-12T19:45:16+0100, Alejandro Colomar (man-pages) wrote:
> man-pages(7) recommends breaking long lines at clause boundaries
> (commas, semicolons, and so on), but somethimes clauses (if you don't
> know the difference between phrases and clauses, which you don't need
> to, basically clauses are made up of phrases)

Slightly more formally, a clause is a grammatical unit containing a
subject and a predicate: "allocation fails" is a near-minimal example.
I wouldn't be surprised if caveats exist for "non-standard" speech, but
man pages are written in a fairly formal register so the rule should
apply reliably.  A moment's attention to clause boundaries can help one
clarify or recast complex constructions to aid readability and accuracy.

> "the source and destination EIDs" is a single phrase, so it's a bit
> weird to break the line in the middle of it.  I avoid breaking
> phrases, which makes reading the source code a bit more difficult.
> Hopefully, it will also make diffs easier to read in the future.

My only gripe about list-related phrase breaks, and it's a minor one, is
that in English grammar they nearly always require a conjunction ("and",
"or") somewhere, and no matter where I place it, it feels wrong, because
it's neither an item of the list I'm itemizing, nor part of an item.

I mention this because I suspect there is a point of diminishing returns
in our prescriptive advice, because English is an unwieldy beast that
was not formally designed as any respectable system would be.

Forget killing baby Hitler--if I ever get a time machine, I'm going to
go back and teach Shakespeare Haskell.

> Also, we prevent some crazy programmers from relying on that padding
> byte being actually padding and not something else, even if it "must"
> be zero.  I've seen too much crazy stuff; programmers relying on
> undefined behavior just because "we don't plan to move from C++17 to
> C++20, so this is safe".

+1.  One can almost see them producing a cowboy hat from an
extradimensional space in their cubicle.  Strap in--the UB bronco is
gonna start bucking.

Regards,
Branden

--7eruv6xbyixsgt2e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmGOwzgACgkQ0Z6cfXEm
bc7zexAAgY5wZTbw8YqwcEJMs5KqGL6Kb0ShfBt7e5eJv7yQPEPrCvQCmzZ4fiIr
KyJhHbp6yiAilw/HiNB0KhvRMxa+vSW2mQ7VzWMMyUbTpI7cptgDj/r5zGtUN+rw
JIArlA7BjD/6M91kCQRvcPucGLFrkJKz9CvpygLxjq3+NQ3uKNu2hJcHD4NQmsHX
UigRaPKT7SWdLR0WnyfswnvZEkx7ZjG/KnQ4JoPUen6boKLc7GVLumFuqCG9ASnL
hrKqZjC99w2fMUuIZU/imN3nrgBghBZ0Ms59SXkFm/MpwA3ikvl9BSwqDb3qL8jC
03bp+gAho05MfIeM7VGHalSdkx6yQ1ZjBjzi2GTQ8u5iToVYk+g88tOD92mzpQDi
wt2BriZHk1quZo95yTr03NODL38rS75OCIUfRN2tHPuAab1OceIxKH6GjUX3lR/W
uldrPzvmA+UC3T8CkQnfUr/2JQf3EO/BlfVtJ4HiLqPa3hwu/ZoaXwqmrA0dRYBV
h5rNBljKsXp5Np1Sotr8xfTyt6NykqF9nWidmSFDRdtcLrhYyZuOj0/tuOUJ/XvO
wVH3k2JSQ52wiJr8UqaXeQH/SP9Do+y+pYOi4ixWurpkPnCGZr0rzV2tK86aiK6y
ph9I64tWMb3Ysyi0otZr3u712t/7vBEGp4Anu9a/sWi8JYlL5HU=
=pvJu
-----END PGP SIGNATURE-----

--7eruv6xbyixsgt2e--
