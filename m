Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 949A771F75A
	for <lists+linux-man@lfdr.de>; Fri,  2 Jun 2023 02:50:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231468AbjFBAuF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Jun 2023 20:50:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229682AbjFBAuE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Jun 2023 20:50:04 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id E9438E4
        for <linux-man@vger.kernel.org>; Thu,  1 Jun 2023 17:50:02 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 8CE1591E0;
        Fri,  2 Jun 2023 02:49:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1685666999;
        bh=HHenv+oTCn7hcFmllFEoyljq9f+m9apPI0/FhFftctc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=YOk/1/W8bJQTJVSS02cCtO0Pai1TDyuUMHNBdJZ+z8mbOdXw0qhZhxVnqUCHGGdkb
         8rbL2W2/qk/GjTZ9m/ISV2fpSlPrDiZmz5Ql9zWkyOOnYZqQxbMkJC8SDSis6eQbxS
         WdS9VLX7ykWyp36vpUdXty9BzBMivuHipF6z5DZSVKwOrMnriMgvNiI+DVBDMkOiYM
         9QZcSjnTug8lX5eZ4MX0QHuyxaj8v90a0e5lav2dUQYBMXSLQcQGfFe7Aw2Res0NXS
         A8nLciBYsCe/vEvKzZ35KH44RpiZLuILejOquw2YuqACdktem6qmdIkammRLDCZwaN
         7CTYsLwhsmpdw==
Date:   Fri, 2 Jun 2023 02:49:58 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [PATCH v2 2/9] regex.3: improve REG_STARTEND
Message-ID: <y4qprm4soq7x5hzmraasl4mtzlgwfbeywexmepyicyz24cgurd@tisp6gxnrdtf>
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <5ae22853ab58af90c0ec2685bb740af1f6177dfe.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
 <c555035c-1d55-1de6-64e6-2911e3e49eb2@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="4652w2fyzz3pk5js"
Content-Disposition: inline
In-Reply-To: <c555035c-1d55-1de6-64e6-2911e3e49eb2@gmail.com>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,PDS_RDNS_DYNAMIC_FP,
        RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--4652w2fyzz3pk5js
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 02, 2023 at 02:12:27AM +0200, Alejandro Colomar wrote:
> I forgot about this patch set.  Could you please resend anything that
> is still pending?  Thanks!
I did too, but that's because you applied it. This particular patch is
164297a322b5dee6addff9ad4acb224302ab6e7d and the whole set is
0d120a3c76b4446b194a54387ce0e7a84b208bfd^..e894e84af353727082420c48b3cbea56=
6a0f7692
=66rom the looks of it?

--4652w2fyzz3pk5js
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmR5PLMACgkQvP0LAY0m
WPFnshAAo+ya9x7s902YCPrxX/v1a9REkHPBjE1L8qzt8Dhlqy/b6Q5rmQVvfeCP
oWE/EURhrfnQJtVvc7tHtJ4RzNyFpSj+D1tIHpvJhO7HLWNHA3+tKOWLsca3d/XN
5GzbH5hEqHqtUZDMdg9ecenfo6bS+r2NsdgezsQnhC3U2qZ9KXcCE3nFMG8KTKkZ
xYxgL8seX1sYHndA80RG/15+ZiZ85zLcWtQ6G6bVnGFSeF7y5ivcV8uMUXXHrCLZ
mFZBFWsD6JtoKULCZ1YmCXM7WHZHnZQgfvNbTJBGqBtz4qqHb3prdYNP6QvZ0xZb
9yBH7DCDl0fZfAOtqBE8w0uvFuXM0gyeIGiIG2ARflQcbkPQ3xjDgzTFxDbG3h5X
EOdfUp2rXtkmVo/cAmChVHT5juoOs7vnabKq3dBWExbG54z2VSuBvPhANRkhikv4
NUxxVZYZBzDCb6hVsprYt3kxe3UqsQ/vaf3kzN7FWgRBgdaJCfPjwVR9SBvMVP5h
DXT7oZT1OaQVEAIMBg1ekX6GwvXfwVEMaSnGhsTY9ITMkM8lQ1y7zqR3GjAeTRT3
QcwrM9CIhxmIcCb12bbxDFNkN89MzX+hq5jEN/E7waw0yPcNPAUhUKpyhQKWcKte
p0dWJaU8X6ryAjNIa8W6v567uXU1AX6QXC4rb8QhX0dpZ9tbFkw=
=qiT1
-----END PGP SIGNATURE-----

--4652w2fyzz3pk5js--
