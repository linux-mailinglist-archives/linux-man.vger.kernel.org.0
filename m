Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 290F17D7068
	for <lists+linux-man@lfdr.de>; Wed, 25 Oct 2023 17:08:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234062AbjJYPIZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Oct 2023 11:08:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232657AbjJYPIZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Oct 2023 11:08:25 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EA04129
        for <linux-man@vger.kernel.org>; Wed, 25 Oct 2023 08:08:23 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AF7FC433C7;
        Wed, 25 Oct 2023 15:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698246502;
        bh=Z2PsLeJ99VTdbOQiT6QB3YK+oSOtca2P2EhpUblME04=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=YctS7omMHC8viwHOVkpBimMS3vAjgv+hz/J6z/QABoC8aWBVSd6R47fiN5Hese0M7
         aLRaN9DWmqHUL0ih5FBSjqTg3GwJ6H0n6cdC+3z5OMhPDNWKlfSHqnIGDklEENIecb
         Fx6Iu8pBiTVSkuogc3Cei8HzND9+eA630y/SaZIAMVv0/nOTsqc5uc+lTqaAvWkxnQ
         9YhwzWfmBRzVxXzRzHhLVV2P3+HGtaexd0gRU7W4Fe5wdRHny1ymcM6loqiTrFA/gH
         bBI+LGPbR8WXkwvq51IHIw8pM73pAbGJcQScCcAci8/oObGNCYO6lLSraQs7r0UCw3
         cSqcxvrLIlMBw==
Date:   Wed, 25 Oct 2023 17:08:19 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: using the TQ macro
Message-ID: <ZTkvY8egIrf9pcxF@debian>
References: <20231025141103.savwphtepufpget4@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="t/JTv4JT+Vxvwj7D"
Content-Disposition: inline
In-Reply-To: <20231025141103.savwphtepufpget4@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--t/JTv4JT+Vxvwj7D
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 25 Oct 2023 17:08:19 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: using the TQ macro

Hi Branden,

On Wed, Oct 25, 2023 at 09:11:03AM -0500, G. Branden Robinson wrote:
> Hi Alex,
>=20
> I pulled man-pages Git and saw this.
>=20
> commit 6fdb1c03075b31364968bcccf472a4d4a86952a6 (origin/master, origin/HE=
AD)
> Author: Alejandro Colomar <alx@kernel.org>
> Date:   Sun Oct 22 14:57:46 2023 +0200
>=20
>     man*/: ffix (Use '.TQ' where appropriate)
>=20
>     When there are multiple tags for a paragraph, using a single TP and
>     separating the tags with commas makes the man(7) source more complex.
>     It also has a disadvantage: when searching through a manual page,
>     heuristics such as "   --option" don't work so well.
>=20
>     By using GNU's TQ, we simplify the source of the pages, and improve t=
he
>     ability to search them.
>=20
>     Signed-off-by: Alejandro Colomar <alx@kernel.org>
>=20
> I wanted to offer my support for it, in part since Ingo was so critical
> over on the groff list.[1]

Thanks :)

>=20
> Your use of `TQ` seems entirely idiomatic here.  You're right that it
> makes the man(7) source less complex, but it also emphasizes even to the
> casual reader the parallel syntax of `TP` and `TQ`, which inexpert man
> page authors will surely appreciate.
>=20
> Another advantage is that if people get carried away with the former
> approach, creating a lengthy paragraph tag, they might overrun the line
> length, which would be really ugly.
>=20
> I don't share Ingo's concern that this style of stacking paragraphing
> tags is inherently wasteful of screen real estate.  Man pages are, and
> have always been--going back to the 1971 First Edition Unix
> manual--pretty sparse in their use of text on the page.[2]  In part,
> this helps the eye of the reader to navigate the content.
>=20
> Ingo would have more of a point if someone had a dozen tags stacked up
> for one paragraph, but doing so would suggest other problems; either
> your interface doesn't need that many ways to say the same thing and you
> should retire and de-document some forms of expression; something should
> be parameterized (i.e., turned into a hyphenated noun phrase in
> italics); or you're packing too many different things into one item's
> presentation.  Not everything can be solved with markup: sometimes we
> have to do the dirty work of writing clearly in natural language.
>=20
> But I don't see any problem like that in the Linux man-pages, so I think
> his criticism was not entirely apropos.  Also, as I noted on the groff
> list, he seems to have forgotten that `TQ` takes no arguments, so a
> formatter that doesn't support it won't throw any text away.
>=20
> I also like your suggestion that if we really want to economize on
> space, we could present a command's long option form before its short,
> old-style Unix synonym, which will work well when the short option (plus
> its argument, if any) fits within the space for the paragraph tag.  This
> might be a good idea for another reason; in GNU user space, the long
> option is the much more self-documenting form, and the single-character
> option name a kind of "expert mode" alternative.  As a general rule,
> when presenting technical material, one should not lead with "expert
> mode".
>=20
> Another benefit of this commit was that it made my "prepare for MR"
> commit simpler.  So I reckon this is a good time to re-submit that (and
> the big sed-driven MR migration humdinger; you can look for that soon.

Heh, I guessed it would :p

BTW, I just checked and Gentoo still doesn't consider 1.23.0 stable
enough <https://packages.gentoo.org/packages/sys-apps/groff>.  :|

Although with word from Ingo that he has urgent plans to implement MR, I
may merge the MR patch earlier.

Cheers,
Alex

>=20
> Regards,
> Branden
>=20
> [1] https://lists.gnu.org/archive/html/groff/2023-10/msg00024.html
> [2] https://www.bell-labs.com/usr/dmr/www/1stEdman.html



--=20
<https://www.alejandro-colomar.es/>

--t/JTv4JT+Vxvwj7D
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU5L2MACgkQnowa+77/
2zJ6pA//SYjjMznlyn+1puyjmfgEAuDVhwMDsjngqwPj3hCwKQaAApflGWlNjS6P
o8Pc39Ya15rf9gA83wkPzlgCtg+njKd5IkyB9+UveRKTIu+w22aMfvTf/FAQcr1M
unD//TEjOg6NBgYv3NqCGzZwPmiAtZFXI7JUB2OYBlHVIrWz3XONuelgXe3hx/hC
7nCG9PnpSH94AFVbb1rFG6Hn73I0Z3DyMVTlDzfwQFE7/28yHeieKx0jHGb35y0q
17W6bFK8n72mWxGCzitxyMShP4m3zYsSivLCljolrPFIcbF+IQf3hcN/6GL71ZTF
LooQqsFMMW3uj53ihtH2Lb1K4z4ZMK4ZnARaK0M0dBcNWkadtH8YB+cksC7zo3za
h6gVcHuWpNutxLtEMUfIZDEiJ+e1v8q1pbp0npIpj0xcnSbQ9ee6FI2ZG5thK5XN
yMoQUKpyd/Pu3lGEEb4gzMaeFPPWLZoulfK+zKMgbtJvPyWJ/H6/n59o7lx/vfDw
gWMCUJ6HbyH3wRHTFcvnizc9ZLNwhzTAl/3o0U+OxvWQoXgPM2D3K3rsu3ka8TTu
Ia6+1J8HGxf7SvxSQqCa4JTsAz6ULTnctr2QPyU+v2wz/vrXR2yXgTlIwcBawXBt
V2RACBZgElBQPN6hbk0NrI+G/fRm7e/KcxbINdLpHwGnmPZTHNQ=
=6WzG
-----END PGP SIGNATURE-----

--t/JTv4JT+Vxvwj7D--
