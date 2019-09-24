Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 02118BD1F2
	for <lists+linux-man@lfdr.de>; Tue, 24 Sep 2019 20:42:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2437037AbfIXSmD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Sep 2019 14:42:03 -0400
Received: from mail-qt1-f195.google.com ([209.85.160.195]:39081 "EHLO
        mail-qt1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2394062AbfIXSmD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Sep 2019 14:42:03 -0400
Received: by mail-qt1-f195.google.com with SMTP id n7so3392561qtb.6
        for <linux-man@vger.kernel.org>; Tue, 24 Sep 2019 11:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=XI1CMQzu+192Aoi8nQ8KFu0OXQw6lN1mMT4ZlwHd9IA=;
        b=bUCd5j5FsdoiLTHvmR/7k/l0G8+jfm+UN8oN5+oKQ9AWfvdfRpOed4IoaVcHdrG3B5
         qANDzHcyyGXHBOEEeZWRjrYWaYodmETpJCodJR2jkEVDrt9177L6Dn974QaqTcg0LQIT
         C5ENx+qHGTTNhntzPtm/eRCb03lohgxFqFJqneIsrFGkyvXZsGYYzjJ7Coz9TZImqZu4
         UyG6hkgWWeA26J9Zq5IxQr6kos1qXAFZ6aFPYg99BQUBfjyvov/M1fZ67gL83AZTpi3q
         bpH+DNVnfHkmBPq5UpcpdrGX0noDeS+tF6nJ92g+pdfkIEoS1ZtU22tgxlCDol7GwUPm
         5u+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=XI1CMQzu+192Aoi8nQ8KFu0OXQw6lN1mMT4ZlwHd9IA=;
        b=ftdgD1TOGhpQ7jA66hgNRl9OvNddRxJ9O2EzugqAx4hUC/90TUR6+zCwBmI3LLrRmY
         OT9nmCTsTUoiEhyiuVl6p0le8FTKiFSciJbohuxa62sSYpMnw361R1fiEfFcvvA9jPMk
         eSH8FJuTTYJGuXjecUrgkRE98xdxQ/h9TRjrzJltzWn4XxVB+AhbUg7JJR/LukeKR2Se
         pSD3AoyX6gTkF4u/BgoQhjrp7+/vZeIYxJQhZvm6lW+z7bzNRfHjCFa1N78kcIbtkA03
         WQgXdwvmAss3cvMQ9LbGg+FLUpQNs33x55McTRK4rwb4LPF5m0gYDZ/QW9LLBL+fLIb+
         wlsQ==
X-Gm-Message-State: APjAAAWon08265qSq1VYLYUQwyMiTELyVkrpfQPtkhpaKN1EdNYe3PeY
        SCWiSgXMVvZZVe2O0VnLfS1VdMQB
X-Google-Smtp-Source: APXvYqwKh/IKOasFsVqOjJOrN5F8JH25/4QJqv3TEq1gNQnEP7NuUYkQt6wpdfn8lIYkqvM6H9baag==
X-Received: by 2002:ac8:3f72:: with SMTP id w47mr4448093qtk.362.1569350522101;
        Tue, 24 Sep 2019 11:42:02 -0700 (PDT)
Received: from localhost.localdomain (208.37.145.56.ptr.us.xo.net. [208.37.145.56])
        by smtp.gmail.com with ESMTPSA id g194sm1920950qke.46.2019.09.24.11.42.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2019 11:42:01 -0700 (PDT)
Date:   Wed, 25 Sep 2019 04:41:59 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, benh@kernel.crashing.org,
        mpe@ellerman.id.au
Subject: Re: [PATCH] getauxval.3: Add new cache geometry entries
Message-ID: <20190924184158.3f3au7aqnitasrrn@localhost.localdomain>
References: <20190916184136.13621-1-rzinsly@linux.vnet.ibm.com>
 <3a8ec98c-f93e-f186-b365-82857ec46395@gmail.com>
 <91faffae-777b-7e77-2986-463dc01508be@linux.vnet.ibm.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="gbw6b7f7lpvpn4xz"
Content-Disposition: inline
In-Reply-To: <91faffae-777b-7e77-2986-463dc01508be@linux.vnet.ibm.com>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--gbw6b7f7lpvpn4xz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2019-09-23T10:36:16-0300, Raphael M Zinsly wrote:
> > > +Geometry of the L1 data cache, that is, line size and number
> > > +of ways.
> >=20
> > What is "number of ways"?
>=20
> It is the cache associativity, e.g.: 8 means the cache is 8-way set
> associative.

Yup.  At some point when I wasn't looking, the "-way" in "n-way cache"
got promoted from a partial adjective along the lines of "all cars must
halt at the four-way stop sign" to a full-blooded noun and term of art.
I bumped into it while proofreading a Ph.D. thesis[1].

To help familiarize practitioners with the new cloak of terminology
draped over this hoary descendant of Old English "weg", I suggest adding
a parenthetical:

  Geometry of the L1 data cache; that is, line size and number of ways
  (e.g., \(lq4-way associative\(rq).

Regards,
Branden

[1] Ge, Qian, "Mitigating Microarchitecture-based Timing Channels with
Lightweight Operating System Mechanisms", Ph.D. thesis, University of
New South Wales, in press.

--gbw6b7f7lpvpn4xz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl2KY1wACgkQ0Z6cfXEm
bc5saA/8Ci1PEA1web9wazvxOpz4BmxG0IhmUyjFhDqTka/XJdSYr1DuMsgRbgKf
8N+0bX1Chhm2ckrTwmWrgRKipaN2nwblqXkNFaUp7tApddnxgYa1/gI1IOAJzaRn
6vdJjtQwFffoaNaz7mIvW56DsomDYDla/2izuKTgn5kY3HK4gFkyLwMSxdeESnwN
X0ydnTag6OR/TkOIdq46pUOVRbng9UTM/G+zMVctV32K1L4BduZDoGek1CUGYCnS
2w71qz77Do+S9I6TMfJRZKz3aRb4vPvZtMeu/KOYhI6zrmysjxF4lcjtT2rnXw5o
7j0Y/zF920QoL1fayuthBNKoUjzd45rYvfZiYr5/8TnoqGHm5MIo1FbuVBkEMhB5
/VTJZ7CWOC9XDllMt3y9j23ks4gP7NLCEucXgpqmzP3R1Us/8V9h+yfxjqOjcdfB
825jInyovYS+fbYKKO7LDl5trVnzGN1JLMDoH0K6XbpmXBskFUUiIC/KerpITe1f
klA+D/XInoN1J8e1bt2JR9TFExIlnSGSThcIngmabLFN+fHvLmg+WDILMCfHGFM6
NVgwWqLhwrEv7Q1Kdvf416Hr5jd49deH5RWmn5k9peYhIr5cW9rM4TarPpmv8vuO
yno+8bv3u3fAQ3ITA59AoUucPyfpR+7Cp/RkD0BPO94AKFbrouA=
=EdGU
-----END PGP SIGNATURE-----

--gbw6b7f7lpvpn4xz--
