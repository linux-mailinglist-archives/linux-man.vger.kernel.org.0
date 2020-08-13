Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49A3224391B
	for <lists+linux-man@lfdr.de>; Thu, 13 Aug 2020 13:07:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726131AbgHMLHi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Aug 2020 07:07:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726072AbgHMLHh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Aug 2020 07:07:37 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7625C061757
        for <linux-man@vger.kernel.org>; Thu, 13 Aug 2020 04:07:37 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id h12so2640200pgm.7
        for <linux-man@vger.kernel.org>; Thu, 13 Aug 2020 04:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JoCqUpKjmmEEO0Re2XG3MN0lia5/rwUWpAax7yTutTo=;
        b=Jdt1wSzWUZshbPcVpRc+LBKGyvARBJa0nWxkN1KC/iRnrMQ54bSSvu6Sq9KMD+IlmL
         InCwUjwYEDOUzXXQj41/UpZ4BzyxaigeB/8oSTem6q78grJra9uSvlzPPf4pd3pwUn5i
         uMWsoSGmZduMIUL04dYyNY2Cg2MAZcTMFlnDktl/5v6iAyfNd5bZDTpFoYJlvJ2Mxeb/
         b+BNXih3fp41AbgrqJ1V0YVnqiU4SoTAwY3ZyaY9CDGkWAH865ni/s/grBUdCn4uSnjU
         KbPW9n4OwuGnV2zgw/EyHXkkip0+Q4s+Akvj9nSovrjyPSXl3zNdxcFl4uHPNLrns8LT
         qn7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JoCqUpKjmmEEO0Re2XG3MN0lia5/rwUWpAax7yTutTo=;
        b=P4GDsdt3uU05MRVgqAhdsFKcq7o+bWNTDwlD1fGhVyy/6KW4YxXQYzjZ7U/mqQ6VO6
         BSNCKR76H9kNZD3UatcNmRkqvjeiPZwf9DXiK6WS4rzzy6A/lRB/SxLPKEl90qaeQHlQ
         hjk49o6QWTg4Y3Z/y7qHexSXhCy1NPIkUVGjx+11eYVWNTGaC31vIETy7aQdcXuYfsM8
         YOeHKYXK427tsRrCc/ilAybR4PqrB2Zbc46Bt3IgXTJyq5rhQ859M31wwBQX+7asSJJ2
         xvmb012vj/h1xE7WQC2ij3NmUCEqLhzEshoe0ea5RRD/H2+7mIF///+gENICDqVUJA5y
         kLlQ==
X-Gm-Message-State: AOAM530DQ6JNeXWdu00Te9z/jXWWriANP6lm/tjpwbCq8tVfMgHVHcib
        LNCDvfd+IOgPWQsnjFgJ1WY=
X-Google-Smtp-Source: ABdhPJw9wpQ04+u6gtZzfbbbThRG2IwlhqRE0ELi6gaqSQ5uWiurgcqIQHY6eIZH/VW8Q6bCEJSKZQ==
X-Received: by 2002:aa7:9241:: with SMTP id 1mr4038027pfp.188.1597316857390;
        Thu, 13 Aug 2020 04:07:37 -0700 (PDT)
Received: from localhost.localdomain ([1.129.240.188])
        by smtp.gmail.com with ESMTPSA id m3sm4949619pjs.22.2020.08.13.04.07.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Aug 2020 04:07:36 -0700 (PDT)
Date:   Thu, 13 Aug 2020 21:07:31 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Mike Frysinger <vapier@gentoo.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] [rfc] drop "coding: UTF-8" header
Message-ID: <20200813110726.thqinrnat2zy3dik@localhost.localdomain>
References: <20200726062340.28800-1-vapier@gentoo.org>
 <c2d1c695-d6fe-465c-5c4f-a76df9754feb@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="pu3azhkm3q4phzbi"
Content-Disposition: inline
In-Reply-To: <c2d1c695-d6fe-465c-5c4f-a76df9754feb@gmail.com>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--pu3azhkm3q4phzbi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Michael and Mike,

Just an FYI here.

At 2020-08-13T09:38:06+0200, Michael Kerrisk (man-pages) wrote:
> Hi Mike,
>=20
> On 7/26/20 8:23 AM, Mike Frysinger wrote:
> > From: Mike Frysinger <vapier@chromium.org>
> >=20
> > This header is used inconsistently -- man pages are UTF-8 encoded
> > but not setting this marker.  It's only respected by the man-db
> > package, and seems a bit anachronistic at this point when UTF-8
> > is the standard default nowadays.
>=20
> Thanks. Patch applied.

Sorry I missed Mike's original mail, but there is _something_ else
besides man-db that respects this "coding: utf-8" thing.

It's the editor that some people might use to maintain the man pages:
GNU Emacs[1].

That said, UTF-8 is an easy encoding to detect, the Unix standard of
many years now as you note, and for about that long Emacs has also
scanned the ends of files for file variables as well (in a more
expressive and powerful format), so they don't need to be packed in at
the beginning.

Also, it's no skin off me personally because I use Vim.  :P

Regards,
Branden

[1] https://www.gnu.org/software/emacs/manual/html_node/emacs/Specifying-Fi=
le-Variables.html#Specifying-File-Variables

--pu3azhkm3q4phzbi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl81Hu4ACgkQ0Z6cfXEm
bc7fHA//RcJfgwdZMPn4vJS2+4vXFe0Lp5OW96cfB/svYcMxucyQGxIkluZi3Thj
P/HEQhPSUvUtrFI6wl8z34En/Nh7rcoHnNi2DeQCr87BGbZR7gt1uQZiV7PjcTX3
EvMAdN54TKANEaoXItSd0hkSnsSJdbft9OFk2ocCXyMStWKXb9zKhjFZYzJJOqJZ
LiWaHjT+hraOhCvsy0l5snuhhRhpwODFYFxEoltWKkmjlL0ffd+NPzyBpeWczUVE
Q1WpkI2XB5C2HLaU1yv7qlxH5s4OltlKqOszSniMvbCuvqvUaOUxQPynbwamLvmX
Yslja3t+ss6cZVhnK99WcDX6LhmX48tJgbZOyYWWXdSzmNAsWjCJJVcy6kRTYYFX
k3Fe7BHgzlz/154RI8RK9g6OlCwSorlOuyP29rCO3B+RRu1vuJGW48Vg80hpWYf7
cFbBfMhS+KNlqzBNevFeqmIHpiYpF1h0vpTh6l4DdM/YgrFU3BdGvezXA1Xkmiot
qzNrtRCJiZLUGla28eFoakhGDUQmY+hp9rwjA9qdiPrSkNW83EcOuludbPxp9ws6
0edfO+GoFn1MZyQI3NSYpJM2peXHlRVrTgv6jySzV3bUrPYbtZJBfZ2/uvmAvbYQ
YvBCTjS6CYcZCclZR6U7JsDCjEMu+ZyeuL+wBO92h1wy6IM2yMs=
=CnMy
-----END PGP SIGNATURE-----

--pu3azhkm3q4phzbi--
