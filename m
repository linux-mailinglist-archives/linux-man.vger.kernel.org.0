Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 497137CFB78
	for <lists+linux-man@lfdr.de>; Thu, 19 Oct 2023 15:42:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346104AbjJSNmr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Oct 2023 09:42:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346093AbjJSNmo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Oct 2023 09:42:44 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 331EE130
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 06:42:43 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB729C433A9;
        Thu, 19 Oct 2023 13:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697722962;
        bh=2ir7OYagCXuD791Q9Za/VIgE45j18mOz53AjdvAvW1g=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=YkllP66/yQ8Get2Pp0Yo/Xg8C+jyn3iSFEsDRfceObp77l7FhWWI+otH1rn7YEi2X
         bgJ4XFPpS7XMoW1u1HMiwLLNjEpPQAedgmro0GvqjZu945JJenQNixE3y3+yGT4dOL
         0K4q7+koHqnkjeTe1Q88bS65XcNi+t9U68MJ/6zi7mte1KnywHD9CHcg5aX05gFevI
         vCF/bOQ9+zEw1J9CfwTYfwUJ06xgV2P530w9BLjaCiZw1Qk5Bz5KEzeYWwDN7Vb5u/
         H3EW+fkPqixYSYx6dsUYy//L86kOxDELGjLD06VVPpaJV6obqtjy1a4KpI/ZKcq7bO
         S2IyikN+O3DSw==
Date:   Thu, 19 Oct 2023 15:42:39 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Muhammad Usama Anjum <usama.anjum@collabora.com>
Cc:     kernel@collabora.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] ioctl_userfaultfd.2: add UFFD_FEATURE_WP_ASYNC
Message-ID: <ZTEyT9gbTL5g4pUz@debian>
References: <20231019131252.2368728-1-usama.anjum@collabora.com>
 <ZTEvPcyhWINBS4aO@debian>
 <041045ed-55e4-44ff-b5a9-cfdf252c33d3@collabora.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="8+8+p9vLM52t97QO"
Content-Disposition: inline
In-Reply-To: <041045ed-55e4-44ff-b5a9-cfdf252c33d3@collabora.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--8+8+p9vLM52t97QO
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 19 Oct 2023 15:42:39 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Muhammad Usama Anjum <usama.anjum@collabora.com>
Cc: kernel@collabora.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] ioctl_userfaultfd.2: add UFFD_FEATURE_WP_ASYNC

Hi Muhammad,

On Thu, Oct 19, 2023 at 06:34:26PM +0500, Muhammad Usama Anjum wrote:
> On 10/19/23 6:29 PM, Alejandro Colomar wrote:
> > On Thu, Oct 19, 2023 at 06:12:44PM +0500, Muhammad Usama Anjum wrote:
> >> Signed-off-by: Muhammad Usama Anjum <usama.anjum@collabora.com>
> >> ---
> >> Changes since v1:
> >> - Employ sementic new lines by breaking sentence before "by"
> >> ---
> >>  man2/ioctl_userfaultfd.2 | 5 +++++
> >>  1 file changed, 5 insertions(+)
> >>
> >> diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
> >> index e68085262..f6cafd9a2 100644
> >> --- a/man2/ioctl_userfaultfd.2
> >> +++ b/man2/ioctl_userfaultfd.2
> >> @@ -244,6 +244,11 @@ If this feature bit is set,
> >>  the kernel supports resolving faults with the
> >>  .B UFFDIO_POISON
> >>  ioctl.
> >> +.TP
> >> +.BR UFFD_FEATURE_WP_ASYNC " (since Linux 6.7)"
> >=20
> > Has this feature been merged?
> Yes, This patch is in maintainer's tree (in mm-stable these day).
> https://lore.kernel.org/all/20231018213452.A78A8C433C8@smtp.kernel.org
>=20
> It should be released with next kernel release.
>=20
> I'm not sure if you can accept a patch which isn't in Linus's tree yet. B=
ut
> these patches are already in maintainer's tree and in linux-next from
> almost a month.

Yep, if it's in a maintainer tree, I prefer merging it already, unless
you expect significant changes before Linus.  If anything happens, we
can fix it later.

In linux-next, I'd prefer to wait.

Cheers,
Alex

> >=20
> > Thanks,
> > Alex
> >=20
> >> +If this feature bit is set,
> >> +the write protection faults would be asynchronously resolved
> >> +by the kernel.
> >>  .PP
> >>  The returned
> >>  .I ioctls
> >> --=20
> >> 2.42.0
> >>
> >=20
>=20
> --=20
> BR,
> Muhammad Usama Anjum

--=20
<https://www.alejandro-colomar.es/>

--8+8+p9vLM52t97QO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUxMk8ACgkQnowa+77/
2zLr2RAAp7+IiZiy4J8JtIF9YsFcJtTrfNILolPOHckxJ9FHBi4JRRGvL2fwqJIT
CqL2ApEo/oLBiCJrYARTZY55XZtqakDveAu1YyzphVqmoFO44SSMJZUsa30sTrfr
akrdkPcPTBqPCnPCH6m/e/1OTNzCmcwojAzQ5fOdOMmsKmUo+nhYUQXYwL1BvUvw
cN94A9tcy2T2DY2dtxwJYn1BroqyVHEoxZpKbbdthDJODM4fIE5tg0d29unW2Qd3
bwl7acLnRVCOqGmDzkyXq30vWnCA+ivBy2/d6wIlrRQSNwcretE7ip8fWMUBh6Hj
qb/r3CzA/TsoCQ4jMoVkSixYzfBKPX/MjjV5tGRJL8OXGg88O4BLMwN58jsunbHF
dEmF10KlDjvNqCGmz7ZWSJ5FnC+MKIPZq2ujCl51alWP2KYOqEQJr39gmZu5geeL
hMEWx/uzHKSbfd7Lc0KpXFn25I931GlN/c3NW4bHlv/dT7jwvRAXin/24+Hcyb0L
Tnh8NL/aR5vL/c2gO0foSJ2Krm4N5GeEDJmuXpcPHtBGC5rl0VnG2BWii2TIJeyp
zXKbHE6yOnMlYR/jQFpJIM4aoVWx5L+n3eiSNraRJFx+NQL8MvBlZ6XxdaycyUrs
D+p2wg2BvBx1P3bpR5AA9gdU2uTSLINSYYvQhhruHOkvGzJE18A=
=hu0p
-----END PGP SIGNATURE-----

--8+8+p9vLM52t97QO--
