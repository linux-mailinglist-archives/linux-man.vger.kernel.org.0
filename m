Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6271C27AF74
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 15:55:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726348AbgI1NzN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 09:55:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726310AbgI1NzN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 09:55:13 -0400
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72380C061755
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 06:55:13 -0700 (PDT)
Received: by mail-pf1-x441.google.com with SMTP id b124so1075396pfg.13
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 06:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=w6ry1jrnmrFAtvxhzK+IJqkRsxyq9TMn2yhHFvEivH8=;
        b=Y7m9wrSv8X3sUxhaJibgFFc3mGBVaOd6NJ/+p6BOeUBBxDUP4Y6KL1DzHSpxdnC7wk
         qClhIxqL6PkuwJcmly4Dmhd+iHmF8SP+mxzGDHW7TgmZsSPg6n6I17jaqN09yMk+02Wp
         W0D4tdd8WK4qmiTcL2tBsQGr0CY0GnBOsB5VYC7zju6cYvthGB0d40xi5IYnKnlK1PlQ
         r2s1dJsGpiCtpJ/cL8y8RZQRjgrQ0sCG79MkcXTsbMvEnhoYkAj7XY7tIZ7rdr1Qnmmx
         rd1ye5Q7+WGQ+42zx+jj1i+GgmIpxfiFUAuykk8/el3NVtGDQ6T6GcvrFbUEwv1kS+Le
         r9Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=w6ry1jrnmrFAtvxhzK+IJqkRsxyq9TMn2yhHFvEivH8=;
        b=n5Sj9Vu9V2W9OjcUMNoTtrf04D0+iVEohZ9vy/b/vHEtMaTIVGDzg8rpDPow3KanGN
         e7l0fC9YODI7OO/miXuvYCMWwcUtwQB0qQjE85BenKM58n/sA/p4JVHbuhHzVw5jB1pZ
         2vtZcuGkNcROJVWhkc3ev5FDxHfU0dWTO46L4r+4rqMjv59SDMyIt9LFo1vByTOLoHbB
         AGEw2dSHfioDAUotLdZEgBmt7+YWE8UeHSY7fA0KuOWcf7X6J2I3vZGIEmK61fuIo9JO
         zYqNpPWMX3UQNxscYPYUBY6xWsRUeqm55meyQAoE5oAp9LRn7dDdr03ybGyMpNG7HyQF
         sgZA==
X-Gm-Message-State: AOAM532b+Uu53aPAukLP75nuf6zHC8uobtLRAXmAeSLvvuDsghz2vkNj
        mZFYmBcv7RtDvivnMH1Fxhg=
X-Google-Smtp-Source: ABdhPJwAvyXCuUN9Xc7ZHSy63AtdQD3ixVxjuqUR8hLtPJA+MnW4sA6BaN3bhSrV4FslUd7IOo4y4g==
X-Received: by 2002:a63:d65:: with SMTP id 37mr1238750pgn.139.1601301312999;
        Mon, 28 Sep 2020 06:55:12 -0700 (PDT)
Received: from localhost.localdomain ([1.129.175.25])
        by smtp.gmail.com with ESMTPSA id p4sm1544307pju.29.2020.09.28.06.55.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 06:55:12 -0700 (PDT)
Date:   Mon, 28 Sep 2020 23:55:08 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     Dave Martin <Dave.Martin@arm.com>, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH 1/2] system_data_types.7: Document size_t
Message-ID: <20200928135506.2wsf3cwvkkbreqa3@localhost.localdomain>
References: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
 <20200918112755.21428-2-colomar.6.4.3@gmail.com>
 <20200928134122.GG6642@arm.com>
 <8ce3d63c-445f-827b-a49a-914e8dd622d4@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="s5wptk7lgssa4yx6"
Content-Disposition: inline
In-Reply-To: <8ce3d63c-445f-827b-a49a-914e8dd622d4@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--s5wptk7lgssa4yx6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex!

At 2020-09-28T15:48:14+0200, Alejandro Colomar wrote:
> > Where does this arbitrary-looking list of headers come from?
>=20
> There are two parts:  left to the ';', and right to the ';'.
>=20
> Left: The canonical C standard header, and the canonical POSIX header,
> in alphabetical order.
>=20
> Right: All other headers that shall define the header, according to
> either the C or the POSIX standards, in alphabetical order.

That's not a bad scheme but it is not inferable from the current man
page text; I almost commented on the inconsistency in one of my earlier
messages but deemed it out of scope.  Please document it, perhaps in an
introductory paragraph at the top of the Description section.

Or, you could spend a word to do the same work:

gid_t   Include: <sys/types.h>.  Alternatively, <grp.h>, <pwd.h>,
<signal.h>, <stropts.h>, <sys/ipc.h>, <sys/stat.h>, or <unistd.h>.

Regards,
Branden

--s5wptk7lgssa4yx6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl9x6zoACgkQ0Z6cfXEm
bc7t4w/8CuVE6jF59gFWPYWbTCu+HI+EXDlJ2QTeDv+606eraa0bDoqpJutDP4Y/
e1YEaXs2ReVz3jIuf3w44EQp7Q5MqdlRhfLh8d/1NeyoJces5RuP6/V89ywNKuCN
miZYOsVEMy8bim1ZMmk5qSLImzyWQNpy0qkNCqHZkLP8qT3FE0DzeUF7Mml/bF9r
pAVeraOYzYbgK5pMRIWThEfbZNmYJQIeCK3ZxbUHrO6UOyCNe11snjLeF9Kn+GFJ
cI4j1Ebt8+KBtfoy0zYZCuS5JApQc0ELCcIBLYtpQ5N/RU505VIXVHLqcot7CZzy
nbm8bA3BLUz3C+8ki744B+zECeM1EsTWl9aBpRoabWg0NQFNZ+xRYRptK2q0qQuE
ZN1coZmfA5B2+HDvf4F9pJCXINQRqjPiJMgP8upuHvDm3/52Kx9tKc1iWwbpdCYf
AxGWF7vFneYpkRSDdB9KVOs0yARDq02p9VjRvG2C7ZQmbKUHeDRAIvJegEsrGDwf
3xQxY/+Gcn85qYcYrZWWEYaVuyGt+5TzET/XiBTP9edmGB1pkSWhzvuDCKx0mk+r
PytdPvZv/CriCWUOZ1el7V/WChj72PsI2j21WHrPX8n9e2vbXqTuq/dKiwq5hjvF
wqMtyh82FFnzc1/NvbBeTjt43rmWHPfFdDyvLCsVXUnHQcYquz0=
=e7kl
-----END PGP SIGNATURE-----

--s5wptk7lgssa4yx6--
