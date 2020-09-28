Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0625C27AF3D
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 15:41:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726325AbgI1NlN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 09:41:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726310AbgI1NlN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 09:41:13 -0400
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com [IPv6:2607:f8b0:4864:20::1041])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58C76C061755
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 06:41:13 -0700 (PDT)
Received: by mail-pj1-x1041.google.com with SMTP id bw23so712354pjb.2
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 06:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=lPgky0Yx+xjwzEXGBtP+JkFuHiptnD3PKlGGut1fwYI=;
        b=V6W0vSsbBDdjQBLoyoI5qx//DjS5HR7k55q+rWfCQQK/FS2af5wTh6CI4SN+tk+Wa+
         VpS6kOCsyHF65to/5DZoQ5hnY/3Oq3OBDPUVgHEsjgLbONi4eib3X3upY13qlzNfcLc2
         VjllKxUuMD/k5sJPCrV7zY3WvexDCgDoapIruCEhhg7qwQh3EldTxfcJIe7vNsZS1Rve
         vUqmmiSDPjSTqRaYl5Yb2xPzbzw/kLnJuJ1WhxyyZYZgdTXFxvlx7bnHOShE3W1x1qu9
         6vVwRNDgb2R0HK16bzxsoH0NQVG9bUGhdu1gFccmzbSI7i/2lw7moIsDd+ajtku2a+Vk
         OvDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lPgky0Yx+xjwzEXGBtP+JkFuHiptnD3PKlGGut1fwYI=;
        b=IwhRuDA6UFJEoWEpTIG6J48OZqK7j/zD9y3w8ybJyttSohlnARSODKPzr9N722wL7h
         Vzypqxw4Y3+3fSvRjJ/eEOq60m1T4etDoA133OKkwCqaVCNI/Zsgu+OEsxrp5w6vLb2U
         7s8HprKznf8kygHZuBgtA0Bkjp9piPW8QcKpXvHyOZK9eRSjXXPGGMFpp0+Ko16QhD8H
         y771Xx4bXw3JI0Apg5aBNEe16CBde/H328RNXrS3rQv19JeTASuHduHNHlzouhe94q17
         hDkeqSeJ2FN/zJDWutS39jnhbMVHtJwArteLEETXjTnDYFZZFxUETfC43INO7Wtcl98B
         bJBQ==
X-Gm-Message-State: AOAM530RazRAj7h2AB/+vUl5533PiaI78XuwuBpCvL9Ny+A0zw+T+nym
        gS5md7V4EyaX0/g5+wjt2ZsyH5NE96s=
X-Google-Smtp-Source: ABdhPJwcsfq2U8IxvLlY2z7w2in9KaxxUIL5MxjzgZocrbVo+VjOItZZ0nq8dEzrN0HGo3bmPkEHtQ==
X-Received: by 2002:a17:90a:f309:: with SMTP id ca9mr1446223pjb.0.1601300472847;
        Mon, 28 Sep 2020 06:41:12 -0700 (PDT)
Received: from localhost.localdomain ([1.129.171.207])
        by smtp.gmail.com with ESMTPSA id e14sm1554089pgu.47.2020.09.28.06.41.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 06:41:12 -0700 (PDT)
Date:   Mon, 28 Sep 2020 23:40:58 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] system_data_types.7: srcfix
Message-ID: <20200928134056.wjfqasctbxbka7d2@localhost.localdomain>
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
 <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
 <20200928132959.x4koforqnzohxh5u@jwilk.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="t6lmnrgzhnq2epkv"
Content-Disposition: inline
In-Reply-To: <20200928132959.x4koforqnzohxh5u@jwilk.net>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--t6lmnrgzhnq2epkv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2020-09-28T15:29:59+0200, Jakub Wilk wrote:
> Hi Branden!
>=20
> In groff_man_style(7) you wrote:
> > Unused macro arguments are more often simply omitted, or good style
> > suggests that a more appropriate macro be chosen, that earlier
> > arguments are more important than later ones, or that arguments have
> > identical significance such that skipping any is superfluous.
>=20
> After 15 minutes of gawking at this sentence, I still don't understand
> what are you trying to say here. The sentence should be either
> thoroughly rephrased or removed.

<laugh>  Oh, dear.

The page source is interleaved with comments that illustrate
anti-patterns.  You'll see that the second case is of the kind that Alex
just fixed.

Unused macro arguments are more often simply omitted,
=2E\" antipattern: '.TP ""' (just '.TP' will do)
or good style suggests that a more appropriate macro be chosen,
=2E\" antipattern: '.BI "" italic bold' (use '.IB' instead)
that earlier arguments are more important than later ones,
=2E\" antipattern: '.TH foo 1 "" "foo 1.2.3"' (don't skip the date!)
=2E\" antipattern: '.IP "" 4n' (use .TP or .RS/.RE, depending on needs)
or that arguments have identical significance such that skipping any is
superfluous.
=2E\" antipattern: '.B one two "" three' (pointless)
=2E\"   Technically, the above has a side-effect of additional space
=2E\"   between "two" and "three", but there are much more obvious ways of
=2E\"   getting it if desired.
=2E\"     .B "one two  three"
=2E\"     .B one "two " three
=2E\"     .B one two " three"
=2E\"     .B one two\~ three

I think that paragraph started life before I split off the
groff_man_style(7) page, and I was trying to keep things terse for the
benefit of people who wanted groff_man(7) to stay short.

The page is no longer being pulled in two directions, so I think this
material can be expanded out into real examples now.

I should probably move it later in the page, after the macros have been
fully introduced, and put a forward reference to it in the current
location.

Thanks for the critique.

With chagrinned regards,
Branden

--t6lmnrgzhnq2epkv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl9x5+AACgkQ0Z6cfXEm
bc7M+BAAkv8LoVQxhdPbFm7CXx4o+81XObLee/kUqoNn48GmAM97xzPt012J6aUy
D8ut9hLLLftpfpGdnZ4EEjJlbpP6EFcfEQM5XEvbSxv36n+Sr59we2cPjneHe9/e
KhQeopu4QCXXIfEQV3P2rM29r6+2i2Qv73vqzyFD8RTNOrm/xDJw3x6jD/MjpJ/R
CB90CdwpgrFg94KChYamTmiDw9NNjF56wtW031U+26EIE05oBy7tZ9BiKkXG3NV8
w0Vgjk51OHeDKr4L0Oo7MCOnFYGQ3RdcfAQr0WEU1RkrNuZhxNpjYlr2oa0CngRk
H7LW+CyzvZYcD9DDilI80T/v3GKWCyZNsDLIlHMByi5mz5d8V0siAdNrcahsOmQE
ZDWuVBWe61yvky+53b1l0wIoJunR4rAjStGaz4L+q3QfDeyYRPdgZd1m8wNcoqzY
TD7+e52mt4UxDRFdWEooJrhEzsBwPPszZIrHKlCs129mnsn82RYAAZPVMeUXwXX9
x/Oi5SSuoPN9y+Ru7zDqHZ3uBun1GG4ZjXwsR8kPRzjRWgiB26GIeX/4+zvUh79e
9fd6l1T7fAZqBoTKUs/Pc7zPUZF5U1ptbgvV2lWcV2U5JeMrpGP3OWtmh9XnRJz+
7LaKTE/2CjxB8tNvy+Mtd6TQ9dHLthNiIw/8eBKAbcPcvSnZdhI=
=mce8
-----END PGP SIGNATURE-----

--t6lmnrgzhnq2epkv--
